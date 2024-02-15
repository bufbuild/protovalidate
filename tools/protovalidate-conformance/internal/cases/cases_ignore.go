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

func ignoreSuite() suites.Suite {
	return suites.Suite{
		"proto2/scalar/optional/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecified{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecified{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecified{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecifiedWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecifiedWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecifiedWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecifiedWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreUnspecifiedWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmpty{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmpty{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional/ignore_empty/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmpty{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmptyWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmptyWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_empty/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmptyWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmptyWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_empty/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreEmptyWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefault{Val: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefaultWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefaultWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefaultWithDefault{Val: proto.Int32(-42)},
			Expected: results.Success(true),
		},
		"proto2/scalar/optional_with_default/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefaultWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/optional_with_default/ignore_default/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarOptionalIgnoreDefaultWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecified{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecified{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecified{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecifiedWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required_with_default/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecifiedWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecifiedWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreUnspecifiedWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmpty{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmpty{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_empty/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmpty{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmptyWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required_with_default/ignore_empty/invalid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmptyWithDefault{Val: proto.Int32(-42)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmptyWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_empty/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreEmptyWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefault{Val: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required_with_default/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefaultWithDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required_with_default/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefaultWithDefault{Val: proto.Int32(-42)},
			Expected: results.Success(true),
		},
		"proto2/scalar/required_with_default/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefaultWithDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/scalar/required_with_default/ignore_default/invalid/zero": suites.Case{
			Message:  &cases.Proto2ScalarRequiredIgnoreDefaultWithDefault{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/message/optional/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2MessageOptionalIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto2MessageOptionalIgnoreUnspecified_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto2MessageOptionalIgnoreUnspecified_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/optional/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto2MessageOptionalIgnoreUnspecified_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/optional/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2MessageOptionalIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreEmpty{
				Val: &cases.Proto2MessageOptionalIgnoreEmpty_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreEmpty{
				Val: &cases.Proto2MessageOptionalIgnoreEmpty_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/optional/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreEmpty{
				Val: &cases.Proto2MessageOptionalIgnoreEmpty_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/optional/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2MessageOptionalIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreDefault{
				Val: &cases.Proto2MessageOptionalIgnoreDefault_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/optional/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreDefault{
				Val: &cases.Proto2MessageOptionalIgnoreDefault_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/optional/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto2MessageOptionalIgnoreDefault{
				Val: &cases.Proto2MessageOptionalIgnoreDefault_Msg{},
			},
			Expected: results.Success(true),
		},
		"proto2/message/required/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreUnspecified{
				Val: &cases.Proto2MessageRequiredIgnoreUnspecified_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/required/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreUnspecified{
				Val: &cases.Proto2MessageRequiredIgnoreUnspecified_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/required/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreUnspecified{
				Val: &cases.Proto2MessageRequiredIgnoreUnspecified_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/required/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreEmpty{
				Val: &cases.Proto2MessageRequiredIgnoreEmpty_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/required/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreEmpty{
				Val: &cases.Proto2MessageRequiredIgnoreEmpty_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/required/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreEmpty{
				Val: &cases.Proto2MessageRequiredIgnoreEmpty_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/required/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreDefault{
				Val: &cases.Proto2MessageRequiredIgnoreDefault_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto2/message/required/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreDefault{
				Val: &cases.Proto2MessageRequiredIgnoreDefault_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto2.message.ignore.empty"}),
		},
		"proto2/message/required/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto2MessageRequiredIgnoreDefault{
				Val: &cases.Proto2MessageRequiredIgnoreDefault_Msg{},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecified{
				O: &cases.Proto2OneofIgnoreUnspecified_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecified{
				O: &cases.Proto2OneofIgnoreUnspecified_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecified{
				O: &cases.Proto2OneofIgnoreUnspecified_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreUnspecifiedWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecifiedWithDefault{
				O: &cases.Proto2OneofIgnoreUnspecifiedWithDefault_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecifiedWithDefault{
				O: &cases.Proto2OneofIgnoreUnspecifiedWithDefault_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecifiedWithDefault{
				O: &cases.Proto2OneofIgnoreUnspecifiedWithDefault_Val{Val: -42},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_unspecified/invalid/zero": suites.Case{
			Message: &cases.Proto2OneofIgnoreUnspecifiedWithDefault{
				O: &cases.Proto2OneofIgnoreUnspecifiedWithDefault_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmpty{
				O: &cases.Proto2OneofIgnoreEmpty_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmpty{
				O: &cases.Proto2OneofIgnoreEmpty_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmpty{
				O: &cases.Proto2OneofIgnoreEmpty_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreEmptyWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmptyWithDefault{
				O: &cases.Proto2OneofIgnoreEmptyWithDefault_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmptyWithDefault{
				O: &cases.Proto2OneofIgnoreEmptyWithDefault_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmptyWithDefault{
				O: &cases.Proto2OneofIgnoreEmptyWithDefault_Val{Val: -42},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_empty/invalid/zero": suites.Case{
			Message: &cases.Proto2OneofIgnoreEmptyWithDefault{
				O: &cases.Proto2OneofIgnoreEmptyWithDefault_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefault{
				O: &cases.Proto2OneofIgnoreDefault_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefault{
				O: &cases.Proto2OneofIgnoreDefault_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefault{
				O: &cases.Proto2OneofIgnoreDefault_Val{},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2OneofIgnoreDefaultWithDefault{},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefaultWithDefault{
				O: &cases.Proto2OneofIgnoreDefaultWithDefault_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefaultWithDefault{
				O: &cases.Proto2OneofIgnoreDefaultWithDefault_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/oneof_with_default/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefaultWithDefault{
				O: &cases.Proto2OneofIgnoreDefaultWithDefault_Val{Val: -42},
			},
			Expected: results.Success(true),
		},
		"proto2/oneof_with_default/ignore_default/invalid/zero": suites.Case{
			Message: &cases.Proto2OneofIgnoreDefaultWithDefault{
				O: &cases.Proto2OneofIgnoreDefaultWithDefault_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto2/repeated/ignore_unspecified/invalid/unpopulated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreUnspecified{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto2/repeated/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreUnspecified{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto2/repeated/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreUnspecified{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto2/repeated/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto2/repeated/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreEmpty{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto2/repeated/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreEmpty{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto2/repeated/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto2/repeated/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreDefault{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto2/repeated/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedIgnoreDefault{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto2/map/ignore_unspecified/invalid/unpopulated": suites.Case{
			Message:  &cases.Proto2MapIgnoreUnspecified{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto2/map/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto2/map/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreUnspecified{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto2/map/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2MapIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto2/map/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto2/map/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreEmpty{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto2/map/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto2MapIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto2/map/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto2/map/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2MapIgnoreDefault{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto2/repeated/items/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreUnspecified{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto2/repeated/items/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreUnspecified{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto2/repeated/items/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreUnspecified{Val: []int32{0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto2/repeated/items/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreEmpty{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto2/repeated/items/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreEmpty{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto2/repeated/items/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreEmpty{Val: []int32{0}},
			Expected: results.Success(true),
		},
		"proto2/repeated/items/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreDefault{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto2/repeated/items/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreDefault{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto2/repeated/items/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto2RepeatedItemIgnoreDefault{Val: []int32{0}},
			Expected: results.Success(true),
		},
		"proto2/map/keys/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/keys/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreUnspecified{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto2/map/keys/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreUnspecified{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto2/map/keys/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/keys/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreEmpty{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto2/map/keys/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreEmpty{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto2/map/keys/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/keys/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreDefault{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto2/map/keys/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto2MapKeyIgnoreDefault{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto2/map/values/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/values/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreUnspecified{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto2/map/values/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreUnspecified{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto2/map/values/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/values/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreEmpty{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto2/map/values/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreEmpty{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto2/map/values/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto2/map/values/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreDefault{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto2/map/values/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto2MapValueIgnoreDefault{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreUnspecified{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreUnspecified{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/optional/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreUnspecified{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/optional/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreEmpty{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreEmpty{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/optional/ignore_empty/invalid/default": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreEmpty{Val: proto.Int32(0)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/optional/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreDefault{Val: proto.Int32(123)},
			Expected: results.Success(true),
		},
		"proto3/scalar/optional/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreDefault{Val: proto.Int32(-123)},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/optional/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto3ScalarOptionalIgnoreDefault{Val: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"proto3/scalar/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreUnspecified{Val: 123},
			Expected: results.Success(true),
		},
		"proto3/scalar/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreUnspecified{Val: -123},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/ignore_unspecified/invalid/default": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreUnspecified{Val: 0},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreEmpty{Val: 123},
			Expected: results.Success(true),
		},
		"proto3/scalar/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreEmpty{Val: -123},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/ignore_empty/valid/default": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreEmpty{Val: 0},
			Expected: results.Success(true),
		},
		"proto3/scalar/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreDefault{Val: 123},
			Expected: results.Success(true),
		},
		"proto3/scalar/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreDefault{Val: -123},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/scalar/ignore_default/valid/default": suites.Case{
			Message:  &cases.Proto3ScalarIgnoreDefault{Val: 0},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3MessageOptionalIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto3MessageOptionalIgnoreUnspecified_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto3MessageOptionalIgnoreUnspecified_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/optional/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreUnspecified{
				Val: &cases.Proto3MessageOptionalIgnoreUnspecified_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/optional/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3MessageOptionalIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreEmpty{
				Val: &cases.Proto3MessageOptionalIgnoreEmpty_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreEmpty{
				Val: &cases.Proto3MessageOptionalIgnoreEmpty_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/optional/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreEmpty{
				Val: &cases.Proto3MessageOptionalIgnoreEmpty_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/optional/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3MessageOptionalIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreDefault{
				Val: &cases.Proto3MessageOptionalIgnoreDefault_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/optional/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreDefault{
				Val: &cases.Proto3MessageOptionalIgnoreDefault_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/optional/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto3MessageOptionalIgnoreDefault{
				Val: &cases.Proto3MessageOptionalIgnoreDefault_Msg{},
			},
			Expected: results.Success(true),
		},
		"proto3/message/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreUnspecified{
				Val: &cases.Proto3MessageIgnoreUnspecified_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreUnspecified{
				Val: &cases.Proto3MessageIgnoreUnspecified_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto3MessageIgnoreUnspecified{
				Val: &cases.Proto3MessageIgnoreUnspecified_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreEmpty{
				Val: &cases.Proto3MessageIgnoreEmpty_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreEmpty{
				Val: &cases.Proto3MessageIgnoreEmpty_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto3MessageIgnoreEmpty{
				Val: &cases.Proto3MessageIgnoreEmpty_Msg{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreDefault{
				Val: &cases.Proto3MessageIgnoreDefault_Msg{Val: proto.String("foo")},
			},
			Expected: results.Success(true),
		},
		"proto3/message/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto3MessageIgnoreDefault{
				Val: &cases.Proto3MessageIgnoreDefault_Msg{Val: proto.String("bar")},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "proto3.message.ignore.empty"}),
		},
		"proto3/message/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto3MessageIgnoreDefault{
				Val: &cases.Proto3MessageIgnoreDefault_Msg{},
			},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_unspecified/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3OneofIgnoreUnspecified{},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_unspecified/valid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreUnspecified{
				O: &cases.Proto3OneofIgnoreUnspecified_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_unspecified/invalid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreUnspecified{
				O: &cases.Proto3OneofIgnoreUnspecified_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/oneof/ignore_unspecified/invalid/default": suites.Case{
			Message: &cases.Proto3OneofIgnoreUnspecified{
				O: &cases.Proto3OneofIgnoreUnspecified_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/oneof/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3OneofIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_empty/valid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreEmpty{
				O: &cases.Proto3OneofIgnoreEmpty_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_empty/invalid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreEmpty{
				O: &cases.Proto3OneofIgnoreEmpty_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/oneof/ignore_empty/invalid/default": suites.Case{
			Message: &cases.Proto3OneofIgnoreEmpty{
				O: &cases.Proto3OneofIgnoreEmpty_Val{},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/oneof/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3OneofIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_default/valid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreDefault{
				O: &cases.Proto3OneofIgnoreDefault_Val{Val: 123},
			},
			Expected: results.Success(true),
		},
		"proto3/oneof/ignore_default/invalid/populated": suites.Case{
			Message: &cases.Proto3OneofIgnoreDefault{
				O: &cases.Proto3OneofIgnoreDefault_Val{Val: -123},
			},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "int32.gt"}),
		},
		"proto3/oneof/ignore_default/valid/default": suites.Case{
			Message: &cases.Proto3OneofIgnoreDefault{
				O: &cases.Proto3OneofIgnoreDefault_Val{},
			},
			Expected: results.Success(true),
		},
		"proto3/repeated/ignore_unspecified/invalid/unpopulated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreUnspecified{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto3/repeated/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreUnspecified{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto3/repeated/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreUnspecified{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto3/repeated/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto3/repeated/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreEmpty{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto3/repeated/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreEmpty{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto3/repeated/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto3/repeated/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreDefault{Val: []int32{1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "repeated.min_items"}),
		},
		"proto3/repeated/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedIgnoreDefault{Val: []int32{1, 2, 3}},
			Expected: results.Success(true),
		},
		"proto3/map/ignore_unspecified/invalid/unpopulated": suites.Case{
			Message:  &cases.Proto3MapIgnoreUnspecified{},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto3/map/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto3/map/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreUnspecified{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto3/map/ignore_empty/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3MapIgnoreEmpty{},
			Expected: results.Success(true),
		},
		"proto3/map/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto3/map/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreEmpty{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto3/map/ignore_default/valid/unpopulated": suites.Case{
			Message:  &cases.Proto3MapIgnoreDefault{},
			Expected: results.Success(true),
		},
		"proto3/map/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val", ConstraintId: "map.min_pairs"}),
		},
		"proto3/map/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3MapIgnoreDefault{Val: map[int32]int32{1: 1, 2: 2, 3: 3}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreUnspecified{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreUnspecified{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto3/repeated/items/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreUnspecified{Val: []int32{0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto3/repeated/items/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreEmpty{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreEmpty{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto3/repeated/items/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreEmpty{Val: []int32{0}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreDefault{Val: []int32{1}},
			Expected: results.Success(true),
		},
		"proto3/repeated/items/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreDefault{Val: []int32{-42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto3/repeated/items/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto3RepeatedItemIgnoreDefault{Val: []int32{0}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreUnspecified{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto3/map/keys/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreUnspecified{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto3/map/keys/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreEmpty{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto3/map/keys/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreEmpty{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/keys/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreDefault{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ForKey: true, ConstraintId: "int32.gt"}),
		},
		"proto3/map/keys/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto3MapKeyIgnoreDefault{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto3/map/values/ignore_unspecified/valid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreUnspecified{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/values/ignore_unspecified/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreUnspecified{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto3/map/values/ignore_unspecified/invalid/zero": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreUnspecified{Val: map[int32]int32{0: 0}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[0]", ConstraintId: "int32.gt"}),
		},
		"proto3/map/values/ignore_empty/valid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreEmpty{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/values/ignore_empty/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreEmpty{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto3/map/values/ignore_empty/valid/zero": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreEmpty{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
		"proto3/map/values/ignore_default/valid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreDefault{Val: map[int32]int32{1: 1}},
			Expected: results.Success(true),
		},
		"proto3/map/values/ignore_default/invalid/populated": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreDefault{Val: map[int32]int32{-42: -42}},
			Expected: results.Violations(&validate.Violation{FieldPath: "val[-42]", ConstraintId: "int32.gt"}),
		},
		"proto3/map/values/ignore_default/valid/zero": suites.Case{
			Message:  &cases.Proto3MapValueIgnoreDefault{Val: map[int32]int32{0: 0}},
			Expected: results.Success(true),
		},
	}
}
