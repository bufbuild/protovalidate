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
	"cmp"
	"fmt"
	"slices"
	"strings"

	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/harness"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/fieldpath"
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

func (s successResult) IsSuccessWith(other Result, _ *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return s.inner.GetSuccess() == res.inner.GetSuccess()
	default:
		return false
	}
}

type violationsResult struct {
	wrapper
}

func Violations(violations ...*validate.Violation) Result {
	SortViolations(violations)
	wrapper := wrapResult(&harness.TestResult{
		Result: &harness.TestResult_ValidationError{
			ValidationError: &validate.Violations{Violations: violations},
		},
	})
	return violationsResult{wrapper: wrapper}
}

func (v violationsResult) String() string {
	bldr := &strings.Builder{}
	violations := v.inner.GetValidationError().GetViolations()
	if len(violations) == 1 {
		_, _ = fmt.Fprintf(bldr, "validation error (%d violation)", len(violations))
	} else {
		_, _ = fmt.Fprintf(bldr, "validation error (%d violations)", len(violations))
	}
	for i, violation := range violations {
		_, _ = fmt.Fprintf(bldr, "\n%s  %2d. rule_id: ", resultPadding, i+1)
		if violation.RuleId == nil {
			bldr.WriteString("<nil>")
		} else {
			_, _ = fmt.Fprintf(bldr, "%#v", violation.GetRuleId())
		}
		if violation.Message != nil {
			_, _ = fmt.Fprintf(bldr, "\n%s      message: %#v", resultPadding, violation.GetMessage())
		}
		//nolint:protogetter
		if violation.Field != nil {
			_, _ = fmt.Fprintf(bldr, "\n%s      field: %#v %s", resultPadding, fieldpath.Marshal(violation.GetField()), violation.GetField())
		}
		if violation.ForKey != nil {
			_, _ = fmt.Fprintf(bldr, "\n%s      for_key: %v", resultPadding, violation.GetForKey())
		}
		//nolint:protogetter
		if violation.Rule != nil {
			_, _ = fmt.Fprintf(bldr, "\n%s      rule: %#v %s", resultPadding, fieldpath.Marshal(violation.GetRule()), violation.GetRule())
		}
	}
	return bldr.String()
}

func (v violationsResult) IsSuccessWith(other Result, options *harness.ResultOptions) bool {
	switch res := other.(type) {
	case successResult:
		return res.IsSuccessWith(v, options)
	case violationsResult:
		got := res.inner.GetValidationError().GetViolations()
		want := v.inner.GetValidationError().GetViolations()
		if len(want) != len(got) {
			return false
		}
		for i := range want {
			matchingField := proto.Equal(want[i].GetField(), got[i].GetField()) &&
				want[i].GetForKey() == got[i].GetForKey()
			matchingRule := proto.Equal(want[i].GetRule(), got[i].GetRule())
			matchingRuleID := want[i].GetRuleId() == got[i].GetRuleId()
			if !matchingField || !matchingRule || !matchingRuleID {
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

func SortViolations(violations []*validate.Violation) {
	slices.SortFunc(violations, func(a, b *validate.Violation) int {
		if a.GetRuleId() == b.GetRuleId() {
			return cmp.Compare(fieldpath.Marshal(a.GetField()), fieldpath.Marshal(b.GetField()))
		}
		return cmp.Compare(a.GetRuleId(), b.GetRuleId())
	})
}

// FieldPath returns a placeholder field path. It will be expanded automatically
// when processing the results.
func FieldPath(fieldPath string) *validate.FieldPath {
	return &validate.FieldPath{
		Elements: []*validate.FieldPathElement{{FieldName: &fieldPath}},
	}
}

// HydrateFieldPaths expands placeholder field paths in the violations messages.
func HydrateFieldPaths(
	descriptor protoreflect.MessageDescriptor,
	result Result,
) error {
	switch result := result.(type) {
	case violationsResult:
		violations := result.inner.GetValidationError()
		if violations == nil {
			break
		}
		for _, violation := range violations.GetViolations() {
			if path := violation.GetField(); path != nil && len(path.GetElements()) > 0 {
				var err error
				violation.Field, err = fieldpath.Unmarshal(
					descriptor,
					path.GetElements()[0].GetFieldName(),
				)
				if err != nil {
					return fmt.Errorf("hydrating field path: %w", err)
				}
			}
			if path := violation.GetRule(); path != nil && len(path.GetElements()) > 0 {
				var err error
				rules := validate.FieldRules{}
				violation.Rule, err = fieldpath.Unmarshal(
					rules.ProtoReflect().Descriptor(),
					path.GetElements()[0].GetFieldName(),
				)
				if err != nil {
					return fmt.Errorf("hydrating rule path: %w", err)
				}
			}
		}
	}
	return nil
}
