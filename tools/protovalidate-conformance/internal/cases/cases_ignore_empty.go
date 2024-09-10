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

func ignoreEmptySuite() suites.Suite {
	return suites.Suite{
		"proto2/scalar/optional/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptional{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptional{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/scalar/optional/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptional{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/scalar/optional/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptional{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptionalWithDefault{Val: proto.Int32(1)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptionalWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/scalar/optional_with_default/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptionalWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/scalar/optional_with_default/default": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptionalWithDefault{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarOptionalWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarRequired{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarRequired{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/scalar/required/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2ScalarRequired{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/message/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Message{Val: &cases.IgnoreEmptyProto2Message_Msg{Val: proto.String("foo")}},
			Expected: results.Success(true),
		},
		"proto2/message/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Message{Val: &cases.IgnoreEmptyProto2Message_Msg{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("ignore_empty.proto2.message")}),
		},
		"proto2/message/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Message{},
			Expected: results.Success(true),
		},
		"proto2/oneof/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Oneof{O: &cases.IgnoreEmptyProto2Oneof_Val{Val: 42}},
			Expected: results.Success(true),
		},
		"proto2/oneof/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Oneof{O: &cases.IgnoreEmptyProto2Oneof_Val{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto2/oneof/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Oneof{},
			Expected: results.Success(true),
		},
		"proto2/repeated/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Repeated{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto2/repeated/noempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Repeated{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("repeated.min_items")}),
		},
		"proto2/repeated/empty": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Repeated{},
			Expected: results.Success(true),
		},
		"proto2/map/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Map{Val: map[int32]int32{1: 2, 3: 4, 5: 6}},
			Expected: results.Success(true),
		},
		"proto2/map/nonempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Map{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("map.min_pairs")}),
		},
		"proto2/map/empty": suites.Case{
			Message:  &cases.IgnoreEmptyProto2Map{},
			Expected: results.Success(true),
		},
		"proto3/scalar/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Scalar{Val: 42},
			Expected: results.Success(true),
		},
		"proto3/scalar/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Scalar{Val: -42},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto3/scalar/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Scalar{Val: 0},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3OptionalScalar{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3OptionalScalar{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto3/scalar/optional/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto3OptionalScalar{},
			Expected: results.Success(true),
		},
		"proto3/message/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Message{Val: &cases.IgnoreEmptyProto3Message_Msg{Val: "foo"}},
			Expected: results.Success(true),
		},
		"proto3/message/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Message{Val: &cases.IgnoreEmptyProto3Message_Msg{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("ignore_empty.proto3.message")}),
		},
		"proto3/message/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Message{},
			Expected: results.Success(true),
		},
		"proto3/oneof/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Oneof{O: &cases.IgnoreEmptyProto3Oneof_Val{Val: 42}},
			Expected: results.Success(true),
		},
		"proto3/oneof/zero": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Oneof{O: &cases.IgnoreEmptyProto3Oneof_Val{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto3/oneof/unset": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Oneof{},
			Expected: results.Success(true),
		},
		"proto3/repeated/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Repeated{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto3/repeated/noempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Repeated{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("repeated.min_items")}),
		},
		"proto3/repeated/empty": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Repeated{},
			Expected: results.Success(true),
		},
		"proto3/map/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Map{Val: map[int32]int32{1: 2, 3: 4, 5: 6}},
			Expected: results.Success(true),
		},
		"proto3/map/nonempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Map{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("map.min_pairs")}),
		},
		"proto3/map/empty": suites.Case{
			Message:  &cases.IgnoreEmptyProto3Map{},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/zero": suites.Case{
			Message:  &cases.IgnoreEmptyRepeatedItems{Val: []int32{0}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyRepeatedItems{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyRepeatedItems{Val: []int32{-1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val[0]"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto3/map/keys/zero": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"": 42}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"foo": 42}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"x": 42}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String(`val["x"]`), ForKey: proto.Bool(true), ConstraintId: proto.String("string.min_len")}),
		},
		"proto3/map/values/zero": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"foo": 0}},
			Expected: results.Success(true),
		},
		"proto3/map/values/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"foo": 42}},
			Expected: results.Success(true),
		},
		"proto3/map/values/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyMapPairs{Val: map[string]int32{"foo": -1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String(`val["foo"]`), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/explicit_presence/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresence{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/explicit_presence/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresence{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/explicit_presence/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresence{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/explicit_presence/unset": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresence{},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/explicit_presence_with_default/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresenceWithDefault{Val: proto.Int32(1)},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/explicit_presence_with_default/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresenceWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/explicit_presence_with_default/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresenceWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/explicit_presence_with_default/default": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresenceWithDefault{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/explicit_presence_with_default/unset": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarExplicitPresenceWithDefault{},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/implicit_presence/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarImplicitPresence{Val: 42},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/implicit_presence/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarImplicitPresence{Val: -42},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/implicit_presence/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarImplicitPresence{Val: 0},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/legacy_required/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequired{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/legacy_required/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequired{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/legacy_required/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequired{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/legacy_required_with_default/nonzero/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequiredWithDefault{Val: proto.Int32(42)},
			Expected: results.Success(true),
		},
		"proto/2023/scalar/legacy_required_with_default/nonzero/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequiredWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/scalar/legacy_required_with_default/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsScalarLegacyRequiredWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/message/explicit_presence/length_prefixed/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresence{Val: &cases.IgnoreEmptyEditionsMessageExplicitPresence_Msg{Val: proto.String("foo")}},
			Expected: results.Success(true),
		},
		"proto/2023/message/explicit_presence/length_prefixed/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresence{Val: &cases.IgnoreEmptyEditionsMessageExplicitPresence_Msg{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("ignore_empty.editions.message")}),
		},
		"proto/2023/message/explicit_presence/length_prefixed/unset": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresence{},
			Expected: results.Success(true),
		},
		"proto/2023/message/explicit_presence/delimited/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresenceDelimited{Val: &cases.IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg{Val: proto.String("foo")}},
			Expected: results.Success(true),
		},
		"proto/2023/message/explicit_presence/delimited/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresenceDelimited{Val: &cases.IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("ignore_empty.editions.message")}),
		},
		"proto/2023/message/explicit_presence/delimited/unset": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMessageExplicitPresenceDelimited{},
			Expected: results.Success(true),
		},
		"proto/2023/oneof/nonzero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsOneof{O: &cases.IgnoreEmptyEditionsOneof_Val{Val: 42}},
			Expected: results.Success(true),
		},
		"proto/2023/oneof/zero": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsOneof{O: &cases.IgnoreEmptyEditionsOneof_Val{}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("int32.gt")}),
		},
		"proto/2023/oneof/unset": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsOneof{},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/compact/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeated{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/compact/noempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeated{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("repeated.min_items")}),
		},
		"proto/2023/repeated/compact/empty": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeated{},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/expanded/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeatedExpanded{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto/2023/repeated/expanded/noempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeatedExpanded{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("repeated.min_items")}),
		},
		"proto/2023/repeated/expanded/empty": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsRepeatedExpanded{},
			Expected: results.Success(true),
		},
		"proto/2023/map/nonempty/valid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMap{Val: map[int32]int32{1: 2, 3: 4, 5: 6}},
			Expected: results.Success(true),
		},
		"proto/2023/map/nonempty/invalid": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMap{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("map.min_pairs")}),
		},
		"proto/2023/map/empty": suites.Case{
			Message:  &cases.IgnoreEmptyEditionsMap{},
			Expected: results.Success(true),
		},
	}
}
