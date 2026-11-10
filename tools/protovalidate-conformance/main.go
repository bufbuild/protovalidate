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
	"errors"
	"log"
	"os"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
)

func main() {
	cfg, err := parseFlags()
	if err != nil {
		log.Fatal(err)
	}

	options := &harness.ResultOptions{
		SuiteFilter:   cfg.suiteFilterPattern,
		CaseFilter:    cfg.caseFilterPattern,
		Verbose:       cfg.verbose,
		StrictMessage: cfg.strictMessage,
		StrictError:   cfg.strictError,
	}
	resultSet := &results.Set{
		Options: options,
	}

	runner := &suiteRunner{
		cfg:            cfg,
		options:        options,
		resultSet:      resultSet,
		reportedSuites: map[string]bool{},
	}
	if cfg.reportJSON != "" {
		runner.report = &results.Report{}
	}

	if cfg.benchmark > 0 {
		err = cases.GlobalSuites().
			Benchmark(cfg.benchmark).
			Range(cfg.suiteFilter, runner.runSuite)
	} else {
		err = cases.GlobalSuites().
			Range(cfg.suiteFilter, runner.runSuite)
	}
	if runner.report != nil {
		if reportErr := runner.writeReport(err); reportErr != nil {
			log.Fatal(errors.Join(err, reportErr))
		}
	}
	if err != nil {
		log.Fatal(err)
	}

	switch {
	case cfg.proto:
		err = resultSet.MarshalTo(os.Stdout, proto.Marshal)
		if err != nil {
			log.Fatal(err)
		}
	default:
		resultSet.Print(os.Stderr)
	}

	os.Exit(int(resultSet.Failures))
}

type suiteRunner struct {
	cfg       *config
	options   *harness.ResultOptions
	resultSet *results.Set
	// report is nil without --report_json.
	report *results.Report
	// Benchmarks run each suite several times, but the report lists each
	// suite's test cases once.
	reportedSuites map[string]bool
}

// runSuite runs a suite's test cases and adds their results to the result
// set. If the executor fails, every test case in the suite fails with its
// error, and the other suites still run. It returns an error only if the
// suite's test cases can't be built or checked. The report lists the test
// cases of a suite whose executor failed as not run.
func (r *suiteRunner) runSuite(suiteName string, suite suites.Suite) error {
	req, err := suite.ToRequestProto(r.cfg.caseFilter)
	if err != nil || len(req.GetCases()) == 0 {
		return err
	}

	var resp *harness.TestConformanceResponse
	executorFailed := false
	if len(r.cfg.cmd) > 0 { // optional with --dump
		resp, err = runCommand(r.cfg, req)
		if err != nil {
			resp = executorFailureResponse(req, err)
			executorFailed = true
		}
	}
	suiteReport := r.report
	if executorFailed || r.reportedSuites[suiteName] {
		suiteReport = nil
	}
	res, err := suite.ProcessResults(
		suiteName,
		r.cfg.caseFilter,
		resp,
		r.options,
		r.cfg.expectedFailures[suiteName],
		suiteReport,
	)
	if err != nil {
		return err
	}
	if executorFailed && r.report != nil && !r.reportedSuites[suiteName] {
		for caseName := range req.GetCases() {
			r.report.AddNotRun(suiteName, caseName)
		}
	}
	r.reportedSuites[suiteName] = true
	res.Fdset = req.GetFdset()
	r.resultSet.AddSuite(res, r.cfg.verbose)
	return nil
}

// executorFailureResponse returns a response in which every test case of the
// request has the executor's error.
func executorFailureResponse(req *harness.TestConformanceRequest, executorErr error) *harness.TestConformanceResponse {
	resp := &harness.TestConformanceResponse{
		Results: make(map[string]*harness.TestResult, len(req.GetCases())),
	}
	for caseName := range req.GetCases() {
		resp.Results[caseName] = &harness.TestResult{
			Result: &harness.TestResult_UnexpectedError{UnexpectedError: executorErr.Error()},
		}
	}
	return resp
}

// writeReport writes the JSON report. If the run stopped early with runErr,
// the test cases of the suites that didn't finish are reported as not run.
func (r *suiteRunner) writeReport(runErr error) error {
	if runErr != nil {
		r.report.Error = runErr.Error()
		_ = cases.GlobalSuites().Range(r.cfg.suiteFilter, func(suiteName string, suite suites.Suite) error {
			if r.reportedSuites[suiteName] {
				return nil
			}
			return suite.Range(r.cfg.caseFilter, func(caseName string, _ suites.Case) error {
				r.report.AddNotRun(suiteName, caseName)
				return nil
			})
		})
	}
	return r.report.WriteFile(r.cfg.reportJSON)
}
