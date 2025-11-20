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
)

func groupsSuite() suites.Suite {
	return suites.Suite{
		"optional/valid/unpopulated": {
			Message:  &cases.GroupOptional{},
			Expected: results.Success(true),
		},
		"optional/valid/populated": {
			Message: &cases.GroupOptional{
				Optional: &cases.GroupOptional_Optional{
					Value: proto.String("foo"),
				},
			},
			Expected: results.Success(true),
		},
		"optional/invalid": {
			Message: &cases.GroupOptional{
				Optional: &cases.GroupOptional_Optional{
					Value: proto.String("bar"),
				},
			},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("optional.value"),
				Rule:   results.FieldPath("string.const"),
				RuleId: proto.String("string.const"),
			}),
		},
		"required/valid": {
			Message: &cases.GroupRequired{
				Required: &cases.GroupRequired_Required{
					Value: proto.Bool(true),
				},
			},
			Expected: results.Success(true),
		},
		"required/invalid": {
			Message: &cases.GroupRequired{
				Required: &cases.GroupRequired_Required{
					Value: proto.Bool(false),
				},
			},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("required.value"),
				Rule:   results.FieldPath("bool.const"),
				RuleId: proto.String("bool.const"),
			}),
		},
		"custom/valid": {
			Message: &cases.GroupCustom{
				Custom: &cases.GroupCustom_Custom{
					Value: proto.Int32(4),
					Div:   proto.Int32(2),
				},
			},
			Expected: results.Success(true),
		},
		"custom/invalid": {
			Message: &cases.GroupCustom{
				Custom: &cases.GroupCustom_Custom{
					Value: proto.Int32(4),
					Div:   proto.Int32(3),
				},
			},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("custom"),
				RuleId: proto.String("group.custom.div"),
			}),
		},
		"delimited/valid": {
			Message: &cases.GroupDelimited{
				Value: &cases.GroupDelimited_Value{
					X: proto.Bool(true),
				},
			},
			Expected: results.Success(true),
		},
		"delimited/invalid": {
			Message: &cases.GroupDelimited{
				Value: &cases.GroupDelimited_Value{
					X: proto.Bool(false),
				},
			},
			Expected: results.Violations(&validate.Violation{
				Field:  results.FieldPath("value.x"),
				Rule:   results.FieldPath("bool.const"),
				RuleId: proto.String("bool.const"),
			}),
		},
	}
}
