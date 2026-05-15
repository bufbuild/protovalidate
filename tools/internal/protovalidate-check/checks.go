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
	"fmt"
	"regexp"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/celenv"
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/encoding/protowire"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// checkFieldRuleNamesMatch checks each FieldRules.type oneof field:
//   - the field name must match the referenced *Rules message name,
//     e.g. field `string` references `StringRules`
func (c *Checker) checkFieldRuleNamesMatch() {
	for _, rulesMsg := range c.schema.RulesMessages {
		fieldName := string(rulesMsg.Parent.Name())
		messageName := string(rulesMsg.Desc.Name())
		if strings.ReplaceAll(fieldName, "_", "") != strings.ToLower(strings.TrimSuffix(messageName, "Rules")) {
			c.fail(rulesMsg.Parent, fmt.Sprintf("%s must reference a message with a matching name", rulesMsg.Parent.FullName()))
		}
	}
}

// checkRuleMessagesExtensionRange checks that each *Rules message
// allows custom predefined rules:
//   - `extensions 1000 to max` must be present
//   - the leading comment on the extension range must be identical
//     across all *Rules messages
//
// Exceptions are specified in validateschema/exempt.go.
func (c *Checker) checkRuleMessagesExtensionRange() {
	// check presence
	var firstComment string
	var firstMessage protoreflect.MessageDescriptor
	for _, rulesMsg := range c.schema.RulesMessages {
		hasExtensionRange1000ToMax := false
		if rulesMsg.Desc.ExtensionRanges().Len() == 1 {
			extRange := rulesMsg.Desc.ExtensionRanges().Get(0)
			hasExtensionRange1000ToMax = extRange[0] == 1000 && extRange[1] > protowire.MaxValidNumber //nolint:mnd
		}
		if hasExtensionRange1000ToMax && rulesMsg.NoExtensionRange {
			c.fail(rulesMsg.Desc, fmt.Sprintf("%s must not have extensions 1000 to max", rulesMsg.Desc.FullName()))
		}
		if !hasExtensionRange1000ToMax && !rulesMsg.NoExtensionRange {
			c.fail(rulesMsg.Desc, fmt.Sprintf("%s must have extensions 1000 to max", rulesMsg.Desc.FullName()))
		}
		// check comment consistency
		if rulesMsg.NoExtensionRange {
			continue
		}
		comment := rulesMsg.ExtensionRangeComment
		if comment == "" {
			continue
		}
		if firstComment == "" {
			firstComment = comment
			firstMessage = rulesMsg.Desc
			continue
		}
		if comment != firstComment {
			c.fail(rulesMsg.Desc, fmt.Sprintf("%s: extension range comment differs from %s",
				rulesMsg.Desc.FullName(), firstMessage.FullName()))
		}
	}
}

// checkExampleFields checks that each *Rules message has a field for users to
// specify examples:
//   - the field must be present, e.g. `repeated string example = 34`
//     in StringRules
//   - the element type must match the rule's target type, e.g.
//     StringRules.example is `repeated string`, TimestampRules.example
//     is `repeated google.protobuf.Timestamp`
//   - the field must have a (predefined).cel rule
//   - the expression must be "true", so that it does not impact validation
//   - the id must end in ".example"
//   - the rule must not have a message
//
// Exceptions are specified in validateschema/exempt.go.
func (c *Checker) checkExampleFields() {
	// check presence
	for _, rulesMsg := range c.schema.RulesMessages {
		if rulesMsg.HasExample && rulesMsg.NoExample {
			c.fail(rulesMsg.Desc, fmt.Sprintf("%s must have an example field", rulesMsg.Desc.FullName()))
		}
		if !rulesMsg.HasExample && !rulesMsg.NoExample {
			c.fail(rulesMsg.Desc, fmt.Sprintf("%s must not have an example field", rulesMsg.Desc.FullName()))
		}
	}
	// check type
	for _, field := range c.schema.RuleFields {
		if !field.IsExample {
			continue
		}
		exampleField := field.Desc
		if !exampleField.IsList() {
			c.fail(exampleField, fmt.Sprintf("%s must be repeated", exampleField.FullName()))
		}
		thisType := field.Parent.ThisType
		switch thisType.Kind { //nolint:exhaustive
		case protoreflect.MessageKind:
			if exampleField.Kind() != protoreflect.MessageKind {
				c.fail(exampleField, fmt.Sprintf("%s must be message kind", exampleField.FullName()))
			} else if exampleField.Message().FullName() != thisType.FullName {
				c.fail(exampleField, fmt.Sprintf("%s must be %s, got %s",
					exampleField.FullName(), thisType.FullName, exampleField.Message().FullName()))
			}
		case protoreflect.EnumKind:
			if exampleField.Kind() != protoreflect.Int32Kind {
				c.fail(exampleField, fmt.Sprintf("%s must be int32 for enum, got %s",
					exampleField.FullName(), exampleField.Kind()))
			}
		default:
			if exampleField.Kind() != thisType.Kind {
				c.fail(exampleField, fmt.Sprintf("%s must be %s, got %s",
					exampleField.FullName(), thisType.Kind, exampleField.Kind()))
			}
		}
		// check rules
		if field.Parent.NoExample {
			continue
		}
		if len(field.Rules) == 0 {
			c.fail(exampleField, fmt.Sprintf("%s must have (predefined).cel", exampleField.FullName()))
			continue
		}
		for _, exampleRule := range field.Rules {
			if exampleRule.Expression != "true" {
				c.fail(exampleField, fmt.Sprintf("%s: (predefined).cel.expression must be \"true\"", exampleField.FullName()))
			}
			if !strings.HasSuffix(exampleRule.ID, ".example") {
				c.fail(exampleField, fmt.Sprintf("%s: (predefined).cel.id %q must end with .example", exampleField.FullName(), exampleRule.ID))
			}
			if exampleRule.Message != "" {
				c.fail(exampleField, fmt.Sprintf("%s: must not have (predefined).cel.message", exampleField.FullName()))
			}
		}
	}
}

