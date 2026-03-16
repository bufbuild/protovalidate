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

	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/encoding/protowire"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// checkFieldRuleNamesMatch checks each FieldRules.type oneof field:
//   - the field name must match the referenced *Rules message name,
//     e.g. field `string` references `StringRules`
func (c *Checker) checkFieldRuleNamesMatch() {
	for _, rulesMsg := range c.schema.rulesMessages {
		fieldName := string(rulesMsg.parent.Name())
		messageName := string(rulesMsg.desc.Name())
		if strings.ReplaceAll(fieldName, "_", "") != strings.ToLower(strings.TrimSuffix(messageName, "Rules")) {
			c.fail(rulesMsg.parent, fmt.Sprintf("%s must reference a message with a matching name", rulesMsg.parent.FullName()))
		}
	}
}

// checkRuleMessagesExtensionRange checks that each *Rules message
// allows custom predefined rules:
//   - `extensions 1000 to max` must be present
//   - the leading comment on the extension range must be identical
//     across all *Rules messages
//
// Exceptions are specified in known.go.
func (c *Checker) checkRuleMessagesExtensionRange() {
	// check presence
	var firstComment string
	var firstMessage protoreflect.MessageDescriptor
	for _, rulesMsg := range c.schema.rulesMessages {
		hasExtensionRange1000ToMax := false
		if rulesMsg.desc.ExtensionRanges().Len() == 1 {
			extRange := rulesMsg.desc.ExtensionRanges().Get(0)
			hasExtensionRange1000ToMax = extRange[0] == 1000 && extRange[1] > protowire.MaxValidNumber //nolint:mnd
		}
		if hasExtensionRange1000ToMax && rulesMsg.noExtensionRange {
			c.fail(rulesMsg.desc, fmt.Sprintf("%s must not have extensions 1000 to max", rulesMsg.desc.FullName()))
		}
		if !hasExtensionRange1000ToMax && !rulesMsg.noExtensionRange {
			c.fail(rulesMsg.desc, fmt.Sprintf("%s must have extensions 1000 to max", rulesMsg.desc.FullName()))
		}
		// check comment consistency
		if rulesMsg.noExtensionRange {
			continue
		}
		comment := rulesMsg.extensionRangeComment
		if comment == "" {
			continue
		}
		if firstComment == "" {
			firstComment = comment
			firstMessage = rulesMsg.desc
			continue
		}
		if comment != firstComment {
			c.fail(rulesMsg.desc, fmt.Sprintf("%s: extension range comment differs from %s",
				rulesMsg.desc.FullName(), firstMessage.FullName()))
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
// Exceptions are specified in known.go.
func (c *Checker) checkExampleFields() {
	// check presence
	for _, rulesMsg := range c.schema.rulesMessages {
		if rulesMsg.hasExample && rulesMsg.noExample {
			c.fail(rulesMsg.desc, fmt.Sprintf("%s must have an example field", rulesMsg.desc.FullName()))
		}
		if !rulesMsg.hasExample && !rulesMsg.noExample {
			c.fail(rulesMsg.desc, fmt.Sprintf("%s must not have an example field", rulesMsg.desc.FullName()))
		}
	}
	// check type
	for _, field := range c.schema.ruleFields {
		if !field.isExample {
			continue
		}
		exampleField := field.desc
		if !exampleField.IsList() {
			c.fail(exampleField, fmt.Sprintf("%s must be repeated", exampleField.FullName()))
		}
		thisType := field.parent.thisType
		switch thisType.kind() { //nolint:exhaustive
		case protoreflect.MessageKind:
			if exampleField.Kind() != protoreflect.MessageKind {
				c.fail(exampleField, fmt.Sprintf("%s must be message kind", exampleField.FullName()))
			} else if exampleField.Message().FullName() != thisType.fullName() {
				c.fail(exampleField, fmt.Sprintf("%s must be %s, got %s",
					exampleField.FullName(), thisType.fullName(), exampleField.Message().FullName()))
			}
		case protoreflect.EnumKind:
			if exampleField.Kind() != protoreflect.Int32Kind {
				c.fail(exampleField, fmt.Sprintf("%s must be int32 for enum, got %s",
					exampleField.FullName(), exampleField.Kind()))
			}
		default:
			if exampleField.Kind() != thisType.kind() {
				c.fail(exampleField, fmt.Sprintf("%s must be %s, got %s",
					exampleField.FullName(), thisType.kind(), exampleField.Kind()))
			}
		}
		// check rules
		if field.parent.noExample {
			continue
		}
		if len(field.rules) == 0 {
			c.fail(exampleField, fmt.Sprintf("%s must have (predefined).cel", exampleField.FullName()))
			continue
		}
		for _, exampleRule := range field.rules {
			if exampleRule.expression != "true" {
				c.fail(exampleField, fmt.Sprintf("%s: (predefined).cel.expression must be \"true\"", exampleField.FullName()))
			}
			if !strings.HasSuffix(exampleRule.id, ".example") {
				c.fail(exampleField, fmt.Sprintf("%s: (predefined).cel.id %q must end with .example", exampleField.FullName(), exampleRule.id))
			}
			if exampleRule.message != "" {
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
// Exceptions are specified in known.go.
func (c *Checker) checkRules() {
	// check presence
	for _, rulesMsg := range c.schema.rulesMessages {
		for _, field := range rulesMsg.fields {
			exempt := field.noCEL
			if len(field.rules) > 0 && exempt {
				c.fail(field.desc, fmt.Sprintf("%s must not have (predefined).cel: this rule is validated by implementations directly", field.desc.FullName()))
			}
			if len(field.rules) == 0 && !exempt {
				c.fail(field.desc, fmt.Sprintf("%s must have (predefined).cel", field.desc.FullName()))
			}
		}
	}
	// check ids
	idsSeen := make(map[string]protoreflect.FullName)
	for _, celRule := range c.schema.allRules {
		field := celRule.parent
		rulesMsg := field.parent
		fieldDesc := field.desc
		if celRule.id == "" {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id must not be blank", fieldDesc.FullName(), celRule.ruleIndex))
			continue
		}
		wantPrefix := string(rulesMsg.parent.Name()) + "."
		if !strings.HasPrefix(celRule.id, wantPrefix) {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id must start with %q", fieldDesc.FullName(), celRule.ruleIndex, wantPrefix))
		}
		if prev, ok := idsSeen[celRule.id]; ok {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].id duplicates id on %s", fieldDesc.FullName(), celRule.ruleIndex, prev))
		}
		idsSeen[celRule.id] = fieldDesc.FullName()
	}
	// check expressions
	for _, celRule := range c.schema.allRules {
		field := celRule.parent
		rulesMsg := field.parent
		fieldDesc := field.desc
		if celRule.expression == "" {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d].expression must not be blank", fieldDesc.FullName(), celRule.ruleIndex))
			continue
		}
		env, err := celEnv(
			c.schema.files,
			rulesMsg.thisType.celType(),
			rulesMsg.rulesType.celType(),
			field.ruleType.celType(),
		)
		if err != nil {
			c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %v", fieldDesc.FullName(), celRule.ruleIndex, err))
			continue
		}
		ast, issues := env.Compile(celRule.expression)
		if issues != nil && issues.Err() != nil {
			for _, e := range issues.Errors() {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %s", fieldDesc.FullName(), celRule.ruleIndex, e.Message))
			}
			continue
		}
		if celRule.parent.isExample {
			continue
		}
		// check returned string shadowed by Rule.message
		outType := ast.OutputType()
		if celRule.message != "" {
			if !outType.IsEquivalentType(cel.BoolType) {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: must return bool when message is set, got %s", fieldDesc.FullName(), celRule.ruleIndex, outType))
			}
		} else {
			if !outType.IsEquivalentType(cel.StringType) {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: must return string when message is not set, got %s", fieldDesc.FullName(), celRule.ruleIndex, outType))
			}
		}
		// check RE2 literals
		for _, pattern := range findRE2Literals(ast) {
			if _, err := regexp.Compile(pattern); err != nil {
				c.fail(fieldDesc, fmt.Sprintf("%s: (predefined).cel[%d]: %v", fieldDesc.FullName(), celRule.ruleIndex, err))
			}
		}
	}
}
