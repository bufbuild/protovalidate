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
		cfg:       cfg,
		options:   options,
		resultSet: resultSet,
	}

	if cfg.benchmark > 0 {
		err = cases.GlobalSuites().
			Benchmark(cfg.benchmark).
			Range(cfg.suiteFilter, runner.runSuite)
	} else {
		err = cases.GlobalSuites().
			Range(cfg.suiteFilter, runner.runSuite)
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
}

// runSuite runs a suite's test cases and adds their results to the result
// set. If the executor fails, every test case in the suite fails with its
// error, and the other suites still run. It returns an error only if the
// suite's test cases can't be built or checked.
func (r *suiteRunner) runSuite(suiteName string, suite suites.Suite) error {
	req, err := suite.ToRequestProto(r.cfg.caseFilter)
	if err != nil || len(req.GetCases()) == 0 {
		return err
	}

	var resp *harness.TestConformanceResponse
	if len(r.cfg.cmd) > 0 { // optional with --dump
		resp, err = runCommand(r.cfg, req)
		if err != nil {
			resp = executorFailureResponse(req, err)
		}
	}
	res, err := suite.ProcessResults(
		suiteName,
		r.cfg.caseFilter,
		resp,
		r.options,
		r.cfg.expectedFailures[suiteName],
	)
	if err != nil {
		return err
	}
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
