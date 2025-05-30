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
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"
)

func anySuite() suites.Suite {
	tsAny, _ := anypb.New(timestamppb.Now())
	durAny, _ := anypb.New(durationpb.New(time.Second))
	fooAny := &anypb.Any{TypeUrl: "type.googleapis.com/foo.Bar"}

	return suites.Suite{
		"any/valid/known": {
			Message:  tsAny,
			Expected: results.Success(true),
		},
		"any/valid/unknown": {
			Message:  fooAny,
			Expected: results.Success(true),
		},
		"none/valid/known": {
			Message:  &cases.AnyNone{Val: durAny},
			Expected: results.Success(true),
		},
		"none/valid/unknown": {
			Message:  &cases.AnyNone{Val: fooAny},
			Expected: results.Success(true),
		},
		"in/valid/allowed": {
			Message:  &cases.AnyIn{Val: durAny},
			Expected: results.Success(true),
		},
		"in/valid/empty": {
			Message:  &cases.AnyIn{},
			Expected: results.Success(true),
		},
		"in/invalid/known": {
			Message: &cases.AnyIn{Val: tsAny},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("any.in"),
					RuleId: proto.String("any.in"),
				},
			),
		},
		"in/invalid/unknown": {
			Message: &cases.AnyIn{Val: fooAny},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("any.in"),
					RuleId: proto.String("any.in"),
				},
			),
		},
		"not_in/valid/known": {
			Message:  &cases.AnyNotIn{Val: durAny},
			Expected: results.Success(true),
		},
		"not_in/valid/unknown": {
			Message:  &cases.AnyNotIn{Val: fooAny},
			Expected: results.Success(true),
		},
		"not_in/valid/empty": {
			Message:  &cases.AnyNotIn{},
			Expected: results.Success(true),
		},
		"not_in/invalid/known": {
			Message: &cases.AnyNotIn{Val: tsAny},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("any.not_in"),
					RuleId: proto.String("any.not_in"),
				},
			),
		},
		"required/valid/known": {
			Message:  &cases.AnyRequired{Val: tsAny},
			Expected: results.Success(true),
		},
		"required/valid/unknown": {
			Message:  &cases.AnyRequired{Val: fooAny},
			Expected: results.Success(true),
		},
		"require/invalid": {
			Message: &cases.AnyRequired{},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("required"),
					RuleId: proto.String("required"),
				},
			),
		},
		"compilation/wrong_type/scalar": {
			Message:  &cases.AnyWrongTypeScalar{},
			Expected: results.CompilationError("mismatched rule type and field type"),
		},
		"compilation/wrong_type/message": {
			Message:  &cases.AnyWrongTypeMessage{},
			Expected: results.CompilationError("mismatched rule type and field type"),
		},
		"compilation/wrong_type/wrapper": {
			Message:  &cases.AnyWrongTypeWrapper{},
			Expected: results.CompilationError("mismatched rule type and field type"),
		},
		"compilation/wrong_type/wkt": {
			Message:  &cases.AnyWrongTypeWKT{},
			Expected: results.CompilationError("mismatched rule type and field type"),
		},
	}
}
