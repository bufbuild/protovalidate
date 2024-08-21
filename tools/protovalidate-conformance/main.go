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

package main

import (
	"log"
	"os"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/encoding/protojson"
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
		Strict:        cfg.strict,
		StrictMessage: cfg.strictMessage,
		StrictError:   cfg.strictError,
	}
	resultSet := &results.Set{
		Options: options,
	}

	exec := func(suiteName string, suite suites.Suite) error {
		req, err := suite.ToRequestProto(cfg.caseFilter)
		if err != nil || len(req.GetCases()) == 0 {
			return err
		}

		var resp *harness.TestConformanceResponse
		if len(cfg.cmd) > 0 { // optional with --dump
			resp, err = runCommand(cfg, req)
			if err != nil {
				return err
			}
		}
		res := suite.ProcessResults(
			suiteName,
			cfg.caseFilter,
			resp,
			options,
			cfg.expectedFailures[suiteName],
		)
		res.Fdset = req.GetFdset()
		resultSet.AddSuite(res, cfg.verbose)
		return nil
	}

	if cfg.benchmark > 0 {
		err = cases.GlobalSuites().
			Benchmark(cfg.benchmark).
			Range(cfg.suiteFilter, exec)
	} else {
		err = cases.GlobalSuites().
			Range(cfg.suiteFilter, exec)
	}
	if err != nil {
		log.Fatal(err)
	}

	switch {
	case cfg.proto:
		err = resultSet.MarshalTo(os.Stdout, proto.Marshal)
	case cfg.json:
		err = resultSet.MarshalTo(os.Stdout, protojson.Marshal)
	default:
		resultSet.Print(os.Stderr)
	}
	if err != nil {
		log.Fatal(err)
	}

	os.Exit(int(resultSet.Failures))
}
