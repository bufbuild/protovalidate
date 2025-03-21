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

package results

import (
	"bufio"
	"fmt"
	"io"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"google.golang.org/protobuf/proto"
)

const (
	casePadding   = "   "
	resultPadding = "       "
)

type Set harness.ResultSet

func (set *Set) AddSuite(res *SuiteResults, verbose bool) {
	set.Successes += res.Successes
	set.ExpectedFailures += res.ExpectedFailures
	set.Failures += res.Failures
	if verbose || res.Failures > 0 {
		set.Suites = append(set.Suites, (*harness.SuiteResults)(res))
	}
}

func (set *Set) MarshalTo(w io.Writer, marshaler func(proto.Message) ([]byte, error)) error {
	data, err := marshaler((*harness.ResultSet)(set))
	if err != nil {
		return err
	}
	_, err = w.Write(data)
	return err
}

func (set *Set) Print(w io.Writer) {
	writer := bufio.NewWriter(w)
	for _, suite := range set.Suites {
		(*SuiteResults)(suite).Print(writer)
	}
	res := resultLabel(set.Failures == 0)
	_, _ = fmt.Fprintf(writer, "%s (failed: %d, skipped: %d, passed: %d, total: %d)\n",
		res, set.Failures, set.ExpectedFailures, set.Successes, set.Failures+set.Successes+set.ExpectedFailures)
	_ = writer.Flush()
}

type SuiteResults harness.SuiteResults

func (suite *SuiteResults) AddCase(res *harness.CaseResult, verbose bool) {
	switch {
	case res.GetSuccess() && !res.GetExpectedFailure():
		suite.Successes++
	case !res.GetSuccess() && res.GetExpectedFailure():
		suite.ExpectedFailures++
	default:
		suite.Failures++
	}
	unexpectedFailure := !res.GetSuccess() && !res.GetExpectedFailure()
	unexpectedSuccess := res.GetSuccess() && res.GetExpectedFailure()
	if verbose || unexpectedFailure || unexpectedSuccess {
		suite.Cases = append(suite.Cases, res)
	}
}

func (suite *SuiteResults) Print(w io.Writer) {
	res := resultLabel(suite.Failures == 0)
	_, _ = fmt.Fprintf(w, "--- %s: %s (failed: %d, skipped: %d, passed: %d, total: %d)\n",
		res, suite.Name, suite.Failures, suite.ExpectedFailures, suite.Successes, suite.Failures+suite.Successes+suite.ExpectedFailures)
	for _, testCase := range suite.Cases {
		suite.printCase(w, testCase)
	}
}

func (suite *SuiteResults) printCase(w io.Writer, testCase *harness.CaseResult) {
	res := resultLabel(testCase.GetSuccess())
	_, _ = fmt.Fprintf(w, "%s --- %s: %s\n",
		casePadding, res, testCase.GetName())
	if testCase.GetSuccess() {
		return
	}
	_, _ = fmt.Fprintf(w, "%sinput: %v\n",
		resultPadding, testCase.GetInput())
	_, _ = fmt.Fprintf(w, "%s want: %v\n",
		resultPadding, FromProto(testCase.GetWanted()))
	_, _ = fmt.Fprintf(w, "%s  got: %v\n",
		resultPadding, FromProto(testCase.GetGot()))
}

func resultLabel(success bool) string {
	if success {
		return "PASS"
	}
	return "FAIL"
}
