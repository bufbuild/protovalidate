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
	"google.golang.org/protobuf/types/known/fieldmaskpb"
)

func fieldMaskSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.FieldMaskNone{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b"}}},
			Expected: results.Success(true),
		},
		"required/valid": {
			Message:  &cases.FieldMaskRequired{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b"}}},
			Expected: results.Success(true),
		},
		"required/invalid": {
			Message: &cases.FieldMaskRequired{},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("val"),
				Rule:   results.FieldPath("required"),
				RuleId: proto.String("required"),
			}),
		},
		"const/valid": {
			Message: &cases.FieldMaskConst{
				Val: &fieldmaskpb.FieldMask{
					Paths: []string{"a"},
				},
			},
			Expected: results.Success(true),
		},
		"const/valid/empty": {
			Message: &cases.FieldMaskConst{}, Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.FieldMaskConst{
				Val: &fieldmaskpb.FieldMask{
					Paths: []string{"b"},
				},
			},
			Expected: results.Violations(&validate.Violation{
				Field:   results.FieldPath("val"),
				Rule:    results.FieldPath("field_mask.const"),
				RuleId:  proto.String("field_mask.const"),
				Message: proto.String("value must equal paths [a]"),
			}),
		},
		"in/valid": {
			Message:  &cases.FieldMaskIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b"}}},
			Expected: results.Success(true),
		},
		"in/valid/sub": {
			Message:  &cases.FieldMaskIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a.foo", "b.bar"}}},
			Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.FieldMaskIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b", "c"}}},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("val"),
				Rule:   results.FieldPath("field_mask.in"),
				RuleId: proto.String("field_mask.in"),
			}),
		},
		"in/invalid/sub": {
			Message: &cases.FieldMaskIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b.foo", "c.bar"}}},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("val"),
				Rule:   results.FieldPath("field_mask.in"),
				RuleId: proto.String("field_mask.in"),
			}),
		},
		"not_in/valid": {
			Message:  &cases.FieldMaskNotIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b"}}},
			Expected: results.Success(true),
		},
		"not_in/valid/sub": {
			Message:  &cases.FieldMaskNotIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a.foo", "b.bar"}}},
			Expected: results.Success(true),
		},
		"not_in/invalid": {
			Message: &cases.FieldMaskNotIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b", "c"}}},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("val"),
				Rule:   results.FieldPath("field_mask.not_in"),
				RuleId: proto.String("field_mask.not_in"),
			}),
		},
		"not_in/invalid/sub": {
			Message: &cases.FieldMaskNotIn{Val: &fieldmaskpb.FieldMask{Paths: []string{"a", "b.foo", "c.bar"}}},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("val"),
				Rule:   results.FieldPath("field_mask.not_in"),
				RuleId: proto.String("field_mask.not_in"),
			}),
		},
		"example/valid": {
			Message: &cases.FieldMaskExample{
				Val: &fieldmaskpb.FieldMask{
					Paths: []string{"a"},
				},
			},
			Expected: results.Success(true),
		},
	}
}
