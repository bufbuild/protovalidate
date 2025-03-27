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

func isIPPrefixSuite() suites.Suite {
	return suites.Suite{
		"version/4/strict/false/valid/example": {
			Message:  &cases.IsIpPrefix{Val: "192.168.5.21/16", Version: proto.Int32(4), Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/6/strict/false/valid/example": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012::F1/64", Version: proto.Int32(6), Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/4/strict/true/valid/example": {
			Message:  &cases.IsIpPrefix{Val: "192.168.0.0/16", Version: proto.Int32(4), Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/6/strict/true/valid/example": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012::0/64", Version: proto.Int32(6), Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix": {
			Message:  &cases.IsIpPrefix{Val: "::1/64"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix": {
			Message:  &cases.IsIpPrefix{Val: "127.0.0.1/16"},
			Expected: results.Success(true),
		},
		"version/0/strict/omitted/valid/ipv6_prefix": {
			Message:  &cases.IsIpPrefix{Val: "::1/64", Version: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"version/0/strict/omitted/valid/ipv4_prefix": {
			Message:  &cases.IsIpPrefix{Val: "127.0.0.1/16", Version: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"version/6/strict/omitted/valid/ipv6_prefix": {
			Message:  &cases.IsIpPrefix{Val: "::1/64", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/4/strict/omitted/valid/ipv4_prefix": {
			Message:  &cases.IsIpPrefix{Val: "127.0.0.1/16", Version: proto.Int32(4)},
			Expected: results.Success(true),
		},
		"version/6/strict/omitted/invalid/ipv4_prefix": {
			Message: &cases.IsIpPrefix{Val: "127.0.0.1/16", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/4/strict/omitted/invalid/ipv6_prefix": {
			Message: &cases.IsIpPrefix{Val: "::1/64", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/5/strict/omitted/invalid/ipv6_prefix": {
			Message: &cases.IsIpPrefix{Val: "::1/64", Version: proto.Int32(5)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/7/strict/omitted/invalid/ipv6_prefix": {
			Message: &cases.IsIpPrefix{Val: "::1/64", Version: proto.Int32(7)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:0:0:0:0/64", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix": {
			Message:  &cases.IsIpPrefix{Val: "255.255.0.0/16", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/64", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix": {
			Message: &cases.IsIpPrefix{Val: "255.255.128.0/16", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/false/valid/ipv6_prefix": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/64", Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/false/valid/ipv4_prefix": {
			Message:  &cases.IsIpPrefix{Val: "255.255.128.0/16", Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix/a": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/64"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix/b": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:0:0:0:0/64"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/invalid/empty_string": {
			Message: &cases.IsIpPrefix{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/1/strict/omitted/invalid/empty_string": {
			Message: &cases.IsIpPrefix{Val: "", Version: proto.Int32(1)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/4/strict/omitted/invalid/empty_string": {
			Message: &cases.IsIpPrefix{Val: "", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/6/strict/omitted/invalid/empty_string": {
			Message: &cases.IsIpPrefix{Val: "", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_prefix_leading_space": {
			Message: &cases.IsIpPrefix{Val: " ::1/64"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_prefix_trailing_space": {
			Message: &cases.IsIpPrefix{Val: "::1/64 "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_prefix_leading_space": {
			Message: &cases.IsIpPrefix{Val: " 127.0.0.1/16"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_prefix_trailing_space": {
			Message: &cases.IsIpPrefix{Val: "127.0.0.1/16 "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_16/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.128.0/16"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_16/b": {
			Message:  &cases.IsIpPrefix{Val: "255.255.0.0/16"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_24": {
			Message:  &cases.IsIpPrefix{Val: "192.168.1.0/24"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_0": {
			Message:  &cases.IsIpPrefix{Val: "192.168.1.0/0"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_0_prefix_0": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/0"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_0": {
			Message: &cases.IsIpPrefix{Val: "1.0.0.0/0", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_32/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.255.255/32"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv4_prefix_32/b": {
			Message:  &cases.IsIpPrefix{Val: "192.168.1.0/32"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/invalid/ipv4_prefix_33": {
			Message: &cases.IsIpPrefix{Val: "192.168.1.0/33"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_bad_leading_zero_in_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "192.168.1.0/024"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_bad_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "192.168.1.0/12345678901234567890"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_missing_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "192.168.1.0/"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv4_missing_prefix": {
			Message: &cases.IsIpPrefix{Val: "192.168.1.0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_0": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/0", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_0/a": {
			Message: &cases.IsIpPrefix{Val: "1.0.0.0/0", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_0/b": {
			Message: &cases.IsIpPrefix{Val: "128.0.0.0/0", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_1/a": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/1", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_1/b": {
			Message:  &cases.IsIpPrefix{Val: "128.0.0.0/1", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_1/a": {
			Message: &cases.IsIpPrefix{Val: "127.0.0.0/1", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_1/b": {
			Message: &cases.IsIpPrefix{Val: "129.0.0.0/1", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_1/c": {
			Message: &cases.IsIpPrefix{Val: "1.0.0.0/1", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_2/a": {
			Message:  &cases.IsIpPrefix{Val: "192.0.0.0/2", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_2/b": {
			Message:  &cases.IsIpPrefix{Val: "64.0.0.0/2", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_2/c": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/2", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_2/a": {
			Message: &cases.IsIpPrefix{Val: "193.0.0.0/2", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_2/b": {
			Message: &cases.IsIpPrefix{Val: "224.0.0.0/2", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_7/a": {
			Message:  &cases.IsIpPrefix{Val: "254.0.0.0/7", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_7/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/7", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_7/a": {
			Message: &cases.IsIpPrefix{Val: "255.0.0.0/7", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_8/a": {
			Message:  &cases.IsIpPrefix{Val: "255.0.0.0/8", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_8/b": {
			Message:  &cases.IsIpPrefix{Val: "128.0.0.0/8", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_8/c": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/8", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_8/a": {
			Message: &cases.IsIpPrefix{Val: "255.128.0.0/8", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_9": {
			Message:  &cases.IsIpPrefix{Val: "255.128.0.0/9", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_15": {
			Message:  &cases.IsIpPrefix{Val: "255.254.0.0/15", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_16/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.0.0/16", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_16/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/16", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_16/a": {
			Message: &cases.IsIpPrefix{Val: "255.255.128.0/16", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_16/b": {
			Message: &cases.IsIpPrefix{Val: "255.255.0.128/16", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_17": {
			Message:  &cases.IsIpPrefix{Val: "255.255.128.0/17", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_23/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.254.0/23", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_23/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/23", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_23/a": {
			Message: &cases.IsIpPrefix{Val: "255.255.255.0/23", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_23/b": {
			Message: &cases.IsIpPrefix{Val: "255.255.254.128/23", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_24/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.255.0/24", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_24/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/24", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_24": {
			Message: &cases.IsIpPrefix{Val: "255.255.255.128/24", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_25/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.255.128/25", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_25/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/25", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_25": {
			Message: &cases.IsIpPrefix{Val: "255.255.255.129/25", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_31/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.255.254/31", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_31/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/31", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv4_prefix_31": {
			Message: &cases.IsIpPrefix{Val: "255.255.255.255/31", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_32/a": {
			Message:  &cases.IsIpPrefix{Val: "255.255.255.255/32", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv4_prefix_32/b": {
			Message:  &cases.IsIpPrefix{Val: "0.0.0.0/32", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix_64": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/64"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/a": {
			Message:  &cases.IsIpPrefix{Val: "::1/64"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/b": {
			Message:  &cases.IsIpPrefix{Val: "::2:3:4:5:6:7:8/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/c": {
			Message:  &cases.IsIpPrefix{Val: "1:2:3:4::6:7:8/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/d": {
			Message:  &cases.IsIpPrefix{Val: "1::8/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/e": {
			Message:  &cases.IsIpPrefix{Val: "1:2:3:4:5:6:7::/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/f": {
			Message:  &cases.IsIpPrefix{Val: "1::/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_compressed_prefix/g": {
			Message:  &cases.IsIpPrefix{Val: "::/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix-length_0": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/0"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/valid/ipv6_prefix-length_128": {
			Message:  &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/128"},
			Expected: results.Success(true),
		},
		"version/omitted/strict/omitted/invalid/ipv6_prefix-length_129": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/129"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_bad_leading_zero_in_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/024"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_bad_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/12345678901234567890"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_missing_prefix-length": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF/"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_missing_prefix": {
			Message: &cases.IsIpPrefix{Val: "2001:0DB8:ABCD:0012:FFFF:FFFF:FFFF:FFFF"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_zone-id/a": {
			Message: &cases.IsIpPrefix{Val: "::1%en1/64"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/omitted/invalid/ipv6_zone-id/b": {
			Message: &cases.IsIpPrefix{Val: "::1/64%en1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_0": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:0:0:0/0", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_0": {
			Message: &cases.IsIpPrefix{Val: "1:0:0:0:0:0:0:0/0", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_1/a": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:0:0:0/1", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_1/b": {
			Message:  &cases.IsIpPrefix{Val: "8000:0:0:0:0:0:0:0/1", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_1": {
			Message: &cases.IsIpPrefix{Val: "c000:0:0:0:0:0:0:0/1", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_8/a": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:0:0:0/8", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_8/b": {
			Message:  &cases.IsIpPrefix{Val: "ff00:0:0:0:0:0:0:0/8", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_8/a": {
			Message: &cases.IsIpPrefix{Val: "ff80:0:0:0:0:0:0:0/8", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_64/a": {
			Message:  &cases.IsIpPrefix{Val: "1:2:3:4:0:0:0:0/64", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_64/b": {
			Message:  &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:0:0:0:0/64", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_64": {
			Message: &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:8000:0:0:0/64", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_112/a": {
			Message:  &cases.IsIpPrefix{Val: "1:2:3:4:5:6:7:0/112", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_112/b": {
			Message:  &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:0/112", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_112": {
			Message: &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:8000/112", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_127/a": {
			Message:  &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:0/127", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_127/b": {
			Message:  &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:fffe/127", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_prefix_127": {
			Message: &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff/127", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_128/a": {
			Message:  &cases.IsIpPrefix{Val: "1:2:3:4:5:6:7:8/128", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_128/b": {
			Message:  &cases.IsIpPrefix{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff/128", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_prefix_128/c": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:0:0:0/128", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_dotted_decimal_prefix_128": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:192.1.56.10/128", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_dotted_decimal_prefix_112": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:192.1.0.0/112", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_dotted_decimal_prefix_112": {
			Message: &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:192.1.0.128/112", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/false/valid/ipv6_dotted_decimal_prefix_112": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:192.1.0.128/112", Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_dotted_decimal_prefix_96": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:0.0.0.0/96", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_dotted_decimal_prefix_96": {
			Message: &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:0.0.128.0/96", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/false/valid/ipv6_dotted_decimal_prefix_96": {
			Message:  &cases.IsIpPrefix{Val: "0:0:0:0:0:ffff:0.0.128.0/96", Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/valid/ipv6_dotted_decimal_double_colon": {
			Message:  &cases.IsIpPrefix{Val: "::ffff:192.1.0.0/112", Strict: proto.Bool(true)},
			Expected: results.Success(true),
		},
		"version/omitted/strict/true/invalid/ipv6_dotted_decimal_double_colon": {
			Message: &cases.IsIpPrefix{Val: "::ffff:192.1.128.0/112", Strict: proto.Bool(true)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip_prefix"),
				},
			),
		},
		"version/omitted/strict/false/valid/ipv6_dotted_decimal_double_colon": {
			Message:  &cases.IsIpPrefix{Val: "::ffff:192.1.128.0/112", Strict: proto.Bool(false)},
			Expected: results.Success(true),
		},
	}
}
