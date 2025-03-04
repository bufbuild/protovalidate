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
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/custom_constraints"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
)

func customSuite() suites.Suite {
	return suites.Suite{
		"no_expressions/empty": {
			Message:  &custom_constraints.NoExpressions{},
			Expected: results.Success(true),
		},
		"no_expression/populated": {
			Message: &custom_constraints.NoExpressions{
				A: 1,
				B: custom_constraints.Enum_ENUM_ONE,
				C: &custom_constraints.NoExpressions_Nested{},
			},
			Expected: results.Success(true),
		},
		"message_expressions/empty": {
			Message: &custom_constraints.MessageExpressions{},
			Expected: results.Violations(
				&validate.Violation{ConstraintId: proto.String("message_expression_scalar")},
				&validate.Violation{ConstraintId: proto.String("message_expression_enum")},
			),
		},
		"message_expression/valid": {
			Message: &custom_constraints.MessageExpressions{
				A: 3,
				B: 4,
				C: custom_constraints.Enum_ENUM_ONE,
				D: custom_constraints.Enum_ENUM_UNSPECIFIED,
				E: &custom_constraints.MessageExpressions_Nested{
					A: 4,
					B: 3,
				},
				F: &custom_constraints.MessageExpressions_Nested{
					A: 4,
					B: 2,
				},
			},
			Expected: results.Success(true),
		},
		"message_expression/invalid": {
			Message: &custom_constraints.MessageExpressions{
				A: 5,
				B: 4,
				C: custom_constraints.Enum_ENUM_ONE,
				D: custom_constraints.Enum_ENUM_ONE,
				E: &custom_constraints.MessageExpressions_Nested{
					A: 3,
					B: 3,
				},
				F: &custom_constraints.MessageExpressions_Nested{
					A: 4,
					B: 5,
				},
			},
			Expected: results.Violations(
				&validate.Violation{ConstraintId: proto.String("message_expression_scalar")},
				&validate.Violation{ConstraintId: proto.String("message_expression_enum")},
				&validate.Violation{ConstraintId: proto.String("message_expression_embed")},
				&validate.Violation{
					Field:        results.FieldPath("e"),
					ConstraintId: proto.String("message_expression_nested"),
				},
				&validate.Violation{
					Field:        results.FieldPath("f"),
					ConstraintId: proto.String("message_expression_nested"),
				},
			),
		},
		"field_expressions/empty": {
			Message: &custom_constraints.FieldExpressions{},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("a"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_scalar"),
				},
				&validate.Violation{
					Field:        results.FieldPath("b"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_enum"),
				},
			),
		},
		"field_expressions/valid": {
			Message: &custom_constraints.FieldExpressions{
				A: 50,
				B: custom_constraints.Enum_ENUM_ONE,
				C: &custom_constraints.FieldExpressions_Nested{
					A: 16,
				},
				D: 0,
			},
			Expected: results.Success(true),
		},
		"field_expressions/invalid": {
			Message: &custom_constraints.FieldExpressions{
				A: 42,
				B: custom_constraints.Enum_ENUM_UNSPECIFIED,
				C: &custom_constraints.FieldExpressions_Nested{
					A: -3,
				},
				D: 3,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("a"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_scalar"),
				},
				&validate.Violation{
					Field:        results.FieldPath("b"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_enum"),
				},
				&validate.Violation{
					Field:        results.FieldPath("c"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_embed"),
				},
				&validate.Violation{
					Field:        results.FieldPath("c.a"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_nested"),
				},
				&validate.Violation{
					Field:        results.FieldPath("d"),
					Rule:         results.FieldPath("cel[0]"),
					ConstraintId: proto.String("field_expression_scalar_multiple_1"),
				},
				&validate.Violation{
					Field:        results.FieldPath("d"),
					Rule:         results.FieldPath("cel[1]"),
					ConstraintId: proto.String("field_expression_scalar_multiple_2"),
				},
			),
		},
		"now/equality": {
			Message:  &custom_constraints.NowEqualsNow{},
			Expected: results.Success(true),
		},
		"compilation/missing_field": {
			Message: &custom_constraints.MissingField{A: 123},
			Expected: results.CompilationError(
				"expression references a non-existent field b"),
		},
		"compilation/incorrect_type": {
			Message: &custom_constraints.IncorrectType{A: 123},
			Expected: results.CompilationError(
				"expression incorrectly treats an int32 field as a string"),
		},
		"runtime/dyn_incorrect_type": {
			Message: &custom_constraints.DynRuntimeError{A: 123},
			Expected: results.RuntimeError(
				"dynamic type field access results in runtime type error"),
		},
	}
}
