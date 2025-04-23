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

package cases

import (
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
	"google.golang.org/protobuf/proto"
)

func isHostnameSuite() suites.Suite {
	return suites.Suite{
		"valid/basic_rfc1034_example_1": {
			Message:  &cases.IsHostname{Val: "A.ISI.EDU"},
			Expected: results.Success(true),
		},
		"valid/basic_rfc1034_example_2": {
			Message:  &cases.IsHostname{Val: "XX.LCS.MIT.EDU"},
			Expected: results.Success(true),
		},
		"valid/basic_rfc1034_example_3": {
			Message:  &cases.IsHostname{Val: "SRI-NIC.ARPA"},
			Expected: results.Success(true),
		},
		"valid/basic_example": {
			Message:  &cases.IsHostname{Val: "example.com"},
			Expected: results.Success(true),
		},
		"valid/basic/basic_example_with_hyphen": {
			Message:  &cases.IsHostname{Val: "foo-bar.com"},
			Expected: results.Success(true),
		},
		"invalid/empty_string": {
			Message: &cases.IsHostname{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/leading_space": {
			Message: &cases.IsHostname{Val: " example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/trailing_space": {
			Message: &cases.IsHostname{Val: "example.com "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/underscore": {
			Message: &cases.IsHostname{Val: "foo_bar.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/internationalized_domain_name": {
			Message: &cases.IsHostname{Val: "你好.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"valid/label_all_characters": {
			Message:  &cases.IsHostname{Val: "abcdefghijklmnopqrstuvwxyz-ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"},
			Expected: results.Success(true),
		},
		"valid/name_253_characters": {
			Message:  &cases.IsHostname{Val: "123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.abc"},
			Expected: results.Success(true),
		},
		"invalid/name_254_characters": {
			Message: &cases.IsHostname{Val: "123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.123456789.abcd"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/single_dot": {
			Message: &cases.IsHostname{Val: "."},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"valid/trailing_dot": {
			Message:  &cases.IsHostname{Val: "a."},
			Expected: results.Success(true),
		},
		"invalid/empty_label": {
			Message: &cases.IsHostname{Val: ".a"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/empty_label_trailing_dot": {
			Message: &cases.IsHostname{Val: ".."},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/empty_interior_label": {
			Message: &cases.IsHostname{Val: "a..b"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"valid/label_interior_hyphen": {
			Message:  &cases.IsHostname{Val: "a-b.a--b"},
			Expected: results.Success(true),
		},
		"invalid/label_starts_with_hyphen": {
			Message: &cases.IsHostname{Val: "-a"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/label_ends_with_hyphen": {
			Message: &cases.IsHostname{Val: "a-"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"valid/label_can_start_and_end_with_letter": {
			Message:  &cases.IsHostname{Val: "a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.A.B.C.D.E.F.G.H.I.J.K.L.M.N.O.P.Q.R.S.T.U.V.W.X.Y.Z"},
			Expected: results.Success(true),
		},
		"valid/labels_can_start_and_end_with_digits_but_last_label_must_not_be_all_digits": {
			Message:  &cases.IsHostname{Val: "0.1.2.3.4.5.6.7.8.9.com"},
			Expected: results.Success(true),
		},
		"valid/single_label_must_not_be_all_digits": {
			Message:  &cases.IsHostname{Val: "com1"},
			Expected: results.Success(true),
		},
		"invalid/last_label_must_not_be_all_digits": {
			Message: &cases.IsHostname{Val: "a.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"valid/label_must_end_with_letter_or_digit": {
			Message:  &cases.IsHostname{Val: "a.a0.a1.a2.a3.a4.a5.a6.a7.a8.a9"},
			Expected: results.Success(true),
		},
		"valid/label_must_start_with_letter_or_digit": {
			Message:  &cases.IsHostname{Val: "0.1.2.3.4.5.6.7.8.9.0a.1a.2a.3a.4a.5a.6a.7a.8a.9a"},
			Expected: results.Success(true),
		},
		"valid/first_label_63_characters": {
			Message:  &cases.IsHostname{Val: "abc012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Success(true),
		},
		"valid/last_label_63_characters": {
			Message:  &cases.IsHostname{Val: "foo.abc012345678901234567890123456789012345678901234567890123456789"},
			Expected: results.Success(true),
		},
		"valid/interior_label_63_characters": {
			Message:  &cases.IsHostname{Val: "foo.abc012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Success(true),
		},
		"invalid/first_label_64_characters": {
			Message: &cases.IsHostname{Val: "abcd012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/last_label_64_characters": {
			Message: &cases.IsHostname{Val: "foo.abcd012345678901234567890123456789012345678901234567890123456789"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/interior_label_64_characters": {
			Message: &cases.IsHostname{Val: "foo.abcd012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
		"invalid/fuzz1": {
			Message: &cases.IsHostname{Val: "İ"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_hostname"),
				},
			),
		},
	}
}
