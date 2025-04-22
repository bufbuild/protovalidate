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

func isURISuite() suites.Suite {
	return suites.Suite{
		"valid/example": {
			Message:  &cases.IsUri{Val: "https://example.com"},
			Expected: results.Success(true),
		},
		"valid/example_with_path_segment": {
			Message:  &cases.IsUri{Val: "https://example.com/foo"},
			Expected: results.Success(true),
		},
		"valid/example_with_path_segments": {
			Message:  &cases.IsUri{Val: "https://example.com/foo/bar"},
			Expected: results.Success(true),
		},
		"valid/example_with_path_query_fragment": {
			Message:  &cases.IsUri{Val: "https://example.com/foo/bar?baz=quux#frag"},
			Expected: results.Success(true),
		},
		"valid/example_with_userinfo": {
			Message:  &cases.IsUri{Val: "https://joe@example.com/foo"},
			Expected: results.Success(true),
		},
		"invalid/empty_string": {
			Message: &cases.IsUri{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/space": {
			Message: &cases.IsUri{Val: " "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/leading_space": {
			Message: &cases.IsUri{Val: " https://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/trailing_space": {
			Message: &cases.IsUri{Val: "https://example.com "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/relative-ref": {
			Message: &cases.IsUri{Val: "./"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/relative-ref_with_authority": {
			Message: &cases.IsUri{Val: "//example.com/foo"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/extreme": {
			Message:  &cases.IsUri{Val: "scheme0123456789azAZ+-.://userinfo0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~!$&'()*+,;=::@host!$&'()*+,;=._~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ:0123456789/path0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20//foo/?query0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?#fragment0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"valid/scheme_ftp": {
			Message:  &cases.IsUri{Val: "ftp://example.com"},
			Expected: results.Success(true),
		},
		"valid/scheme_exhaust": {
			Message:  &cases.IsUri{Val: "foo0123456789azAZ+-.://example.com"},
			Expected: results.Success(true),
		},
		"invalid/scheme/a": {
			Message: &cases.IsUri{Val: "1foo://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/b": {
			Message: &cases.IsUri{Val: "-foo://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/c": {
			Message: &cases.IsUri{Val: ".foo://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/d": {
			Message: &cases.IsUri{Val: ":foo://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/e": {
			Message: &cases.IsUri{Val: "foo%20bar://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/f": {
			Message: &cases.IsUri{Val: "foo\x1Fbar://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/scheme/g": {
			Message: &cases.IsUri{Val: "foo^bar://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/userinfo_name": {
			Message:  &cases.IsUri{Val: "https://user@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_name_password": {
			Message:  &cases.IsUri{Val: "https://user:password@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "https://%61%20%23@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "https://%c3%963@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_pct-encoded_invalid-utf8": {
			Message:  &cases.IsUri{Val: "https://%c3x%963@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_unreserved": {
			Message:  &cases.IsUri{Val: "https://0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_sub-delims": {
			Message:  &cases.IsUri{Val: "https://!$&'()*+,;=@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_extra": {
			Message:  &cases.IsUri{Val: "https://:@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_multiple_colons": {
			Message:  &cases.IsUri{Val: "https://:::@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_reserved_slash_parses_as_path-abempty": {
			Message:  &cases.IsUri{Val: "https:///@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_reserved_questionmark_parses_as_query": {
			Message:  &cases.IsUri{Val: "https://?@example.com"},
			Expected: results.Success(true),
		},
		"valid/userinfo_reserved_hash_parses_as_fragment": {
			Message:  &cases.IsUri{Val: "https://#@example.com"},
			Expected: results.Success(true),
		},
		"invalid/userinfo_reserved_square_bracket_open": {
			Message: &cases.IsUri{Val: "https://[@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/userinfo_reserved_square_bracket_close": {
			Message: &cases.IsUri{Val: "https://]@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/userinfo_reserved_at": {
			Message: &cases.IsUri{Val: "https://@@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/userinfo_bad_pct-encoded/a": {
			Message: &cases.IsUri{Val: "https://%@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/userinfo_bad_pct-encoded/b": {
			Message: &cases.IsUri{Val: "https://%2x@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/userinfo_exhaust": {
			Message:  &cases.IsUri{Val: "https://0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~!$&'()*+,;=::@example.com"},
			Expected: results.Success(true),
		},
		"invalid/userinfo_control_character": {
			Message: &cases.IsUri{Val: "https://\x1F@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/userinfo_caret": {
			Message: &cases.IsUri{Val: "https://^@example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/host_reg-name": {
			Message:  &cases.IsUri{Val: "https://foo"},
			Expected: results.Success(true),
		},
		"valid/host_reg-name_exhaust": {
			Message:  &cases.IsUri{Val: "https://!$&'()*+,;=._~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"},
			Expected: results.Success(true),
		},
		"valid/host_reg-name_empty": {
			Message:  &cases.IsUri{Val: "https://:8080"},
			Expected: results.Success(true),
		},
		"valid/host_reg-name_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "https://foo%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/host_reg-name_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "https://foo%c3%96"},
			Expected: results.Success(true),
		},
		"invalid/host_reg-name_pct-encoded_invalid_utf8": {
			Message: &cases.IsUri{Val: "https://foo%c3x%96"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_reg-name_bad_pct-encoded/a": {
			Message: &cases.IsUri{Val: "https://foo%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_reg-name_bad_pct-encoded/b": {
			Message: &cases.IsUri{Val: "https://foo%2x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/host_ipv4": {
			Message:  &cases.IsUri{Val: "https://127.0.0.1"},
			Expected: results.Success(true),
		},
		"valid/host_ip4v_bad_octet": {
			Message:  &cases.IsUri{Val: "https://256.0.0.1"},
			Expected: results.Success(true),
		},
		"valid/host_ipv6": {
			Message:  &cases.IsUri{Val: "https://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]"},
			Expected: results.Success(true),
		},
		"invalid/host_ipv6/a": {
			Message: &cases.IsUri{Val: "https://2001:0db8:85a3:0000:0000:8a2e:0370:7334"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_ipv6/b": {
			Message: &cases.IsUri{Val: "https://[2001::0370::7334]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/host_ipfuture_short": {
			Message:  &cases.IsUri{Val: "https://[v1.x]"},
			Expected: results.Success(true),
		},
		"valid/host_ipfuture_long": {
			Message:  &cases.IsUri{Val: "https://[v1234AF.x]"},
			Expected: results.Success(true),
		},
		"valid/host_ipfuture_exhaust": {
			Message:  &cases.IsUri{Val: "https://[vF.-!$&'()*+,;=._~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]"},
			Expected: results.Success(true),
		},
		"invalid/host_ipfuture": {
			Message: &cases.IsUri{Val: "https://[v1x]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host/a": {
			Message: &cases.IsUri{Val: "https://\x1F.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host/b": {
			Message: &cases.IsUri{Val: "https://^.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host/c": {
			Message: &cases.IsUri{Val: "https://foo@你好.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/host_ipv6_zone-id": {
			Message:  &cases.IsUri{Val: "https://[::1%25eth0]"},
			Expected: results.Success(true),
		},
		"valid/host_ipv6_zone-id_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "https://[::1%25foo%61%20%23]"},
			Expected: results.Success(true),
		},
		"valid/host_ipv6_zone-id_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "https://[::1%25foo%c3%96]"},
			Expected: results.Success(true),
		},
		"invalid/host_ipv6_zone-id_pct-encoded_invalid_utf8": {
			Message: &cases.IsUri{Val: "https://[::1%25foo%c3x%96]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_ipv6_zone-id_empty": {
			Message: &cases.IsUri{Val: "https://[::1%25]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_ipv6_zone-id_unquoted": {
			Message: &cases.IsUri{Val: "https://[::1%eth0]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_ipv6_zone-id_bad_pct-encoded/a": {
			Message: &cases.IsUri{Val: "https://[::1%25foo%]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/host_ipv6_zone-id_bad_pct-encoded/b": {
			Message: &cases.IsUri{Val: "https://[::1%25foo%2x]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/port_8080": {
			Message:  &cases.IsUri{Val: "https://example.com:8080"},
			Expected: results.Success(true),
		},
		"valid/port_65535": {
			Message:  &cases.IsUri{Val: "https://example.com:65535"},
			Expected: results.Success(true),
		},
		"valid/port_65536": {
			Message:  &cases.IsUri{Val: "https://example.com:65536"},
			Expected: results.Success(true),
		},
		"valid/port_0": {
			Message:  &cases.IsUri{Val: "https://example.com:0"},
			Expected: results.Success(true),
		},
		"valid/port_1": {
			Message:  &cases.IsUri{Val: "https://example.com:1"},
			Expected: results.Success(true),
		},
		"valid/port_empty": {
			Message:  &cases.IsUri{Val: "https://example.com:"},
			Expected: results.Success(true),
		},
		"valid/port_empty_reg-name_empty": {
			Message:  &cases.IsUri{Val: "https://:"},
			Expected: results.Success(true),
		},
		"invalid/port/a": {
			Message: &cases.IsUri{Val: "https://example.com:8a"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/port/b": {
			Message: &cases.IsUri{Val: "https://example.com:x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/port/c": {
			Message: &cases.IsUri{Val: "https://example.com: 1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/path_simple": {
			Message:  &cases.IsUri{Val: "https://example.com/foo"},
			Expected: results.Success(true),
		},
		"valid/path_simple_nested": {
			Message:  &cases.IsUri{Val: "https://example.com/foo/bar"},
			Expected: results.Success(true),
		},
		"valid/path_simple_nested_trailing_slash": {
			Message:  &cases.IsUri{Val: "https://example.com/foo/bar/"},
			Expected: results.Success(true),
		},
		"valid/path-absolute": {
			Message:  &cases.IsUri{Val: "foo:/nz"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_segment": {
			Message:  &cases.IsUri{Val: "foo:/nz/a"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_segments": {
			Message:  &cases.IsUri{Val: "foo:/nz//segment//segment/"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_empty_pchar": {
			Message:  &cases.IsUri{Val: "foo:/nz/"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_segment-nz-bad_caret": {
			Message: &cases.IsUri{Val: "foo:/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-absolute_segment-nz-bad_control_character": {
			Message: &cases.IsUri{Val: "foo:/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-absolute_segment-nz-bad_pct-encoded": {
			Message: &cases.IsUri{Val: "foo:/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/path-absolute_segment-nz-pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "foo:/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz-pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "foo:/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz-pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "foo:/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_exhaust_segment": {
			Message:  &cases.IsUri{Val: "foo:/nz/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_segment_bad_caret": {
			Message: &cases.IsUri{Val: "foo:/nz/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-absolute_segment_bad_control_character": {
			Message: &cases.IsUri{Val: "foo:/nz/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-absolute_segment_bad_pct-encoded": {
			Message: &cases.IsUri{Val: "foo:/nz/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/path-absolute_segment_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "foo:/nz/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "foo:/nz/%c3%96%c3"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "foo:/nz/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_exhaust_segment-nz": {
			Message:  &cases.IsUri{Val: "foo:/@%20!$&()*+,;=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~:"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_query_and_fragment": {
			Message:  &cases.IsUri{Val: "foo:/nz?q#f"},
			Expected: results.Success(true),
		},
		"valid/path-rootless": {
			Message:  &cases.IsUri{Val: "foo:nz"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_with_segment": {
			Message:  &cases.IsUri{Val: "foo:nz/a"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_with_segments": {
			Message:  &cases.IsUri{Val: "foo:nz//segment//segment/"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment_empty_pchar": {
			Message:  &cases.IsUri{Val: "foo:nz/"},
			Expected: results.Success(true),
		},
		"invalid/path-rootless_segment-nz_bad_caret": {
			Message: &cases.IsUri{Val: "foo:^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-rootless_segment-nz_bad_control_character": {
			Message: &cases.IsUri{Val: "foo:\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-rootless_segment-nz_bad_pct-encoded": {
			Message: &cases.IsUri{Val: "foo:%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/path-rootless_segment-nz_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "foo:%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment-nz_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "foo:%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment-nz_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "foo:%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment-nz_exhaust": {
			Message:  &cases.IsUri{Val: "foo:@%20!$&()*+,;=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~:"},
			Expected: results.Success(true),
		},
		"invalid/path-rootless_segment_bad_caret": {
			Message: &cases.IsUri{Val: "foo:nz/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-rootless_segment_bad_control_character": {
			Message: &cases.IsUri{Val: "foo:nz/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/path-rootless_segment_bad_pct-encoded": {
			Message: &cases.IsUri{Val: "foo:nz/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/path-rootless_segment_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "foo:nz/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "foo:nz/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "foo:nz/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_segment_exhaust": {
			Message:  &cases.IsUri{Val: "foo:nz/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20"},
			Expected: results.Success(true),
		},
		"valid/path-rootless_with_query_and_fragment": {
			Message:  &cases.IsUri{Val: "foo:nz?q#f"},
			Expected: results.Success(true),
		},
		"valid/path-empty": {
			Message:  &cases.IsUri{Val: "foo:"},
			Expected: results.Success(true),
		},
		"valid/path-empty_with_query_and_fragment": {
			Message:  &cases.IsUri{Val: "foo:?q#f"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty": {
			Message:  &cases.IsUri{Val: "foo://example.com"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_with_segment": {
			Message:  &cases.IsUri{Val: "foo://example.com/a"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_with_segments": {
			Message:  &cases.IsUri{Val: "foo://example.com/segment//segment/"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_segment_empty_pchar": {
			Message:  &cases.IsUri{Val: "foo://example.com/"},
			Expected: results.Success(true),
		},
		"invalid/authority_path-abempty_segment_bad_caret": {
			Message: &cases.IsUri{Val: "foo://example.com/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/authority_path-abempty_segment_bad_control_character": {
			Message: &cases.IsUri{Val: "foo://example.com/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/authority_path-abempty_segment_bad_pct-encoded": {
			Message: &cases.IsUri{Val: "foo://example.com/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/authority_path-abempty_segment_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "foo://example.com/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_segment_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "foo://example.com/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_segment_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "foo://example.com/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_segment_exhaust": {
			Message:  &cases.IsUri{Val: "foo://example.com/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_with_query_and_fragment": {
			Message:  &cases.IsUri{Val: "foo://example.com/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20"},
			Expected: results.Success(true),
		},
		"valid/query": {
			Message:  &cases.IsUri{Val: "https://example.com?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/query_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "https://example.com?%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/query_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "https://example.com?%c3%96%c3"},
			Expected: results.Success(true),
		},
		"valid/query_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "https://example.com?%c3x%96"},
			Expected: results.Success(true),
		},
		"invalid/query_bad_pct-encoded": {
			Message: &cases.IsUri{Val: "https://example.com?%2x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/query_bad_control_character": {
			Message: &cases.IsUri{Val: "https://example.com?\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/query_bad_caret": {
			Message: &cases.IsUri{Val: "https://example.com?^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/query_sub-delims": {
			Message:  &cases.IsUri{Val: "https://example.com?!$&'()*+,="},
			Expected: results.Success(true),
		},
		"valid/query_sub-delim_semicolon": {
			Message:  &cases.IsUri{Val: "https://example.com?;"},
			Expected: results.Success(true),
		},
		"valid/query_pchar_extra": {
			Message:  &cases.IsUri{Val: "https://example.com?:@"},
			Expected: results.Success(true),
		},
		"valid/query_extra": {
			Message:  &cases.IsUri{Val: "https://example.com?/?"},
			Expected: results.Success(true),
		},
		"valid/query_unusual_key_value_structure": {
			Message:  &cases.IsUri{Val: "https://example.com?a=b&c&&=1&=="},
			Expected: results.Success(true),
		},
		"valid/query_exhaust": {
			Message:  &cases.IsUri{Val: "https://example.com?0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?"},
			Expected: results.Success(true),
		},
		"valid/fragment": {
			Message:  &cases.IsUri{Val: "https://example.com?#frag"},
			Expected: results.Success(true),
		},
		"valid/fragment_pct-encoded_ascii": {
			Message:  &cases.IsUri{Val: "https://example.com#%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/fragment_pct-encoded_utf8": {
			Message:  &cases.IsUri{Val: "https://example.com#%c3%96"},
			Expected: results.Success(true),
		},
		"valid/fragment_pct-encoded_invalid_utf8": {
			Message:  &cases.IsUri{Val: "https://example.com#%c3x%96"},
			Expected: results.Success(true),
		},
		"invalid/fragment_bad_pct-encoded/a": {
			Message: &cases.IsUri{Val: "https://example.com#%2x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/fragment_bad_pct-encoded/b": {
			Message: &cases.IsUri{Val: "https://example.com#%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/fragment_sub-delims": {
			Message:  &cases.IsUri{Val: "https://example.com#!$&'()*+,;="},
			Expected: results.Success(true),
		},
		"valid/fragment_pchar_extra": {
			Message:  &cases.IsUri{Val: "https://example.com#/?"},
			Expected: results.Success(true),
		},
		"invalid/fragment_bad_hash": {
			Message: &cases.IsUri{Val: "https://example.com##"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/fragment_bad_caret": {
			Message: &cases.IsUri{Val: "https://example.com#^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"invalid/fragment_bad_control_character": {
			Message: &cases.IsUri{Val: "https://example.com#\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri"),
				},
			),
		},
		"valid/fragment_exhaust": {
			Message:  &cases.IsUri{Val: "https://example.com/#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"valid/fuzz1": {
			Message:  &cases.IsUri{Val: "A://"},
			Expected: results.Success(true),
		},
	}
}
