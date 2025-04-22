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
	"time"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

func predefinedSuite() suites.Suite {
	return suites.Suite{
		"proto2/float/valid": {
			Message:  &cases.PredefinedFloatRuleProto2{Val: proto.Float32(1.0)},
			Expected: results.Success(true),
		},
		"proto2/float/invalid": {
			Message: &cases.PredefinedFloatRuleProto2{Val: proto.Float32(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto2/double/valid": {
			Message:  &cases.PredefinedDoubleRuleProto2{Val: proto.Float64(1.0)},
			Expected: results.Success(true),
		},
		"proto2/double/invalid": {
			Message: &cases.PredefinedDoubleRuleProto2{Val: proto.Float64(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto2/int32/valid": {
			Message:  &cases.PredefinedInt32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/int32/invalid": {
			Message: &cases.PredefinedInt32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/int64/valid": {
			Message:  &cases.PredefinedInt64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/int64/invalid": {
			Message: &cases.PredefinedInt64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_proto2]"),
					RuleId:  proto.String("int64.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/uint32/valid": {
			Message:  &cases.PredefinedUInt32RuleProto2{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto2/uint32/invalid": {
			Message: &cases.PredefinedUInt32RuleProto2{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto2/uint64/valid": {
			Message:  &cases.PredefinedUInt64RuleProto2{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto2/uint64/invalid": {
			Message: &cases.PredefinedUInt64RuleProto2{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto2/sint32/valid": {
			Message:  &cases.PredefinedSInt32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/sint32/invalid": {
			Message: &cases.PredefinedSInt32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto2/sint64/valid": {
			Message:  &cases.PredefinedSInt64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/sint64/invalid": {
			Message: &cases.PredefinedSInt64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint64.[buf.validate.conformance.cases.sint64_even_proto2]"),
					RuleId:  proto.String("sint64.even.proto2"),
					Message: proto.String("sint64 value is not even"),
				},
			),
		},
		"proto2/fixed32/valid": {
			Message:  &cases.PredefinedFixed32RuleProto2{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto2/fixed32/invalid": {
			Message: &cases.PredefinedFixed32RuleProto2{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed32.[buf.validate.conformance.cases.fixed32_even_proto2]"),
					RuleId:  proto.String("fixed32.even.proto2"),
					Message: proto.String("fixed32 value is not even"),
				},
			),
		},
		"proto2/fixed64/valid": {
			Message:  &cases.PredefinedFixed64RuleProto2{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto2/fixed64/invalid": {
			Message: &cases.PredefinedFixed64RuleProto2{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed64.[buf.validate.conformance.cases.fixed64_even_proto2]"),
					RuleId:  proto.String("fixed64.even.proto2"),
					Message: proto.String("fixed64 value is not even"),
				},
			),
		},
		"proto2/sfixed32/valid": {
			Message:  &cases.PredefinedSFixed32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/sfixed32/invalid": {
			Message: &cases.PredefinedSFixed32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed32.[buf.validate.conformance.cases.sfixed32_even_proto2]"),
					RuleId:  proto.String("sfixed32.even.proto2"),
					Message: proto.String("sfixed32 value is not even"),
				},
			),
		},
		"proto2/sfixed64/valid": {
			Message:  &cases.PredefinedSFixed64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/sfixed64/invalid": {
			Message: &cases.PredefinedSFixed64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.[buf.validate.conformance.cases.sfixed64_even_proto2]"),
					RuleId:  proto.String("sfixed64.even.proto2"),
					Message: proto.String("sfixed64 value is not even"),
				},
			),
		},
		"proto2/bool/valid": {
			Message:  &cases.PredefinedBoolRuleProto2{Val: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"proto2/bool/invalid": {
			Message: &cases.PredefinedBoolRuleProto2{Val: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto2/string/valid": {
			Message:  &cases.PredefinedStringRuleProto2{Val: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/string/invalid": {
			Message: &cases.PredefinedStringRuleProto2{Val: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/bytes/valid": {
			Message:  &cases.PredefinedBytesRuleProto2{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/bytes/invalid": {
			Message: &cases.PredefinedBytesRuleProto2{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/enum/valid": {
			Message:  &cases.PredefinedEnumRuleProto2{Val: cases.PredefinedEnumRuleProto2_ENUM_PROTO2_ONE.Enum()},
			Expected: results.Success(true),
		},
		"proto2/enum/invalid": {
			Message: &cases.PredefinedEnumRuleProto2{Val: cases.PredefinedEnumRuleProto2_ENUM_PROTO2_ZERO_UNSPECIFIED.Enum()},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("enum.[buf.validate.conformance.cases.enum_non_zero_proto2]"),
					RuleId:  proto.String("enum.non_zero.proto2"),
					Message: proto.String("enum value is not non-zero"),
				},
			),
		},
		"proto2/repeated/valid": {
			Message:  &cases.PredefinedRepeatedRuleProto2{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto2/repeated/invalid": {
			Message: &cases.PredefinedRepeatedRuleProto2{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("repeated.[buf.validate.conformance.cases.repeated_at_least_five_proto2]"),
					RuleId:  proto.String("repeated.at_least_five.proto2"),
					Message: proto.String("repeated field must have at least five values"),
				},
			),
		},
		"proto2/duration/valid": {
			Message:  &cases.PredefinedDurationRuleProto2{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto2/duration/invalid": {
			Message: &cases.PredefinedDurationRuleProto2{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("duration.[buf.validate.conformance.cases.duration_too_long_proto2]"),
					RuleId:  proto.String("duration.too_long.proto2"),
					Message: proto.String("duration can't be longer than 10 seconds"),
				},
			),
		},
		"proto2/timestamp/valid": {
			Message:  &cases.PredefinedTimestampRuleProto2{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto2/timestamp/invalid": {
			Message: &cases.PredefinedTimestampRuleProto2{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("timestamp.[buf.validate.conformance.cases.timestamp_in_range_proto2]"),
					RuleId:  proto.String("timestamp.time_range.proto2"),
					Message: proto.String("timestamp out of range"),
				},
			),
		},
		"proto2/wrapped/float/valid": {
			Message:  &cases.PredefinedWrappedFloatRuleProto2{Val: wrapperspb.Float(1.0)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/float/invalid": {
			Message: &cases.PredefinedWrappedFloatRuleProto2{Val: wrapperspb.Float(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto2/wrapped/double/valid": {
			Message: &cases.PredefinedWrappedDoubleRuleProto2{
				Val: wrapperspb.Double(1.0),
			},
			Expected: results.Success(true),
		},
		"proto2/wrapped/double/invalid": {
			Message: &cases.PredefinedWrappedDoubleRuleProto2{Val: wrapperspb.Double(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto2/wrapped/int32/valid": {
			Message:  &cases.PredefinedWrappedInt32RuleProto2{Val: wrapperspb.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/int32/invalid": {
			Message: &cases.PredefinedWrappedInt32RuleProto2{Val: wrapperspb.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/wrapped/int64/valid": {
			Message:  &cases.PredefinedWrappedInt64RuleProto2{Val: wrapperspb.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/int64/invalid": {
			Message: &cases.PredefinedWrappedInt64RuleProto2{Val: wrapperspb.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_proto2]"),
					RuleId:  proto.String("int64.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/wrapped/uint32/valid": {
			Message:  &cases.PredefinedWrappedUInt32RuleProto2{Val: wrapperspb.UInt32(2)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/uint32/invalid": {
			Message: &cases.PredefinedWrappedUInt32RuleProto2{Val: wrapperspb.UInt32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto2/wrapped/uint64/valid": {
			Message:  &cases.PredefinedWrappedUInt64RuleProto2{Val: wrapperspb.UInt64(2)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/uint64/invalid": {
			Message: &cases.PredefinedWrappedUInt64RuleProto2{Val: wrapperspb.UInt64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto2/wrapped/bool/valid": {
			Message:  &cases.PredefinedWrappedBoolRuleProto2{Val: wrapperspb.Bool(false)},
			Expected: results.Success(true),
		},
		"proto2/wrapped/bool/invalid": {
			Message: &cases.PredefinedWrappedBoolRuleProto2{Val: wrapperspb.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto2/wrapped/string/valid": {
			Message:  &cases.PredefinedWrappedStringRuleProto2{Val: wrapperspb.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/wrapped/string/invalid": {
			Message: &cases.PredefinedWrappedStringRuleProto2{Val: wrapperspb.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/wrapped/bytes/valid": {
			Message:  &cases.PredefinedWrappedBytesRuleProto2{Val: wrapperspb.Bytes([]byte("valid/file.proto"))},
			Expected: results.Success(true),
		},
		"proto2/wrapped/bytes/invalid": {
			Message: &cases.PredefinedWrappedBytesRuleProto2{Val: wrapperspb.Bytes([]byte("../invalid/path"))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/repeated/wrapped/float/valid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleProto2{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/float/invalid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleProto2{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0), wrapperspb.Float(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto2/repeated/wrapped/double/valid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleProto2{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/double/invalid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleProto2{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0), wrapperspb.Double(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto2/repeated/wrapped/int32/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleProto2{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/int32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleProto2{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2), wrapperspb.Int32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/repeated/wrapped/int64/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleProto2{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/int64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleProto2{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2), wrapperspb.Int64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int64.[buf.validate.conformance.cases.int64_abs_in_proto2]"),
					RuleId:  proto.String("int64.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto2/repeated/wrapped/uint32/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleProto2{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/uint32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleProto2{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2), wrapperspb.UInt32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto2/repeated/wrapped/uint64/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleProto2{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/uint64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleProto2{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2), wrapperspb.UInt64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto2/repeated/wrapped/bool/valid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleProto2{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false)},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/bool/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleProto2{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false), wrapperspb.Bool(true)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto2/repeated/wrapped/string/valid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleProto2{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto")},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/string/invalid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleProto2{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto"), wrapperspb.String("../invalid/path")},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/repeated/wrapped/bytes/valid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleProto2{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto"))},
			},
			Expected: results.Success(true),
		},
		"proto2/repeated/wrapped/bytes/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleProto2{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto")), wrapperspb.Bytes([]byte("../invalid/path"))},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto2/predefined_and_custom/valid": {
			Message: &cases.PredefinedAndCustomRuleProto2{
				A: proto.Int32(26),
				B: &cases.PredefinedAndCustomRuleProto2_Nested{
					C: proto.Int32(12),
				},
			},
			Expected: results.Success(true),
		},
		"proto2/predefined_and_custom/invalid": {
			Message: &cases.PredefinedAndCustomRuleProto2{
				A: proto.Int32(-1),
				B: &cases.PredefinedAndCustomRuleProto2_Nested{
					C: proto.Int32(-1),
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_embedded_proto2"),
					Message: proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_nested_proto2"),
					Message: proto.String("c must be positive"),
				},
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_scalar_proto2"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
		"proto2/standard_predefined_custom/valid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(26),
			},
			Expected: results.Success(true),
		},
		"proto2/standard_predefined_custom/standard/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(28),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.lt"),
					RuleId:  proto.String("sint32.lt"),
					Message: proto.String("value must be less than 28"),
				},
			),
		},
		"proto2/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(27),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto2/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(24),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("standard_predefined_and_custom_rule_scalar_proto2"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
		"proto3/float/valid": {
			Message:  &cases.PredefinedFloatRuleProto3{Val: 1.0},
			Expected: results.Success(true),
		},
		"proto3/float/invalid": {
			Message: &cases.PredefinedFloatRuleProto3{Val: -2.0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto3/double/valid": {
			Message:  &cases.PredefinedDoubleRuleProto3{Val: 1.0},
			Expected: results.Success(true),
		},
		"proto3/double/invalid": {
			Message: &cases.PredefinedDoubleRuleProto3{Val: -2.0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto3/int32/valid": {
			Message:  &cases.PredefinedInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/int32/invalid": {
			Message: &cases.PredefinedInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/int64/valid": {
			Message:  &cases.PredefinedInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/int64/invalid": {
			Message: &cases.PredefinedInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_edition_2023]"),
					RuleId:  proto.String("int64.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/uint32/valid": {
			Message:  &cases.PredefinedUInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/uint32/invalid": {
			Message: &cases.PredefinedUInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto3/uint64/valid": {
			Message:  &cases.PredefinedUInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/uint64/invalid": {
			Message: &cases.PredefinedUInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto3/sint32/valid": {
			Message:  &cases.PredefinedSInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sint32/invalid": {
			Message: &cases.PredefinedSInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto3/sint64/valid": {
			Message:  &cases.PredefinedSInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sint64/invalid": {
			Message: &cases.PredefinedSInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint64.[buf.validate.conformance.cases.sint64_even_proto2]"),
					RuleId:  proto.String("sint64.even.proto2"),
					Message: proto.String("sint64 value is not even"),
				},
			),
		},
		"proto3/fixed32/valid": {
			Message:  &cases.PredefinedFixed32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/fixed32/invalid": {
			Message: &cases.PredefinedFixed32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed32.[buf.validate.conformance.cases.fixed32_even_proto2]"),
					RuleId:  proto.String("fixed32.even.proto2"),
					Message: proto.String("fixed32 value is not even"),
				},
			),
		},
		"proto3/fixed64/valid": {
			Message:  &cases.PredefinedFixed64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/fixed64/invalid": {
			Message: &cases.PredefinedFixed64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed64.[buf.validate.conformance.cases.fixed64_even_proto2]"),
					RuleId:  proto.String("fixed64.even.proto2"),
					Message: proto.String("fixed64 value is not even"),
				},
			),
		},
		"proto3/sfixed32/valid": {
			Message:  &cases.PredefinedSFixed32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sfixed32/invalid": {
			Message: &cases.PredefinedSFixed32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed32.[buf.validate.conformance.cases.sfixed32_even_proto2]"),
					RuleId:  proto.String("sfixed32.even.proto2"),
					Message: proto.String("sfixed32 value is not even"),
				},
			),
		},
		"proto3/sfixed64/valid": {
			Message:  &cases.PredefinedSFixed64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sfixed64/invalid": {
			Message: &cases.PredefinedSFixed64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.[buf.validate.conformance.cases.sfixed64_even_proto2]"),
					RuleId:  proto.String("sfixed64.even.proto2"),
					Message: proto.String("sfixed64 value is not even"),
				},
			),
		},
		"proto3/bool/valid": {
			Message:  &cases.PredefinedBoolRuleProto3{Val: false},
			Expected: results.Success(true),
		},
		"proto3/bool/invalid": {
			Message: &cases.PredefinedBoolRuleProto3{Val: true},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto3/string/valid": {
			Message:  &cases.PredefinedStringRuleProto3{Val: "valid/file.proto"},
			Expected: results.Success(true),
		},
		"proto3/string/invalid": {
			Message: &cases.PredefinedStringRuleProto3{Val: "../invalid/path"},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/bytes/valid": {
			Message:  &cases.PredefinedBytesRuleProto3{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto3/bytes/invalid": {
			Message: &cases.PredefinedBytesRuleProto3{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/enum/valid": {
			Message:  &cases.PredefinedEnumRuleProto3{Val: cases.PredefinedEnumRuleProto3_ENUM_PROTO3_ONE},
			Expected: results.Success(true),
		},
		"proto3/enum/invalid": {
			Message: &cases.PredefinedEnumRuleProto3{Val: cases.PredefinedEnumRuleProto3_ENUM_PROTO3_ZERO_UNSPECIFIED},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("enum.[buf.validate.conformance.cases.enum_non_zero_proto2]"),
					RuleId:  proto.String("enum.non_zero.proto2"),
					Message: proto.String("enum value is not non-zero"),
				},
			),
		},
		"proto3/repeated/valid": {
			Message:  &cases.PredefinedRepeatedRuleProto3{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto3/repeated/invalid": {
			Message: &cases.PredefinedRepeatedRuleProto3{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("repeated.[buf.validate.conformance.cases.repeated_at_least_five_proto2]"),
					RuleId:  proto.String("repeated.at_least_five.proto2"),
					Message: proto.String("repeated field must have at least five values"),
				},
			),
		},
		"proto3/map/valid": {
			Message:  &cases.PredefinedMapRuleProto3{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3, 4: 4, 5: 5}},
			Expected: results.Success(true),
		},
		"proto3/map/invalid": {
			Message: &cases.PredefinedMapRuleProto3{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("map.[buf.validate.conformance.cases.map_at_least_five_edition_2023]"),
					RuleId:  proto.String("map.at_least_five.edition_2023"),
					Message: proto.String("map must have at least five pairs"),
				},
			),
		},
		"proto3/duration/valid": {
			Message:  &cases.PredefinedDurationRuleProto3{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto3/duration/invalid": {
			Message: &cases.PredefinedDurationRuleProto3{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("duration.[buf.validate.conformance.cases.duration_too_long_proto2]"),
					RuleId:  proto.String("duration.too_long.proto2"),
					Message: proto.String("duration can't be longer than 10 seconds"),
				},
			),
		},
		"proto3/timestamp/valid": {
			Message:  &cases.PredefinedTimestampRuleProto3{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto3/timestamp/invalid": {
			Message: &cases.PredefinedTimestampRuleProto3{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("timestamp.[buf.validate.conformance.cases.timestamp_in_range_proto2]"),
					RuleId:  proto.String("timestamp.time_range.proto2"),
					Message: proto.String("timestamp out of range"),
				},
			),
		},
		"proto3/wrapped/float/valid": {
			Message:  &cases.PredefinedWrappedFloatRuleProto3{Val: wrapperspb.Float(1.0)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/float/invalid": {
			Message: &cases.PredefinedWrappedFloatRuleProto3{Val: wrapperspb.Float(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto3/wrapped/double/valid": {
			Message: &cases.PredefinedWrappedDoubleRuleProto3{
				Val: wrapperspb.Double(1.0),
			},
			Expected: results.Success(true),
		},
		"proto3/wrapped/double/invalid": {
			Message: &cases.PredefinedWrappedDoubleRuleProto3{Val: wrapperspb.Double(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto3/wrapped/int32/valid": {
			Message:  &cases.PredefinedWrappedInt32RuleProto3{Val: wrapperspb.Int32(2)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/int32/invalid": {
			Message: &cases.PredefinedWrappedInt32RuleProto3{Val: wrapperspb.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/wrapped/int64/valid": {
			Message:  &cases.PredefinedWrappedInt64RuleProto3{Val: wrapperspb.Int64(2)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/int64/invalid": {
			Message: &cases.PredefinedWrappedInt64RuleProto3{Val: wrapperspb.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_proto2]"),
					RuleId:  proto.String("int64.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/wrapped/uint32/valid": {
			Message:  &cases.PredefinedWrappedUInt32RuleProto3{Val: wrapperspb.UInt32(2)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/uint32/invalid": {
			Message: &cases.PredefinedWrappedUInt32RuleProto3{Val: wrapperspb.UInt32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto3/wrapped/uint64/valid": {
			Message:  &cases.PredefinedWrappedUInt64RuleProto3{Val: wrapperspb.UInt64(2)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/uint64/invalid": {
			Message: &cases.PredefinedWrappedUInt64RuleProto3{Val: wrapperspb.UInt64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto3/wrapped/bool/valid": {
			Message:  &cases.PredefinedWrappedBoolRuleProto3{Val: wrapperspb.Bool(false)},
			Expected: results.Success(true),
		},
		"proto3/wrapped/bool/invalid": {
			Message: &cases.PredefinedWrappedBoolRuleProto3{Val: wrapperspb.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto3/wrapped/string/valid": {
			Message:  &cases.PredefinedWrappedStringRuleProto3{Val: wrapperspb.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto3/wrapped/string/invalid": {
			Message: &cases.PredefinedWrappedStringRuleProto3{Val: wrapperspb.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/wrapped/bytes/valid": {
			Message:  &cases.PredefinedWrappedBytesRuleProto3{Val: wrapperspb.Bytes([]byte("valid/file.proto"))},
			Expected: results.Success(true),
		},
		"proto3/wrapped/bytes/invalid": {
			Message: &cases.PredefinedWrappedBytesRuleProto3{Val: wrapperspb.Bytes([]byte("../invalid/path"))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/repeated/wrapped/float/valid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleProto3{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/float/invalid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleProto3{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0), wrapperspb.Float(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.float.[buf.validate.conformance.cases.float_abs_range_proto2]"),
					RuleId:  proto.String("float.abs_range.proto2"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto3/repeated/wrapped/double/valid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleProto3{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/double/invalid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleProto3{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0), wrapperspb.Double(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.double.[buf.validate.conformance.cases.double_abs_range_proto2]"),
					RuleId:  proto.String("double.abs_range.proto2"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto3/repeated/wrapped/int32/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleProto3{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/int32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleProto3{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2), wrapperspb.Int32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int32.[buf.validate.conformance.cases.int32_abs_in_proto2]"),
					RuleId:  proto.String("int32.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/repeated/wrapped/int64/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleProto3{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/int64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleProto3{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2), wrapperspb.Int64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int64.[buf.validate.conformance.cases.int64_abs_in_proto2]"),
					RuleId:  proto.String("int64.abs_in.proto2"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto3/repeated/wrapped/uint32/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleProto3{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/uint32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleProto3{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2), wrapperspb.UInt32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint32.[buf.validate.conformance.cases.uint32_even_proto2]"),
					RuleId:  proto.String("uint32.even.proto2"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto3/repeated/wrapped/uint64/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleProto3{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/uint64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleProto3{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2), wrapperspb.UInt64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint64.[buf.validate.conformance.cases.uint64_even_proto2]"),
					RuleId:  proto.String("uint64.even.proto2"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto3/repeated/wrapped/bool/valid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleProto3{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false)},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/bool/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleProto3{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false), wrapperspb.Bool(true)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bool.[buf.validate.conformance.cases.bool_false_proto2]"),
					RuleId:  proto.String("bool.false.proto2"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto3/repeated/wrapped/string/valid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleProto3{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto")},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/string/invalid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleProto3{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto"), wrapperspb.String("../invalid/path")},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.string.[buf.validate.conformance.cases.string_valid_path_proto2]"),
					RuleId:  proto.String("string.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/repeated/wrapped/bytes/valid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleProto3{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto"))},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/wrapped/bytes/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleProto3{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto")), wrapperspb.Bytes([]byte("../invalid/path"))},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bytes.[buf.validate.conformance.cases.bytes_valid_path_proto2]"),
					RuleId:  proto.String("bytes.valid_path.proto2"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto3/predefined_and_custom/valid": {
			Message: &cases.PredefinedAndCustomRuleProto3{
				A: 26,
				B: &cases.PredefinedAndCustomRuleProto3_Nested{
					C: 12,
				},
			},
			Expected: results.Success(true),
		},
		"proto3/predefined_and_custom/invalid": {
			Message: &cases.PredefinedAndCustomRuleProto3{
				A: -1,
				B: &cases.PredefinedAndCustomRuleProto3_Nested{
					C: -1,
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_embedded_proto3"),
					Message: proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_nested_proto3"),
					Message: proto.String("c must be positive"),
				},
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_scalar_proto3"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
		"proto3/standard_predefined_custom/valid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 26,
			},
			Expected: results.Success(true),
		},
		"proto3/standard_predefined_custom/standard/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 28,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.lt"),
					RuleId:  proto.String("sint32.lt"),
					Message: proto.String("value must be less than 28"),
				},
			),
		},
		"proto3/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 27,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_proto2]"),
					RuleId:  proto.String("sint32.even.proto2"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto3/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 24,
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("standard_predefined_and_custom_rule_scalar_proto3"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
		"proto/2023/float/valid": {
			Message:  &cases.PredefinedFloatRuleEdition2023{Val: proto.Float32(1.0)},
			Expected: results.Success(true),
		},
		"proto/2023/float/invalid": {
			Message: &cases.PredefinedFloatRuleEdition2023{Val: proto.Float32(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_edition_2023]"),
					RuleId:  proto.String("float.abs_range.edition_2023"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto/2023/double/valid": {
			Message:  &cases.PredefinedDoubleRuleEdition2023{Val: proto.Float64(1.0)},
			Expected: results.Success(true),
		},
		"proto/2023/double/invalid": {
			Message: &cases.PredefinedDoubleRuleEdition2023{Val: proto.Float64(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_edition_2023]"),
					RuleId:  proto.String("double.abs_range.edition_2023"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto/2023/int32/valid": {
			Message:  &cases.PredefinedInt32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/int32/invalid": {
			Message: &cases.PredefinedInt32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_edition_2023]"),
					RuleId:  proto.String("int32.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/int64/valid": {
			Message:  &cases.PredefinedInt64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/int64/invalid": {
			Message: &cases.PredefinedInt64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_edition_2023]"),
					RuleId:  proto.String("int64.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/uint32/valid": {
			Message:  &cases.PredefinedUInt32RuleEdition2023{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/uint32/invalid": {
			Message: &cases.PredefinedUInt32RuleEdition2023{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_edition_2023]"),
					RuleId:  proto.String("uint32.even.edition_2023"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto/2023/uint64/valid": {
			Message:  &cases.PredefinedUInt64RuleEdition2023{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/uint64/invalid": {
			Message: &cases.PredefinedUInt64RuleEdition2023{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_edition_2023]"),
					RuleId:  proto.String("uint64.even.edition_2023"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto/2023/sint32/valid": {
			Message:  &cases.PredefinedSInt32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sint32/invalid": {
			Message: &cases.PredefinedSInt32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto/2023/sint64/valid": {
			Message:  &cases.PredefinedSInt64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sint64/invalid": {
			Message: &cases.PredefinedSInt64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sint64.[buf.validate.conformance.cases.sint64_even_edition_2023]"),
					RuleId:  proto.String("sint64.even.edition_2023"),
					Message: proto.String("sint64 value is not even"),
				},
			),
		},
		"proto/2023/fixed32/valid": {
			Message:  &cases.PredefinedFixed32RuleEdition2023{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/fixed32/invalid": {
			Message: &cases.PredefinedFixed32RuleEdition2023{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed32.[buf.validate.conformance.cases.fixed32_even_edition_2023]"),
					RuleId:  proto.String("fixed32.even.edition_2023"),
					Message: proto.String("fixed32 value is not even"),
				},
			),
		},
		"proto/2023/fixed64/valid": {
			Message:  &cases.PredefinedFixed64RuleEdition2023{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/fixed64/invalid": {
			Message: &cases.PredefinedFixed64RuleEdition2023{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("fixed64.[buf.validate.conformance.cases.fixed64_even_edition_2023]"),
					RuleId:  proto.String("fixed64.even.edition_2023"),
					Message: proto.String("fixed64 value is not even"),
				},
			),
		},
		"proto/2023/sfixed32/valid": {
			Message:  &cases.PredefinedSFixed32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sfixed32/invalid": {
			Message: &cases.PredefinedSFixed32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed32.[buf.validate.conformance.cases.sfixed32_even_edition_2023]"),
					RuleId:  proto.String("sfixed32.even.edition_2023"),
					Message: proto.String("sfixed32 value is not even"),
				},
			),
		},
		"proto/2023/sfixed64/valid": {
			Message:  &cases.PredefinedSFixed64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sfixed64/invalid": {
			Message: &cases.PredefinedSFixed64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.[buf.validate.conformance.cases.sfixed64_even_edition_2023]"),
					RuleId:  proto.String("sfixed64.even.edition_2023"),
					Message: proto.String("sfixed64 value is not even"),
				},
			),
		},
		"proto/2023/bool/valid": {
			Message:  &cases.PredefinedBoolRuleEdition2023{Val: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"proto/2023/bool/invalid": {
			Message: &cases.PredefinedBoolRuleEdition2023{Val: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_edition_2023]"),
					RuleId:  proto.String("bool.false.edition_2023"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto/2023/string/valid": {
			Message:  &cases.PredefinedStringRuleEdition2023{Val: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/string/invalid": {
			Message: &cases.PredefinedStringRuleEdition2023{Val: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_edition_2023]"),
					RuleId:  proto.String("string.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/bytes/valid": {
			Message:  &cases.PredefinedBytesRuleEdition2023{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/bytes/invalid": {
			Message: &cases.PredefinedBytesRuleEdition2023{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_edition_2023]"),
					RuleId:  proto.String("bytes.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/enum/valid": {
			Message:  &cases.PredefinedEnumRuleEdition2023{Val: cases.PredefinedEnumRuleEdition2023_ENUM_EDITION2023_ONE.Enum()},
			Expected: results.Success(true),
		},
		"proto/2023/enum/invalid": {
			Message: &cases.PredefinedEnumRuleEdition2023{Val: cases.PredefinedEnumRuleEdition2023_ENUM_EDITION2023_ZERO_UNSPECIFIED.Enum()},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("enum.[buf.validate.conformance.cases.enum_non_zero_edition_2023]"),
					RuleId:  proto.String("enum.non_zero.edition_2023"),
					Message: proto.String("enum value is not non-zero"),
				},
			),
		},
		"proto/2023/repeated/valid": {
			Message:  &cases.PredefinedRepeatedRuleEdition2023{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/invalid": {
			Message: &cases.PredefinedRepeatedRuleEdition2023{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("repeated.[buf.validate.conformance.cases.repeated_at_least_five_edition_2023]"),
					RuleId:  proto.String("repeated.at_least_five.edition_2023"),
					Message: proto.String("repeated field must have at least five values"),
				},
			),
		},
		"proto/2023/map/valid": {
			Message:  &cases.PredefinedMapRuleEdition2023{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3, 4: 4, 5: 5}},
			Expected: results.Success(true),
		},
		"proto/2023/map/invalid": {
			Message: &cases.PredefinedMapRuleEdition2023{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3}},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("map.[buf.validate.conformance.cases.map_at_least_five_edition_2023]"),
					RuleId:  proto.String("map.at_least_five.edition_2023"),
					Message: proto.String("map must have at least five pairs"),
				},
			),
		},
		"proto/2023/duration/valid": {
			Message:  &cases.PredefinedDurationRuleEdition2023{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto/2023/duration/invalid": {
			Message: &cases.PredefinedDurationRuleEdition2023{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("duration.[buf.validate.conformance.cases.duration_too_long_edition_2023]"),
					RuleId:  proto.String("duration.too_long.edition_2023"),
					Message: proto.String("duration can't be longer than 10 seconds"),
				},
			),
		},
		"proto/2023/timestamp/valid": {
			Message:  &cases.PredefinedTimestampRuleEdition2023{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto/2023/timestamp/invalid": {
			Message: &cases.PredefinedTimestampRuleEdition2023{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("timestamp.[buf.validate.conformance.cases.timestamp_in_range_edition_2023]"),
					RuleId:  proto.String("timestamp.time_range.edition_2023"),
					Message: proto.String("timestamp out of range"),
				},
			),
		},
		"proto/2023/wrapped/float/valid": {
			Message:  &cases.PredefinedWrappedFloatRuleEdition2023{Val: wrapperspb.Float(1.0)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/float/invalid": {
			Message: &cases.PredefinedWrappedFloatRuleEdition2023{Val: wrapperspb.Float(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("float.[buf.validate.conformance.cases.float_abs_range_edition_2023]"),
					RuleId:  proto.String("float.abs_range.edition_2023"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto/2023/wrapped/double/valid": {
			Message: &cases.PredefinedWrappedDoubleRuleEdition2023{
				Val: wrapperspb.Double(1.0),
			},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/double/invalid": {
			Message: &cases.PredefinedWrappedDoubleRuleEdition2023{Val: wrapperspb.Double(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("double.[buf.validate.conformance.cases.double_abs_range_edition_2023]"),
					RuleId:  proto.String("double.abs_range.edition_2023"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto/2023/wrapped/int32/valid": {
			Message:  &cases.PredefinedWrappedInt32RuleEdition2023{Val: wrapperspb.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/int32/invalid": {
			Message: &cases.PredefinedWrappedInt32RuleEdition2023{Val: wrapperspb.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int32.[buf.validate.conformance.cases.int32_abs_in_edition_2023]"),
					RuleId:  proto.String("int32.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/wrapped/int64/valid": {
			Message:  &cases.PredefinedWrappedInt64RuleEdition2023{Val: wrapperspb.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/int64/invalid": {
			Message: &cases.PredefinedWrappedInt64RuleEdition2023{Val: wrapperspb.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("int64.[buf.validate.conformance.cases.int64_abs_in_edition_2023]"),
					RuleId:  proto.String("int64.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/wrapped/uint32/valid": {
			Message:  &cases.PredefinedWrappedUInt32RuleEdition2023{Val: wrapperspb.UInt32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/uint32/invalid": {
			Message: &cases.PredefinedWrappedUInt32RuleEdition2023{Val: wrapperspb.UInt32(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint32.[buf.validate.conformance.cases.uint32_even_edition_2023]"),
					RuleId:  proto.String("uint32.even.edition_2023"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto/2023/wrapped/uint64/valid": {
			Message:  &cases.PredefinedWrappedUInt64RuleEdition2023{Val: wrapperspb.UInt64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/uint64/invalid": {
			Message: &cases.PredefinedWrappedUInt64RuleEdition2023{Val: wrapperspb.UInt64(3)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("uint64.[buf.validate.conformance.cases.uint64_even_edition_2023]"),
					RuleId:  proto.String("uint64.even.edition_2023"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto/2023/wrapped/bool/valid": {
			Message:  &cases.PredefinedWrappedBoolRuleEdition2023{Val: wrapperspb.Bool(false)},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/bool/invalid": {
			Message: &cases.PredefinedWrappedBoolRuleEdition2023{Val: wrapperspb.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bool.[buf.validate.conformance.cases.bool_false_edition_2023]"),
					RuleId:  proto.String("bool.false.edition_2023"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto/2023/wrapped/string/valid": {
			Message:  &cases.PredefinedWrappedStringRuleEdition2023{Val: wrapperspb.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/string/invalid": {
			Message: &cases.PredefinedWrappedStringRuleEdition2023{Val: wrapperspb.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("string.[buf.validate.conformance.cases.string_valid_path_edition_2023]"),
					RuleId:  proto.String("string.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/wrapped/bytes/valid": {
			Message:  &cases.PredefinedWrappedBytesRuleEdition2023{Val: wrapperspb.Bytes([]byte("valid/file.proto"))},
			Expected: results.Success(true),
		},
		"proto/2023/wrapped/bytes/invalid": {
			Message: &cases.PredefinedWrappedBytesRuleEdition2023{Val: wrapperspb.Bytes([]byte("../invalid/path"))},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("bytes.[buf.validate.conformance.cases.bytes_valid_path_edition_2023]"),
					RuleId:  proto.String("bytes.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/repeated/wrapped/float/valid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleEdition2023{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/float/invalid": {
			Message: &cases.PredefinedRepeatedWrappedFloatRuleEdition2023{
				Val: []*wrapperspb.FloatValue{wrapperspb.Float(1.0), wrapperspb.Float(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.float.[buf.validate.conformance.cases.float_abs_range_edition_2023]"),
					RuleId:  proto.String("float.abs_range.edition_2023"),
					Message: proto.String("float value is out of range"),
				},
			),
		},
		"proto/2023/repeated/wrapped/double/valid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleEdition2023{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/double/invalid": {
			Message: &cases.PredefinedRepeatedWrappedDoubleRuleEdition2023{
				Val: []*wrapperspb.DoubleValue{wrapperspb.Double(1.0), wrapperspb.Double(-2.0)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.double.[buf.validate.conformance.cases.double_abs_range_edition_2023]"),
					RuleId:  proto.String("double.abs_range.edition_2023"),
					Message: proto.String("double value is out of range"),
				},
			),
		},
		"proto/2023/repeated/wrapped/int32/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleEdition2023{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/int32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt32RuleEdition2023{
				Val: []*wrapperspb.Int32Value{wrapperspb.Int32(2), wrapperspb.Int32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int32.[buf.validate.conformance.cases.int32_abs_in_edition_2023]"),
					RuleId:  proto.String("int32.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/repeated/wrapped/int64/valid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleEdition2023{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/int64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedInt64RuleEdition2023{
				Val: []*wrapperspb.Int64Value{wrapperspb.Int64(2), wrapperspb.Int64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.int64.[buf.validate.conformance.cases.int64_abs_in_edition_2023]"),
					RuleId:  proto.String("int64.abs_in.edition_2023"),
					Message: proto.String("value must be in absolute value of list"),
				},
			),
		},
		"proto/2023/repeated/wrapped/uint32/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleEdition2023{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/uint32/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt32RuleEdition2023{
				Val: []*wrapperspb.UInt32Value{wrapperspb.UInt32(2), wrapperspb.UInt32(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint32.[buf.validate.conformance.cases.uint32_even_edition_2023]"),
					RuleId:  proto.String("uint32.even.edition_2023"),
					Message: proto.String("uint32 value is not even"),
				},
			),
		},
		"proto/2023/repeated/wrapped/uint64/valid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleEdition2023{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/uint64/invalid": {
			Message: &cases.PredefinedRepeatedWrappedUInt64RuleEdition2023{
				Val: []*wrapperspb.UInt64Value{wrapperspb.UInt64(2), wrapperspb.UInt64(3)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.uint64.[buf.validate.conformance.cases.uint64_even_edition_2023]"),
					RuleId:  proto.String("uint64.even.edition_2023"),
					Message: proto.String("uint64 value is not even"),
				},
			),
		},
		"proto/2023/repeated/wrapped/bool/valid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleEdition2023{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false)},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/bool/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBoolRuleEdition2023{
				Val: []*wrapperspb.BoolValue{wrapperspb.Bool(false), wrapperspb.Bool(true)},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bool.[buf.validate.conformance.cases.bool_false_edition_2023]"),
					RuleId:  proto.String("bool.false.edition_2023"),
					Message: proto.String("bool value is not false"),
				},
			),
		},
		"proto/2023/repeated/wrapped/string/valid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleEdition2023{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto")},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/string/invalid": {
			Message: &cases.PredefinedRepeatedWrappedStringRuleEdition2023{
				Val: []*wrapperspb.StringValue{wrapperspb.String("valid/file.proto"), wrapperspb.String("../invalid/path")},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.string.[buf.validate.conformance.cases.string_valid_path_edition_2023]"),
					RuleId:  proto.String("string.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/repeated/wrapped/bytes/valid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleEdition2023{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto"))},
			},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/wrapped/bytes/invalid": {
			Message: &cases.PredefinedRepeatedWrappedBytesRuleEdition2023{
				Val: []*wrapperspb.BytesValue{wrapperspb.Bytes([]byte("valid/file.proto")), wrapperspb.Bytes([]byte("../invalid/path"))},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val[1]"),
					Rule:    results.FieldPath("repeated.items.bytes.[buf.validate.conformance.cases.bytes_valid_path_edition_2023]"),
					RuleId:  proto.String("bytes.valid_path.edition_2023"),
					Message: proto.String("not a valid path: `../invalid/path`"),
				},
			),
		},
		"proto/2023/predefined_and_custom/valid": {
			Message: &cases.PredefinedAndCustomRuleEdition2023{
				A: proto.Int32(26),
				B: &cases.PredefinedAndCustomRuleEdition2023_Nested{
					C: proto.Int32(12),
				},
			},
			Expected: results.Success(true),
		},
		"proto/2023/predefined_and_custom/invalid": {
			Message: &cases.PredefinedAndCustomRuleEdition2023{
				A: proto.Int32(-1),
				B: &cases.PredefinedAndCustomRuleEdition2023_Nested{
					C: proto.Int32(-1),
				},
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_embedded_edition_2023"),
					Message: proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					Field:   results.FieldPath("b.c"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_nested_edition_2023"),
					Message: proto.String("c must be positive"),
				},
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("predefined_and_custom_rule_scalar_edition_2023"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
		"proto/2023/standard_predefined_custom/valid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(26),
			},
			Expected: results.Success(true),
		},
		"proto/2023/standard_predefined_custom/standard/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(28),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.lt"),
					RuleId:  proto.String("sint32.lt"),
					Message: proto.String("value must be less than 28"),
				},
			),
		},
		"proto/2023/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(27),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("sint32.[buf.validate.conformance.cases.sint32_even_edition_2023]"),
					RuleId:  proto.String("sint32.even.edition_2023"),
					Message: proto.String("sint32 value is not even"),
				},
			),
		},
		"proto/2023/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(24),
			},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("a"),
					Rule:    results.FieldPath("cel[0]"),
					RuleId:  proto.String("standard_predefined_and_custom_rule_scalar_edition_2023"),
					Message: proto.String("a must be greater than 24"),
				},
			),
		},
	}
}
