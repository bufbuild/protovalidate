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

package main

import (
	"testing"

	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
)

func TestProcessAllSuites(t *testing.T) {
	t.Parallel()
	// Conformance test cases can be invalid: For example, they can define a bad
	// field path, or a message that fails to marshal.
	err := cases.GlobalSuites().Range(nil, func(suiteName string, suite suites.Suite) error {
		_, err := suite.ToRequestProto(nil)
		if err != nil {
			return err
		}
		_, err = suite.ProcessResults(suiteName, nil, nil, nil, nil)
		return err
	})
	if err != nil {
		t.Error(err)
	}
}
