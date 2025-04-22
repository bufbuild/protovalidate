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

func isEmailSuite() suites.Suite {
	return suites.Suite{
		"valid/a": {
			Message:  &cases.IsEmail{Val: "foo@example.com"},
			Expected: results.Success(true),
		},
		"valid/b": {
			Message:  &cases.IsEmail{Val: "foo+x@example.com"},
			Expected: results.Success(true),
		},
		"valid/c": {
			Message:  &cases.IsEmail{Val: "foo@example"},
			Expected: results.Success(true),
		},
		"invalid/missing_at": {
			Message: &cases.IsEmail{Val: "example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/non_ascii": {
			Message: &cases.IsEmail{Val: "µ@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/left_side_empty": {
			Message: &cases.IsEmail{Val: "@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/empty_string": {
			Message: &cases.IsEmail{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/leading_space": {
			Message: &cases.IsEmail{Val: " foo@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/trailing_space": {
			Message: &cases.IsEmail{Val: "foo@example.com "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/leading_newline": {
			Message: &cases.IsEmail{Val: "\nfoobar@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/trailing_newline": {
			Message: &cases.IsEmail{Val: "foobar@example.com\n"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"valid/multiple_atext": {
			Message:  &cases.IsEmail{Val: "foo.bar@example.com"},
			Expected: results.Success(true),
		},
		"valid/empty_atext": {
			Message:  &cases.IsEmail{Val: ".@example.com"},
			Expected: results.Success(true),
		},
		"valid/multiple_empty_atext": {
			Message:  &cases.IsEmail{Val: "...@example.com"},
			Expected: results.Success(true),
		},
		"valid/exhaust_atext": {
			Message:  &cases.IsEmail{Val: "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!#$%&'*+-/=?^_`{|}~@example.com"},
			Expected: results.Success(true),
		},
		"invalid/left_side_space": {
			Message: &cases.IsEmail{Val: "foo @example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/right_side_empty": {
			Message: &cases.IsEmail{Val: "foo@"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/trailing_dot": {
			Message: &cases.IsEmail{Val: "foo@example.com."},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/empty_label": {
			Message: &cases.IsEmail{Val: "foo@.a"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/label_starts_with_hyphen": {
			Message: &cases.IsEmail{Val: "foo@-a"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/label_ends_with_hyphen": {
			Message: &cases.IsEmail{Val: "foo@a-"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"valid/label_interior_hyphen": {
			Message:  &cases.IsEmail{Val: "foo@a-b.a--b"},
			Expected: results.Success(true),
		},
		"valid/label_63_characters": {
			Message:  &cases.IsEmail{Val: "foo@abc012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Success(true),
		},
		"invalid/label_64_characters": {
			Message: &cases.IsEmail{Val: "foo@abcd012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"valid/label_all_digits": {
			Message:  &cases.IsEmail{Val: "foo@0.1.2.3.4.5.6.7.8.9"},
			Expected: results.Success(true),
		},
		"valid/label_all_letters": {
			Message:  &cases.IsEmail{Val: "foo@a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.q.r.s.t.u.v.w.x.y.z.A.B.C.D.E.F.G.H.I.J.K.L.M.N.O.P.Q.R.S.T.U.V.W.X.Y.Z"},
			Expected: results.Success(true),
		},
		"valid/exhaust_label": {
			Message:  &cases.IsEmail{Val: "foo@abcdefghijklmnopqrstuvwxyz-ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"},
			Expected: results.Success(true),
		},
		"invalid/internationalized_domain_name": {
			Message: &cases.IsEmail{Val: "foo@你好.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/quoted-string/a": {
			Message: &cases.IsEmail{Val: `"foo bar"@example.com`},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/quoted-string/b": {
			Message: &cases.IsEmail{Val: `"foo..bar"@example.com`},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/quoted-string/c": {
			Message: &cases.IsEmail{Val: `"foo@bar"@example.com`},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/space": {
			Message: &cases.IsEmail{Val: "foobar@ example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/comment": {
			Message: &cases.IsEmail{Val: "foo@example.com (comment)"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/mailbox": {
			Message: &cases.IsEmail{Val: "John Doe <john@example.com>"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
		"invalid/ip_literal": {
			Message: &cases.IsEmail{Val: "postmaster@[123.123.123.123]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_email"),
				},
			),
		},
	}
}
