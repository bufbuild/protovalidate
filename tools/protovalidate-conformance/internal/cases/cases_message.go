// Copyright 2023 Buf Technologies, Inc.
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
					FieldPath:    proto.String("val.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `foo`"),
				},
			),
		},
		"field/transitive/invalid": {
			Message: &cases.Message{Val: &cases.TestMsg{Const: "foo", Nested: &cases.TestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.nested.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `foo`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
			),
		},
		"required/oneof/invalid": {
			Message: &cases.MessageRequiredOneof{},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("one"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
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
					FieldPath:    proto.String("val.val"),
					ConstraintId: proto.String("int64.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
		"cross-package-embed-none/invalid": {
			Message: &cases.MessageCrossPackage{Val: &other_package.Embed{Val: -1}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.val"),
					ConstraintId: proto.String("int64.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
	}
}
