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

package results

import (
	"bufio"
	"bytes"
	"fmt"
	"io"
	"log"
	"os"
	"sort"

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
	_, _ = fmt.Fprintf(writer, "%s (failed: %d, passed: %d, total: %d)\n",
		res, set.Failures, set.Successes, set.Failures+set.Successes)
	_ = writer.Flush()
}

func (set *Set) Compare(expected io.Reader) (bool, error) {
	actual := &bytes.Buffer{}
	set.Summary(actual)

	const sz = 1024
	scratch1 := make([]byte, sz)
	scratch2 := make([]byte, sz)

	for {
		n1, err1 := actual.Read(scratch1)
		n2, err2 := expected.Read(scratch2)

		if err1 != nil && err1 != io.EOF {
			return false, err1
		}
		if err2 != nil && err2 != io.EOF {
			return false, err2
		}
		if err1 == io.EOF || err2 == io.EOF {
			return err1 == err2, nil
		}

		if !bytes.Equal(scratch1[:n1], scratch2[:n2]) {
			return false, nil
		}
	}
}

func (set *Set) Summary(w io.Writer) {
	out := make(map[string][]string, len(set.Suites))

	for _, suite := range set.Suites {
		value := make([]string, len(suite.Cases))
		for i, test := range suite.Cases {
			value[i] = test.Name
		}
		sort.Strings(value)
		out[suite.GetName()] = value
	}

	keys := make([]string, len(out))
	i := 0
	for k := range out {
		keys[i] = k
		i++
	}
	sort.Strings(keys)

	for _, k := range keys {
		_, _ = fmt.Fprintf(w, "%s --- %s\n", casePadding, k)
		for _, v := range out[k] {
			_, _ = fmt.Fprintf(w, "%s --- %s\n", resultPadding, v)
		}
	}
}

func (set *Set) Check() bool {
	file, err := os.Open("nonconforming.txt")
	if err != nil {
		log.Fatal(err)
		return false
	}
	defer file.Close()

	match, err := set.Compare(file)
	if err != nil {
		log.Fatal(err)
	}
	return match
}

type SuiteResults harness.SuiteResults

func (suite *SuiteResults) AddCase(res *harness.CaseResult, verbose bool) {
	if res.Success {
		suite.Successes++
	} else {
		suite.Failures++
	}
	if verbose || !res.Success {
		suite.Cases = append(suite.Cases, res)
	}
}

func (suite *SuiteResults) Print(w io.Writer) {
	res := resultLabel(suite.Failures == 0)
	_, _ = fmt.Fprintf(w, "--- %s: %s (failed: %d, passed: %d, total: %d)\n",
		res, suite.Name, suite.Failures, suite.Successes, suite.Failures+suite.Successes)
	for _, testCase := range suite.Cases {
		suite.printCase(w, testCase)
	}
}

func (suite *SuiteResults) printCase(w io.Writer, testCase *harness.CaseResult) {
	res := resultLabel(testCase.Success)
	_, _ = fmt.Fprintf(w, "%s --- %s: %s\n",
		casePadding, res, testCase.Name)
	if testCase.Success {
		return
	}
	_, _ = fmt.Fprintf(w, "%sinput: %v\n",
		resultPadding, testCase.Input)
	_, _ = fmt.Fprintf(w, "%s want: %v\n",
		resultPadding, FromProto(testCase.Wanted))
	_, _ = fmt.Fprintf(w, "%s  got: %v\n",
		resultPadding, FromProto(testCase.Got))
}

func resultLabel(success bool) string {
	if success {
		return "PASS"
	}
	return "FAIL"
}
