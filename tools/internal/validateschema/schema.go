// Copyright 2023-2026 Buf Technologies, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Package validateschema resolves the structure of validate.proto into a
// typed in-memory model. Both the static validate.proto checker and the
// conformance oracle consume it; pulling the walk into one package keeps
// the two consumers in lockstep about what counts as a rule, what's
// exempt, and what CEL types each rule binds.
package validateschema

import (
	"errors"
	"fmt"
	"maps"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/celenv"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protodesc"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
	"google.golang.org/protobuf/types/descriptorpb"
)

// Schema is validate.proto, resolved.
//
// All slices and maps are populated once by Resolve and treated as
// immutable thereafter; ByRuleID points into AllRules's backing array
// and depends on that immutability.
type Schema struct {
	Files              *protoregistry.Files
	File               protoreflect.FileDescriptor
	RulesMessages      []*RulesMessage
	RuleFields         []*RuleField
	AllRules           []Rule
	ByRuleID           map[string]*Rule                        // ID → Rule
	RulesMessageByDesc map[protoreflect.FullName]*RulesMessage // *Rules FQN → RulesMessage
}

// RulesMessage is a *Rules message, e.g. StringRules.
type RulesMessage struct {
	Parent                protoreflect.FieldDescriptor // e.g. FieldRules.string
	Desc                  protoreflect.MessageDescriptor
	Fields                []*RuleField // e.g. StringRules.max_len, StringRules.prefix
	HasExample            bool
	NoExample             bool // must not have an example field
	ExtensionRangeComment string
	NoExtensionRange      bool      // must not have extensions 1000 to max
	ThisType              ThisType  // CEL variable `this`
	RulesCELType          *cel.Type // CEL variable `rules`
}

// RuleField is a field within a *Rules message.
type RuleField struct {
	Parent      *RulesMessage                // e.g. StringRules
	Desc        protoreflect.FieldDescriptor // e.g. max_len, prefix
	RuleCELType *cel.Type                    // CEL variable `rule`
	IsExample   bool                         // e.g. repeated string example
	Rules       []Rule                       // e.g. max_len [(predefined).cel = ...]
	NoCEL       bool                         // rule is validated by implementations directly, not via CEL
}

// Rule is a buf.validate.Rule.
type Rule struct {
	Parent     *RuleField
	Index      int
	ID         string
	Message    string
	Expression string
}

// ThisType describes the target type of CEL's `this` variable for a
// *Rules message. Kind/FullName are kept for callers that compare against
// raw protobuf descriptors (e.g. the example-field check); CELType is the
// pre-computed CEL view.
//
// Container *Rules (RepeatedRules, MapRules) have zero Kind/FullName —
// they target any list/map. Singular *Rules have Kind set and CELType
// derived from celenv.KindToType.
type ThisType struct {
	Kind     protoreflect.Kind
	FullName protoreflect.FullName
	CELType  *cel.Type
}

// Resolve resolves the full validate.proto schema from a FileDescriptorSet.
// Returns an error on structural schema errors or out-of-sync exemption
// maps in this package's exempt.go.
func Resolve(fds *descriptorpb.FileDescriptorSet) (*Schema, error) {
	files, err := protodesc.NewFiles(fds)
	if err != nil {
		return nil, fmt.Errorf("failed to create registry: %w", err)
	}
	return ResolveFromFiles(files)
}

