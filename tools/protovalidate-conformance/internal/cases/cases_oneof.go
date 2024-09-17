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
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
)

func oneofSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.OneofNone{O: &cases.OneofNone_X{X: "foo"}},
			Expected: results.Success(true),
		},
		"none/empty/valid": {
			Message:  &cases.OneofNone{},
			Expected: results.Success(true),
		},
		"field/X/valid": {
			Message:  &cases.Oneof{O: &cases.Oneof_X{X: "foobar"}},
			Expected: results.Success(true),
		},
		"field/Y/valid": {
			Message:  &cases.Oneof{O: &cases.Oneof_Y{Y: 123}},
			Expected: results.Success(true),
		},
		"field/Z/valid": {
			Message:  &cases.Oneof{O: &cases.Oneof_Z{Z: &cases.TestOneofMsg{Val: true}}},
			Expected: results.Success(true),
		},
		"field/empty/valid": {
			Message:  &cases.Oneof{},
			Expected: results.Success(true),
		},
		"field/X/invalid": {
			Message:  &cases.Oneof{O: &cases.Oneof_X{X: "fizzbuzz"}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("x"), ConstraintId: proto.String("string.prefix")}),
		},
		"field/Y/invalid": {
			Message:  &cases.Oneof{O: &cases.Oneof_Y{Y: -1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("y"), ConstraintId: proto.String("int32.gt")}),
		},
		"filed/Z/invalid": {
			Message:  &cases.Oneof{O: &cases.Oneof_Z{Z: &cases.TestOneofMsg{}}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("z.val"), ConstraintId: proto.String("bool.const")}),
		},
		"required/valid/empty": {
			Message:  &cases.OneofRequired{O: &cases.OneofRequired_X{X: ""}},
			Expected: results.Success(true),
		},
		"required/valid/non-empty": {
			Message:  &cases.OneofRequired{O: &cases.OneofRequired_X{X: "foo"}},
			Expected: results.Success(true),
		},
		"required/invalid": {
			Message:  &cases.OneofRequired{},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("o"), ConstraintId: proto.String("required")}),
		},
		"required/required_field/valid/empty": {
			Message: &cases.OneofRequiredWithRequiredField{
				O: &cases.OneofRequiredWithRequiredField_A{A: ""},
			},
			Expected: results.Success(true),
		},
		"required/required_field/valid/non-empty": {
			Message: &cases.OneofRequiredWithRequiredField{
				O: &cases.OneofRequiredWithRequiredField_A{A: "foo"},
			},
			Expected: results.Success(true),
		},
		"required/required_field/wrong_field": {
			Message: &cases.OneofRequiredWithRequiredField{
				O: &cases.OneofRequiredWithRequiredField_B{B: "foo"},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("a"), ConstraintId: proto.String("required")}),
		},
		"required/required_field/invalid": {
			Message: &cases.OneofRequiredWithRequiredField{},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("o"), ConstraintId: proto.String("required")},
				&validate.Violation{FieldPath: proto.String("a"), ConstraintId: proto.String("required")}),
		},
	}
}
