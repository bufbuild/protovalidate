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
					Field:   results.FieldPath("val.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `abcd`"),
				},
			),
		},
		"field/embedded/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{Another: &cases.ComplexTestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.another.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.another.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `abcd`"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `abcd`"),
				},
			),
		},
		"field/transitive/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{Const: "abcd", BoolConst: true, Nested: &cases.ComplexTestMsg{}}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.bool_const"),
					Rule:    results.FieldPath("bool.const"),
					RuleId:  proto.String("bool.const"),
					Message: proto.String("value must equal false"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.nested.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `abcd`"),
				},
			),
		},
		"many/all-non-message-fields/invalid": {
			Message: &cases.KitchenSinkMessage{Val: &cases.ComplexTestMsg{BoolConst: true, FloatVal: &wrapperspb.FloatValue{}, TsVal: &timestamppb.Timestamp{}, FloatConst: 8, AnyVal: &anypb.Any{TypeUrl: "asdf"}, RepTsVal: []*timestamppb.Timestamp{{Nanos: 1}}}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val.any_val"),
					Rule:    results.FieldPath("any.in"),
					RuleId:  proto.String("any.in"),
					Message: proto.String("type URL must be in the allow list"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.bool_const"),
					Rule:    results.FieldPath("bool.const"),
					RuleId:  proto.String("bool.const"),
					Message: proto.String("value must equal false"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.bytes_val"),
					Rule:    results.FieldPath("bytes.const"),
					RuleId:  proto.String("bytes.const"),
					Message: proto.String("value must be 0099"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.double_in"),
					Rule:    results.FieldPath("double.in"),
					RuleId:  proto.String("double.in"),
					Message: proto.String("value must be in list [456.789, 123]"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.enum_const"),
					Rule:    results.FieldPath("enum.const"),
					RuleId:  proto.String("enum.const"),
					Message: proto.String("value must equal 2"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.float_val"),
					Rule:    results.FieldPath("float.gt"),
					RuleId:  proto.String("float.gt"),
					Message: proto.String("value must be greater than 0"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.float_const"),
					Rule:    results.FieldPath("float.lt"),
					RuleId:  proto.String("float.lt"),
					Message: proto.String("value must be less than 8"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.int_const"),
					Rule:    results.FieldPath("int32.const"),
					RuleId:  proto.String("int32.const"),
					Message: proto.String("value must equal 5"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.o"),
					RuleId:  proto.String("required"),
					Message: proto.String("exactly one field is required in oneof"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.dur_val"),
					Rule:    results.FieldPath("required"),
					RuleId:  proto.String("required"),
					Message: proto.String("value is required"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.const"),
					Rule:    results.FieldPath("string.const"),
					RuleId:  proto.String("string.const"),
					Message: proto.String("value must equal `abcd`"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.ts_val"),
					Rule:    results.FieldPath("timestamp.gt"),
					RuleId:  proto.String("timestamp.gt"),
					Message: proto.String("value must be greater than 1970-01-01T00:00:07Z"),
				},
				&validate.Violation{
					Field:   results.FieldPath("val.rep_ts_val[0]"),
					Rule:    results.FieldPath("repeated.items.timestamp.gte"),
					RuleId:  proto.String("timestamp.gte"),
					Message: proto.String("value must be greater than or equal to 1970-01-01T00:00:00.001Z"),
				},
			),
		},
	}
}
