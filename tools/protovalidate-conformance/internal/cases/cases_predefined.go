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
	"time"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("float.abs_range.proto2"),
					Message:      proto.String("float value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("double.abs_range.proto2"),
					Message:      proto.String("double value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int64.even.proto2"),
					Message:      proto.String("int64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint32.even.proto2"),
					Message:      proto.String("uint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint64.even.proto2"),
					Message:      proto.String("uint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint32.even.proto2"),
					Message:      proto.String("sint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint64.even.proto2"),
					Message:      proto.String("sint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed32.even.proto2"),
					Message:      proto.String("fixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed64.even.proto2"),
					Message:      proto.String("fixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed32.even.proto2"),
					Message:      proto.String("sfixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed64.even.proto2"),
					Message:      proto.String("sfixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bool.false.proto2"),
					Message:      proto.String("bool value is not false"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("string.valid_path.proto2"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bytes.valid_path.proto2"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("enum.non_zero.proto2"),
					Message:      proto.String("enum value is not non-zero"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.at_least_five.proto2"),
					Message:      proto.String("repeated field must have at least five values"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("duration.too_long.proto2"),
					Message:      proto.String("duration can't be longer than 10 seconds"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("timestamp.time_range.proto2"),
					Message:      proto.String("timestamp out of range"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b"),
					ConstraintId: proto.String("predefined_and_custom_rule_embedded_proto2"),
					Message:      proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("predefined_and_custom_rule_nested_proto2"),
					Message:      proto.String("c must be positive"),
				},
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("predefined_and_custom_rule_scalar_proto2"),
					Message:      proto.String("a must be greater than 24"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.lt"),
					Message:      proto.String("value must be less than 28"),
				},
			),
		},
		"proto2/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(27),
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
				},
			),
		},
		"proto2/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto2{
				A: proto.Int32(24),
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("standard_predefined_and_custom_rule_scalar_proto2"),
					Message:      proto.String("a must be greater than 24"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("float.abs_range.proto2"),
					Message:      proto.String("float value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("double.abs_range.proto2"),
					Message:      proto.String("double value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int64.even.proto2"),
					Message:      proto.String("int64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint32.even.proto2"),
					Message:      proto.String("uint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint64.even.proto2"),
					Message:      proto.String("uint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint32.even.proto2"),
					Message:      proto.String("sint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint64.even.proto2"),
					Message:      proto.String("sint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed32.even.proto2"),
					Message:      proto.String("fixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed64.even.proto2"),
					Message:      proto.String("fixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed32.even.proto2"),
					Message:      proto.String("sfixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed64.even.proto2"),
					Message:      proto.String("sfixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bool.false.proto2"),
					Message:      proto.String("bool value is not false"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("string.valid_path.proto2"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bytes.valid_path.proto2"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("enum.non_zero.proto2"),
					Message:      proto.String("enum value is not non-zero"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.at_least_five.proto2"),
					Message:      proto.String("repeated field must have at least five values"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("map.at_least_five.edition_2023"),
					Message:      proto.String("map must have at least five pairs"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("duration.too_long.proto2"),
					Message:      proto.String("duration can't be longer than 10 seconds"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("timestamp.time_range.proto2"),
					Message:      proto.String("timestamp out of range"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b"),
					ConstraintId: proto.String("predefined_and_custom_rule_embedded_proto3"),
					Message:      proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("predefined_and_custom_rule_nested_proto3"),
					Message:      proto.String("c must be positive"),
				},
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("predefined_and_custom_rule_scalar_proto3"),
					Message:      proto.String("a must be greater than 24"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.lt"),
					Message:      proto.String("value must be less than 28"),
				},
			),
		},
		"proto3/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 27,
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.proto2"),
					Message:      proto.String("int32 value is not even"),
				},
			),
		},
		"proto3/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleProto3{
				A: 24,
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("standard_predefined_and_custom_rule_scalar_proto3"),
					Message:      proto.String("a must be greater than 24"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("float.abs_range.edition_2023"),
					Message:      proto.String("float value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("double.abs_range.edition_2023"),
					Message:      proto.String("double value is out of range"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("int64.even.edition_2023"),
					Message:      proto.String("int64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint32.even.edition_2023"),
					Message:      proto.String("uint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("uint64.even.edition_2023"),
					Message:      proto.String("uint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint32.even.edition_2023"),
					Message:      proto.String("sint32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sint64.even.edition_2023"),
					Message:      proto.String("sint64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed32.even.edition_2023"),
					Message:      proto.String("fixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("fixed64.even.edition_2023"),
					Message:      proto.String("fixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed32.even.edition_2023"),
					Message:      proto.String("sfixed32 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("sfixed64.even.edition_2023"),
					Message:      proto.String("sfixed64 value is not even"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bool.false.edition_2023"),
					Message:      proto.String("bool value is not false"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("string.valid_path.edition_2023"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("bytes.valid_path.edition_2023"),
					Message:      proto.String("not a valid path: `../invalid/path`"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("enum.non_zero.edition_2023"),
					Message:      proto.String("enum value is not non-zero"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.at_least_five.edition_2023"),
					Message:      proto.String("repeated field must have at least five values"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("map.at_least_five.edition_2023"),
					Message:      proto.String("map must have at least five pairs"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("duration.too_long.edition_2023"),
					Message:      proto.String("duration can't be longer than 10 seconds"),
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
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("timestamp.time_range.edition_2023"),
					Message:      proto.String("timestamp out of range"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b"),
					ConstraintId: proto.String("predefined_and_custom_rule_embedded_edition_2023"),
					Message:      proto.String("b.c must be a multiple of 3"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b.c"),
					ConstraintId: proto.String("predefined_and_custom_rule_nested_edition_2023"),
					Message:      proto.String("c must be positive"),
				},
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("predefined_and_custom_rule_scalar_edition_2023"),
					Message:      proto.String("a must be greater than 24"),
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
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.lt"),
					Message:      proto.String("value must be less than 28"),
				},
			),
		},
		"proto/2023/standard_predefined_custom/predefined/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(27),
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("int32.even.edition_2023"),
					Message:      proto.String("int32 value is not even"),
				},
			),
		},
		"proto/2023/standard_predefined_custom/custom/invalid": {
			Message: &cases.StandardPredefinedAndCustomRuleEdition2023{
				A: proto.Int32(24),
			},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("standard_predefined_and_custom_rule_scalar_edition_2023"),
					Message:      proto.String("a must be greater than 24"),
				},
			),
		},
	}
}
