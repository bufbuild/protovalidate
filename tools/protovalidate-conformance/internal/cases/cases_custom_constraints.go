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
		"field_expression/multiple/scalar/valid": {
			Message: &custom_constraints.FieldExpressionMultipleScalar{
				Val: 3,
			},
			Expected: results.Success(true),
		},
		"field_expression/multiple/scalar/invalid": {
			Message: &custom_constraints.FieldExpressionMultipleScalar{
				Val: 1,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.multiple.scalar.2"),
					Rule:         results.FieldPath("cel[1]"),
					Message:      proto.String("test message field_expression.multiple.scalar.2"),
				},
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.multiple.scalar.3"),
					Rule:         results.FieldPath("cel[2]"),
					Message:      proto.String("test message field_expression.multiple.scalar.3"),
				},
			),
		},
		"field_expression/nested/scalar/valid": {
			Message: &custom_constraints.FieldExpressionNestedScalar{
				Nested: &custom_constraints.FieldExpressionScalar{
					Val: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/nested/scalar/invalid": {
			Message: &custom_constraints.FieldExpressionNestedScalar{
				Nested: &custom_constraints.FieldExpressionScalar{
					Val: 2,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("nested.val"),
					ConstraintId: proto.String("field_expression.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.scalar"),
				},
			),
		},
		"field_expression/optional/scalar/unpopulated/valid": {
			Message:  &custom_constraints.FieldExpressionOptionalScalar{},
			Expected: results.Success(true),
		},
		"field_expression/scalar/unpopulated/invalid": {
			Message: &custom_constraints.FieldExpressionScalar{},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.scalar"),
				},
			),
		},
		"field_expression/scalar/valid": {
			Message: &custom_constraints.FieldExpressionScalar{
				Val: 1,
			},
			Expected: results.Success(true),
		},
		"field_expression/scalar/invalid": {
			Message: &custom_constraints.FieldExpressionScalar{
				Val: 2,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.scalar"),
				},
			),
		},
		"field_expression/enum/valid": {
			Message: &custom_constraints.FieldExpressionEnum{
				Val: custom_constraints.Enum_ENUM_ONE,
			},
			Expected: results.Success(true),
		},
		"field_expression/enum/invalid": {
			Message: &custom_constraints.FieldExpressionEnum{
				Val: custom_constraints.Enum_ENUM_UNSPECIFIED,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.enum"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.enum"),
				},
			),
		},
		"field_expression/message/valid": {
			Message: &custom_constraints.FieldExpressionMessage{
				Val: &custom_constraints.FieldExpressionMessage_Msg{
					A: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/message/invalid": {
			Message: &custom_constraints.FieldExpressionMessage{
				Val: &custom_constraints.FieldExpressionMessage_Msg{
					A: 2,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.message"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.message"),
				},
			),
		},
		"field_expression/map/int32/valid": {
			Message: &custom_constraints.FieldExpressionMapInt32{
				Val: map[int32]int32{
					1: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/int32/invalid": {
			Message: &custom_constraints.FieldExpressionMapInt32{
				Val: map[int32]int32{
					1: 1,
					2: 2,
					3: 1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/int64/valid": {
			Message: &custom_constraints.FieldExpressionMapInt64{
				Val: map[int64]int64{
					1: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/int64/invalid": {
			Message: &custom_constraints.FieldExpressionMapInt64{
				Val: map[int64]int64{
					1: 1,
					2: 2,
					3: 1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/uint32/valid": {
			Message: &custom_constraints.FieldExpressionMapUint32{
				Val: map[uint32]uint32{
					1: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/uint32/invalid": {
			Message: &custom_constraints.FieldExpressionMapUint32{
				Val: map[uint32]uint32{
					1: 1,
					2: 2,
					3: 1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/uint64/valid": {
			Message: &custom_constraints.FieldExpressionMapUint64{
				Val: map[uint64]uint64{
					1: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/uint64/invalid": {
			Message: &custom_constraints.FieldExpressionMapUint64{
				Val: map[uint64]uint64{
					1: 1,
					2: 2,
					3: 1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/bool/valid": {
			Message: &custom_constraints.FieldExpressionMapBool{
				Val: map[bool]bool{
					true: false,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/bool/invalid": {
			Message: &custom_constraints.FieldExpressionMapBool{
				Val: map[bool]bool{
					true:  false,
					false: true,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/string/valid": {
			Message: &custom_constraints.FieldExpressionMapString{
				Val: map[string]string{
					"test": "foo",
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/string/invalid": {
			Message: &custom_constraints.FieldExpressionMapString{
				Val: map[string]string{
					"test": "foo",
					"bar":  "baz",
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar"),
				},
			),
		},
		"field_expression/map/enum/valid": {
			Message: &custom_constraints.FieldExpressionMapEnum{
				Val: map[int32]custom_constraints.Enum{
					4: custom_constraints.Enum_ENUM_ONE,
					8: custom_constraints.Enum_ENUM_ONE,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/enum/invalid": {
			Message: &custom_constraints.FieldExpressionMapEnum{
				Val: map[int32]custom_constraints.Enum{
					4:  custom_constraints.Enum_ENUM_ONE,
					8:  custom_constraints.Enum_ENUM_UNSPECIFIED,
					12: custom_constraints.Enum_ENUM_ONE,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.enum"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.enum"),
				},
			),
		},
		"field_expression/map/message/valid": {
			Message: &custom_constraints.FieldExpressionMapMessage{
				Val: map[int32]*custom_constraints.FieldExpressionMapMessage_Msg{
					4: {A: 1},
					8: {A: 1},
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/message/invalid": {
			Message: &custom_constraints.FieldExpressionMapMessage{
				Val: map[int32]*custom_constraints.FieldExpressionMapMessage_Msg{
					4:  {A: 1},
					8:  {A: 2},
					12: {A: 1},
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.map.message"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.map.message"),
				},
			),
		},
		"field_expression/map/keys/valid": {
			Message: &custom_constraints.FieldExpressionMapKeys{
				Val: map[int32]int32{
					4: 0,
					8: 0,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/keys/invalid": {
			Message: &custom_constraints.FieldExpressionMapKeys{
				Val: map[int32]int32{
					4: 0,
					9: 0,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[9]"),
					ConstraintId: proto.String("field_expression.map.keys"),
					Rule:         results.FieldPath("map.keys.cel[0]"),
					Message:      proto.String("test message field_expression.map.keys"),
					ForKey:       proto.Bool(true),
				},
			),
		},
		"field_expression/map/scalar/values/valid": {
			Message: &custom_constraints.FieldExpressionMapScalarValues{
				Val: map[int32]int32{
					4: 1,
					8: 1,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/scalar/values/invalid": {
			Message: &custom_constraints.FieldExpressionMapScalarValues{
				Val: map[int32]int32{
					4:  1,
					8:  0,
					12: 1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[8]"),
					ConstraintId: proto.String("field_expression.map.scalar.values"),
					Rule:         results.FieldPath("map.values.cel[0]"),
					Message:      proto.String("test message field_expression.map.scalar.values"),
				},
			),
		},
		"field_expression/map/enum/values/valid": {
			Message: &custom_constraints.FieldExpressionMapEnumValues{
				Val: map[int32]custom_constraints.Enum{
					4: custom_constraints.Enum_ENUM_ONE,
					8: custom_constraints.Enum_ENUM_ONE,
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/enum/values/invalid": {
			Message: &custom_constraints.FieldExpressionMapEnumValues{
				Val: map[int32]custom_constraints.Enum{
					4:  custom_constraints.Enum_ENUM_ONE,
					8:  custom_constraints.Enum_ENUM_UNSPECIFIED,
					12: custom_constraints.Enum_ENUM_ONE,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[8]"),
					ConstraintId: proto.String("field_expression.map.enum.values"),
					Rule:         results.FieldPath("map.values.cel[0]"),
					Message:      proto.String("test message field_expression.map.enum.values"),
				},
			),
		},
		"field_expression/map/message/values/valid": {
			Message: &custom_constraints.FieldExpressionMapMessageValues{
				Val: map[int32]*custom_constraints.FieldExpressionMapMessageValues_Msg{
					4: {A: 1},
					8: {A: 1},
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/map/message/values//invalid": {
			Message: &custom_constraints.FieldExpressionMapMessageValues{
				Val: map[int32]*custom_constraints.FieldExpressionMapMessageValues_Msg{
					4:  {A: 1},
					8:  {A: 2},
					12: {A: 1},
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[8]"),
					ConstraintId: proto.String("field_expression.map.message.values"),
					Rule:         results.FieldPath("map.values.cel[0]"),
					Message:      proto.String("test message field_expression.map.message.values"),
				},
			),
		},
		"field_expression/repeated/scalar/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedScalar{
				Val: []int32{1, 1},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/scalar/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedScalar{
				Val: []int32{1, 2, 1},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.repeated.scalar"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.repeated.scalar"),
				},
			),
		},
		"field_expression/repeated/enum/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedEnum{
				Val: []custom_constraints.Enum{1, 1},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/enum/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedEnum{
				Val: []custom_constraints.Enum{custom_constraints.Enum_ENUM_ONE, custom_constraints.Enum_ENUM_UNSPECIFIED, custom_constraints.Enum_ENUM_ONE},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.repeated.enum"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.repeated.enum"),
				},
			),
		},
		"field_expression/repeated/message/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedMessage{
				Val: []*custom_constraints.FieldExpressionRepeatedMessage_Msg{
					{A: 1},
					{A: 1},
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/message/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedMessage{
				Val: []*custom_constraints.FieldExpressionRepeatedMessage_Msg{
					{A: 1},
					{A: 2},
					{A: 1},
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val"),
					ConstraintId: proto.String("field_expression.repeated.message"),
					Rule:         results.FieldPath("cel[0]"),
					Message:      proto.String("test message field_expression.repeated.message"),
				},
			),
		},
		"field_expression/repeated/scalar/items/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedScalarItems{
				Val: []int32{1, 1},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/scalar/items/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedScalarItems{
				Val: []int32{1, 2, 1},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[1]"),
					ConstraintId: proto.String("field_expression.repeated.scalar.items"),
					Rule:         results.FieldPath("repeated.items.cel[0]"),
					Message:      proto.String("test message field_expression.repeated.scalar.items"),
				},
			),
		},
		"field_expression/repeated/enum/items/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedEnumItems{
				Val: []custom_constraints.Enum{custom_constraints.Enum_ENUM_ONE, custom_constraints.Enum_ENUM_ONE},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/enum/items/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedEnumItems{
				Val: []custom_constraints.Enum{
					custom_constraints.Enum_ENUM_ONE,
					custom_constraints.Enum_ENUM_UNSPECIFIED,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[1]"),
					ConstraintId: proto.String("field_expression.repeated.enum.items"),
					Rule:         results.FieldPath("repeated.items.cel[0]"),
					Message:      proto.String("test message field_expression.repeated.enum.items"),
				},
			),
		},
		"field_expression/repeated/message/items/valid": {
			Message: &custom_constraints.FieldExpressionRepeatedMessageItems{
				Val: []*custom_constraints.FieldExpressionRepeatedMessageItems_Msg{
					{A: 1},
					{A: 1},
				},
			},
			Expected: results.Success(true),
		},
		"field_expression/repeated/message/items/invalid": {
			Message: &custom_constraints.FieldExpressionRepeatedMessageItems{
				Val: []*custom_constraints.FieldExpressionRepeatedMessageItems_Msg{
					{A: 1},
					{A: 2},
					{A: 1},
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:        results.FieldPath("val[1]"),
					ConstraintId: proto.String("field_expression.repeated.message.items"),
					Rule:         results.FieldPath("repeated.items.cel[0]"),
					Message:      proto.String("test message field_expression.repeated.message.items"),
				},
			),
		},
	}
}
