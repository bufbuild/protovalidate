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

func isHostAndPortSuite() suites.Suite {
	return suites.Suite{
		"port_required/false/valid/example": {
			Message:  &cases.IsHostAndPort{Val: "example.com"},
			Expected: results.Success(true),
		},
		"port_required/true/valid/example": {
			Message:  &cases.IsHostAndPort{Val: "example.com:8080", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/false/valid/trailing_dot": {
			Message:  &cases.IsHostAndPort{Val: "a."},
			Expected: results.Success(true),
		},
		"port_required/false/invalid/empty_string": {
			Message: &cases.IsHostAndPort{Val: ""},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/leading_space": {
			Message: &cases.IsHostAndPort{Val: " example.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/trailing_space": {
			Message: &cases.IsHostAndPort{Val: "example.com "},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/empty_string": {
			Message: &cases.IsHostAndPort{Val: "", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/leading_space": {
			Message: &cases.IsHostAndPort{Val: " example.com", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/trailing_space": {
			Message: &cases.IsHostAndPort{Val: "example.com ", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/internationalized_domain_name": {
			Message: &cases.IsHostAndPort{Val: "你好.com"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/missing_port": {
			Message: &cases.IsHostAndPort{Val: "example.com", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/missing_port_number": {
			Message: &cases.IsHostAndPort{Val: "example.com:", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/missing_port_number": {
			Message: &cases.IsHostAndPort{Val: "example.com:"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/valid/port_zero": {
			Message:  &cases.IsHostAndPort{Val: "example.com:0", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/true/invalid/port_double_zero": {
			Message: &cases.IsHostAndPort{Val: "example.com:00", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/port_leading_zero": {
			Message: &cases.IsHostAndPort{Val: "example.com:080", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/port_double_zero": {
			Message: &cases.IsHostAndPort{Val: "example.com:00"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/port_leading_zero": {
			Message: &cases.IsHostAndPort{Val: "example.com:080"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/port_number_sign": {
			Message: &cases.IsHostAndPort{Val: "example.com:+0", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/port_number_sign": {
			Message: &cases.IsHostAndPort{Val: "example.com:+0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/port_number_0x": {
			Message: &cases.IsHostAndPort{Val: "example.com:0xFA"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/port_number_0x": {
			Message: &cases.IsHostAndPort{Val: "example.com:0xFA", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/valid/port_65535": {
			Message:  &cases.IsHostAndPort{Val: "example.com:65535"},
			Expected: results.Success(true),
		},
		"port_required/true/valid/port_65535": {
			Message:  &cases.IsHostAndPort{Val: "example.com:65535", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/false/invalid/port_65536": {
			Message: &cases.IsHostAndPort{Val: "example.com:65536"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/port_65536": {
			Message: &cases.IsHostAndPort{Val: "example.com:65536", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/valid/ipv4": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv4_min": {
			Message:  &cases.IsHostAndPort{Val: "0.0.0.0"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv4_max": {
			Message:  &cases.IsHostAndPort{Val: "255.255.255.255"},
			Expected: results.Success(true),
		},
		"port_required/false/invalid/ipv4_octet_too_big": {
			Message: &cases.IsHostAndPort{Val: "256.0.0.0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/ipv4_missing_octet": {
			Message: &cases.IsHostAndPort{Val: "127.0.0"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/ipv4_empty_octet": {
			Message: &cases.IsHostAndPort{Val: "127..0.1"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/valid/ipv4_port_zero": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1:0", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv4_port_zero": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1:0"},
			Expected: results.Success(true),
		},
		"port_required/true/valid/ipv4_port_8080": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1:8080", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv4_port_8080": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1:8080"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv4_port_65535": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1:65535"},
			Expected: results.Success(true),
		},
		"port_required/true/invalid/ipv4_port_65536": {
			Message: &cases.IsHostAndPort{Val: "192.168.0.1:65536", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/ipv4_missing_port": {
			Message: &cases.IsHostAndPort{Val: "192.168.0.1", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/valid/ipv4_missing_port": {
			Message:  &cases.IsHostAndPort{Val: "192.168.0.1"},
			Expected: results.Success(true),
		},
		"port_required/true/invalid/ipv4_missing_port_number": {
			Message: &cases.IsHostAndPort{Val: "192.168.0.1:", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/ipv4_missing_port_number": {
			Message: &cases.IsHostAndPort{Val: "192.168.0.1:"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/valid/ipv6": {
			Message:  &cases.IsHostAndPort{Val: "[::1]"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv6_with_zone-id": {
			Message:  &cases.IsHostAndPort{Val: "[::1%foo]"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv6_min": {
			Message:  &cases.IsHostAndPort{Val: "[0:0:0:0:0:0:0:0]"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv6_max": {
			Message:  &cases.IsHostAndPort{Val: "[ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff]"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv6_embedded_ipv4": {
			Message:  &cases.IsHostAndPort{Val: "[0:0:0:0:0:ffff:192.1.56.10]"},
			Expected: results.Success(true),
		},
		"port_required/false/invalid/ipv6_zone-id_too_short": {
			Message: &cases.IsHostAndPort{Val: "[::1%]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/valid/ipv6_zone-id_any_non_null_character": {
			Message:  &cases.IsHostAndPort{Val: "[::1%% :x\x1F]"},
			Expected: results.Success(true),
		},
		"port_required/false/valid/ipv6_zone-id_any_non_null_character_2": {
			Message:  &cases.IsHostAndPort{Val: "[::0%00]]"},
			Expected: results.Success(true),
		},
		"port_required/false/invalid/ipv4_in_brackets": {
			Message: &cases.IsHostAndPort{Val: "[127.0.0.1]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/false/invalid/name_in_brackets": {
			Message: &cases.IsHostAndPort{Val: "[example.com]"},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/valid/ipv6_port_0": {
			Message:  &cases.IsHostAndPort{Val: "[::1]:0", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/true/valid/ipv6_port_8080": {
			Message:  &cases.IsHostAndPort{Val: "[::1]:8080", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/true/valid/ipv6_port_65535": {
			Message:  &cases.IsHostAndPort{Val: "[::1]:65535", PortRequired: true},
			Expected: results.Success(true),
		},
		"port_required/true/invalid/ipv6_port_65536": {
			Message: &cases.IsHostAndPort{Val: "[::1]:65536", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/ipv6_missing_port": {
			Message: &cases.IsHostAndPort{Val: "[::1]", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
		"port_required/true/invalid/ipv6_missing_port_number": {
			Message: &cases.IsHostAndPort{Val: "[::1]:", PortRequired: true},
			Expected: results.Violations(
				&validate.Violation{
					RuleId: proto.String("library.is_host_and_port"),
				},
			),
		},
	}
}
