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

func isURIRefSuite() suites.Suite {
	return suites.Suite{
		"valid/path-noscheme_with_segment": {
			Message:  &cases.IsUriRef{Val: "./foo"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_with_segment_query_fragment": {
			Message:  &cases.IsUriRef{Val: "./foo/bar?baz=quux#frag"},
			Expected: results.Success(true),
		},
		"valid/empty_string": {
			Message:  &cases.IsUriRef{Val: ""},
			Expected: results.Success(true),
		},
		"valid/extreme": {
			Message:  &cases.IsUriRef{Val: "//userinfo0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~!$&'()*+,;=::@host!$&'()*+,;=._~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ:0123456789/path0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20//foo/?query0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?#fragment0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"invalid/space": {
			Message: &cases.IsUriRef{Val: " "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/leading_space": {
			Message: &cases.IsUriRef{Val: " ./foo"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/trailing_space": {
			Message: &cases.IsUriRef{Val: "./foo "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/bad_relative-part": {
			Message: &cases.IsUriRef{Val: ":"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/uri_with_bad_scheme": {
			Message: &cases.IsUriRef{Val: "1foo://example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/authority_path-abempty": {
			Message:  &cases.IsUriRef{Val: "//host"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_with_segment_query_fragment": {
			Message:  &cases.IsUriRef{Val: "//host/foo?baz=quux#frag"},
			Expected: results.Success(true),
		},
		"valid/authority_path-abempty_segment_empty_pchar": {
			Message:  &cases.IsUriRef{Val: "//host/"},
			Expected: results.Success(true),
		},
		"invalid/authority_path-abempty_segment_bad_control_character": {
			Message: &cases.IsUriRef{Val: "//host/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_segment_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "//host/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-abempty_segment_pct-encoded_ascii": {
			Message:  &cases.IsUriRef{Val: "//host/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_segment_pct-encoded_utf-8": {
			Message:  &cases.IsUriRef{Val: "//host/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_segment_pct-encoded_invalid_utf-8": {
			Message:  &cases.IsUriRef{Val: "//host/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_exhaust_segment": {
			Message:  &cases.IsUriRef{Val: "//host/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&()*+,;=:@"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_multiple_segments/a": {
			Message:  &cases.IsUriRef{Val: "//host//"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_multiple_segments/b": {
			Message:  &cases.IsUriRef{Val: "//host/a/b/c"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_multiple_segments/c": {
			Message:  &cases.IsUriRef{Val: "//host/a/b/c/"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_with_query/a": {
			Message:  &cases.IsUriRef{Val: "//host?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_with_query/b": {
			Message:  &cases.IsUriRef{Val: "//host/foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_with_fragment/a": {
			Message:  &cases.IsUriRef{Val: "//host#frag"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_with_fragment/b": {
			Message:  &cases.IsUriRef{Val: "//host/foo/bar#frag"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_exhaust_fragment": {
			Message:  &cases.IsUriRef{Val: "//host#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"invalid/path-abempty_fragment_bad_fragment": {
			Message: &cases.IsUriRef{Val: "//host##"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_fragment_bad_caret": {
			Message: &cases.IsUriRef{Val: "//host#^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_fragment_bad_control_character": {
			Message: &cases.IsUriRef{Val: "//host#\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_fragment_bad_pct-encoding": {
			Message: &cases.IsUriRef{Val: "//host#%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-abempty_exhaust_query": {
			Message:  &cases.IsUriRef{Val: "//host?0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?"},
			Expected: results.Success(true),
		},
		"invalid/path-abempty_query_bad_caret": {
			Message: &cases.IsUriRef{Val: "//host?^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_query_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "//host?%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-abempty_query_bad_control_character": {
			Message: &cases.IsUriRef{Val: "//host?\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-abempty_exhaust_userinfo": {
			Message:  &cases.IsUriRef{Val: "//0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~!$&'()*+,;=::@example.com"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_port": {
			Message:  &cases.IsUriRef{Val: "//host:8080"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_ipv4": {
			Message:  &cases.IsUriRef{Val: "//127.0.0.1"},
			Expected: results.Success(true),
		},
		"valid/path-abempty_ipv6": {
			Message:  &cases.IsUriRef{Val: "//[::1]"},
			Expected: results.Success(true),
		},
		"valid/path-absolute": {
			Message:  &cases.IsUriRef{Val: "/"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz": {
			Message:  &cases.IsUriRef{Val: "/nz"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz_matches_colon": {
			Message:  &cases.IsUriRef{Val: "/:"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_segment-nz_bad_caret": {
			Message: &cases.IsUriRef{Val: "/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_segment-nz_bad_control_character": {
			Message: &cases.IsUriRef{Val: "/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_segment-nz_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-absolute_segment-nz_pct-encoded_ascii": {
			Message:  &cases.IsUriRef{Val: "/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz_pct-encoded_utf-8": {
			Message:  &cases.IsUriRef{Val: "/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment-nz_pct-encoded_invalid_utf-8": {
			Message:  &cases.IsUriRef{Val: "/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_exhaust_segment-nz": {
			Message:  &cases.IsUriRef{Val: "/@%20!$&()*+,;=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~:"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment_empty_pchar": {
			Message:  &cases.IsUriRef{Val: "/nz/"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_segment_bad_caret": {
			Message: &cases.IsUriRef{Val: "/nz/^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_segment_bad_control_character": {
			Message: &cases.IsUriRef{Val: "/nz/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_segment_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "/nz/%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-absolute_segment_pct-encoded_ascii": {
			Message:  &cases.IsUriRef{Val: "/nz/%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment_pct-encoded_utf-8": {
			Message:  &cases.IsUriRef{Val: "/nz/%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_segment_pct-encoded_invalid_utf-8": {
			Message:  &cases.IsUriRef{Val: "/nz/%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_exhaust_segment": {
			Message:  &cases.IsUriRef{Val: "/nz/0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&()*+,;=:@"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_query/a": {
			Message:  &cases.IsUriRef{Val: "/?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_query/b": {
			Message:  &cases.IsUriRef{Val: "/foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_fragment/a": {
			Message:  &cases.IsUriRef{Val: "/#frag"},
			Expected: results.Success(true),
		},
		"valid/path-absolute_with_fragment/b": {
			Message:  &cases.IsUriRef{Val: "/foo/bar#frag"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_bad_control_character": {
			Message: &cases.IsUriRef{Val: "/foo/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-absolute_exhaust_fragment": {
			Message:  &cases.IsUriRef{Val: "/#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_fragment_bad_fragment": {
			Message: &cases.IsUriRef{Val: "/##"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_fragment_bad_caret": {
			Message: &cases.IsUriRef{Val: "/#^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_fragment_bad_control_character": {
			Message: &cases.IsUriRef{Val: "/#\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_fragment_bad_pct-encoding": {
			Message: &cases.IsUriRef{Val: "/#%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-absolute_exhaust_query": {
			Message:  &cases.IsUriRef{Val: "/?0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?"},
			Expected: results.Success(true),
		},
		"invalid/path-absolute_query_bad_caret": {
			Message: &cases.IsUriRef{Val: "/?^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_query_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "/?%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-absolute_query_bad_control_character": {
			Message: &cases.IsUriRef{Val: "/?\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-noscheme/a": {
			Message:  &cases.IsUriRef{Val: "./foo/bar"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme/b": {
			Message:  &cases.IsUriRef{Val: "*"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme/c": {
			Message:  &cases.IsUriRef{Val: "./foo"},
			Expected: results.Success(true),
		},
		"invalid/path-noscheme_segment-nz_bad_colon": {
			Message: &cases.IsUriRef{Val: ":"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_segment-nz_bad_caret": {
			Message: &cases.IsUriRef{Val: "^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_segment-nz_bad_control_character": {
			Message: &cases.IsUriRef{Val: "\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_segment-nz_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-noscheme_segment-nz_pct-encoded_ascii": {
			Message:  &cases.IsUriRef{Val: "%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_segment-nz_pct-encoded_utf-8": {
			Message:  &cases.IsUriRef{Val: "%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_segment-nz_pct-encoded_invalid_utf-8": {
			Message:  &cases.IsUriRef{Val: "%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_exhaust_segment-nz-nc": {
			Message:  &cases.IsUriRef{Val: "@%20!$&()*+,;=0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_segment_empty_pchar": {
			Message:  &cases.IsUriRef{Val: "./"},
			Expected: results.Success(true),
		},
		"invalid/path-noscheme_segment_bad_caret": {
			Message: &cases.IsUriRef{Val: "./^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_segment-bad_control_character": {
			Message: &cases.IsUriRef{Val: "./\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_segment_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "./%x"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-noscheme_segment_pct-encoded_ascii": {
			Message:  &cases.IsUriRef{Val: "./%61%20%23"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_segment_pct-encoded_utf-8": {
			Message:  &cases.IsUriRef{Val: "./%c3%96"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_segment_pct-encoded_invalid_utf-8": {
			Message:  &cases.IsUriRef{Val: "./%c3x%96"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_exhaust_segment": {
			Message:  &cases.IsUriRef{Val: "./0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ%20!$&'()*+,;=:@%20"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_multiple_segments/a": {
			Message:  &cases.IsUriRef{Val: ".///"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_multiple_segments/b": {
			Message:  &cases.IsUriRef{Val: "./a/b/c"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_multiple_segments/c": {
			Message:  &cases.IsUriRef{Val: "./a/b/c/"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_with_query/a": {
			Message:  &cases.IsUriRef{Val: ".?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_with_query/b": {
			Message:  &cases.IsUriRef{Val: "./foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_with_fragment/a": {
			Message:  &cases.IsUriRef{Val: ".#frag"},
			Expected: results.Success(true),
		},
		"valid/path-noscheme_with_fragment/b": {
			Message:  &cases.IsUriRef{Val: "./foo/bar#frag"},
			Expected: results.Success(true),
		},
		"invalid/path-noscheme_bad_control_character": {
			Message: &cases.IsUriRef{Val: "./foo/\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-noscheme_exhaust_fragment": {
			Message:  &cases.IsUriRef{Val: ".#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"invalid/path-noscheme_fragment_bad_fragment": {
			Message: &cases.IsUriRef{Val: ".##"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_fragment_bad_caret": {
			Message: &cases.IsUriRef{Val: ".#^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_fragment_bad_control_character": {
			Message: &cases.IsUriRef{Val: ".#\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_fragment_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: ".#%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-noscheme_exhaust_query": {
			Message:  &cases.IsUriRef{Val: ".?0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?"},
			Expected: results.Success(true),
		},
		"invalid/path-noscheme_query_bad_caret": {
			Message: &cases.IsUriRef{Val: ".?^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_query_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: ".?%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-noscheme_query_bad_control_character": {
			Message: &cases.IsUriRef{Val: ".?\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-empty": {
			Message:  &cases.IsUriRef{Val: ""},
			Expected: results.Success(true),
		},
		"valid/path-empty_exhaust_fragment": {
			Message:  &cases.IsUriRef{Val: "#0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?/"},
			Expected: results.Success(true),
		},
		"invalid/path-empty_fragment_bad_fragment": {
			Message: &cases.IsUriRef{Val: "##"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-empty_fragment_bad_caret": {
			Message: &cases.IsUriRef{Val: "#^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-empty_fragment_bad_control_character": {
			Message: &cases.IsUriRef{Val: "#\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-empty_fragment_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "#%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"valid/path-empty_exhaust_query": {
			Message:  &cases.IsUriRef{Val: "?0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-._~%20!$&'()*+,=;:@?"},
			Expected: results.Success(true),
		},
		"invalid/path-empty_query_bad_caret": {
			Message: &cases.IsUriRef{Val: "?^"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-empty_query_bad_pct-encoded": {
			Message: &cases.IsUriRef{Val: "?%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
		"invalid/path-empty_query_bad_control_character": {
			Message: &cases.IsUriRef{Val: "?\x1F"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_uri_ref"),
				},
			),
		},
	}
}
