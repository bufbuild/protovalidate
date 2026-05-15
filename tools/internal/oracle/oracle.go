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

// Package oracle derives the violation message a protovalidate runtime would
// emit for a given rule_id against a particular bad value, by evaluating the
// rule's (predefined).cel annotation in the same CEL environment runtimes
// use. It exists so test annotations don't have to hand-write the message
// text for every violation.
//
// Out of scope: rules whose semantics aren't expressible in CEL (the
// validateschema.NoCEL set, plus field-level rules like `required`). For
// those, MessageFor returns ErrNotDerivable and the caller must supply a
// literal message in the test annotation.
package oracle

import (
	"errors"
	"fmt"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/celenv"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/validateschema"
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// ErrNotDerivable is returned when the oracle cannot derive a message for
// ruleID from any CEL annotation reachable from the host message. The caller
// must either fix the rule_id (typo, wrong host) or supply a literal message
// in the test annotation.
var ErrNotDerivable = errors.New("oracle: rule message not derivable")

// Oracle resolves the violation message a runtime would emit for a rule_id.
type Oracle struct {
	schema *validateschema.Schema
}

// New constructs an oracle from a resolved validate.proto schema.
func New(schema *validateschema.Schema) (*Oracle, error) {
	if schema == nil {
		return nil, errors.New("oracle: schema is required")
	}
	return &Oracle{schema: schema}, nil
}

// MessageFor derives the violation message for ruleID applied to host at
// fieldPath. fieldPath is the harness's existing string syntax (e.g. "val");
// pass "" for message-level rules.
//
// Resolution order:
//  1. Message-level user CEL on the host (matches a (buf.validate.message).cel id).
//  2. Field-level user CEL on the field at fieldPath.
//  3. Predefined CEL on the matching rule field in validate.proto.
//
// Returns ErrNotDerivable if none of the above match.
func (o *Oracle) MessageFor(host proto.Message, ruleID, fieldPath string) (string, error) {
	if host == nil {
		return "", errors.New("oracle: host message is required")
	}
	hostRefl := host.ProtoReflect()
	if msg, ok := lookupMessageCEL(hostRefl.Descriptor(), ruleID); ok {
		return msg, nil
	}
	if fieldPath != "" {
		fd, _, err := resolveField(hostRefl, fieldPath)
		if err == nil {
			if msg, ok := lookupFieldCEL(fd, ruleID); ok {
				return msg, nil
			}
		}
	}
	rule, ok := o.schema.ByRuleID[ruleID]
	if !ok {
		return "", fmt.Errorf("%w: rule_id %q has no source CEL", ErrNotDerivable, ruleID)
	}
	if fieldPath == "" {
		return "", fmt.Errorf("%w: predefined rule %q requires a field_path",
			ErrNotDerivable, ruleID)
	}
	fieldDesc, fieldVal, err := resolveField(hostRefl, fieldPath)
	if err != nil {
		return "", fmt.Errorf("oracle: resolve field for rule %q: %w", rule.Parent.Desc.FullName(), err)
	}
	rulesMsg, err := rulesMessageFor(rule, fieldDesc)
	if err != nil {
		return "", err
	}
	fired, msg, err := o.evalPredefined(rule, celenv.TypeForField(fieldDesc), fieldVal, rulesMsg)
	if err != nil {
		return "", fmt.Errorf("oracle: eval rule %q: %w", rule.Parent.Desc.FullName(), err)
	}
	if !fired {
		return "", fmt.Errorf("oracle: rule %q passed against the supplied bad value (expected violation)",
			rule.Parent.Desc.FullName())
	}
	return msg, nil
}

// rulesMessageFor extracts the *Rules instance set on fieldDesc that
// corresponds to rule. Errors out if fieldDesc has no (buf.validate.field)
// options or the wrong FieldRules.type oneof is set.
func rulesMessageFor(rule *validateschema.Rule, fieldDesc protoreflect.FieldDescriptor) (protoreflect.Message, error) {
	fieldRules, _ := proto.GetExtension(fieldDesc.Options(), validate.E_Field).(*validate.FieldRules)
	if fieldRules == nil {
		return nil, fmt.Errorf("oracle: field %s has no (buf.validate.field) options", fieldDesc.FullName())
	}
	frRefl := fieldRules.ProtoReflect()
	typeOneof := frRefl.Descriptor().Oneofs().ByName("type")
	setOneof := frRefl.WhichOneof(typeOneof)
	expectedOneof := rule.Parent.Parent.Parent
	if setOneof == nil {
		return nil, fmt.Errorf("oracle: %s has no FieldRules.type oneof set; rule %q expected %s",
			fieldDesc.FullName(), rule.Parent.Desc.FullName(), expectedOneof.Name())
	}
	if setOneof.FullName() != expectedOneof.FullName() {
		return nil, fmt.Errorf("oracle: %s set FieldRules.type=%s but rule %q expects %s",
			fieldDesc.FullName(), setOneof.Name(), rule.Parent.Desc.FullName(), expectedOneof.Name())
	}
	return frRefl.Get(setOneof).Message(), nil
}

// lookupMessageCEL searches the host's (buf.validate.message).cel rules for
// ruleID and returns the static message if found.
func lookupMessageCEL(host protoreflect.MessageDescriptor, ruleID string) (string, bool) {
	mr, _ := proto.GetExtension(host.Options(), validate.E_Message).(*validate.MessageRules)
	if mr == nil {
		return "", false
	}
	for _, c := range mr.GetCel() {
		if c.GetId() == ruleID {
			return c.GetMessage(), true
		}
	}
	return "", false
}

// lookupFieldCEL searches a field's (buf.validate.field).cel rules for ruleID.
func lookupFieldCEL(fd protoreflect.FieldDescriptor, ruleID string) (string, bool) {
	fr, _ := proto.GetExtension(fd.Options(), validate.E_Field).(*validate.FieldRules)
	if fr == nil {
		return "", false
	}
	for _, c := range fr.GetCel() {
		if c.GetId() == ruleID {
			return c.GetMessage(), true
		}
	}
	return "", false
}

// resolveField walks fieldPath on host. Phase 2 supports single-component
// paths only (no dots, no subscripts); rules that target nested fields, list
// indices, or map keys/values must wait for the field-path walker to grow up.
func resolveField(host protoreflect.Message, path string) (protoreflect.FieldDescriptor, protoreflect.Value, error) {
	if strings.ContainsAny(path, ".[") {
		return nil, protoreflect.Value{}, fmt.Errorf("oracle: complex field path %q not yet supported", path)
	}
	desc := host.Descriptor()
	fd := desc.Fields().ByName(protoreflect.Name(path))
	if fd == nil {
		return nil, protoreflect.Value{}, fmt.Errorf("oracle: field %q not found on %s", path, desc.FullName())
	}
	return fd, host.Get(fd), nil
}

// toCEL converts a protoreflect.Value to something cel-go's default adapter
// can wrap. cel-go handles primitives, byte slices, and proto messages out
// of the box, but protoreflect.Map and protoreflect.List don't have a public
// adapter, so we collapse them to plain Go natives. Inner values are
// recursively converted; map keys go through the same path.
func toCEL(value protoreflect.Value) any {
	switch native := value.Interface().(type) {
	case protoreflect.Message:
		return native.Interface()
	case protoreflect.Map:
		out := make(map[any]any, native.Len())
		native.Range(func(key protoreflect.MapKey, mapVal protoreflect.Value) bool {
			out[key.Interface()] = toCEL(mapVal)
			return true
		})
		return out
	case protoreflect.List:
		out := make([]any, native.Len())
		for i := range native.Len() {
			out[i] = toCEL(native.Get(i))
		}
		return out
	default:
		return native
	}
}

// evalPredefined compiles and evaluates one predefined rule's CEL expression
// with `this`, `rules`, and `rule` bound the way runtimes bind them. Returns:
//   - (false, "", nil) when the rule passes.
//   - (true, message, nil) when it fires; message is what the runtime emits
//     (the CEL string return for ternary-style expressions, or the rule's
//     static .message for boolean expressions).
//   - (false, "", err) on compile/runtime/type errors.
func (o *Oracle) evalPredefined(rule *validateschema.Rule, thisType *cel.Type, val protoreflect.Value, rulesMsg protoreflect.Message) (bool, string, error) {
	env, err := celenv.New(o.schema.Files, thisType, rule.Parent.Parent.RulesCELType, rule.Parent.RuleCELType)
	if err != nil {
		return false, "", err
	}
	ruleVal := rulesMsg.Get(rule.Parent.Desc)
	return runCEL(env, rule.Expression, rule.Message, map[string]any{
		"this":  toCEL(val),
		"rules": rulesMsg.Interface(),
		"rule":  toCEL(ruleVal),
	})
}
