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
	"encoding/json"
	"errors"
	"os"
	"path/filepath"
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
		_, err = suite.ProcessResults(suiteName, nil, nil, nil, nil, nil)
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
		cfg:            cfg,
		options:        options,
		resultSet:      &results.Set{Options: options},
		report:         &results.Report{},
		reportedSuites: map[string]bool{},
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
	// The report lists the cases as not run, not as failed.
	require.Len(t, runner.report.Tests, wantFailures)
	for _, test := range runner.report.Tests {
		assert.Equal(t, results.OutcomeNotRun, test.Outcome)
	}
}

func TestWriteReportAfterError(t *testing.T) {
	t.Parallel()
	cfg := &config{
		suiteFilter: regexp.MustCompile(`^standard_rules/(bool|bytes)$`),
		caseFilter:  regexp.MustCompile(`^const/`),
		reportJSON:  filepath.Join(t.TempDir(), "report.json"),
	}
	runner := &suiteRunner{
		cfg:            cfg,
		report:         &results.Report{},
		reportedSuites: map[string]bool{"standard_rules/bool": true},
	}
	runner.report.AddCase("standard_rules/bool", &harness.CaseResult{Name: "const/true/valid", Success: true})
	require.NoError(t, runner.writeReport(errors.New("invalid test case")))
	data, err := os.ReadFile(cfg.reportJSON)
	require.NoError(t, err)
	var written results.Report
	require.NoError(t, json.Unmarshal(data, &written))
	assert.Equal(t, "invalid test case", written.Error)
	// The finished suite keeps its results, and the test cases of the suite
	// that didn't finish are reported as not run.
	var bytesCases int
	for _, test := range written.Tests {
		switch test.Suite {
		case "standard_rules/bool":
			assert.Equal(t, results.OutcomePassed, test.Outcome)
		case "standard_rules/bytes":
			assert.Equal(t, results.OutcomeNotRun, test.Outcome)
			bytesCases++
		default:
			t.Errorf("unexpected suite %q", test.Suite)
		}
	}
	assert.Positive(t, bytesCases)
}
