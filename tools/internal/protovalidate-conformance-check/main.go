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

// protovalidate-conformance-check verifies that every annotated conformance
// test case agrees with the in-repo CEL oracle: each `good` value produces
// zero violations, and each `bad` value produces exactly the declared set.
//
// This catches typos in test annotations (wrong rule_id, wrong field_path,
// missing or extra violations) in this repo, before they fan out to five
// downstream conformance runs.
package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/annotated"
	conformancepb "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance"
	// Blank imports register descriptors for every annotated cases package.
	// Mirrors the list in tools/protovalidate-conformance/internal/cases/annotated.go.
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/annotated"
	"github.com/bufbuild/protovalidate/tools/internal/oracle"
	"github.com/bufbuild/protovalidate/tools/internal/validateschema"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
)

func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func run() error {
	schema, err := validateschema.ResolveFromFiles(protoregistry.GlobalFiles)
	if err != nil {
		return fmt.Errorf("schema resolve: %w", err)
	}
	orcl, err := oracle.New(schema)
	if err != nil {
		return fmt.Errorf("oracle init: %w", err)
	}
	exempt := buildExemptRuleIDs(schema)
	hosts := annotated.CollectMessageDescriptors()

	var problems []string
	for _, host := range hosts {
		problems = append(problems, checkHost(orcl, host, exempt)...)
	}

	if len(problems) > 0 {
		for _, p := range problems {
			fmt.Fprintln(os.Stderr, p)
		}
		return fmt.Errorf("%d problem(s) in annotated test cases", len(problems))
	}
	fmt.Printf("ok: %d annotated host message(s)\n", len(hosts))
	return nil
}

func checkHost(orcl *oracle.Oracle, host protoreflect.MessageDescriptor, exempt map[string]bool) []string {
	hostName := string(host.FullName())
	testCases, ok := proto.GetExtension(host.Options(), conformancepb.E_TestCases).(*conformancepb.TestCases)
	if !ok || testCases == nil {
		return nil
	}
	var problems []string

	for i, good := range testCases.GetGood() {
		msg, err := good.UnmarshalNew()
		if err != nil {
			problems = append(problems, fmt.Sprintf("%s good[%d]: unmarshal: %v", hostName, i, err))
			continue
		}
		if got := string(msg.ProtoReflect().Descriptor().FullName()); got != hostName {
			problems = append(problems, fmt.Sprintf(
				"%s good[%d]: type %q does not match host", hostName, i, got))
			continue
		}
		violations, err := orcl.Violations(msg)
		if err != nil {
			problems = append(problems, fmt.Sprintf("%s good[%d]: oracle walk: %v", hostName, i, err))
			continue
		}
		if len(violations) > 0 {
			problems = append(problems, fmt.Sprintf(
				"%s good[%d]: declared as good but oracle fired: %s",
				hostName, i, formatViolations(violations)))
		}
	}

	for i, bad := range testCases.GetBad() {
		msg, err := bad.GetValue().UnmarshalNew()
		if err != nil {
			problems = append(problems, fmt.Sprintf("%s bad[%d]: unmarshal: %v", hostName, i, err))
			continue
		}
		if got := string(msg.ProtoReflect().Descriptor().FullName()); got != hostName {
			problems = append(problems, fmt.Sprintf(
				"%s bad[%d]: type %q does not match host", hostName, i, got))
			continue
		}
		got, err := orcl.Violations(msg)
		if err != nil {
			problems = append(problems, fmt.Sprintf("%s bad[%d]: oracle walk: %v", hostName, i, err))
			continue
		}
		declared := bad.GetViolations()
		if len(declared) == 0 {
			// Empty-declaration mode: the loader will take the oracle output
			// as-is. The only thing to verify is that the value actually
			// produces some violations — otherwise it isn't a "bad" case.
			if len(got) == 0 {
				problems = append(problems, fmt.Sprintf(
					"%s bad[%d]: no declared violations and oracle fired none (value is not actually bad; either fix the value or declare exempt-rule violations explicitly)",
					hostName, i))
			}
			continue
		}
		problems = append(problems, diffBad(hostName, i, declared, got, exempt)...)
	}
	return problems
}

// violationKey is the (rule_id, field_path) tuple lint compares on. The
// walker emits richer Violation structs, but identity is by these two fields:
// rule_path / message / for_key are downstream concerns derived from these.
type violationKey struct {
	RuleID    string
	FieldPath string
}

func keyFor(v oracle.Violation) violationKey {
	return violationKey{RuleID: v.RuleID, FieldPath: v.FieldPath}
}

// diffBad compares the declared violation set for one bad case to what the
// oracle produced. Reports unknown rule_ids (typos) and missing/extra
// violations.
func diffBad(hostName string, idx int, declared []*conformancepb.ExpectedViolation, got []oracle.Violation, exempt map[string]bool) []string {
	gotSet := make(map[violationKey]bool, len(got))
	for _, v := range got {
		gotSet[keyFor(v)] = true
	}
	declaredSet := make(map[violationKey]bool, len(declared))
	problems := make([]string, 0, len(declared)+len(got))
	for _, violation := range declared {
		key := violationKey{RuleID: violation.GetRuleId(), FieldPath: violation.GetFieldPath()}
		declaredSet[key] = true
		if gotSet[key] {
			continue
		}
		if exempt[violation.GetRuleId()] {
			continue
		}
		problems = append(problems, fmt.Sprintf(
			"%s bad[%d]: declared violation %s not produced by oracle (typo, wrong field_path, or value doesn't actually trip this rule)",
			hostName, idx, formatKey(key)))
	}
	for violation := range gotSet {
		if declaredSet[violation] {
			continue
		}
		problems = append(problems, fmt.Sprintf(
			"%s bad[%d]: oracle fired %s but case did not declare it",
			hostName, idx, formatKey(violation)))
	}
	return problems
}

// buildExemptRuleIDs returns the set of conformance rule_ids whose semantics
// aren't expressible in CEL and therefore can never appear in oracle output.
//
// Most entries come from validateschema.NoCEL (rule fields validated by
// runtimes directly), transformed from `buf.validate.<TypeName>Rules.<field>`
// into the conformance `<typeOneofName>.<field>` form. We exclude container
// traversal fields (RepeatedRules.items, MapRules.keys, MapRules.values) —
// they're sub-FieldRules entry points, not user-visible rule_ids.
//
// "required" is added as a literal because it lives directly on FieldRules,
// not inside any *Rules message, so it has no NoCEL entry.
func buildExemptRuleIDs(schema *validateschema.Schema) map[string]bool {
	exempt := map[string]bool{"required": true}
	for _, field := range schema.RuleFields {
		if !field.NoCEL {
			continue
		}
		if field.Desc.Kind() == protoreflect.MessageKind &&
			field.Desc.Message().FullName() == "buf.validate.FieldRules" {
			continue
		}
		ruleID := string(field.Parent.Parent.Name()) + "." + string(field.Desc.Name())
		exempt[ruleID] = true
	}
	return exempt
}

func formatKey(v violationKey) string {
	if v.FieldPath == "" {
		return fmt.Sprintf("rule_id=%q (message-level)", v.RuleID)
	}
	return fmt.Sprintf("rule_id=%q field_path=%q", v.RuleID, v.FieldPath)
}

func formatViolations(vs []oracle.Violation) string {
	parts := make([]string, len(vs))
	for i, v := range vs {
		parts[i] = formatKey(keyFor(v))
	}
	return strings.Join(parts, ", ")
}
