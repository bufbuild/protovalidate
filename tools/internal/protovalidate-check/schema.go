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

package main

import (
	"errors"
	"fmt"
	"maps"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protodesc"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
	"google.golang.org/protobuf/types/descriptorpb"
)

// resolvedSchema is the resolved structure of validate.proto.
type resolvedSchema struct {
	files         *protoregistry.Files
	file          protoreflect.FileDescriptor
	rulesMessages []*rulesMessage
	ruleFields    []*ruleField // all fields in *Rules messages
	allRules      []rule       // all buf.validate.Rule
}

// rulesMessage is a *Rules message, e.g. StringRules.
type rulesMessage struct {
	parent                protoreflect.FieldDescriptor // e.g. FieldRules.string
	desc                  protoreflect.MessageDescriptor
	fields                []*ruleField // e.g. StringRules.max_len, StringRules.prefix
	hasExample            bool
	noExample             bool // must not have an example field
	extensionRangeComment string
	noExtensionRange      bool      // must not have extensions 1000 to max
	thisType              protoType // CEL variable `this`
	rulesType             protoType // CEL variable `rules`
}

// ruleField is a field within a *Rules message.
type ruleField struct {
	parent    *rulesMessage                // e.g. StringRules
	desc      protoreflect.FieldDescriptor // e.g. max_len, prefix
	ruleType  protoType                    // CEL variable `rule`
	isExample bool                         // e.g. repeated string example
	rules     []rule                       // e.g. max_len [(predefined).cel = ...]
	noCEL     bool                         // rule is validated by implementations directly, not via CEL
}

// rule is a buf.validate.Rule.
type rule struct {
	parent     *ruleField
	ruleIndex  int
	id         string
	message    string
	expression string
}

// resolveSchema resolves the full validate.proto schema upfront.
// Returns an error on structural schema errors or out-of-sync exemption maps.
func resolveSchema(fds *descriptorpb.FileDescriptorSet) (*resolvedSchema, error) {
	files, err := protodesc.NewFiles(fds)
	if err != nil {
		return nil, fmt.Errorf("failed to create registry: %w", err)
	}
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

	remainingNoExtRange := maps.Clone(noExtensionRange)
	remainingNoExample := maps.Clone(noExample)
	remainingNoCEL := maps.Clone(noCEL)
	schema := &resolvedSchema{files: files, file: file}
	for i := range typeOneof.Fields().Len() {
		field := typeOneof.Fields().Get(i)
		msgDesc := field.Message()
		if msgDesc == nil {
			return nil, fmt.Errorf("%s must be a message field", field.FullName())
		}
		msgFullName := msgDesc.FullName()
		thisType, thisTypeOk := rulesMessageToThisType[msgFullName]
		if !thisTypeOk {
			return nil, fmt.Errorf("%s must have a known mapping to a protobuf type", field.FullName())
		}
		// *Rule message
		rulesMsg := &rulesMessage{
			parent:                field,
			desc:                  msgDesc,
			noExample:             noExample[msgFullName],
			noExtensionRange:      noExtensionRange[msgFullName],
			thisType:              thisType,
			rulesType:             typeForField(field),
			extensionRangeComment: readExtensionRangeComment(msgDesc),
		}
		// fields of the *Rule message
		fields := msgDesc.Fields()
		for j := range fields.Len() {
			fieldDesc := fields.Get(j)
			fieldFullName := fieldDesc.FullName()
			ruleField := &ruleField{
				parent:    rulesMsg,
				desc:      fieldDesc,
				ruleType:  typeForField(fieldDesc),
				isExample: fieldDesc.Name() == "example",
				noCEL:     noCEL[fieldFullName],
			}
			ruleField.rules = readRules(ruleField)
			rulesMsg.hasExample = rulesMsg.hasExample || ruleField.isExample
			rulesMsg.fields = append(rulesMsg.fields, ruleField)
			schema.allRules = append(schema.allRules, ruleField.rules...)
			delete(remainingNoCEL, fieldFullName)
		}
		schema.rulesMessages = append(schema.rulesMessages, rulesMsg)
		delete(remainingNoExtRange, msgFullName)
		delete(remainingNoExample, msgFullName)
	}
	for name := range remainingNoExtRange {
		return nil, fmt.Errorf("noExtensionRange: %s not found in schema", name)
	}
	for name := range remainingNoExample {
		return nil, fmt.Errorf("noExample: %s not found in schema", name)
	}
	for name := range remainingNoCEL {
		return nil, fmt.Errorf("noCEL: %s not found in schema", name)
	}
	return schema, nil
}

// readRules reads (buf.validate.predefined) CEL rules from a ruleField.
func readRules(field *ruleField) []rule {
	opts := field.desc.Options()
	if opts == nil {
		return nil
	}
	predefined, ok := proto.GetExtension(opts, validate.E_Predefined).(*validate.PredefinedRules)
	if !ok || predefined == nil {
		return nil
	}
	celRules := predefined.GetCel()
	result := make([]rule, len(celRules))
	for i, celRule := range celRules {
		result[i] = rule{
			parent:     field,
			ruleIndex:  i,
			id:         celRule.GetId(),
			message:    celRule.GetMessage(),
			expression: celRule.GetExpression(),
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
