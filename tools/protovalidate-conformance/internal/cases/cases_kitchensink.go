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
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

func kitchenSinkSuite() suites.Suite {
	return suites.Suite{
		"field/valid": {
			Message:  &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{Const: "abcd", IntConst: 5, BoolConst: false, FloatVal: &wrapperspb.FloatValue{Value: 1}, DurVal: &durationpb.Duration{Seconds: 3}, TsVal: &timestamppb.Timestamp{Seconds: 17}, FloatConst: 7, DoubleIn: 123, EnumConst: cases.ComplexTestEnum_COMPLEX_TEST_ENUM_TWO, AnyVal: &anypb.Any{TypeUrl: "type.googleapis.com/google.protobuf.Duration"}, RepTsVal: []*timestamppb.Timestamp{{Seconds: 3}}, MapVal: map[int32]string{-1: "a", -2: "b"}, BytesVal: []byte("\x00\x99"), O: &cases.ComplexTestMsg_X{X: "foobar"}}},
			Expected: results.Success(true),
		},
		"unset/valid": {
			Message:  &cases.KitchenSinkMessage{},
			Expected: results.Success(true),
		},
		"field/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `abcd`"),
				},
			),
		},
		"field/embedded/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{Another: &cases.ComplexTestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.another.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.another.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `abcd`"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `abcd`"),
				},
			),
		},
		"field/transitive/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{Const: "abcd", BoolConst: true, Nested: &cases.ComplexTestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.bool_const"),
					ConstraintId: proto.String("bool.const"),
					Message:      proto.String("value must equal false"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.nested.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `abcd`"),
				},
			),
		},
		"many/all-non-message-fields/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{BoolConst: true, FloatVal: &wrapperspb.FloatValue{}, TsVal: &timestamppb.Timestamp{}, FloatConst: 8, AnyVal: &anypb.Any{TypeUrl: "asdf"}, RepTsVal: []*timestamppb.Timestamp{{Nanos: 1}}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val.any_val"),
					ConstraintId: proto.String("any.in"),
					Message:      proto.String("type URL must be in the allow list"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.bool_const"),
					ConstraintId: proto.String("bool.const"),
					Message:      proto.String("value must equal false"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.bytes_val"),
					ConstraintId: proto.String("bytes.const"),
					Message:      proto.String("value must be 0099"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.double_in"),
					ConstraintId: proto.String("double.in"),
					Message:      proto.String("value must be in list [456.789000, 123.000000]"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.enum_const"),
					ConstraintId: proto.String("enum.const"),
					Message:      proto.String("value must equal 2"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.float_val"),
					ConstraintId: proto.String("float.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.float_const"),
					ConstraintId: proto.String("float.lt"),
					Message:      proto.String("value must be less than 8"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.int_const"),
					ConstraintId: proto.String("int32.const"),
					Message:      proto.String("value must equal 5"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.o"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.dur_val"),
					ConstraintId: proto.String("required"),
					Message:      proto.String("value is required"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.const"),
					ConstraintId: proto.String("string.const"),
					Message:      proto.String("value must equal `abcd`"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.ts_val"),
					ConstraintId: proto.String("timestamp.gt"),
					Message:      proto.String("value must be greater than 1970-01-01T00:00:07Z"),
				},
				&validate.Violation{
					FieldPath:    proto.String("val.rep_ts_val[0]"),
					ConstraintId: proto.String("timestamp.gte"),
					Message:      proto.String("value must be greater than or equal to 1970-01-01T00:00:00.001Z"),
				},
			),
		},
	}
}
