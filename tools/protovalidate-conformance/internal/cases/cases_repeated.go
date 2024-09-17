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
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/durationpb"
)

func repeatedSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.RepeatedNone{Val: []int64{1, 2, 3}},
			Expected: results.Success(true),
		},
		"embed-none/valid": {
			Message:  &cases.RepeatedEmbedNone{Val: []*cases.Embed{{Val: 1}}},
			Expected: results.Success(true),
		},
		"embed-none/nil/valid": {
			Message:  &cases.RepeatedEmbedNone{},
			Expected: results.Success(true),
		},
		"embed-none/empty/valid": {
			Message:  &cases.RepeatedEmbedNone{Val: []*cases.Embed{}},
			Expected: results.Success(true),
		},
		"embed-none/invalid": {
			Message: &cases.RepeatedEmbedNone{Val: []*cases.Embed{{Val: -1}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0].val"),
					ConstraintId: proto.String("int64.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
		"cross-package/embed-none/valid": {
			Message:  &cases.RepeatedEmbedCrossPackageNone{Val: []*other_package.Embed{{Val: 1}}},
			Expected: results.Success(true),
		},
		"cross-package/embed-none/nil/valid": {
			Message:  &cases.RepeatedEmbedCrossPackageNone{},
			Expected: results.Success(true),
		},
		"cross-package/embed-none/empty/valid": {
			Message:  &cases.RepeatedEmbedCrossPackageNone{Val: []*other_package.Embed{}},
			Expected: results.Success(true),
		},
		"cross-package/embed-none/invalid": {
			Message: &cases.RepeatedEmbedCrossPackageNone{Val: []*other_package.Embed{{Val: -1}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0].val"),
					ConstraintId: proto.String("int64.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
		"min/valid": {
			Message:  &cases.RepeatedMin{Val: []*cases.Embed{{Val: 1}, {Val: 2}, {Val: 3}}},
			Expected: results.Success(true),
		},
		"min/equal/valid": {
			Message:  &cases.RepeatedMin{Val: []*cases.Embed{{Val: 1}, {Val: 2}}},
			Expected: results.Success(true),
		},
		"min/invalid": {
			Message: &cases.RepeatedMin{Val: []*cases.Embed{{Val: 1}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.min_items"),
					Message:      proto.String("value must contain at least 2 item(s)"),
				},
			),
		},
		"min/element/invalid": {
			Message: &cases.RepeatedMin{Val: []*cases.Embed{{Val: 1}, {Val: -1}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[1].val"),
					ConstraintId: proto.String("int64.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
		"max/valid": {
			Message:  &cases.RepeatedMax{Val: []float64{1, 2}},
			Expected: results.Success(true),
		},
		"max/equal/valid": {
			Message:  &cases.RepeatedMax{Val: []float64{1, 2, 3}},
			Expected: results.Success(true),
		},
		"max/invalid": {
			Message: &cases.RepeatedMax{Val: []float64{1, 2, 3, 4}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.max_items"),
					Message:      proto.String("value must contain no more than 3 item(s)"),
				},
			),
		},
		"min/max/valid": {
			Message:  &cases.RepeatedMinMax{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"min/max/min/valid": {
			Message:  &cases.RepeatedMinMax{Val: []int32{1, 2}},
			Expected: results.Success(true),
		},
		"min/max/max/valid": {
			Message:  &cases.RepeatedMinMax{Val: []int32{1, 2, 3, 4}},
			Expected: results.Success(true),
		},
		"min/max/below/invalid": {
			Message: &cases.RepeatedMinMax{Val: []int32{}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.min_items"),
					Message:      proto.String("value must contain at least 2 item(s)"),
				},
			),
		},
		"min/max/above/invalid": {
			Message: &cases.RepeatedMinMax{Val: []int32{1, 2, 3, 4, 5}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.max_items"),
					Message:      proto.String("value must contain no more than 4 item(s)"),
				},
			),
		},
		"exact/valid": {
			Message:  &cases.RepeatedExact{Val: []uint32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"exact/below/invalid": {
			Message: &cases.RepeatedExact{Val: []uint32{1, 2}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.min_items"),
					Message:      proto.String("value must contain at least 3 item(s)"),
				},
			),
		},
		"exact/above/invalid": {
			Message: &cases.RepeatedExact{Val: []uint32{1, 2, 3, 4}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.max_items"),
					Message:      proto.String("value must contain no more than 3 item(s)"),
				},
			),
		},
		"unique/valid": {
			Message:  &cases.RepeatedUnique{Val: []string{"foo", "bar", "baz"}},
			Expected: results.Success(true),
		},
		"unique/empty/valid": {
			Message:  &cases.RepeatedUnique{},
			Expected: results.Success(true),
		},
		"unique/case-sensitivity/valid": {
			Message:  &cases.RepeatedUnique{Val: []string{"foo", "Foo"}},
			Expected: results.Success(true),
		},
		"unique/invalid": {
			Message: &cases.RepeatedUnique{Val: []string{"foo", "bar", "foo", "baz"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.unique"),
				},
			),
		},
		"unique/invalid/invalid": {
			Message:  &cases.RepeatedNotUnique{Val: []string{"foo", "bar", "foo", "baz"}},
			Expected: results.Success(true),
		},
		"unique/multiple/valid": {
			Message:  &cases.RepeatedMultipleUnique{A: []string{"foo", "bar"}, B: []int32{1, 2}},
			Expected: results.Success(true),
		},
		"unique/multiple/invalid": {
			Message: &cases.RepeatedMultipleUnique{A: []string{"foo", "foo"}, B: []int32{1, 1}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("a"),
					ConstraintId: proto.String("repeated.unique"),
					Message:      proto.String("repeated value must contain unique items"),
				},
				&validate.Violation{
					FieldPath:    proto.String("b"),
					ConstraintId: proto.String("repeated.unique"),
					Message:      proto.String("repeated value must contain unique items"),
				}),
		},
		"items/valid": {
			Message:  &cases.RepeatedItemRule{Val: []float32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"items/empty/valid": {
			Message:  &cases.RepeatedItemRule{Val: []float32{}},
			Expected: results.Success(true),
		},
		"items/pattern/valid": {
			Message:  &cases.RepeatedItemPattern{Val: []string{"Alpha", "Beta123"}},
			Expected: results.Success(true),
		},
		"items/invalid": {
			Message: &cases.RepeatedItemRule{Val: []float32{1, -2, 3}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[1]"),
					ConstraintId: proto.String("float.gt"),
					Message:      proto.String("value must be greater than 0"),
				},
			),
		},
		"items/pattern/invalid": {
			Message: &cases.RepeatedItemPattern{Val: []string{"Alpha", "!@#$%^&*()"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[1]"),
					ConstraintId: proto.String("string.pattern"),
					Message:      proto.String("value does not match regex pattern `(?i)^[a-z0-9]+$`"),
				},
			),
		},
		"items/in/invalid": {
			Message: &cases.RepeatedItemIn{Val: []string{"baz"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("string.in"),
					Message:      proto.String(`value must be in list ["foo", "bar"]`),
				},
			),
		},
		"items/in/valid": {
			Message:  &cases.RepeatedItemIn{Val: []string{"foo"}},
			Expected: results.Success(true),
		},
		"items/not_in/invalid": {
			Message: &cases.RepeatedItemNotIn{Val: []string{"foo"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("string.not_in"),
					Message:      proto.String("value must not be in list [\"foo\", \"bar\"]"),
				},
			),
		},
		"items/not_in/valid": {
			Message:  &cases.RepeatedItemNotIn{Val: []string{"baz"}},
			Expected: results.Success(true),
		},
		"items/enum/in/invalid": {
			Message: &cases.RepeatedEnumIn{Val: []cases.AnEnum{1}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("enum.in"),
					Message:      proto.String("value must be in list [0]"),
				},
			),
		},
		"items/enum/in/valid": {
			Message:  &cases.RepeatedEnumIn{Val: []cases.AnEnum{0}},
			Expected: results.Success(true),
		},
		"items/enum/not_in/invalid": {
			Message: &cases.RepeatedEnumNotIn{Val: []cases.AnEnum{0}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("enum.not_in"),
					Message:      proto.String("value must not be in list [0]"),
				},
			),
		},
		"items/enum/not_in/valid": {
			Message:  &cases.RepeatedEnumNotIn{Val: []cases.AnEnum{1}},
			Expected: results.Success(true),
		},
		"items/embedded/enum/in/invalid": {
			Message: &cases.RepeatedEmbeddedEnumIn{Val: []cases.RepeatedEmbeddedEnumIn_AnotherInEnum{1}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("enum.in"),
					Message:      proto.String("value must be in list [0]"),
				},
			),
		},
		"items/embedded/enum/in/valid": {
			Message:  &cases.RepeatedEmbeddedEnumIn{Val: []cases.RepeatedEmbeddedEnumIn_AnotherInEnum{0}},
			Expected: results.Success(true),
		},
		"items/embedded/enum/not_in/invalid": {
			Message: &cases.RepeatedEmbeddedEnumNotIn{Val: []cases.RepeatedEmbeddedEnumNotIn_AnotherNotInEnum{0}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("enum.not_in"),
					Message:      proto.String("value must not be in list [0]"),
				},
			),
		},
		"items/embedded/enum/not_in/valid": {
			Message:  &cases.RepeatedEmbeddedEnumNotIn{Val: []cases.RepeatedEmbeddedEnumNotIn_AnotherNotInEnum{1}},
			Expected: results.Success(true),
		},
		"items/any/in/invalid": {
			Message: &cases.RepeatedAnyIn{Val: []*anypb.Any{{TypeUrl: "type.googleapis.com/google.protobuf.Timestamp"}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("any.in"),
					Message:      proto.String("type URL must be in the allow list"),
				},
			),
		},
		"items/any/in/valid": {
			Message:  &cases.RepeatedAnyIn{Val: []*anypb.Any{{TypeUrl: "type.googleapis.com/google.protobuf.Duration"}}},
			Expected: results.Success(true),
		},
		"items/any/not_in/invalid": {
			Message: &cases.RepeatedAnyNotIn{Val: []*anypb.Any{{TypeUrl: "type.googleapis.com/google.protobuf.Timestamp"}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("any.not_in"),
					Message:      proto.String("type URL must not be in the block list"),
				},
			),
		},
		"items/any/not_in/valid": {
			Message:  &cases.RepeatedAnyNotIn{Val: []*anypb.Any{{TypeUrl: "type.googleapis.com/google.protobuf.Duration"}}},
			Expected: results.Success(true),
		},
		"embed-skip/valid": {
			Message:  &cases.RepeatedEmbedSkip{Val: []*cases.Embed{{Val: 1}}},
			Expected: results.Success(true),
		},
		"embed-skip/invalid/element/valid": {
			Message:  &cases.RepeatedEmbedSkip{Val: []*cases.Embed{{Val: -1}}},
			Expected: results.Success(true),
		},
		"min-and-items/len/valid": {
			Message:  &cases.RepeatedMinAndItemLen{Val: []string{"aaa", "bbb"}},
			Expected: results.Success(true),
		},
		"min-and-items/len/min/invalid": {
			Message: &cases.RepeatedMinAndItemLen{Val: []string{}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.min_items"),
					Message:      proto.String("value must contain at least 1 item(s)"),
				},
			),
		},
		"min-and-items/len/len/invalid": {
			Message: &cases.RepeatedMinAndItemLen{Val: []string{"x"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("string.len"),
					Message:      proto.String("value length must be 3 characters"),
				},
			),
		},
		"min-and-max-items/len/valid": {
			Message:  &cases.RepeatedMinAndMaxItemLen{Val: []string{"aaa", "bbb"}},
			Expected: results.Success(true),
		},
		"min-and-max-items/len/min_len/invalid": {
			Message: &cases.RepeatedMinAndMaxItemLen{},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.min_items"),
					Message:      proto.String("value must contain at least 1 item(s)"),
				},
			),
		},
		"min-and-max-items/len/max_len/invalid": {
			Message: &cases.RepeatedMinAndMaxItemLen{Val: []string{"aaa", "bbb", "ccc", "ddd"}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("repeated.max_items"),
					Message:      proto.String("value must contain no more than 3 item(s)"),
				},
			),
		},
		"duration/gte/valid": {
			Message:  &cases.RepeatedDuration{Val: []*durationpb.Duration{{Seconds: 3}}},
			Expected: results.Success(true),
		},
		"duration/gte/empty/valid": {
			Message:  &cases.RepeatedDuration{},
			Expected: results.Success(true),
		},
		"duration/gte/equal/valid": {
			Message:  &cases.RepeatedDuration{Val: []*durationpb.Duration{{Nanos: 1000000}}},
			Expected: results.Success(true),
		},
		"duration/gte/invalid": {
			Message: &cases.RepeatedDuration{Val: []*durationpb.Duration{{Seconds: -1}}},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val[0]"),
					ConstraintId: proto.String("duration.gte"),
					Message:      proto.String("value must be greater than or equal to 0.001s"),
				},
			),
		},
		"exact/ignore_empty/valid": {
			Message:  &cases.RepeatedExactIgnore{Val: nil},
			Expected: results.Success(true),
		},
	}
}
