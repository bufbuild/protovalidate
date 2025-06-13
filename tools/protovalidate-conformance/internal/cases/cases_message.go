// Copyright 2023-2025 Buf Technologies, Inc.
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

package cases

import (
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/other_package"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
)

func messageSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.MessageNone{Val: &cases.MessageNone_NoneMsg{}},
			Expected: results.Success(true),
		},
		"none/unset/valid": {
			Message:  &cases.MessageNone{},
			Expected: results.Success(true),
		},
		"disabled/valid": {
			Message:  &cases.MessageDisabled{Val: 456},
			Expected: results.Success(true),
		},
		"disabled/invalid-field/valid": {
			Message:  &cases.MessageDisabled{Val: 0},
			Expected: results.Success(true),
		},
		"field/valid": {
			Message:  &cases.Message{Val: &cases.TestMsg{Const: "foo"}},
			Expected: results.Success(true),
		},
		"field/unset/valid": {
			Message:  &cases.Message{},
			Expected: results.Success(true),
		},
		"field/invalid": {
			Message: &cases.Message{Val: &cases.TestMsg{}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `foo`"),
				},
			),
		},
		"field/transitive/invalid": {
			Message: &cases.Message{Val: &cases.TestMsg{Const: "foo", Nested: &cases.TestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.nested.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `foo`"),
				},
			),
		},
		"skip/valid": {
			Message:  &cases.MessageSkip{Val: &cases.TestMsg{}},
			Expected: results.Success(true),
		},
		"required/valid": {
			Message:  &cases.MessageRequired{Val: &cases.TestMsg{Const: "foo"}},
			Expected: results.Success(true),
		},
		"required/oneof/valid": {
			Message:  &cases.MessageRequiredOneof{One: &cases.MessageRequiredOneof_Val{Val: &cases.TestMsg{Const: "foo"}}},
			Expected: results.Success(true),
		},
		"required/invalid": {
			Message: &cases.MessageRequired{},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
			),
		},
		"required/oneof/invalid": {
			Message: &cases.MessageRequiredOneof{},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("one"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
			),
		},
		"optional/required/valid": {
			Message:  &cases.MessageRequiredButOptional{Val: &cases.TestMsg{Const: "foo"}},
			Expected: results.Success(true),
		},
		"required/unset/valid": {
			Message: &cases.MessageRequiredButOptional{},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
			),
		},
		"cross-package-embed-none/valid": {
			Message:  &cases.MessageCrossPackage{Val: &other_package.Embed{Val: 1}},
			Expected: results.Success(true),
		},
		"cross-package-embed-none/nil/valid": {
			Message:  &cases.MessageCrossPackage{},
			Expected: results.Success(true),
		},
		"cross-package-embed-none/empty/valid": {
			Message: &cases.MessageCrossPackage{Val: &other_package.Embed{}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.val"),
					Rule:    results.FieldPath("int64.gt"),
					RuleId:  proto.String("int64.gt"),
					Message: proto.String("value must be greater than 0"),
				},
			),
		},
		"cross-package-embed-none/invalid": {
			Message: &cases.MessageCrossPackage{Val: &other_package.Embed{Val: -1}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.val"),
					Rule:    results.FieldPath("int64.gt"),
					RuleId:  proto.String("int64.gt"),
					Message: proto.String("value must be greater than 0"),
				},
			),
		},
		"oneof/single-field/valid": {
			// BoolField is not part of the oneof, so it can be set on this message
			Message:  &cases.MessageOneofSingleField{StrField: "test", BoolField: true},
			Expected: results.Success(true),
		},
		"oneof/single-field/required/valid": {
			// BoolField is not part of the oneof, so it can be set on this message
			Message:  &cases.MessageOneofSingleFieldRequired{StrField: "test", BoolField: true},
			Expected: results.Success(true),
		},
		"oneof/single-field/required/invalid": {
			// BoolField is not part of the oneof, so it can be set on this message
			Message: &cases.MessageOneofSingleFieldRequired{BoolField: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of str_field must be set"),
				},
			),
		},
		"oneof/two-fields/valid": {
			Message:  &cases.MessageOneofMultipleFields{StrField: "test"},
			Expected: results.Success(true),
		},
		"oneof/two-fields/invalid": {
			Message: &cases.MessageOneofMultipleFields{StrField: "test", BoolField: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("only one of str_field, bool_field can be set"),
				},
			),
		},
		"oneof/multiple-fields/required/valid": {
			Message:  &cases.MessageOneofMultipleFieldsRequired{StrField: "test"},
			Expected: results.Success(true),
		},
		"oneof/multiple-fields/required/invalid": {
			Message: &cases.MessageOneofMultipleFieldsRequired{},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of str_field, bool_field must be set"),
				},
			),
		},
		"oneof/multiple-fields/required/two-fields-set/invalid": {
			Message: &cases.MessageOneofMultipleFieldsRequired{
				StrField:  "test",
				BoolField: true,
			},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("only one of str_field, bool_field can be set"),
				},
			),
		},
		"oneof/multiple-shared-fields/required/valid": {
			// String field which is common in both should satisfy both.
			Message: &cases.MessageOneofMultipleSharedFields{
				StrField: "test",
			},
			Expected: results.Success(true),
		},
		"oneof/multiple-shared-fields/required/invalid": {
			Message: &cases.MessageOneofMultipleSharedFields{
				BoolField: true,
			},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of str_field, int_field must be set"),
				},
			),
		},
		"oneof/implicit-ignore/valid": {
			Message:  &cases.MessageOneofIgnoreUnpopulated{},
			Expected: results.Success(true),
		},
		"oneof/implicit-ignore/required/valid": {
			Message:  &cases.MessageOneofIgnoreUnpopulatedRequired{StrField: "test"},
			Expected: results.Success(true),
		},
		"oneof/implicit-ignore/required/invalid": {
			Message: &cases.MessageOneofIgnoreUnpopulatedRequired{},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of str_field, bool_field must be set"),
				},
			),
		},
		"oneof/ignore-override/valid": {
			Message: &cases.MessageOneofIgnoreOverride{
				MsgField: &cases.TestMsg{
					Const: "wrong value",
				},
			},
			Expected: results.Success(true),
		},
		"oneof/unknown-field/invalid": {
			Message:  &cases.MessageOneofUnknownFieldName{},
			Expected: results.CompilationError("field xxx not found in message buf.validate.conformance.cases.MessageOneofUnknownFieldName"),
		},
		"oneof/duplicate-field/invalid": {
			Message:  &cases.MessageOneofDuplicateField{},
			Expected: results.CompilationError("duplicate str_field in oneof rule for the message buf.validate.conformance.cases.MessageOneofDuplicateField"),
		},
		"oneof/zero-fields/invalid": {
			Message:  &cases.MessageOneofZeroFields{},
			Expected: results.CompilationError("at least one field must be specified in oneof rule for the message buf.validate.conformance.cases.MessageOneofZeroFields"),
		},
		"oneof/unsatisfiable/invalid": {
			Message: &cases.MessageOneofUnsatisfiable{},
			Expected: results.Violations(
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of a, b must be set"),
				},
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of b, c must be set"),
				},
				&validate.Violation{
					RuleId:  proto.String("message.oneof"),
					Message: proto.String("one of a, c must be set"),
				},
			),
		},
	}
}
