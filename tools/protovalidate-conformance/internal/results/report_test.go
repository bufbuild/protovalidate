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
	"os"
	"path/filepath"
	"testing"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestReportWriteFile(t *testing.T) {
	t.Parallel()
	report := &Report{}
	report.AddCase("suite_b", &harness.CaseResult{Name: "passed", Success: true})
	report.AddCase("suite_a", &harness.CaseResult{Name: "failed"})
	report.AddCase("suite_a", &harness.CaseResult{Name: "failed_as_expected", ExpectedFailure: true})
	report.AddCase("suite_a", &harness.CaseResult{Name: "passed_unexpectedly", Success: true, ExpectedFailure: true})
	report.AddNotRun("suite_c", "not_run")
	report.Error = "executor failed"
	path := filepath.Join(t.TempDir(), "report.json")
	require.NoError(t, report.WriteFile(path))
	data, err := os.ReadFile(path)
	require.NoError(t, err)
	assert.JSONEq(t, `{
		"error": "executor failed",
		"tests": [
			{"suite": "suite_a", "case": "failed", "outcome": "failed"},
			{"suite": "suite_a", "case": "failed_as_expected", "outcome": "failed-as-expected"},
			{"suite": "suite_a", "case": "passed_unexpectedly", "outcome": "passed-unexpectedly"},
			{"suite": "suite_b", "case": "passed", "outcome": "passed"},
			{"suite": "suite_c", "case": "not_run", "outcome": "not-run"}
		]
	}`, string(data))
	// Sorting a copy leaves the report as it was.
	assert.Equal(t, "suite_b", report.Tests[0].Suite)
}

func TestReportWriteFileEmpty(t *testing.T) {
	t.Parallel()
	path := filepath.Join(t.TempDir(), "report.json")
	require.NoError(t, (&Report{}).WriteFile(path))
	data, err := os.ReadFile(path)
	require.NoError(t, err)
	assert.JSONEq(t, `{"tests": []}`, string(data))
}
