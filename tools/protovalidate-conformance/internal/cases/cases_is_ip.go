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

func isIPSuite() suites.Suite {
	return suites.Suite{
		"version/4/valid/example": {
			Message:  &cases.IsIp{Val: "192.168.5.21", Version: proto.Int32(4)},
			Expected: results.Success(true),
		},
		"version/6/valid/example": {
			Message:  &cases.IsIp{Val: "2001:0DB8:ABCD:0012::F1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6": {
			Message:  &cases.IsIp{Val: "::1"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv4": {
			Message:  &cases.IsIp{Val: "127.0.0.1"},
			Expected: results.Success(true),
		},
		"version/0/valid/ipv6": {
			Message:  &cases.IsIp{Val: "::1", Version: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"version/0/valid/ipv4": {
			Message:  &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(0)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6": {
			Message:  &cases.IsIp{Val: "::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/4/valid/ipv4": {
			Message:  &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(4)},
			Expected: results.Success(true),
		},
		"version/4/invalid/ipv6": {
			Message: &cases.IsIp{Val: "::1", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/ipv4": {
			Message: &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/4/invalid/ipv4_prefix": {
			Message: &cases.IsIp{Val: "127.0.0.1/16", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/4/invalid/ipv4_leading_space": {
			Message: &cases.IsIp{Val: " 127.0.0.1", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/4/invalid/ipv4_trailing_space": {
			Message: &cases.IsIp{Val: "127.0.0.1 ", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4_leading_space": {
			Message: &cases.IsIp{Val: " 127.0.0.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4_trailing_space": {
			Message: &cases.IsIp{Val: "127.0.0.1 "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/ipv6_prefix": {
			Message: &cases.IsIp{Val: "::1/64", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/4/invalid/ipv4_literal": {
			Message: &cases.IsIp{Val: "[127.0.0.1]", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/ipv6_literal": {
			Message: &cases.IsIp{Val: "[::1]", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/ipv6_leading_space": {
			Message: &cases.IsIp{Val: " ::1", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/ipv6_trailing_space": {
			Message: &cases.IsIp{Val: "::1 ", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_leading_space": {
			Message: &cases.IsIp{Val: " ::1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_trailing_space": {
			Message: &cases.IsIp{Val: "::1 "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/1/invalid/ipv6": {
			Message: &cases.IsIp{Val: "::1", Version: proto.Int32(1)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/1/invalid/ipv4": {
			Message: &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(1)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/5/invalid/ipv6": {
			Message: &cases.IsIp{Val: "::1", Version: proto.Int32(5)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/5/invalid/ipv4": {
			Message: &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(5)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/7/invalid/ipv6": {
			Message: &cases.IsIp{Val: "::1", Version: proto.Int32(7)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/7/invalid/ipv4": {
			Message: &cases.IsIp{Val: "127.0.0.1", Version: proto.Int32(7)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/empty_string": {
			Message: &cases.IsIp{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/1/invalid/empty_string": {
			Message: &cases.IsIp{Val: "", Version: proto.Int32(1)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/4/invalid/empty_string": {
			Message: &cases.IsIp{Val: "", Version: proto.Int32(4)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/invalid/empty_string": {
			Message: &cases.IsIp{Val: "", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/valid/ipv6/a": {
			Message:  &cases.IsIp{Val: "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/b": {
			Message:  &cases.IsIp{Val: "fd7a:115c:a1e0:ab12:4843:cd96:626b:430b"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/c": {
			Message:  &cases.IsIp{Val: "d7a:115c:a1e0:ab12:4843:cd96:626b:430b"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/d": {
			Message:  &cases.IsIp{Val: "7a:115c:a1e0:ab12:4843:cd96:626b:430b"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/e": {
			Message:  &cases.IsIp{Val: "a:115c:a1e0:ab12:4843:cd96:626b:430b"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/f": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5:6:7:8"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/g": {
			Message:  &cases.IsIp{Val: "0:0:0:0:0:0:0:0"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6/j": {
			Message:  &cases.IsIp{Val: "0:00::000:0000"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv6_embedded_ipv4": {
			Message:  &cases.IsIp{Val: "0:0:0:0:0:ffff:192.1.56.10"},
			Expected: results.Success(true),
		},
		"version/omitted/invalid/ipv6_embedded_ipv4/a": {
			Message: &cases.IsIp{Val: "0:0:0:0:0:ffff:256.1.56.10"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_embedded_ipv4/b": {
			Message: &cases.IsIp{Val: "0:0:0:0:0:ffff:192.x.56.10"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_embedded_ipv4/c": {
			Message: &cases.IsIp{Val: "0:0:0:0:0:ffff:192..56.10"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_embedded_ipv4/d": {
			Message: &cases.IsIp{Val: "0:0:0:0:0:ffff:192.1.56."},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6_embedded_ipv4/e": {
			Message: &cases.IsIp{Val: "0:0:0:0:0:ffff:192.1.56"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/valid/ipv6_zone-id": {
			Message:  &cases.IsIp{Val: "::1%foo"},
			Expected: results.Success(true),
		},
		"version/omitted/invalid/ipv6_zone-id": {
			Message: &cases.IsIp{Val: "::1%"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/valid/ipv6_zone-id_any_non_null_character": {
			Message:  &cases.IsIp{Val: "::1%% :x\x1F"},
			Expected: results.Success(true),
		},
		"version/omitted/invalid/ipv6/a": {
			Message: &cases.IsIp{Val: ":2:3:4:5:6:7:8"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/b": {
			Message: &cases.IsIp{Val: "12345:2:3:4:5:6:7:8"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/c": {
			Message: &cases.IsIp{Val: "g:2:3:4:5:6:7:8"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/d": {
			Message: &cases.IsIp{Val: ":::1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/e": {
			Message: &cases.IsIp{Val: "1::3:4::6:7:8"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/f": {
			Message: &cases.IsIp{Val: "1::3:4::6:7:8"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/g": {
			Message: &cases.IsIp{Val: ":0::0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/h": {
			Message: &cases.IsIp{Val: "0::0:"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/i": {
			Message: &cases.IsIp{Val: "0::0:"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv6/j": {
			Message: &cases.IsIp{Val: "::0000ffff"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/valid/ipv4/a": {
			Message:  &cases.IsIp{Val: "127.0.0.1"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv4/b": {
			Message:  &cases.IsIp{Val: "255.255.255.255"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv4/c": {
			Message:  &cases.IsIp{Val: "0.0.0.0"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv4/d": {
			Message:  &cases.IsIp{Val: "127.0.0.1"},
			Expected: results.Success(true),
		},
		"version/omitted/valid/ipv4/e": {
			Message:  &cases.IsIp{Val: "127.0.0.1"},
			Expected: results.Success(true),
		},
		"version/omitted/invalid/ipv4/a": {
			Message: &cases.IsIp{Val: "127.0.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4/b": {
			Message: &cases.IsIp{Val: "127.0.1."},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4/c": {
			Message: &cases.IsIp{Val: "127..0.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4/d": {
			Message: &cases.IsIp{Val: "127.0.0.0.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4/e": {
			Message: &cases.IsIp{Val: "256.0.0.0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/omitted/invalid/ipv4/f": {
			Message: &cases.IsIp{Val: "0x0.0.0.0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/valid/ipv6/double_colon": {
			Message:  &cases.IsIp{Val: "::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/1h16_double_colon": {
			Message:  &cases.IsIp{Val: "1::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/2h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/3h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2:3::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/4h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2:3:4::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/5h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/6h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5:6::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/7h16_double_colon": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5:6:7::", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/invalid/ipv6/7h16_double_colon": {
			Message: &cases.IsIp{Val: "1:2:3:4:5:6:7:8::", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/valid/ipv6/1h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/2h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1:2::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/3h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1:2:3::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/4h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1:2:3:4::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/5h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/6h16_double_colon_1h16": {
			Message:  &cases.IsIp{Val: "1:2:3:4:5:6::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/invalid/ipv6/7h16_double_colon_1h16": {
			Message: &cases.IsIp{Val: "1:2:3:4:5:6:7::1", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/valid/ipv6/double_colon_1h16": {
			Message:  &cases.IsIp{Val: "::1", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_2h16": {
			Message:  &cases.IsIp{Val: "::1:2", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_3h16": {
			Message:  &cases.IsIp{Val: "::1:2:3", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_4h16": {
			Message:  &cases.IsIp{Val: "::1:2:3:4", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_5h16": {
			Message:  &cases.IsIp{Val: "::1:2:3:4:5", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_6h16": {
			Message:  &cases.IsIp{Val: "::1:2:3:4:5:6", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/double_colon_7h16": {
			Message:  &cases.IsIp{Val: "::1:2:3:4:5:6:7", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/invalid/ipv6/double_colon_8h16": {
			Message: &cases.IsIp{Val: "::1:2:3:4:5:6:7:8", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
		"version/6/valid/ipv6/1h16_double_colon_2h16": {
			Message:  &cases.IsIp{Val: "1::1:2", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/1h16_double_colon_3h16": {
			Message:  &cases.IsIp{Val: "1::1:2:3", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/1h16_double_colon_4h16": {
			Message:  &cases.IsIp{Val: "1::1:2:3:4", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/1h16_double_colon_5h16": {
			Message:  &cases.IsIp{Val: "1::1:2:3:4:5", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/valid/ipv6/1h16_double_colon_6h16": {
			Message:  &cases.IsIp{Val: "1::1:2:3:4:5:6", Version: proto.Int32(6)},
			Expected: results.Success(true),
		},
		"version/6/invalid/ipv6/1h16_double_colon_7h16": {
			Message: &cases.IsIp{Val: "1::1:2:3:4:5:6:7", Version: proto.Int32(6)},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_ip"),
				},
			),
		},
	}
}
