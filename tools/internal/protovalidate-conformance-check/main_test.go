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
	"sort"
	"strings"
	"testing"

	"github.com/bufbuild/protovalidate/tools/internal/annotated"
	conformancepb "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance"
	"github.com/bufbuild/protovalidate/tools/internal/oracle"
	"github.com/bufbuild/protovalidate/tools/internal/validateschema"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoregistry"
)

// TestCheckHostAllAnnotated drives the full checkHost path — Any unmarshal,
// oracle walker, diffBad — against every annotated host registered in the
// global file registry. It is the integration counterpart to
// TestDiffBadDetectsTypoAndMissing, which only tests diffBad in isolation
// against synthetic violation slices.
//
// All cases shipped in proto/protovalidate-testing/buf/validate/conformance/
// cases/annotated/ are expected to be self-consistent, so a passing run
// means: every declared good produces zero violations; every declared bad
// produces exactly the listed violations. A failure here indicates either a
// regression in the oracle/check pipeline or drift between an annotated
// host's rules and its declared cases.
func TestCheckHostAllAnnotated(t *testing.T) {
	t.Parallel()
	schema, err := validateschema.ResolveFromFiles(protoregistry.GlobalFiles)
	if err != nil {
		t.Fatalf("schema resolve: %v", err)
	}
	orcl, err := oracle.New(schema)
	if err != nil {
		t.Fatalf("oracle init: %v", err)
	}
	exempt := buildExemptRuleIDs(schema)

	hosts := annotated.CollectMessageDescriptors()
	if len(hosts) == 0 {
		t.Fatal("expected at least one annotated host to be registered; blank-import of generated annotated package may be missing")
	}
	for _, host := range hosts {
		problems := checkHost(orcl, host, exempt)
		if len(problems) > 0 {
			t.Errorf("host %s reported %d problem(s):\n  %s",
				host.FullName(), len(problems), strings.Join(problems, "\n  "))
		}
	}
}

func TestBuildExemptRuleIDs(t *testing.T) {
	t.Parallel()
	schema, err := validateschema.ResolveFromFiles(protoregistry.GlobalFiles)
	if err != nil {
		t.Fatalf("schema resolve: %v", err)
	}
	got := buildExemptRuleIDs(schema)
	want := []string{
		"any.in",
		"any.not_in",
		"enum.defined_only",
		"required",
		"string.strict",
	}
	gotKeys := make([]string, 0, len(got))
	for k := range got {
		gotKeys = append(gotKeys, k)
	}
	sort.Strings(gotKeys)
	if strings.Join(gotKeys, ",") != strings.Join(want, ",") {
		t.Errorf("exempt rule_ids drift:\n  got:  %v\n  want: %v", gotKeys, want)
	}
}

func TestDiffBadDetectsTypoAndMissing(t *testing.T) {
	t.Parallel()
	tests := []struct {
		name     string
		declared []*conformancepb.ExpectedViolation
		got      []oracle.Violation
		exempt   map[string]bool
		wantSubs []string // every substring must appear among the reported problems
	}{
		{
			name: "matching declared and oracle: no problems",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("string.email"), FieldPath: proto.String("val")},
			},
			got: []oracle.Violation{
				{RuleID: "string.email", FieldPath: "val"},
			},
			wantSubs: nil,
		},
		{
			name: "typo in rule_id reported",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("string.emial"), FieldPath: proto.String("val")},
			},
			got: []oracle.Violation{
				{RuleID: "string.email", FieldPath: "val"},
			},
			wantSubs: []string{
				`declared violation rule_id="string.emial"`,
				`oracle fired rule_id="string.email"`,
			},
		},
		{
			name: "missing declared violation reported",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("string.email"), FieldPath: proto.String("val")},
			},
			got: []oracle.Violation{
				{RuleID: "string.email", FieldPath: "val"},
				{RuleID: "string.max_len", FieldPath: "val"},
			},
			wantSubs: []string{
				`oracle fired rule_id="string.max_len"`,
			},
		},
		{
			name: "extra declared violation reported",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("string.email"), FieldPath: proto.String("val")},
				{RuleId: ("string.max_len"), FieldPath: proto.String("val")},
			},
			got: []oracle.Violation{
				{RuleID: "string.email", FieldPath: "val"},
			},
			wantSubs: []string{
				`declared violation rule_id="string.max_len"`,
			},
		},
		{
			name: "exempt rule_id accepted without oracle match",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("required"), FieldPath: proto.String("token")},
			},
			got:      nil,
			exempt:   map[string]bool{"required": true},
			wantSubs: nil,
		},
		{
			name: "wrong field_path treated as missing+extra",
			declared: []*conformancepb.ExpectedViolation{
				{RuleId: ("string.email"), FieldPath: proto.String("vall")},
			},
			got: []oracle.Violation{
				{RuleID: "string.email", FieldPath: "val"},
			},
			wantSubs: []string{
				`field_path="vall"`,
				`field_path="val"`,
			},
		},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			problems := diffBad("Host", 0, tc.declared, tc.got, tc.exempt)
			joined := strings.Join(problems, "\n")
			if len(tc.wantSubs) == 0 {
				if len(problems) != 0 {
					t.Fatalf("expected no problems, got:\n%s", joined)
				}
				return
			}
			for _, sub := range tc.wantSubs {
				if !strings.Contains(joined, sub) {
					t.Errorf("expected problem containing %q in:\n%s", sub, joined)
				}
			}
		})
	}
}
