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

func sharedSuite() suites.Suite {
	return suites.Suite{
		"proto2/float/valid": {
			Message:  &cases.SharedFloatRuleProto2{Val: proto.Float32(1.0)},
			Expected: results.Success(true),
		},
		"proto2/float/invalid": {
			Message: &cases.SharedFloatRuleProto2{Val: proto.Float32(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.abs_range.proto2",
					Message:      "float value is out of range",
				},
			),
		},
		"proto2/double/valid": {
			Message:  &cases.SharedDoubleRuleProto2{Val: proto.Float64(1.0)},
			Expected: results.Success(true),
		},
		"proto2/double/invalid": {
			Message: &cases.SharedDoubleRuleProto2{Val: proto.Float64(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "double.abs_range.proto2",
					Message:      "double value is out of range",
				},
			),
		},
		"proto2/int32/valid": {
			Message:  &cases.SharedInt32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/int32/invalid": {
			Message: &cases.SharedInt32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int32.even.proto2",
					Message:      "int32 value is not even",
				},
			),
		},
		"proto2/int64/valid": {
			Message:  &cases.SharedInt64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/int64/invalid": {
			Message: &cases.SharedInt64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int64.even.proto2",
					Message:      "int64 value is not even",
				},
			),
		},
		"proto2/uint32/valid": {
			Message:  &cases.SharedUInt32RuleProto2{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto2/uint32/invalid": {
			Message: &cases.SharedUInt32RuleProto2{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint32.even.proto2",
					Message:      "uint32 value is not even",
				},
			),
		},
		"proto2/uint64/valid": {
			Message:  &cases.SharedUInt64RuleProto2{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto2/uint64/invalid": {
			Message: &cases.SharedUInt64RuleProto2{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint64.even.proto2",
					Message:      "uint64 value is not even",
				},
			),
		},
		"proto2/sint32/valid": {
			Message:  &cases.SharedSInt32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/sint32/invalid": {
			Message: &cases.SharedSInt32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint32.even.proto2",
					Message:      "sint32 value is not even",
				},
			),
		},
		"proto2/sint64/valid": {
			Message:  &cases.SharedSInt64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/sint64/invalid": {
			Message: &cases.SharedSInt64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint64.even.proto2",
					Message:      "sint64 value is not even",
				},
			),
		},
		"proto2/fixed32/valid": {
			Message:  &cases.SharedFixed32RuleProto2{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto2/fixed32/invalid": {
			Message: &cases.SharedFixed32RuleProto2{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed32.even.proto2",
					Message:      "fixed32 value is not even",
				},
			),
		},
		"proto2/fixed64/valid": {
			Message:  &cases.SharedFixed64RuleProto2{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto2/fixed64/invalid": {
			Message: &cases.SharedFixed64RuleProto2{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed64.even.proto2",
					Message:      "fixed64 value is not even",
				},
			),
		},
		"proto2/sfixed32/valid": {
			Message:  &cases.SharedSFixed32RuleProto2{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto2/sfixed32/invalid": {
			Message: &cases.SharedSFixed32RuleProto2{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed32.even.proto2",
					Message:      "sfixed32 value is not even",
				},
			),
		},
		"proto2/sfixed64/valid": {
			Message:  &cases.SharedSFixed64RuleProto2{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto2/sfixed64/invalid": {
			Message: &cases.SharedSFixed64RuleProto2{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed64.even.proto2",
					Message:      "sfixed64 value is not even",
				},
			),
		},
		"proto2/bool/valid": {
			Message:  &cases.SharedBoolRuleProto2{Val: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"proto2/bool/invalid": {
			Message: &cases.SharedBoolRuleProto2{Val: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bool.false.proto2",
					Message:      "bool value is not false",
				},
			),
		},
		"proto2/string/valid": {
			Message:  &cases.SharedStringRuleProto2{Val: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/string/invalid": {
			Message: &cases.SharedStringRuleProto2{Val: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "string.valid_path.proto2",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto2/bytes/valid": {
			Message:  &cases.SharedBytesRuleProto2{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/bytes/invalid": {
			Message: &cases.SharedBytesRuleProto2{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bytes.valid_path.proto2",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto2/enum/valid": {
			Message:  &cases.SharedEnumRuleProto2{Val: toPointer(cases.SharedEnumRuleProto2_ENUM_PROTO2_ONE)},
			Expected: results.Success(true),
		},
		"proto2/enum/invalid": {
			Message: &cases.SharedEnumRuleProto2{Val: toPointer(cases.SharedEnumRuleProto2_ENUM_PROTO2_ZERO_UNSPECIFIED)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "enum.non_zero.proto2",
					Message:      "enum value is not non-zero",
				},
			),
		},
		"proto2/repeated/valid": {
			Message:  &cases.SharedRepeatedRuleProto2{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto2/repeated/invalid": {
			Message: &cases.SharedRepeatedRuleProto2{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "repeated.at_least_five.proto2",
					Message:      "repeated field must have at least five values",
				},
			),
		},
		"proto2/duration/valid": {
			Message:  &cases.SharedDurationRuleProto2{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto2/duration/invalid": {
			Message: &cases.SharedDurationRuleProto2{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "duration.too_long.proto2",
					Message:      "duration can't be longer than 10 seconds",
				},
			),
		},
		"proto2/timestamp/valid": {
			Message:  &cases.SharedTimestampRuleProto2{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto2/timestamp/invalid": {
			Message: &cases.SharedTimestampRuleProto2{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "timestamp.time_range.proto2",
					Message:      "timestamp out of range",
				},
			),
		},
		"proto3/float/valid": {
			Message:  &cases.SharedFloatRuleProto3{Val: 1.0},
			Expected: results.Success(true),
		},
		"proto3/float/invalid": {
			Message: &cases.SharedFloatRuleProto3{Val: -2.0},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.abs_range.proto2",
					Message:      "float value is out of range",
				},
			),
		},
		"proto3/double/valid": {
			Message:  &cases.SharedDoubleRuleProto3{Val: 1.0},
			Expected: results.Success(true),
		},
		"proto3/double/invalid": {
			Message: &cases.SharedDoubleRuleProto3{Val: -2.0},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "double.abs_range.proto2",
					Message:      "double value is out of range",
				},
			),
		},
		"proto3/int32/valid": {
			Message:  &cases.SharedInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/int32/invalid": {
			Message: &cases.SharedInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int32.even.proto2",
					Message:      "int32 value is not even",
				},
			),
		},
		"proto3/int64/valid": {
			Message:  &cases.SharedInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/int64/invalid": {
			Message: &cases.SharedInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int64.even.proto2",
					Message:      "int64 value is not even",
				},
			),
		},
		"proto3/uint32/valid": {
			Message:  &cases.SharedUInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/uint32/invalid": {
			Message: &cases.SharedUInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint32.even.proto2",
					Message:      "uint32 value is not even",
				},
			),
		},
		"proto3/uint64/valid": {
			Message:  &cases.SharedUInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/uint64/invalid": {
			Message: &cases.SharedUInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint64.even.proto2",
					Message:      "uint64 value is not even",
				},
			),
		},
		"proto3/sint32/valid": {
			Message:  &cases.SharedSInt32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sint32/invalid": {
			Message: &cases.SharedSInt32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint32.even.proto2",
					Message:      "sint32 value is not even",
				},
			),
		},
		"proto3/sint64/valid": {
			Message:  &cases.SharedSInt64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sint64/invalid": {
			Message: &cases.SharedSInt64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint64.even.proto2",
					Message:      "sint64 value is not even",
				},
			),
		},
		"proto3/fixed32/valid": {
			Message:  &cases.SharedFixed32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/fixed32/invalid": {
			Message: &cases.SharedFixed32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed32.even.proto2",
					Message:      "fixed32 value is not even",
				},
			),
		},
		"proto3/fixed64/valid": {
			Message:  &cases.SharedFixed64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/fixed64/invalid": {
			Message: &cases.SharedFixed64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed64.even.proto2",
					Message:      "fixed64 value is not even",
				},
			),
		},
		"proto3/sfixed32/valid": {
			Message:  &cases.SharedSFixed32RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sfixed32/invalid": {
			Message: &cases.SharedSFixed32RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed32.even.proto2",
					Message:      "sfixed32 value is not even",
				},
			),
		},
		"proto3/sfixed64/valid": {
			Message:  &cases.SharedSFixed64RuleProto3{Val: 2},
			Expected: results.Success(true),
		},
		"proto3/sfixed64/invalid": {
			Message: &cases.SharedSFixed64RuleProto3{Val: 3},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed64.even.proto2",
					Message:      "sfixed64 value is not even",
				},
			),
		},
		"proto3/bool/valid": {
			Message:  &cases.SharedBoolRuleProto3{Val: false},
			Expected: results.Success(true),
		},
		"proto3/bool/invalid": {
			Message: &cases.SharedBoolRuleProto3{Val: true},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bool.false.proto2",
					Message:      "bool value is not false",
				},
			),
		},
		"proto3/string/valid": {
			Message:  &cases.SharedStringRuleProto3{Val: "valid/file.proto"},
			Expected: results.Success(true),
		},
		"proto3/string/invalid": {
			Message: &cases.SharedStringRuleProto3{Val: "../invalid/path"},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "string.valid_path.proto2",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto3/bytes/valid": {
			Message:  &cases.SharedBytesRuleProto3{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto3/bytes/invalid": {
			Message: &cases.SharedBytesRuleProto3{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bytes.valid_path.proto2",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto3/enum/valid": {
			Message:  &cases.SharedEnumRuleProto3{Val: cases.SharedEnumRuleProto3_ENUM_PROTO3_ONE},
			Expected: results.Success(true),
		},
		"proto3/enum/invalid": {
			Message: &cases.SharedEnumRuleProto3{Val: cases.SharedEnumRuleProto3_ENUM_PROTO3_ZERO_UNSPECIFIED},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "enum.non_zero.proto2",
					Message:      "enum value is not non-zero",
				},
			),
		},
		"proto3/repeated/valid": {
			Message:  &cases.SharedRepeatedRuleProto3{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto3/repeated/invalid": {
			Message: &cases.SharedRepeatedRuleProto3{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "repeated.at_least_five.proto2",
					Message:      "repeated field must have at least five values",
				},
			),
		},
		"proto3/map/valid": {
			Message:  &cases.SharedMapRuleProto3{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3, 4: 4, 5: 5}},
			Expected: results.Success(true),
		},
		"proto3/map/invalid": {
			Message: &cases.SharedMapRuleProto3{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "map.at_least_five.edition_2023",
					Message:      "map must have at least five pairs",
				},
			),
		},
		"proto3/duration/valid": {
			Message:  &cases.SharedDurationRuleProto3{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto3/duration/invalid": {
			Message: &cases.SharedDurationRuleProto3{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "duration.too_long.proto2",
					Message:      "duration can't be longer than 10 seconds",
				},
			),
		},
		"proto3/timestamp/valid": {
			Message:  &cases.SharedTimestampRuleProto3{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto3/timestamp/invalid": {
			Message: &cases.SharedTimestampRuleProto3{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "timestamp.time_range.proto2",
					Message:      "timestamp out of range",
				},
			),
		},
		"proto/2023/float/valid": {
			Message:  &cases.SharedFloatRuleEdition2023{Val: proto.Float32(1.0)},
			Expected: results.Success(true),
		},
		"proto/2023/float/invalid": {
			Message: &cases.SharedFloatRuleEdition2023{Val: proto.Float32(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.abs_range.edition_2023",
					Message:      "float value is out of range",
				},
			),
		},
		"proto/2023/double/valid": {
			Message:  &cases.SharedDoubleRuleEdition2023{Val: proto.Float64(1.0)},
			Expected: results.Success(true),
		},
		"proto/2023/double/invalid": {
			Message: &cases.SharedDoubleRuleEdition2023{Val: proto.Float64(-2.0)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "double.abs_range.edition_2023",
					Message:      "double value is out of range",
				},
			),
		},
		"proto/2023/int32/valid": {
			Message:  &cases.SharedInt32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/int32/invalid": {
			Message: &cases.SharedInt32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int32.even.edition_2023",
					Message:      "int32 value is not even",
				},
			),
		},
		"proto/2023/int64/valid": {
			Message:  &cases.SharedInt64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/int64/invalid": {
			Message: &cases.SharedInt64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "int64.even.edition_2023",
					Message:      "int64 value is not even",
				},
			),
		},
		"proto/2023/uint32/valid": {
			Message:  &cases.SharedUInt32RuleEdition2023{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/uint32/invalid": {
			Message: &cases.SharedUInt32RuleEdition2023{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint32.even.edition_2023",
					Message:      "uint32 value is not even",
				},
			),
		},
		"proto/2023/uint64/valid": {
			Message:  &cases.SharedUInt64RuleEdition2023{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/uint64/invalid": {
			Message: &cases.SharedUInt64RuleEdition2023{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "uint64.even.edition_2023",
					Message:      "uint64 value is not even",
				},
			),
		},
		"proto/2023/sint32/valid": {
			Message:  &cases.SharedSInt32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sint32/invalid": {
			Message: &cases.SharedSInt32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint32.even.edition_2023",
					Message:      "sint32 value is not even",
				},
			),
		},
		"proto/2023/sint64/valid": {
			Message:  &cases.SharedSInt64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sint64/invalid": {
			Message: &cases.SharedSInt64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sint64.even.edition_2023",
					Message:      "sint64 value is not even",
				},
			),
		},
		"proto/2023/fixed32/valid": {
			Message:  &cases.SharedFixed32RuleEdition2023{Val: proto.Uint32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/fixed32/invalid": {
			Message: &cases.SharedFixed32RuleEdition2023{Val: proto.Uint32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed32.even.edition_2023",
					Message:      "fixed32 value is not even",
				},
			),
		},
		"proto/2023/fixed64/valid": {
			Message:  &cases.SharedFixed64RuleEdition2023{Val: proto.Uint64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/fixed64/invalid": {
			Message: &cases.SharedFixed64RuleEdition2023{Val: proto.Uint64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "fixed64.even.edition_2023",
					Message:      "fixed64 value is not even",
				},
			),
		},
		"proto/2023/sfixed32/valid": {
			Message:  &cases.SharedSFixed32RuleEdition2023{Val: proto.Int32(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sfixed32/invalid": {
			Message: &cases.SharedSFixed32RuleEdition2023{Val: proto.Int32(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed32.even.edition_2023",
					Message:      "sfixed32 value is not even",
				},
			),
		},
		"proto/2023/sfixed64/valid": {
			Message:  &cases.SharedSFixed64RuleEdition2023{Val: proto.Int64(2)},
			Expected: results.Success(true),
		},
		"proto/2023/sfixed64/invalid": {
			Message: &cases.SharedSFixed64RuleEdition2023{Val: proto.Int64(3)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "sfixed64.even.edition_2023",
					Message:      "sfixed64 value is not even",
				},
			),
		},
		"proto/2023/bool/valid": {
			Message:  &cases.SharedBoolRuleEdition2023{Val: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"proto/2023/bool/invalid": {
			Message: &cases.SharedBoolRuleEdition2023{Val: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bool.false.edition_2023",
					Message:      "bool value is not false",
				},
			),
		},
		"proto/2023/string/valid": {
			Message:  &cases.SharedStringRuleEdition2023{Val: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/string/invalid": {
			Message: &cases.SharedStringRuleEdition2023{Val: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "string.valid_path.edition_2023",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto/2023/bytes/valid": {
			Message:  &cases.SharedBytesRuleEdition2023{Val: []byte("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/bytes/invalid": {
			Message: &cases.SharedBytesRuleEdition2023{Val: []byte("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "bytes.valid_path.edition_2023",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto/2023/enum/valid": {
			Message:  &cases.SharedEnumRuleEdition2023{Val: toPointer(cases.SharedEnumRuleEdition2023_ENUM_EDITION2023_ONE)},
			Expected: results.Success(true),
		},
		"proto/2023/enum/invalid": {
			Message: &cases.SharedEnumRuleEdition2023{Val: toPointer(cases.SharedEnumRuleEdition2023_ENUM_EDITION2023_ZERO_UNSPECIFIED)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "enum.non_zero.edition_2023",
					Message:      "enum value is not non-zero",
				},
			),
		},
		"proto/2023/repeated/valid": {
			Message:  &cases.SharedRepeatedRuleEdition2023{Val: []uint64{1, 2, 3, 4, 5}},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/invalid": {
			Message: &cases.SharedRepeatedRuleEdition2023{Val: []uint64{1, 2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "repeated.at_least_five.edition_2023",
					Message:      "repeated field must have at least five values",
				},
			),
		},
		"proto/2023/map/valid": {
			Message:  &cases.SharedMapRuleEdition2023{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3, 4: 4, 5: 5}},
			Expected: results.Success(true),
		},
		"proto/2023/map/invalid": {
			Message: &cases.SharedMapRuleEdition2023{Val: map[uint64]uint64{1: 1, 2: 2, 3: 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "map.at_least_five.edition_2023",
					Message:      "map must have at least five pairs",
				},
			),
		},
		"proto/2023/duration/valid": {
			Message:  &cases.SharedDurationRuleEdition2023{Val: durationpb.New(time.Second)},
			Expected: results.Success(true),
		},
		"proto/2023/duration/invalid": {
			Message: &cases.SharedDurationRuleEdition2023{Val: durationpb.New(15 * time.Second)},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "duration.too_long.edition_2023",
					Message:      "duration can't be longer than 10 seconds",
				},
			),
		},
		"proto/2023/timestamp/valid": {
			Message:  &cases.SharedTimestampRuleEdition2023{Val: timestamppb.New(time.Unix(1049587200, 0))},
			Expected: results.Success(true),
		},
		"proto/2023/timestamp/invalid": {
			Message: &cases.SharedTimestampRuleEdition2023{Val: timestamppb.New(time.Unix(1725415496, 0))},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "timestamp.time_range.edition_2023",
					Message:      "timestamp out of range",
				},
			),
		},
	}
}

func toPointer[T any](value T) *T {
	return &value
}