// ResolveFromFiles resolves the full validate.proto schema from an
// already-constructed file registry. Use this when the caller obtains
// descriptors from generated code's global registry rather than from
// a fresh `buf build`.
func ResolveFromFiles(files *protoregistry.Files) (*Schema, error) {
	file, err := files.FindFileByPath("buf/validate/validate.proto")
	if err != nil {
		return nil, errors.New("failed to find validate.proto in the file descriptor set")
	}
	fieldRules := file.Messages().ByName("FieldRules")
	if fieldRules == nil {
		return nil, errors.New("missing message FieldRules")
	}
	typeOneof := fieldRules.Oneofs().ByName("type")
	if typeOneof == nil {
		return nil, errors.New("missing oneof FieldRules.type")
	}

	remainingNoExtRange := maps.Clone(NoExtensionRange)
	remainingNoExample := maps.Clone(NoExample)
	remainingNoCEL := maps.Clone(NoCEL)
	schema := &Schema{Files: files, File: file}
	for i := range typeOneof.Fields().Len() {
		field := typeOneof.Fields().Get(i)
		msgDesc := field.Message()
		if msgDesc == nil {
			return nil, fmt.Errorf("%s must be a message field", field.FullName())
		}
		msgFullName := msgDesc.FullName()
		thisType, thisTypeOK := thisTypeByRulesMessage[msgFullName]
		if !thisTypeOK {
			return nil, fmt.Errorf("%s must have a known mapping to a protobuf type", field.FullName())
		}
		rulesMsg := &RulesMessage{
			Parent:                field,
			Desc:                  msgDesc,
			NoExample:             NoExample[msgFullName],
			NoExtensionRange:      NoExtensionRange[msgFullName],
			ThisType:              thisType,
			RulesCELType:          celenv.TypeForField(field),
			ExtensionRangeComment: readExtensionRangeComment(msgDesc),
		}
		fields := msgDesc.Fields()
		for j := range fields.Len() {
			fieldDesc := fields.Get(j)
			fieldFullName := fieldDesc.FullName()
			ruleField := &RuleField{
				Parent:      rulesMsg,
				Desc:        fieldDesc,
				RuleCELType: celenv.TypeForField(fieldDesc),
				IsExample:   fieldDesc.Name() == "example",
				NoCEL:       NoCEL[fieldFullName],
			}
			ruleField.Rules = readRules(ruleField)
			rulesMsg.HasExample = rulesMsg.HasExample || ruleField.IsExample
			rulesMsg.Fields = append(rulesMsg.Fields, ruleField)
			schema.RuleFields = append(schema.RuleFields, ruleField)
			schema.AllRules = append(schema.AllRules, ruleField.Rules...)
			delete(remainingNoCEL, fieldFullName)
		}
		schema.RulesMessages = append(schema.RulesMessages, rulesMsg)
		delete(remainingNoExtRange, msgFullName)
		delete(remainingNoExample, msgFullName)
	}
	for name := range remainingNoExtRange {
		return nil, fmt.Errorf("NoExtensionRange: %s not found in schema", name)
	}
	for name := range remainingNoExample {
		return nil, fmt.Errorf("NoExample: %s not found in schema", name)
	}
	for name := range remainingNoCEL {
		return nil, fmt.Errorf("NoCEL: %s not found in schema", name)
	}

	schema.ByRuleID = make(map[string]*Rule, len(schema.AllRules))
	for i := range schema.AllRules {
		rule := &schema.AllRules[i]
		if rule.ID == "" {
			continue
		}
		// Duplicates are reported separately by the static checker; here
		// last-write-wins keeps the index well-formed.
		schema.ByRuleID[rule.ID] = rule
	}
	schema.RulesMessageByDesc = make(map[protoreflect.FullName]*RulesMessage, len(schema.RulesMessages))
	for _, rulesMsg := range schema.RulesMessages {
		schema.RulesMessageByDesc[rulesMsg.Desc.FullName()] = rulesMsg
	}
	return schema, nil
}

// readRules reads (buf.validate.predefined) CEL rules from a RuleField.
func readRules(field *RuleField) []Rule {
	opts := field.Desc.Options()
	if opts == nil {
		return nil
	}
	predefined, ok := proto.GetExtension(opts, validate.E_Predefined).(*validate.PredefinedRules)
	if !ok || predefined == nil {
		return nil
	}
	celRules := predefined.GetCel()
	result := make([]Rule, len(celRules))
	for i, celRule := range celRules {
		result[i] = Rule{
			Parent:     field,
			Index:      i,
			ID:         celRule.GetId(),
			Message:    celRule.GetMessage(),
			Expression: celRule.GetExpression(),
		}
	}
	return result
}

// readExtensionRangeComment returns the leading comment of the first
// extension range on msgDesc, or "" if there are none.
func readExtensionRangeComment(msgDesc protoreflect.MessageDescriptor) string {
	if msgDesc.ExtensionRanges().Len() == 0 {
		return ""
	}
	file := msgDesc.ParentFile()
	msgPath := file.SourceLocations().ByDescriptor(msgDesc).Path
	// add DescriptorProto.extension_range
	extPath := make(protoreflect.SourcePath, len(msgPath)+1)
	copy(extPath, msgPath)
	extPath[len(msgPath)] = 5
	loc := file.SourceLocations().ByPath(extPath)
	return strings.TrimSpace(loc.LeadingComments)
}
