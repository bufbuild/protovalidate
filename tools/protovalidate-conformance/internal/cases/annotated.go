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

package cases

import (
	"fmt"

	"github.com/bufbuild/protovalidate/tools/internal/annotated"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	conformancepb "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance"
	// Blank imports register the generated descriptors of every annotated
	// cases package with protoregistry.GlobalFiles, so the loader can find
	// them. Add a new line for each new annotated package.
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/annotated"
	"github.com/bufbuild/protovalidate/tools/internal/oracle"
	"github.com/bufbuild/protovalidate/tools/internal/validateschema"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
)

// annotatedSuite walks every registered proto file and collects test cases
// declared via the buf.validate.conformance.test_cases option.
//
// Violation messages are derived from each rule's (predefined).cel
// annotation (or the host's user-defined message-level CEL) by an oracle
// that evaluates the rule expression against the bad value, mirroring what
// runtimes emit. Annotations only need to set Violation.message for rules
// whose semantics aren't expressible in CEL — the exempt set in
// tools/internal/validateschema/exempt.go.
func annotatedSuite() suites.Suite {
	suite := suites.Suite{}
	schema, err := validateschema.ResolveFromFiles(protoregistry.GlobalFiles)
	if err != nil {
		suite["annotated/schema_resolve"] = errorCase(fmt.Errorf("schema resolve: %w", err))
		return suite
	}
	oracleInstance, err := oracle.New(schema)
	if err != nil {
		suite["annotated/oracle_init"] = errorCase(fmt.Errorf("oracle init: %w", err))
		return suite
	}
	for _, messageDescriptor := range annotated.CollectMessageDescriptors() {
		addMessageCases(suite, messageDescriptor, oracleInstance)
	}
	return suite
}

func addMessageCases(suite suites.Suite, host protoreflect.MessageDescriptor, oracleInstance *oracle.Oracle) {
	testCases, ok := proto.GetExtension(host.Options(), conformancepb.E_TestCases).(*conformancepb.TestCases)
	if !ok || testCases == nil {
		return
	}
	hostName := string(host.FullName())

	for i, good := range testCases.GetGood() {
		caseName := fmt.Sprintf("%s/good/%d", hostName, i)
		msg, err := good.UnmarshalNew()
		if err != nil {
			suite[caseName] = errorCase(fmt.Errorf("unmarshal good[%d]: %w", i, err))
			continue
		}
		if got := string(msg.ProtoReflect().Descriptor().FullName()); got != hostName {
			suite[caseName] = errorCase(fmt.Errorf(
				"good[%d] type %q does not match host %q", i, got, hostName))
			continue
		}
		suite[caseName] = suites.Case{
			Message:  msg,
			Expected: results.Success(true),
		}
	}

	for i, bad := range testCases.GetBad() {
		caseName := fmt.Sprintf("%s/bad/%d", hostName, i)
		msg, err := bad.GetValue().UnmarshalNew()
		if err != nil {
			suite[caseName] = errorCase(fmt.Errorf("unmarshal bad[%d]: %w", i, err))
			continue
		}
		if got := string(msg.ProtoReflect().Descriptor().FullName()); got != hostName {
			suite[caseName] = errorCase(fmt.Errorf(
				"bad[%d] type %q does not match host %q", i, got, hostName))
			continue
		}
		discoveredViolations, err := oracleInstance.Violations(msg)
		if err != nil {
			suite[caseName] = errorCase(fmt.Errorf("oracle walk bad[%d]: %w", i, err))
			continue
		}

		// Two authoring modes:
		//
		//   1. No declared violations — trust the oracle. Expected is the
		//      walker's output verbatim. Use this when every violation the
		//      value produces is CEL-derived; the oracle is the source of
		//      truth and the contributor doesn't have to enumerate them.
		//
		//   2. Declared violations — strict cross-check. The contributor's
		//      list is the expected set; the walker fills in rule_path /
		//      message / for_key for entries it matches, and declared
		//      entries with no walker match must carry a literal message
		//      (exempt rules whose semantics aren't expressible in CEL).
		//
		// Mode 1 doesn't see exempt-rule violations (the oracle can't fire
		// them), so if the value also trips one, the contributor must use
		// mode 2 and declare it explicitly.
		var violations []*validate.Violation
		if len(bad.GetViolations()) == 0 {
			violations = make([]*validate.Violation, 0, len(discoveredViolations))
			for _, v := range discoveredViolations {
				violations = append(violations, walkerToViolation(v))
			}
		} else {
			indexed := indexByKey(discoveredViolations)
			violations = make([]*validate.Violation, 0, len(bad.GetViolations()))
			var loadErr error
			for vi, expected := range bad.GetViolations() {
				violation, err := expectedToViolation(indexed, expected)
				if err != nil {
					loadErr = fmt.Errorf("bad[%d].violations[%d] (rule %q): %w",
						i, vi, expected.GetRuleId(), err)
					break
				}
				violations = append(violations, violation)
			}
			if loadErr != nil {
				suite[caseName] = errorCase(loadErr)
				continue
			}
		}
		suite[caseName] = suites.Case{
			Message:  msg,
			Expected: results.Violations(violations...),
		}
	}
}

