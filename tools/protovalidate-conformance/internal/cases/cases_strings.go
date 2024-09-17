// Copyright 2023 Buf Technologies, Inc.
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

func stringSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.StringNone{Val: "foobar"},
			Expected: results.Success(true),
		},
		"const/valid": {
			Message:  &cases.StringConst{Val: "foo"},
			Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.StringConst{Val: "bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.const")}),
		},
		"in/valid": {
			Message:  &cases.StringIn{Val: "baz"},
			Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.StringIn{Val: "foo"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.in")}),
		},
		"not_in/valid": {
			Message:  &cases.StringNotIn{Val: "bar"},
			Expected: results.Success(true),
		},
		"not_in/invalid": {
			Message: &cases.StringNotIn{Val: "fizz"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.not_in")}),
		},
		"len/valid/ascii": {
			Message:  &cases.StringLen{Val: "foo"},
			Expected: results.Success(true),
		},
		"len/valid/multibyte": {
			Message:  &cases.StringLen{Val: "ʙǻɹ"},
			Expected: results.Success(true),
		},
		"len/valid/emoji/simple": {
			Message:  &cases.StringLen{Val: "😅😄👾"},
			Expected: results.Success(true),
		},
		"len/invalid": {
			Message: &cases.StringLen{Val: "fizz"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.len")}),
		},
		"len/invalid/emoji/composite": {
			Message: &cases.StringLen{Val: "👩🏽‍💻🧑🏾‍💻👨🏼‍💻"},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					ConstraintId: proto.String("string.len"),
					Message:      proto.String("value length must be 3 characters"),
				}),
		},
		"min_len/valid/equal": {
			Message:  &cases.StringMinLen{Val: "foo"},
			Expected: results.Success(true),
		},
		"min_len/valid/greater": {
			Message:  &cases.StringMinLen{Val: "foobar"},
			Expected: results.Success(true),
		},
		"min_len/invalid/less": {
			Message: &cases.StringMinLen{Val: "pb"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.min_len")}),
		},
		"max_len/valid/equal": {
			Message:  &cases.StringMaxLen{Val: "proto"},
			Expected: results.Success(true),
		},
		"max_len/valid/less": {
			Message:  &cases.StringMaxLen{Val: "buf"},
			Expected: results.Success(true),
		},
		"max_len/invalid/greater": {
			Message: &cases.StringMaxLen{Val: "validate"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.max_len")}),
		},
		"min_max_len/valid/within": {
			Message:  &cases.StringMinMaxLen{Val: "quux"},
			Expected: results.Success(true),
		},
		"min_max_len/valid/min": {
			Message:  &cases.StringMinMaxLen{Val: "foo"},
			Expected: results.Success(true),
		},
		"min_max_len/valid/max": {
			Message:  &cases.StringMinMaxLen{Val: "proto"},
			Expected: results.Success(true),
		},
		"min_max_len/invalid/less": {
			Message: &cases.StringMinMaxLen{Val: "pb"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.min_len")}),
		},
		"min_max_len/invalid/greater": {
			Message: &cases.StringMinMaxLen{Val: "validate"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.max_len")}),
		},
		"min_max_len/equal/valid": {
			Message:  &cases.StringEqualMinMaxLen{Val: "proto"},
			Expected: results.Success(true),
		},
		"min_max_len/equal/invalid": {
			Message: &cases.StringEqualMinMaxLen{Val: "validate"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.max_len")}),
		},
		"len_bytes/valid/ascii": {
			Message:  &cases.StringLenBytes{Val: "fizz"},
			Expected: results.Success(true),
		},
		"len_bytes/valid/multibyte": {
			Message:  &cases.StringLenBytes{Val: "Ƥƥ"},
			Expected: results.Success(true),
		},
		"len_bytes/valid/emoji": {
			Message:  &cases.StringLenBytes{Val: "😄"},
			Expected: results.Success(true),
		},
		"len_bytes/invalid": {
			Message: &cases.StringLenBytes{Val: "foo"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.len_bytes")}),
		},
		"min_bytes/valid/equal": {
			Message:  &cases.StringMinBytes{Val: "fizz"},
			Expected: results.Success(true),
		},
		"min_bytes/valid/greater": {
			Message:  &cases.StringMinBytes{Val: "proto"},
			Expected: results.Success(true),
		},
		"min_bytes/invalid/less": {
			Message: &cases.StringMinBytes{Val: "foo"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.min_bytes")}),
		},
		"max_bytes/valid/equal": {
			Message:  &cases.StringMaxBytes{Val: "validate"},
			Expected: results.Success(true),
		},
		"max_bytes/valid/less": {
			Message:  &cases.StringMaxBytes{Val: "proto"},
			Expected: results.Success(true),
		},
		"max_bytes/invalid/greater": {
			Message: &cases.StringMaxBytes{Val: "validation"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.max_bytes")}),
		},
		"min_max_bytes/valid/within": {
			Message:  &cases.StringMinMaxBytes{Val: "quux"},
			Expected: results.Success(true),
		},
		"min_max_bytes/valid/min": {
			Message:  &cases.StringMinMaxBytes{Val: "fizz"},
			Expected: results.Success(true),
		},
		"min_max_bytes/valid/max": {
			Message:  &cases.StringMinMaxBytes{Val: "validate"},
			Expected: results.Success(true),
		},
		"min_max_bytes/invalid/less": {
			Message: &cases.StringMinMaxBytes{Val: "pb"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.min_bytes")}),
		},
		"min_max_bytes/invalid/greater": {
			Message: &cases.StringMinMaxBytes{Val: "validation"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.max_bytes")}),
		},
		"min_max_bytes/equal/valid": {
			Message:  &cases.StringEqualMinMaxBytes{Val: "fizz"},
			Expected: results.Success(true),
		},
		"min_max_bytes/equal/invalid": {
			Message: &cases.StringEqualMinMaxBytes{Val: "foo"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.min_bytes")}),
		},
		"pattern/valid": {
			Message:  &cases.StringPattern{Val: "Foo123"},
			Expected: results.Success(true),
		},
		"pattern/invalid": {
			Message: &cases.StringPattern{Val: "!#@$#$%"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.pattern")}),
		},
		"pattern/escapes/valid": {
			Message:  &cases.StringPatternEscapes{Val: "* \\ x"},
			Expected: results.Success(true),
		},
		"pattern/escapes/invalid": {
			Message: &cases.StringPatternEscapes{Val: "invalid"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.pattern")}),
		},
		"prefix/valid/exact": {
			Message:  &cases.StringPrefix{Val: "foo"},
			Expected: results.Success(true),
		},
		"prefix/valid/starts_with": {
			Message:  &cases.StringPrefix{Val: "foobar"},
			Expected: results.Success(true),
		},
		"prefix/invalid": {
			Message: &cases.StringPrefix{Val: "fizz"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.prefix")}),
		},
		"contains/valid/exact": {
			Message:  &cases.StringContains{Val: "bar"},
			Expected: results.Success(true),
		},
		"contains/valid/prefix": {
			Message:  &cases.StringContains{Val: "barfoo"},
			Expected: results.Success(true),
		},
		"contains/valid/suffix": {
			Message:  &cases.StringContains{Val: "foobar"},
			Expected: results.Success(true),
		},
		"contains/valid/within": {
			Message:  &cases.StringContains{Val: "foobarbaz"},
			Expected: results.Success(true),
		},
		"contains/invalid": {
			Message: &cases.StringContains{Val: "fizzbuzz"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.contains")}),
		},
		"not_contains/valid": {
			Message:  &cases.StringNotContains{Val: "fizzbuzz"},
			Expected: results.Success(true),
		},
		"not_contains/invalid": {
			Message: &cases.StringNotContains{Val: "foobarbaz"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.not_contains")}),
		},
		"suffix/valid/exact": {
			Message:  &cases.StringSuffix{Val: "baz"},
			Expected: results.Success(true),
		},
		"suffix/valid/ends_with": {
			Message:  &cases.StringSuffix{Val: "foobarbaz"},
			Expected: results.Success(true),
		},
		"suffix/invalid": {
			Message: &cases.StringSuffix{Val: "bazbarfoo"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.suffix")}),
		},
		"email/valid/simple": {
			Message:  &cases.StringEmail{Val: "foo@bar.com"},
			Expected: results.Success(true),
		},
		"email/invalid/empty": {
			Message: &cases.StringEmail{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email_empty")}),
		},
		"email/invalid/not_checked/empty": {
			Message:  &cases.StringNotEmail{Val: ""},
			Expected: results.Success(true),
		},
		"email/invalid/not_checked/malformed": {
			Message:  &cases.StringNotEmail{Val: "foobar"},
			Expected: results.Success(true),
		},
		"email/invalid/malformed": {
			Message: &cases.StringEmail{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/local_segment_long": {
			Message: &cases.StringEmail{Val: "x0123456789012345678901234567890123456789012345678901234567890123456789@example.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/host_segment_long": {
			Message: &cases.StringEmail{Val: "foo@x0123456789012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/too_long": {
			Message: &cases.StringEmail{
				Val: "x123456789.x123456789.x123456789.x123456789.x123456789@x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789.x123456789",
			},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/bad_hostname": {
			Message: &cases.StringEmail{Val: "foo@-bar.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/only_dot_hostname": {
			Message: &cases.StringEmail{Val: "foo@."},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/white_spaces": {
			Message: &cases.StringEmail{Val: " foo@example.com "},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/trailing_white_space": {
			Message: &cases.StringEmail{Val: "foo@example.com "},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/leading_white_space": {
			Message: &cases.StringEmail{Val: " foo@example.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"email/invalid/angled_brackets": {
			Message: &cases.StringEmail{Val: "<foo@example.com>"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.email")}),
		},
		"hostname/invalid/empty": {
			Message: &cases.StringHostname{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname_empty")}),
		},
		"hostname/valid/lowercase": {
			Message:  &cases.StringHostname{Val: "example.com"},
			Expected: results.Success(true),
		},
		"hostname/valid/uppercase": {
			Message:  &cases.StringHostname{Val: "ASD.example.com"},
			Expected: results.Success(true),
		},
		"hostname/valid/hyphens": {
			Message:  &cases.StringHostname{Val: "foo-bar.com"},
			Expected: results.Success(true),
		},
		"hostname/valid/trailing_dot": {
			Message:  &cases.StringHostname{Val: "foo.bar."},
			Expected: results.Success(true),
		},
		"hostname/invalid/malformed": {
			Message: &cases.StringHostname{Val: "@!#$%^&*&^%$#"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/not_checked/empty": {
			Message:  &cases.StringNotHostname{Val: ""},
			Expected: results.Success(true),
		},
		"hostname/invalid/not_checked/malformed": {
			Message:  &cases.StringNotHostname{Val: "@!#$%^&*&^%$#"},
			Expected: results.Success(true),
		},
		"hostname/invalid/underscore": {
			Message: &cases.StringHostname{Val: "foo_bar.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/long": {
			Message: &cases.StringHostname{Val: "x0123456789012345678901234567890123456789012345678901234567890123456789.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/trailing_hyphen": {
			Message: &cases.StringHostname{Val: "foo-bar-.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/leading_hyphen": {
			Message: &cases.StringHostname{Val: "-foo-bar.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/empty_part": {
			Message: &cases.StringHostname{Val: "foo..bar.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/IDNs": {
			Message: &cases.StringHostname{Val: "你好.com"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"hostname/invalid/only_dot": {
			Message: &cases.StringHostname{Val: "."},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.hostname")}),
		},
		"ip/valid/v4": {
			Message:  &cases.StringIP{Val: "192.168.0.1"},
			Expected: results.Success(true),
		},
		"ip/valid/v6": {
			Message:  &cases.StringIP{Val: "3e::99"},
			Expected: results.Success(true),
		},
		"ip/invalid": {
			Message: &cases.StringIP{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip")}),
		},
		"ip/invalid/not_checked/empty": {
			Message:  &cases.StringNotIP{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ip/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIP{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ip/invalid/empty": {
			Message: &cases.StringIP{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip_empty")}),
		},
		"ipv4/valid": {
			Message:  &cases.StringIPv4{Val: "192.168.0.1"},
			Expected: results.Success(true),
		},
		"ipv4/invalid/empty": {
			Message: &cases.StringIPv4{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_empty")}),
		},
		"ipv4/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv4{Val: ""},
			Expected: results.Success(true),
		},
		"ipv4/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv4{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv4/invalid/malformed": {
			Message: &cases.StringIPv4{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4")}),
		},
		"ipv4/invalid/erroneous": {
			Message: &cases.StringIPv4{Val: "256.0.0.0"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4")}),
		},
		"ipv4/invalid/v6": {
			Message: &cases.StringIPv4{Val: "3e::99"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4")}),
		},
		"ipv6/valid/expanded": {
			Message:  &cases.StringIPv6{Val: "2001:0db8:85a3:0000:0000:8a2e:0370:7334"},
			Expected: results.Success(true),
		},
		"ipv6/valid/collapsed": {
			Message:  &cases.StringIPv6{Val: "2001:0db8:85a3::8a2e:0370:7334"},
			Expected: results.Success(true),
		},
		"ipv6/invalid/empty": {
			Message: &cases.StringIPv6{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_empty")}),
		},
		"ipv6/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv6{Val: ""},
			Expected: results.Success(true),
		},
		"ipv6/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv6{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv6/invalid/malformed": {
			Message: &cases.StringIPv6{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6")}),
		},
		"ipv6/invalid/erroneous": {
			Message: &cases.StringIPv6{Val: "ff::fff::0b"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6")}),
		},
		"ipv6/invalid/v4": {
			Message: &cases.StringIPv6{Val: "192.168.0.1"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6")}),
		},
		"ip_with_prefixlen/valid/v4": {
			Message:  &cases.StringIPWithPrefixLen{Val: "192.168.0.1/24"},
			Expected: results.Success(true),
		},
		"ip_with_prefixlen/valid/v6": {
			Message:  &cases.StringIPWithPrefixLen{Val: "2001:db8:1::1/64"},
			Expected: results.Success(true),
		},
		"ip_with_prefixlen/invalid": {
			Message: &cases.StringIPWithPrefixLen{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip_with_prefixlen")}),
		},
		"ip_with_prefixlen/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPWithPrefixLen{Val: ""},
			Expected: results.Success(true),
		},
		"ip_with_prefixlen/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPWithPrefixLen{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ip_with_prefixlen/invalid/empty": {
			Message: &cases.StringIPWithPrefixLen{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip_with_prefixlen_empty")}),
		},
		"ipv4_with_prefixlen/valid": {
			Message:  &cases.StringIPv4WithPrefixLen{Val: "192.168.0.1/24"},
			Expected: results.Success(true),
		},
		"ipv4_with_prefixlen/invalid/empty": {
			Message: &cases.StringIPv4WithPrefixLen{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_with_prefixlen_empty")}),
		},
		"ipv4_with_prefixlen/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv4WithPrefixLen{Val: ""},
			Expected: results.Success(true),
		},
		"ipv4_with_prefixlen/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv4WithPrefixLen{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv4_with_prefixlen/invalid/malformed": {
			Message: &cases.StringIPv4WithPrefixLen{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_with_prefixlen")}),
		},
		"ipv4_with_prefixlen/invalid/v6": {
			Message: &cases.StringIPv4WithPrefixLen{Val: "2001:db8:1::1/64"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_with_prefixlen")}),
		},
		"ipv6_with_prefixlen/valid/v6": {
			Message:  &cases.StringIPv6WithPrefixLen{Val: "2001:db8:1::1/64"},
			Expected: results.Success(true),
		},
		"ipv6_with_prefixlen/invalid/invalid": {
			Message: &cases.StringIPv6WithPrefixLen{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_with_prefixlen_empty")}),
		},
		"ipv6_with_prefixlen/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv6WithPrefixLen{Val: ""},
			Expected: results.Success(true),
		},
		"ipv6_with_prefixlen/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv6WithPrefixLen{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv6_with_prefixlen/invalid/malformed": {
			Message: &cases.StringIPv6WithPrefixLen{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_with_prefixlen")}),
		},
		"ipv6_with_prefixlen/invalid/v4": {
			Message: &cases.StringIPv6WithPrefixLen{Val: "192.168.0.1/24"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_with_prefixlen")}),
		},
		"ip_prefix/valid/v4": {
			Message:  &cases.StringIPPrefix{Val: "192.168.0.0/24"},
			Expected: results.Success(true),
		},
		"ip_prefix/valid/v6": {
			Message:  &cases.StringIPPrefix{Val: "2001:db8:1::/48"},
			Expected: results.Success(true),
		},
		"ip_prefix/invalid/empty": {
			Message: &cases.StringIPPrefix{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip_prefix_empty")}),
		},
		"ip_prefix/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPPrefix{Val: ""},
			Expected: results.Success(true),
		},
		"ip_prefix/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPPrefix{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ip_prefix/invalid/malformed": {
			Message: &cases.StringIPPrefix{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ip_prefix")}),
		},
		"ipv4_prefix/valid": {
			Message:  &cases.StringIPv4Prefix{Val: "192.168.0.0/24"},
			Expected: results.Success(true),
		},
		"ipv4_prefix/invalid/empty": {
			Message: &cases.StringIPv4Prefix{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_prefix_empty")}),
		},
		"ipv4_prefix/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv4Prefix{Val: ""},
			Expected: results.Success(true),
		},
		"ipv4_prefix/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv4Prefix{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv4_prefix/invalid/not_network_address": {
			Message: &cases.StringIPv4Prefix{Val: "192.168.0.1/24"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_prefix")}),
		},
		"ipv4_prefix/invalid/malformed": {
			Message: &cases.StringIPv4Prefix{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_prefix")}),
		},
		"ipv4_prefix/invalid/v6": {
			Message: &cases.StringIPv4Prefix{Val: "2001:db8:1::/48"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv4_prefix")}),
		},
		"ipv6_prefix/valid/v6": {
			Message:  &cases.StringIPv6Prefix{Val: "2001:db8:1::/48"},
			Expected: results.Success(true),
		},
		"ipv6_prefix/invalid/empty": {
			Message: &cases.StringIPv6Prefix{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_prefix_empty")}),
		},
		"ipv6_prefix/invalid/not_checked/empty": {
			Message:  &cases.StringNotIPv6Prefix{Val: ""},
			Expected: results.Success(true),
		},
		"ipv6_prefix/invalid/not_checked/malformed": {
			Message:  &cases.StringNotIPv6Prefix{Val: "foobar"},
			Expected: results.Success(true),
		},
		"ipv6_prefix/invalid/not_network_address": {
			Message: &cases.StringIPv6Prefix{Val: "2001:db8:1::1/48"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_prefix")}),
		},
		"ipv6_prefix/invalid/malformed": {
			Message: &cases.StringIPv6Prefix{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_prefix")}),
		},
		"ipv6_prefix/invalid/v4": {
			Message: &cases.StringIPv6Prefix{Val: "192.168.0.0/24"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.ipv6_prefix")}),
		},
		"uri/valid": {
			Message:  &cases.StringURI{Val: "https://example.com/foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"uri/invalid/empty": {
			Message: &cases.StringURI{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uri_empty")}),
		},
		"uri/invalid/not_checked/empty": {
			Message:  &cases.StringNotURI{Val: ""},
			Expected: results.Success(true),
		},
		"uri/invalid/not_checked/malformed": {
			Message:  &cases.StringNotURI{Val: "!@#$%^&*"},
			Expected: results.Success(true),
		},
		"uri/invalid/malformed": {
			Message: &cases.StringURI{Val: "!@#$%^&*"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uri")}),
		},
		"uri/invalid/relative": {
			Message: &cases.StringURI{Val: "/foo/bar?baz=quux"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uri")}),
		},
		"uri_ref/valid/absolute": {
			Message:  &cases.StringURIRef{Val: "https://example.com/foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"uri_ref/valid/relative": {
			Message:  &cases.StringURIRef{Val: "/foo/bar?baz=quux"},
			Expected: results.Success(true),
		},
		"uri_ref/invalid": {
			Message: &cases.StringURIRef{Val: "!@#$%^&*"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uri_ref")}),
		},
		"uri_ref/invalid/not_checked/empty": {
			Message:  &cases.StringNotURIRef{Val: ""},
			Expected: results.Success(true),
		},
		"uri_ref/invalid/not_checked/malformed": {
			Message:  &cases.StringNotURIRef{Val: "!@#$%^&*"},
			Expected: results.Success(true),
		},
		"address/valid/hostname": {
			Message:  &cases.StringAddress{Val: "foo.bar.com"},
			Expected: results.Success(true),
		},
		"address/valid/ipv4": {
			Message:  &cases.StringAddress{Val: "129.168.0.1"},
			Expected: results.Success(true),
		},
		"address/valid/ipv6": {
			Message:  &cases.StringAddress{Val: "3e::99"},
			Expected: results.Success(true),
		},
		"address/invalid/empty": {
			Message: &cases.StringAddress{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.address_empty")}),
		},
		"address/invalid/not_checked/empty": {
			Message:  &cases.StringNotAddress{Val: ""},
			Expected: results.Success(true),
		},
		"address/invalid/not_checked/malformed": {
			Message:  &cases.StringNotAddress{Val: "-foo.bar"},
			Expected: results.Success(true),
		},
		"address/invalid/hostname": {
			Message: &cases.StringAddress{Val: "-foo.bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.address")}),
		},
		"address/invalid/ipv6": {
			Message: &cases.StringAddress{Val: "ff::fff::0b"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.address")}),
		},
		"uuid/valid/nil": {
			Message:  &cases.StringUUID{Val: "00000000-0000-0000-0000-000000000000"},
			Expected: results.Success(true),
		},
		"uuid/valid/v1/lowercase": {
			Message:  &cases.StringUUID{Val: "b45c0c80-8880-11e9-a5b1-000000000000"},
			Expected: results.Success(true),
		},
		"uuid/valid/v1/uppercase": {
			Message:  &cases.StringUUID{Val: "B45C0C80-8880-11E9-A5B1-000000000000"},
			Expected: results.Success(true),
		},
		"uuid/valid/v2/lowercase": {
			Message:  &cases.StringUUID{Val: "b45c0c80-8880-21e9-a5b1-000000000000"},
			Expected: results.Success(true),
		},
		"uuid/valid/v2/uppercase": {
			Message:  &cases.StringUUID{Val: "B45C0C80-8880-21E9-A5B1-000000000000"},
			Expected: results.Success(true),
		},
		"uuid/valid/v3/lowercase": {
			Message:  &cases.StringUUID{Val: "a3bb189e-8bf9-3888-9912-ace4e6543002"},
			Expected: results.Success(true),
		},
		"uuid/valid/v3/uppercase": {
			Message:  &cases.StringUUID{Val: "A3BB189E-8BF9-3888-9912-ACE4E6543002"},
			Expected: results.Success(true),
		},
		"uuid/valid/v4/lowercase": {
			Message:  &cases.StringUUID{Val: "8b208305-00e8-4460-a440-5e0dcd83bb0a"},
			Expected: results.Success(true),
		},
		"uuid/valid/v4/uppercase": {
			Message:  &cases.StringUUID{Val: "8B208305-00E8-4460-A440-5E0DCD83BB0A"},
			Expected: results.Success(true),
		},
		"uuid/valid/v5/lowercase": {
			Message:  &cases.StringUUID{Val: "a6edc906-2f9f-5fb2-a373-efac406f0ef2"},
			Expected: results.Success(true),
		},
		"uuid/valid/v5/uppercase": {
			Message:  &cases.StringUUID{Val: "A6EDC906-2F9F-5FB2-A373-EFAC406F0EF2"},
			Expected: results.Success(true),
		},
		"uuid/invalid/empty": {
			Message: &cases.StringUUID{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uuid_empty")}),
		},
		"uuid/invalid/not_checked/empty": {
			Message:  &cases.StringNotUUID{Val: ""},
			Expected: results.Success(true),
		},
		"uuid/invalid/not_checked/malformed": {
			Message:  &cases.StringNotUUID{Val: "foobar"},
			Expected: results.Success(true),
		},
		"uuid/invalid/malformed": {
			Message: &cases.StringUUID{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uuid")}),
		},
		"uuid/invalid/erroneous": {
			Message: &cases.StringUUID{Val: "ffffffff-ffff-ffff-ffff-fffffffffffff"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uuid")}),
		},
		"uuid/invalid/dashless/uppercase": {
			Message: &cases.StringUUID{Val: "8B20830500E84460A4405E0DCD83BB0A"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uuid")}),
		},
		"uuid/invalid/dashless/lowercase": {
			Message: &cases.StringUUID{Val: "8b20830500e84460a4405e0dcd83bb0a"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.uuid")}),
		},
		"tuuid/valid/nil": {
			Message:  &cases.StringTUUID{Val: "00000000000000000000000000000000"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v1/lowercase": {
			Message:  &cases.StringTUUID{Val: "b45c0c80888011e9a5b1000000000000"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v1/uppercase": {
			Message:  &cases.StringTUUID{Val: "B45C0C80888011E9A5B1000000000000"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v2/lowercase": {
			Message:  &cases.StringTUUID{Val: "b45c0c80888021e9a5b1000000000000"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v2/uppercase": {
			Message:  &cases.StringTUUID{Val: "B45C0C80888021E9A5B1000000000000"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v3/lowercase": {
			Message:  &cases.StringTUUID{Val: "a3bb189e8bf938889912ace4e6543002"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v3/uppercase": {
			Message:  &cases.StringTUUID{Val: "A3BB189E8BF938889912ACE4E6543002"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v4/lowercase": {
			Message:  &cases.StringTUUID{Val: "8b20830500e84460a4405e0dcd83bb0a"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v4/uppercase": {
			Message:  &cases.StringTUUID{Val: "8B20830500E84460A4405E0DCD83BB0A"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v5/lowercase": {
			Message:  &cases.StringTUUID{Val: "a6edc9062f9f5fb2a373efac406f0ef2"},
			Expected: results.Success(true),
		},
		"tuuid/valid/v5/uppercase": {
			Message:  &cases.StringTUUID{Val: "A6EDC9062F9F5FB2A373EFAC406F0EF2"},
			Expected: results.Success(true),
		},
		"tuuid/invalid/empty": {
			Message: &cases.StringTUUID{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.tuuid_empty")}),
		},
		"tuuid/invalid/not_checked/empty": {
			Message:  &cases.StringNotTUUID{Val: ""},
			Expected: results.Success(true),
		},
		"tuuid/invalid/not_checked/malformed": {
			Message:  &cases.StringNotTUUID{Val: "foobar"},
			Expected: results.Success(true),
		},
		"tuuid/invalid/malformed": {
			Message: &cases.StringTUUID{Val: "foobar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.tuuid")}),
		},
		"tuuid/invalid/erroneous": {
			Message: &cases.StringTUUID{Val: "fffffffffffffffffffffffffffffffff"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.tuuid")}),
		},
		"tuuid/invalid/dashful/uppercase": {
			Message: &cases.StringTUUID{Val: "8B208305-00E8-4460-A440-5E0DCD83BB0A"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.tuuid")}),
		},
		"tuuid/invalid/dashful/lowercase": {
			Message: &cases.StringTUUID{Val: "8b208305-00e8-4460-a440-5e0dcd83bb0a"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.tuuid")}),
		},
		"well_known_regex/header_name/strict/valid/header": {
			Message:  &cases.StringHttpHeaderName{Val: "clustername"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/strict/valid/pseudo_header": {
			Message:  &cases.StringHttpHeaderName{Val: ":authority"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/strict/valid/numbers": {
			Message:  &cases.StringHttpHeaderName{Val: "abc-123"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/strict/valid/special_token": {
			Message:  &cases.StringHttpHeaderName{Val: "!+#&.%"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/strict/valid/period": {
			Message:  &cases.StringHttpHeaderName{Val: "FOO.BAR"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/strict/invalid/empty": {
			Message: &cases.StringHttpHeaderName{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name_empty")}),
		},
		"well_known_regex/header_name/strict/invalid/solo_colon": {
			Message: &cases.StringHttpHeaderName{Val: ":"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/trailing_colon": {
			Message: &cases.StringHttpHeaderName{Val: ":foo:"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/space": {
			Message: &cases.StringHttpHeaderName{Val: "foo bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/cr": {
			Message: &cases.StringHttpHeaderName{Val: "foo\rbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/lf": {
			Message: &cases.StringHttpHeaderName{Val: "foo\nbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/tab": {
			Message: &cases.StringHttpHeaderName{Val: "foo\tbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/nul": {
			Message: &cases.StringHttpHeaderName{Val: "foo\000bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/strict/invalid/slash": {
			Message: &cases.StringHttpHeaderName{Val: "foo/bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/loose/valid/slash": {
			Message:  &cases.StringHttpHeaderNameLoose{Val: "FOO/BAR"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/loose/valid/tab": {
			Message:  &cases.StringHttpHeaderNameLoose{Val: "FOO\tBAR"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/loose/valid/space": {
			Message:  &cases.StringHttpHeaderNameLoose{Val: "FOO BAR"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_name/loose/invalid/empty": {
			Message: &cases.StringHttpHeaderNameLoose{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name_empty")}),
		},
		"well_known_regex/header_name/loose/invalid/cr": {
			Message: &cases.StringHttpHeaderNameLoose{Val: "foo\rbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_name/loose/invalid/lf": {
			Message: &cases.StringHttpHeaderNameLoose{Val: "foo\nbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_name")}),
		},
		"well_known_regex/header_value/strict/valid/empty": {
			Message:  &cases.StringHttpHeaderValue{Val: ""},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/valid/periods": {
			Message:  &cases.StringHttpHeaderValue{Val: "foo.bar.baz"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/valid/uppercase": {
			Message:  &cases.StringHttpHeaderValue{Val: "/TEST/SOME/PATH"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/valid/spaces": {
			Message:  &cases.StringHttpHeaderValue{Val: "cluster name"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/valid/tab": {
			Message:  &cases.StringHttpHeaderValue{Val: "cluster\tname"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/valid/special_token": {
			Message:  &cases.StringHttpHeaderValue{Val: "!#%&./+"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/strict/invalid/nul": {
			Message: &cases.StringHttpHeaderValue{Val: "foo\000bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_value/strict/invalid/del": {
			Message: &cases.StringHttpHeaderValue{Val: "foo\007bar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_value/strict/invalid/cr": {
			Message: &cases.StringHttpHeaderValue{Val: "foo\rbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_value/strict/invalid/lf": {
			Message: &cases.StringHttpHeaderValue{Val: "foo\nbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_name/loose/valid/del": {
			Message:  &cases.StringHttpHeaderNameLoose{Val: "FOO\007BAR"},
			Expected: results.Success(true),
		},
		"well_known_regex/header_value/loose/invalid/nul": {
			Message: &cases.StringHttpHeaderValueLoose{Val: "\000"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_value/loose/invalid/cr": {
			Message: &cases.StringHttpHeaderValueLoose{Val: "foo\rbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"well_known_regex/header_value/loose/invalid/lf": {
			Message: &cases.StringHttpHeaderValueLoose{Val: "foo\nbar"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.well_known_regex.header_value")}),
		},
		"host_and_port/valid/hostname": {
			Message:  &cases.StringHostAndPort{Val: "localhost:1234"},
			Expected: results.Success(true),
		},
		"host_and_port/valid/ipv4": {
			Message:  &cases.StringHostAndPort{Val: "127.0.0.1:12345"},
			Expected: results.Success(true),
		},
		"host_and_port/valid/ipv6": {
			Message:  &cases.StringHostAndPort{Val: "[::1]:8080"},
			Expected: results.Success(true),
		},
		"host_and_port/invalid/empty": {
			Message: &cases.StringHostAndPort{Val: ""},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port_empty")}),
		},
		"host_and_port/invalid/missing_port": {
			Message: &cases.StringHostAndPort{Val: "localhost"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/whitespace": {
			Message: &cases.StringHostAndPort{Val: " localhost:8080 "},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/malformed_hostname": {
			Message: &cases.StringHostAndPort{Val: "abc#123:456"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/malformed_ipv4": {
			Message: &cases.StringHostAndPort{Val: "123.456.789.100:8080"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/malformed_ipv6": {
			Message: &cases.StringHostAndPort{Val: "[1::jk::3]:8080"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/unbracketed_ipv6": {
			Message: &cases.StringHostAndPort{Val: "::1:8080"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/invalid/port_out_of_range": {
			Message: &cases.StringHostAndPort{Val: "localhost:99999"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port")}),
		},
		"host_and_port/optional_port/valid/hostname": {
			Message:  &cases.StringHostAndOptionalPort{Val: "localhost"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/valid/ipv4": {
			Message:  &cases.StringHostAndOptionalPort{Val: "192.168.0.1"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/valid/ipv6": {
			Message:  &cases.StringHostAndOptionalPort{Val: "[838e:3861:529f:0e68:2c40:906a:d7b6:4006]"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/valid/hostname_and_port": {
			Message:  &cases.StringHostAndOptionalPort{Val: "localhost:1234"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/valid/ipv4_and_port": {
			Message:  &cases.StringHostAndOptionalPort{Val: "127.0.0.1:12345"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/valid/ipv6_and_port": {
			Message:  &cases.StringHostAndOptionalPort{Val: "[::1]:8080"},
			Expected: results.Success(true),
		},
		"host_and_port/optional_port/invalid/malformed_hostname": {
			Message: &cases.StringHostAndOptionalPort{Val: "abc#123"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port.optional_port")}),
		},
		"host_and_port/optional_port/invalid/malformed_ipv4": {
			Message: &cases.StringHostAndOptionalPort{Val: "123.456.789.100"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port.optional_port")}),
		},
		"host_and_port/optional_port/invalid/malformed_ipv6": {
			Message: &cases.StringHostAndOptionalPort{Val: "[1::jk::3]"},
			Expected: results.Violations(
				&validate.Violation{FieldPath: proto.String("val"), ConstraintId: proto.String("string.host_and_port.optional_port")}),
		},
		"example/valid": {
			Message:  &cases.StringExample{Val: "foobar"},
			Expected: results.Success(true),
		},
	}
}
