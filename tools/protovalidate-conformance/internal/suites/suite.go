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

package suites

import (
	"fmt"
	"regexp"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protodesc"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/types/descriptorpb"
	"google.golang.org/protobuf/types/known/anypb"
)

type Suites map[string]Suite

func (ss Suites) Range(filter *regexp.Regexp, fn func(suiteName string, suite Suite) error) error {
	for suiteName, suite := range ss {
		if filter != nil && !filter.MatchString(suiteName) {
			continue
		}
		if err := fn(suiteName, suite); err != nil {
			return err
		}
	}
	return nil
}

func (ss Suites) Benchmark(n int) *Benchmark {
	return NewBenchmark(n, ss)
}

type Suite map[string]Case

func (s Suite) Range(filter *regexp.Regexp, fn func(caseName string, testCase Case) error) error {
	for caseName, testCase := range s {
		if filter != nil && !filter.MatchString(caseName) {
			continue
		}
		if err := fn(caseName, testCase); err != nil {
			return err
		}
	}
	return nil
}

func (s Suite) ToRequestProto(filter *regexp.Regexp) (*harness.TestConformanceRequest, error) {
	bldr := &fdsetBuilder{seen: map[string]struct{}{}}
	req := &harness.TestConformanceRequest{
		Fdset: &bldr.fdest,
		Cases: map[string]*anypb.Any{},
	}

	return req, s.Range(filter, func(caseName string, testCase Case) error {
		bldr.addFile(testCase.Message.ProtoReflect().Descriptor().ParentFile())
		anyCase, err := anypb.New(testCase.Message)
		req.Cases[caseName] = anyCase
		return err
	})
}

func (s Suite) ProcessResults(
	suiteName string,
	filter *regexp.Regexp,
	resp *harness.TestConformanceResponse,
	options *harness.ResultOptions,
	skippedCases []string,
) (*results.SuiteResults, error) {
	out := &results.SuiteResults{
		Name: suiteName,
	}
	respResults := resp.GetResults()
	err := s.Range(filter, func(caseName string, testCase Case) error {
		var actual results.Result
		if result, ok := respResults[caseName]; ok {
			actual = results.FromProto(result)
		} else {
			actual = results.UnexpectedError(
				"missing results on response")
		}

		anyInput, err := anypb.New(testCase.Message)
		if err != nil {
			return err
		}
		if err := results.HydrateFieldPaths(
			testCase.Message.ProtoReflect().Descriptor(),
			testCase.Expected,
		); err != nil {
			return err
		}
		out.AddCase(&harness.CaseResult{
			Name:            caseName,
			Success:         testCase.Expected.IsSuccessWith(actual, options),
			Wanted:          testCase.Expected.ToProto(),
			Got:             actual.ToProto(),
			Input:           anyInput,
			ExpectedFailure: isSkipped(caseName, skippedCases),
		}, options.GetVerbose())
		return nil
	})

	if err != nil {
		return nil, fmt.Errorf("failed to process results for suite \"%s\": %w", suiteName, err)
	}

	return out, nil
}

func isSkipped(caseName string, cases []string) bool {
	for _, testCase := range cases {
		if caseName == testCase {
			return true
		}
	}
	return false
}

type fdsetBuilder struct {
	seen  map[string]struct{}
	fdest descriptorpb.FileDescriptorSet
}

func (b *fdsetBuilder) addFile(desc protoreflect.FileDescriptor) {
	if _, seen := b.seen[desc.Path()]; seen {
		return
	}

	for i, imports := 0, desc.Imports(); i < imports.Len(); i++ {
		b.addFile(imports.Get(i))
	}

	b.fdest.File = append(b.fdest.File, protodesc.ToFileDescriptorProto(desc))
	b.seen[desc.Path()] = struct{}{}
}

type Case struct {
	Message  proto.Message
	Expected results.Result
}
