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

func sharedSuite() suites.Suite {
	return suites.Suite{
		"proto2/shared/valid": {
			Message:  &cases.Proto2File{Path: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto2/shared/invalid": {
			Message: &cases.Proto2File{Path: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "path",
					ConstraintId: "string.valid_path.proto2",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
		"proto/2023/shared/valid": {
			Message:  &cases.ProtoEdition2023File{Path: proto.String("valid/file.proto")},
			Expected: results.Success(true),
		},
		"proto/2023/shared/invalid": {
			Message: &cases.ProtoEdition2023File{Path: proto.String("../invalid/path")},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "path",
					ConstraintId: "string.valid_path.edition_2023",
					Message:      "not a valid path: `../invalid/path`",
				},
			),
		},
	}
}
