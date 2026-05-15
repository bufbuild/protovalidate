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

package oracle

import (
	"errors"
	"testing"

	annotatedpb "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/annotated"
	"github.com/bufbuild/protovalidate/tools/internal/validateschema"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoregistry"
)

func newForTest(t *testing.T) (*Oracle, error) {
	t.Helper()
	schema, err := validateschema.ResolveFromFiles(protoregistry.GlobalFiles)
	if err != nil {
		return nil, err
	}
	return New(schema)
}

func TestOracleDerivesPredefinedMessages(t *testing.T) {
	t.Parallel()
	o, err := newForTest(t)
	if err != nil {
		t.Fatalf("New: %v", err)
	}

	tests := []struct {
		name      string
		host      proto.Message
		ruleID    string
		fieldPath string
		want      string
	}{
		{
			name:      "string.email static message",
			host:      &annotatedpb.StringEmailMaxLen{Val: "not-an-email"},
			ruleID:    "string.email",
			fieldPath: "val",
			want:      "must be a valid email address",
		},
		{
			name:      "string.max_len dynamic format",
			host:      &annotatedpb.StringEmailMaxLen{Val: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"},
			ruleID:    "string.max_len",
			fieldPath: "val",
			want:      "must be at most 32 characters",
		},
		{
			name:      "map.min_pairs dynamic format",
			host:      &annotatedpb.InventoryStock{},
			ruleID:    "map.min_pairs",
			fieldPath: "stock",
			want:      "map must be at least 1 entries",
		},
		{
			name:      "message-level user CEL",
			host:      &annotatedpb.PersonNames{FirstName: "Jon"},
			ruleID:    "first_name_requires_last_name",
			fieldPath: "",
			want:      "last_name must be present if first_name is present",
		},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			got, err := o.MessageFor(tc.host, tc.ruleID, tc.fieldPath)
			if err != nil {
				t.Fatalf("MessageFor: %v", err)
			}
			if got != tc.want {
				t.Errorf("MessageFor:\n  got:  %q\n  want: %q", got, tc.want)
			}
		})
	}
}

func TestOracleNotDerivableForUnknownRule(t *testing.T) {
	t.Parallel()
	o, err := newForTest(t)
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	_, err = o.MessageFor(&annotatedpb.StringEmailMaxLen{}, "definitely.not.a.rule", "val")
	if !errors.Is(err, ErrNotDerivable) {
		t.Errorf("expected ErrNotDerivable, got %v", err)
	}
}

func TestOracleViolationsWalker(t *testing.T) {
	t.Parallel()
	o, err := newForTest(t)
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	tests := []struct {
		name string
		host proto.Message
		want []Violation
	}{
		{
			name: "good string passes both string.email and string.max_len",
			host: &annotatedpb.StringEmailMaxLen{Val: "alice@example.com"},
			want: nil,
		},
		{
			name: "non-email under length only fires string.email",
			host: &annotatedpb.StringEmailMaxLen{Val: "not-an-email"},
			want: []Violation{{RuleID: "string.email", FieldPath: "val", RulePath: "string.email"}},
		},
		{
			name: "33 chars of x fires both string.email and string.max_len",
			host: &annotatedpb.StringEmailMaxLen{Val: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"},
			want: []Violation{
				{RuleID: "string.email", FieldPath: "val", RulePath: "string.email"},
				{RuleID: "string.max_len", FieldPath: "val", RulePath: "string.max_len"},
			},
		},
		{
			name: "empty map fires map.min_pairs",
			host: &annotatedpb.InventoryStock{},
			want: []Violation{{RuleID: "map.min_pairs", FieldPath: "stock", RulePath: "map.min_pairs"}},
		},
		{
			name: "good map passes",
			host: &annotatedpb.InventoryStock{Stock: map[string]int32{"apples": 5}},
			want: nil,
		},
		{
			// One empty-string key (trips map.keys.string.min_len with ForKey=true)
			// and one negative value (trips map.values.int32.gte). Sorted by
			// FieldPath: stock[""] < stock["x"] because '"' (0x22) < 'x' (0x78).
			name: "map with bad key and bad value fires keys+values rules simultaneously",
			host: &annotatedpb.InventoryStock{Stock: map[string]int32{"": 5, "x": -1}},
			want: []Violation{
				{RuleID: "string.min_len", FieldPath: `stock[""]`, RulePath: "map.keys.string.min_len", ForKey: true},
				{RuleID: "int32.gte", FieldPath: `stock["x"]`, RulePath: "map.values.int32.gte"},
			},
		},
		{
			name: "first_name without last_name fires message-level CEL",
			host: &annotatedpb.PersonNames{FirstName: "Jon"},
			want: []Violation{{RuleID: "first_name_requires_last_name"}},
		},
		{
			name: "both names present passes",
			host: &annotatedpb.PersonNames{FirstName: "Jon", LastName: "Bodner"},
			want: nil,
		},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			got, err := o.Violations(tc.host)
			if err != nil {
				t.Fatalf("Violations: %v", err)
			}
			if !equalViolations(got, tc.want) {
				t.Errorf("Violations:\n  got:  %+v\n  want: %+v", got, tc.want)
			}
			// Every emitted violation should carry a non-empty Message —
			// equalViolations skips Message comparison (see its doc), so
			// without this assertion a walker bug that zeroed Message would
			// pass silently.
			for _, v := range got {
				if v.Message == "" {
					t.Errorf("violation %q at %q has empty Message", v.RuleID, v.FieldPath)
				}
			}
		})
	}
}

// equalViolations compares everything except Message (covered by
// TestOracleDerivesPredefinedMessages) so tests don't have to repeat
// message strings the oracle already handles.
func equalViolations(a, b []Violation) bool {
	if len(a) != len(b) {
		return false
	}
	for i := range a {
		if a[i].RuleID != b[i].RuleID ||
			a[i].FieldPath != b[i].FieldPath ||
			a[i].RulePath != b[i].RulePath ||
			a[i].ForKey != b[i].ForKey {
			return false
		}
	}
	return true
}
