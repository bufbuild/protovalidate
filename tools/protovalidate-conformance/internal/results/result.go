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
	"cmp"
	"fmt"
	"slices"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
)

type Result interface {
	fmt.Stringer
	IsSuccessWith(other Result, options *harness.ResultOptions) bool
	ToProto() *harness.TestResult
}

func FromProto(res *harness.TestResult) Result {
	wrapped := wrapResult(res)
	switch res.GetResult().(type) {
	case *harness.TestResult_Success:
		return successResult{wrapper: wrapped}
	case *harness.TestResult_ValidationError:
		SortViolations(res.GetValidationError().GetViolations())
		return violationsResult{wrapper: wrapped}
	case *harness.TestResult_CompilationError:
		return compilationErrorResult{wrapper: wrapped}
	case *harness.TestResult_RuntimeError:
		return runtimeErrorResult{wrapper: wrapped}
	case *harness.TestResult_UnexpectedError:
		return unexpectedErrorResult{wrapper: wrapped}
	default:
		return UnexpectedError("unknown test result type %T",
			res.GetResult())
	}
}

type wrapper struct {
	inner *harness.TestResult
}

func wrapResult(res *harness.TestResult) wrapper {
	return wrapper{inner: res}
}

func (rw wrapper) ToProto() *harness.TestResult {
	return rw.inner
}

type successResult struct {
	wrapper
}

func Success(valid bool) Result {
	return successResult{
		wrapper: wrapResult(
			&harness.TestResult{Result: &harness.TestResult_Success{Success: valid}},
		),
	}
}

func (s successResult) String() string {
	if s.inner.GetSuccess() {
		return "valid"
	}
	return "invalid (no further details provided)"
}

func (s successResult) IsSuccessWith(other Result, options *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return s.inner.GetSuccess() == res.inner.GetSuccess()
	default:
		return !options.GetStrict() && !s.inner.GetSuccess()
	}
}

type violationsResult struct {
	wrapper
}

func Violations(violations ...*harness.Violation) Result {
	SortViolations(violations)
	wrapper := wrapResult(&harness.TestResult{
		Result: &harness.TestResult_ValidationError{
			ValidationError: &harness.ValidationError{Violations: violations},
		},
	})
	return violationsResult{wrapper: wrapper}
}

func (v violationsResult) String() string {
	bldr := &strings.Builder{}
	errs := v.inner.GetValidationError().GetViolations()
	_, _ = fmt.Fprintf(bldr, "%d validation error(s)", len(errs))
	for i, err := range errs {
		forKey := ""
		if err.GetForKey() {
			forKey = " (key)"
		}
		_, _ = fmt.Fprintf(bldr, "\n%s  %2d. %s%s: %s", resultPadding, i+1, err.GetFieldPath(), forKey, err.GetConstraintId())
		_, _ = fmt.Fprintf(bldr, "\n%s      %s", resultPadding, err.GetMessage())
	}
	return bldr.String()
}

func (v violationsResult) IsSuccessWith(other Result, options *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return res.IsSuccessWith(v, options)
	case violationsResult:
		got := res.inner.GetValidationError().GetViolations()
		if !options.GetStrict() {
			return len(got) > 0
		}
		want := v.inner.GetValidationError().GetViolations()
		if len(want) != len(got) {
			return false
		}
		for i := range len(want) {
			matchingField := want[i].GetFieldPath() == got[i].GetFieldPath() && want[i].GetForKey() == got[i].GetForKey()
			matchingConstraint := want[i].GetConstraintId() == got[i].GetConstraintId()
			if !matchingField || !matchingConstraint {
				return false
			}
			if options.GetStrictMessage() && len(want[i].GetMessage()) > 0 &&
				want[i].GetMessage() != got[i].GetMessage() {
				return false
			}
		}
		return true
	default:
		return false
	}
}

type compilationErrorResult struct {
	wrapper
}

func CompilationError(err string) Result {
	wrapper := wrapResult(&harness.TestResult{
		Result: &harness.TestResult_CompilationError{CompilationError: err},
	})
	return compilationErrorResult{wrapper: wrapper}
}

func (c compilationErrorResult) String() string {
	return "compilation err: " + c.inner.GetCompilationError()
}

func (c compilationErrorResult) IsSuccessWith(other Result, options *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return res.IsSuccessWith(c, options)
	case compilationErrorResult:
		return true
	case runtimeErrorResult:
		return !options.GetStrictError()
	default:
		return false
	}
}

type runtimeErrorResult struct {
	wrapper
}

func RuntimeError(err string) Result {
	wrapper := wrapResult(&harness.TestResult{
		Result: &harness.TestResult_RuntimeError{RuntimeError: err},
	})
	return runtimeErrorResult{wrapper: wrapper}
}

func (r runtimeErrorResult) String() string {
	return "runtime error: " + r.inner.GetRuntimeError()
}

func (r runtimeErrorResult) IsSuccessWith(other Result, options *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return res.IsSuccessWith(r, options)
	case runtimeErrorResult:
		return true
	default:
		return false
	}
}

type unexpectedErrorResult struct {
	wrapper
}

func UnexpectedError(format string, args ...any) Result {
	msg := fmt.Sprintf(format, args...)
	wrapper := wrapResult(&harness.TestResult{
		Result: &harness.TestResult_UnexpectedError{UnexpectedError: msg},
	})
	return compilationErrorResult{wrapper: wrapper}
}

func (u unexpectedErrorResult) String() string {
	return "unexpected error: " + u.inner.GetUnexpectedError()
}

func (u unexpectedErrorResult) IsSuccessWith(_ Result, _ *harness.ResultOptions) bool {
	return false
}

func SortViolations(violations []*harness.Violation) {
	slices.SortFunc(violations, func(a, b *harness.Violation) int {
		if a.GetConstraintId() == b.GetConstraintId() {
			return cmp.Compare(a.GetFieldPath(), b.GetFieldPath())
		}
		return cmp.Compare(a.GetConstraintId(), b.GetConstraintId())
	})
}
