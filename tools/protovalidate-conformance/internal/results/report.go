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

package results

import (
	"cmp"
	"encoding/json"
	"fmt"
	"os"
	"slices"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
)

// Outcome is the outcome of a test case in a JSON report.
type Outcome string

const (
	// OutcomePassed is a test case that passed.
	OutcomePassed Outcome = "passed"
	// OutcomeFailed is a test case that failed and isn't an expected failure.
	OutcomeFailed Outcome = "failed"
	// OutcomeFailedAsExpected is an expected failure that failed.
	OutcomeFailedAsExpected Outcome = "failed-as-expected"
	// OutcomePassedUnexpectedly is an expected failure that passed.
	OutcomePassedUnexpectedly Outcome = "passed-unexpectedly"
	// OutcomeNotRun is a test case in a suite that the executor didn't return
	// results for, because it failed or a previous suite stopped the run.
	OutcomeNotRun Outcome = "not-run"
)

// Report is the file written for the --report_json flag, for tools that need
// the outcome of each test case instead of the console output.
type Report struct {
	// Error is set if the run stopped early, for example because the executor
	// exited with an error.
	Error string       `json:"error,omitempty"`
	Tests []ReportTest `json:"tests"`
}

// ReportTest is the outcome of one test case in a Report.
type ReportTest struct {
	Suite   string  `json:"suite"`
	Case    string  `json:"case"`
	Outcome Outcome `json:"outcome"`
}

// AddCase adds a test case's result to the report.
func (r *Report) AddCase(suiteName string, caseResult *harness.CaseResult) {
	r.Tests = append(r.Tests, ReportTest{
		Suite:   suiteName,
		Case:    caseResult.GetName(),
		Outcome: caseOutcome(caseResult),
	})
}

// AddNotRun adds a test case that didn't run to the report.
func (r *Report) AddNotRun(suiteName string, caseName string) {
	r.Tests = append(r.Tests, ReportTest{
		Suite:   suiteName,
		Case:    caseName,
		Outcome: OutcomeNotRun,
	})
}

// WriteFile writes the report as JSON to path, with test cases sorted by suite
// and case name.
func (r *Report) WriteFile(path string) error {
	sorted := Report{
		Error: r.Error,
		Tests: slices.Clone(r.Tests),
	}
	if sorted.Tests == nil {
		sorted.Tests = []ReportTest{}
	}
	slices.SortFunc(sorted.Tests, func(a, b ReportTest) int {
		return cmp.Or(cmp.Compare(a.Suite, b.Suite), cmp.Compare(a.Case, b.Case))
	})
	data, err := json.MarshalIndent(&sorted, "", "  ")
	if err != nil {
		return fmt.Errorf("marshal report: %w", err)
	}
	if err := os.WriteFile(path, append(data, '\n'), 0o600); err != nil {
		return fmt.Errorf("write report: %w", err)
	}
	return nil
}

func caseOutcome(caseResult *harness.CaseResult) Outcome {
	switch {
	case caseResult.GetSuccess() && caseResult.GetExpectedFailure():
		return OutcomePassedUnexpectedly
	case caseResult.GetSuccess():
		return OutcomePassed
	case caseResult.GetExpectedFailure():
		return OutcomeFailedAsExpected
	default:
		return OutcomeFailed
	}
}
