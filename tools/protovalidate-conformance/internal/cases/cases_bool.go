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

func boolSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.BoolNone{Val: true},
			Expected: results.Success(true),
		},
		"const/true/valid": {
			Message:  &cases.BoolConstTrue{Val: true},
			Expected: results.Success(true),
		},
		"const/true/invalid": {
			Message: &cases.BoolConstTrue{Val: false},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("bool.const"),
					RuleId: proto.String("bool.const"),
				},
			),
		},
		"const/false/valid": {
			Message:  &cases.BoolConstFalse{Val: false},
			Expected: results.Success(true),
		},
		"const/false/invalid": {
			Message: &cases.BoolConstFalse{Val: true},
			Expected: results.Violations(
				&validate.Violation{
					Field:  results.FieldPath("val"),
					Rule:   results.FieldPath("bool.const"),
					RuleId: proto.String("bool.const"),
				},
			),
		},
		"example/valid": {
			Message:  &cases.BoolExample{Val: true},
			Expected: results.Success(true),
		},
	}
}
