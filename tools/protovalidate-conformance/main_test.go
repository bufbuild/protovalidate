// Copyright 2023-2026 Buf Technologies, Inc.
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
	"regexp"
	"testing"
	"time"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
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

func TestRunSuiteExecutorFailure(t *testing.T) {
	t.Parallel()
	cfg := &config{
		suiteFilter:  regexp.MustCompile(`^standard_rules/(bool|bytes)$`),
		suiteTimeout: 5 * time.Second,
		cmd:          "false",
	}
	options := &harness.ResultOptions{}
	runner := &suiteRunner{
		cfg:       cfg,
		options:   options,
		resultSet: &results.Set{Options: options},
	}
	// An executor that fails doesn't stop the other suites from running.
	err := cases.GlobalSuites().Range(cfg.suiteFilter, runner.runSuite)
	require.NoError(t, err)
	allSuites := cases.GlobalSuites()
	wantFailures := len(allSuites["standard_rules/bool"]) + len(allSuites["standard_rules/bytes"])
	assert.Equal(t, int32(wantFailures), runner.resultSet.Failures)
	require.Len(t, runner.resultSet.Suites, 2)
	for _, suiteResults := range runner.resultSet.Suites {
		for _, caseResult := range suiteResults.GetCases() {
			assert.Contains(t, caseResult.GetGot().GetUnexpectedError(), "failed to execute conformance test")
		}
	}
}
