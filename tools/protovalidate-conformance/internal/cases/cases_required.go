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

func requiredSuite() suites.Suite {
	return suites.Suite{
		"proto2/scalar/optional/nonzero": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptional{Val: proto.String("foo")},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/zero": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptional{Val: proto.String("")},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/unset": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptional{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto2/scalar/optional_with_default/nonzero": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptionalDefault{Val: proto.String("bar")},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/zero": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptionalDefault{Val: proto.String("")},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/default": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptionalDefault{Val: proto.String("foo")},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/unset": suites.Case{
			Message:  &cases.RequiredProto2ScalarOptionalDefault{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto2/scalar/required/nonzero": suites.Case{
			Message:  &cases.RequiredProto2ScalarRequired{Val: proto.String("foo")},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/zero": suites.Case{
			Message:  &cases.RequiredProto2ScalarRequired{Val: proto.String("")},
			Expected: results.Success(true),
		},
		"proto2/message/nonzero": suites.Case{
			Message:  &cases.RequiredProto2Message{Val: &cases.RequiredProto2Message_Msg{Val: proto.String("foo")}},
			Expected: results.Success(true),
		},
		"proto2/message/zero": suites.Case{
			Message:  &cases.RequiredProto2Message{Val: &cases.RequiredProto2Message_Msg{}},
			Expected: results.Success(true),
		},
		"proto2/message/unset": suites.Case{
			Message:  &cases.RequiredProto2Message{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto2/oneof/nonzero": suites.Case{
			Message:  &cases.RequiredProto2Oneof{Val: &cases.RequiredProto2Oneof_A{A: "foo"}},
			Expected: results.Success(true),
		},
		"proto2/oneof/zero": suites.Case{
			Message:  &cases.RequiredProto2Oneof{Val: &cases.RequiredProto2Oneof_A{A: ""}},
			Expected: results.Success(true),
		},
		"proto2/oneof/other_member": suites.Case{
			Message:  &cases.RequiredProto2Oneof{Val: &cases.RequiredProto2Oneof_B{B: "foo"}},
			Expected: results.Violations(&validate.Violation{FieldPath: "a", ConstraintId: "required"}),
		},
		"proto2/oneof/unset": suites.Case{
			Message:  &cases.RequiredProto2Oneof{},
			Expected: results.Violations(&validate.Violation{FieldPath: "a", ConstraintId: "required"}),
		},
		"proto2/repeated/nonempty": suites.Case{
			Message:  &cases.RequiredProto2Repeated{Val: []string{"foo"}},
			Expected: results.Success(true),
		},
		"proto2/repeated/empty": suites.Case{
			Message:  &cases.RequiredProto2Repeated{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto2/map/nonempty": suites.Case{
			Message:  &cases.RequiredProto2Map{Val: map[string]string{"foo": "bar"}},
			Expected: results.Success(true),
		},
		"proto2/map/empty": suites.Case{
			Message:  &cases.RequiredProto2Map{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto3/scalar/nonzero": suites.Case{
			Message:  &cases.RequiredProto3Scalar{Val: "foo"},
			Expected: results.Success(true),
		},
		"proto3/scalar/zero": suites.Case{
			Message:  &cases.RequiredProto3Scalar{Val: ""},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto3/scalar/optional/nonzero": suites.Case{
			Message:  &cases.RequiredProto3OptionalScalar{Val: proto.String("foo")},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/zero": suites.Case{
			Message:  &cases.RequiredProto3OptionalScalar{Val: proto.String("")},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/unset": suites.Case{
			Message:  &cases.RequiredProto3OptionalScalar{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto3/message/nonzero": suites.Case{
			Message:  &cases.RequiredProto3Message{Val: &cases.RequiredProto3Message_Msg{Val: "foo"}},
			Expected: results.Success(true),
		},
		"proto3/message/zero": suites.Case{
			Message:  &cases.RequiredProto3Message{Val: &cases.RequiredProto3Message_Msg{}},
			Expected: results.Success(true),
		},
		"proto3/message/unset": suites.Case{
			Message:  &cases.RequiredProto3Message{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto3/oneof/nonzero": suites.Case{
			Message:  &cases.RequiredProto3OneOf{Val: &cases.RequiredProto3OneOf_A{A: "foo"}},
			Expected: results.Success(true),
		},
		"proto3/oneof/zero": suites.Case{
			Message:  &cases.RequiredProto3OneOf{Val: &cases.RequiredProto3OneOf_A{A: ""}},
			Expected: results.Success(true),
		},
		"proto3/oneof/other_member": suites.Case{
			Message:  &cases.RequiredProto3OneOf{Val: &cases.RequiredProto3OneOf_B{B: "foo"}},
			Expected: results.Violations(&validate.Violation{FieldPath: "a", ConstraintId: "required"}),
		},
		"proto3/oneof/unset": suites.Case{
			Message:  &cases.RequiredProto3OneOf{},
			Expected: results.Violations(&validate.Violation{FieldPath: "a", ConstraintId: "required"}),
		},
		"proto3/repeated/nonempty": suites.Case{
			Message:  &cases.RequiredProto3Repeated{Val: []string{"foo"}},
			Expected: results.Success(true),
		},
		"proto3/repeated/empty": suites.Case{
			Message:  &cases.RequiredProto3Repeated{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
		"proto3/map/nonempty": suites.Case{
			Message:  &cases.RequiredProto3Map{Val: map[string]string{"foo": "bar"}},
			Expected: results.Success(true),
		},
		"proto3/map/empty": suites.Case{
			Message:  &cases.RequiredProto3Map{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "required"}),
		},
	}
}