// violationKey is the (rule_id, field_path) tuple used to match a declared
// ExpectedViolation against the walker's emissions for the same bad value.
type violationKey struct {
	RuleID    string
	FieldPath string
}

// indexByKey groups oracle walker emissions by (rule_id, field_path). The
// value is a slice so multiple emissions with the same key (e.g. two user
// (field).cel rules sharing an `id`) are preserved — expectedToViolation
// pops one entry per lookup, so duplicates surface as "no walker match" on
// the second use rather than silently collapsing.
func indexByKey(violations []oracle.Violation) map[violationKey][]oracle.Violation {
	out := make(map[violationKey][]oracle.Violation, len(violations))
	for _, v := range violations {
		key := violationKey{RuleID: v.RuleID, FieldPath: v.FieldPath}
		out[key] = append(out[key], v)
	}
	return out
}

// walkerToViolation converts an oracle walker emission into the runtime
// Violation shape, mirroring the field-population logic in
// expectedToViolation for the case where the contributor declared no
// violations and the walker output is taken as-is.
func walkerToViolation(walked oracle.Violation) *validate.Violation {
	out := &validate.Violation{
		RuleId:  proto.String(walked.RuleID),
		Message: proto.String(walked.Message),
	}
	if walked.FieldPath != "" {
		out.Field = results.FieldPath(walked.FieldPath)
		rulePath := walked.RuleID
		if walked.RulePath != "" {
			rulePath = walked.RulePath
		}
		out.Rule = results.FieldPath(rulePath)
	}
	if walked.ForKey {
		out.ForKey = proto.Bool(true)
	}
	return out
}

// expectedToViolation builds a runtime Violation from a declared
// ExpectedViolation. The walker's output (indexed by violationKey) supplies
// rule_path, message, and for_key. If a declared violation isn't in the
// walker's output (an exempt rule, or one runtimes-only handle), the loader
// requires the contributor to supply the message and uses the rule_id as the
// rule_path.
func expectedToViolation(discoveredViolations map[violationKey][]oracle.Violation, expected *conformancepb.ExpectedViolation) (*validate.Violation, error) {
	out := &validate.Violation{
		RuleId: proto.String(expected.GetRuleId()),
	}
	key := violationKey{
		RuleID:    expected.GetRuleId(),
		FieldPath: expected.GetFieldPath(),
	}
	var discoveredViolation oracle.Violation
	foundViolation := false
	if violationsForKey := discoveredViolations[key]; len(violationsForKey) > 0 {
		discoveredViolation = violationsForKey[0]
		discoveredViolations[key] = violationsForKey[1:]
		foundViolation = true
	}

	// Only populate Field/Rule for field-level violations. Message-level
	// rules (custom message CEL, message.oneof, etc.) leave both unset and
	// only carry RuleId, matching the pattern in cases_message.go.
	if path := expected.GetFieldPath(); path != "" {
		out.Field = results.FieldPath(path)
		rulePath := expected.GetRuleId()
		if foundViolation && discoveredViolation.RulePath != "" {
			rulePath = discoveredViolation.RulePath
		}
		out.Rule = results.FieldPath(rulePath)
	}
	if foundViolation && discoveredViolation.ForKey {
		out.ForKey = proto.Bool(true)
	}

	switch {
	case expected.Message != nil:
		out.Message = proto.String(expected.GetMessage())
	case foundViolation:
		out.Message = proto.String(discoveredViolation.Message)
	default:
		return nil, fmt.Errorf(
			"%w (supply ExpectedViolation.message for exempt rules)",
			oracle.ErrNotDerivable)
	}
	return out, nil
}

// errorCase produces a sentinel case that reports a load-time error at
// suite-execution time. The harness builds an FDS from the case's Message,
// so we use the conformancepb.TestCases descriptor as a placeholder — its
// type isn't a valid host but it's a real, registered message, which keeps
// the FDS builder happy.
func errorCase(err error) suites.Case {
	return suites.Case{
		Message:  &conformancepb.TestCases{},
		Expected: results.UnexpectedError("annotated case load: %s", err.Error()),
	}
}