// checkRules checks (predefined).cel on every rule field:
//   - every rule field must have (predefined).cel
//   - each id is prefixed with the FieldRules.type oneof
//     field name (e.g. "string.min_len"), and globally unique
//   - each expression compiles as valid CEL with the correct type env
//   - each expression returns the correct type (bool when message
//     is set, string otherwise)
//   - RE2 regex literals embedded in expressions are valid
//
// Exceptions are specified in validateschema/exempt.go.
func (c *Checker) checkRules() {
	// check presence
	for _, rulesMsg := range c.schema.RulesMessages {
		for _, field := range rulesMsg.Fields {
			exempt := field.NoCEL
			if len(field.Rules) > 0 && exempt {
				c.fail(field.Desc, fmt.Sprintf("%s must not have (predefined).cel: this rule is validated by implementations directly", field.Desc.FullName()))
			}
			if len(field.Rules) == 0 && !exempt {
				c.fail(field.Desc, fmt.Sprintf("%s must have (predefined).cel", field.Desc.FullName()))
			}
		}
	}
	// check ids
	idsSeen := make(map[string]protoreflect.FullName)
	for _, celRule := range c.schema.AllRules {
		field := celRule.Parent
		rulesMsg := field.Parent
		fieldDesc := field.Desc
		if celRule.ID == "" {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id must not be blank", fieldDesc.FullName(), celRule.Index))
			continue
		}
		wantPrefix := string(rulesMsg.Parent.Name()) + "."
		if !strings.HasPrefix(celRule.ID, wantPrefix) {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id must start with %q", fieldDesc.FullName(), celRule.Index, wantPrefix))
		}
		if prev, ok := idsSeen[celRule.ID]; ok {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id duplicates id on %s", fieldDesc.FullName(), celRule.Index, prev))
		}
		idsSeen[celRule.ID] = fieldDesc.FullName()
	}
	// check expressions
	for _, celRule := range c.schema.AllRules {
		field := celRule.Parent
		rulesMsg := field.Parent
		fieldDesc := field.Desc
		if celRule.Expression == "" {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].expression must not be blank", fieldDesc.FullName(), celRule.Index))
			continue
		}
		env, err := celenv.New(
			c.schema.Files,
			rulesMsg.ThisType.CELType,
			rulesMsg.RulesCELType,
			field.RuleCELType,
		)
		if err != nil {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %v", fieldDesc.FullName(), celRule.Index, err))
			continue
		}
		ast, issues := env.Compile(celRule.Expression)
		if issues != nil && issues.Err() != nil {
			for _, e := range issues.Errors() {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %s", fieldDesc.FullName(), celRule.Index, e.Message))
			}
			continue
		}
		if celRule.Parent.IsExample {
			continue
		}
		// check returned string shadowed by Rule.message
		outType := ast.OutputType()
		if celRule.Message != "" {
			if !outType.IsEquivalentType(cel.BoolType) {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: must return bool when message is set, got %s", fieldDesc.FullName(), celRule.Index, outType))
			}
		} else {
			if !outType.IsEquivalentType(cel.StringType) {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: must return string when message is not set, got %s", fieldDesc.FullName(), celRule.Index, outType))
			}
		}
		// check RE2 literals
		for _, pattern := range celenv.FindRE2Literals(ast) {
			if _, err := regexp.Compile(pattern); err != nil {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %v", fieldDesc.FullName(), celRule.Index, err))
			}
		}
	}
}
