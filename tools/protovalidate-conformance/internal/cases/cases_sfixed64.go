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

func sfixed64Suite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.SFixed64None{Val: 123},
			Expected: results.Success(true),
		},
		"const/valid": {
			Message:  &cases.SFixed64Const{Val: 1},
			Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.SFixed64Const{Val: 2},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.const"),
					RuleId:  proto.String("sfixed64.const"),
					Message: proto.String("value must equal 1"),
				},
			),
		},
		"in/valid": {
			Message:  &cases.SFixed64In{Val: 3},
			Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.SFixed64In{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.in"),
					RuleId:  proto.String("sfixed64.in"),
					Message: proto.String("value must be in list [2, 3]"),
				},
			),
		},
		"not in/valid": {
			Message:  &cases.SFixed64NotIn{Val: 1},
			Expected: results.Success(true),
		},
		"not in/invalid": {
			Message: &cases.SFixed64NotIn{Val: 0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.not_in"),
					RuleId:  proto.String("sfixed64.not_in"),
					Message: proto.String("value must not be in list [0]"),
				},
			),
		},
		"lt/valid": {
			Message:  &cases.SFixed64LT{Val: -1},
			Expected: results.Success(true),
		},
		"lt/equal/invalid": {
			Message: &cases.SFixed64LT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.lt"),
					RuleId:  proto.String("sfixed64.lt"),
					Message: proto.String("value must be less than 0"),
				},
			),
		},
		"lt/invalid": {
			Message: &cases.SFixed64LT{Val: 1},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.lt"),
					RuleId:  proto.String("sfixed64.lt"),
					Message: proto.String("value must be less than 0"),
				},
			),
		},
		"lte/valid": {
			Message:  &cases.SFixed64LTE{Val: 63},
			Expected: results.Success(true),
		},
		"lte/equal/valid": {
			Message:  &cases.SFixed64LTE{Val: 64},
			Expected: results.Success(true),
		},
		"lte/invalid": {
			Message: &cases.SFixed64LTE{Val: 65},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.lte"),
					RuleId:  proto.String("sfixed64.lte"),
					Message: proto.String("value must be less than or equal to 64"),
				},
			),
		},
		"gt/valid": {
			Message:  &cases.SFixed64GT{Val: 17},
			Expected: results.Success(true),
		},
		"gt/equal/invalid": {
			Message: &cases.SFixed64GT{Val: 16},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt"),
					Message: proto.String("value must be greater than 16"),
				},
			),
		},
		"gt/invalid": {
			Message: &cases.SFixed64GT{Val: 15},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt"),
					Message: proto.String("value must be greater than 16"),
				},
			),
		},
		"gte/valid": {
			Message:  &cases.SFixed64GTE{Val: 9},
			Expected: results.Success(true),
		},
		"gte/equal/valid": {
			Message:  &cases.SFixed64GTE{Val: 8},
			Expected: results.Success(true),
		},
		"gte/invalid": {
			Message: &cases.SFixed64GTE{Val: 7},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gte"),
					RuleId:  proto.String("sfixed64.gte"),
					Message: proto.String("value must be greater than or equal to 8"),
				},
			),
		},
		"gt_lt/valid": {
			Message:  &cases.SFixed64GTLT{Val: 5},
			Expected: results.Success(true),
		},
		"gt_lt/above/invalid": {
			Message: &cases.SFixed64GTLT{Val: 11},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt"),
					Message: proto.String("value must be greater than 0 and less than 10"),
				},
			),
		},
		"gt_lt/below/invalid": {
			Message: &cases.SFixed64GTLT{Val: -1},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt"),
					Message: proto.String("value must be greater than 0 and less than 10"),
				},
			),
		},
		"gt_lt/max/invalid": {
			Message: &cases.SFixed64GTLT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt"),
					Message: proto.String("value must be greater than 0 and less than 10"),
				},
			),
		},
		"gt_lt/min/invalid": {
			Message: &cases.SFixed64GTLT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt"),
					Message: proto.String("value must be greater than 0 and less than 10"),
				},
			),
		},
		"exclusive/gt_lt/above/valid": {
			Message:  &cases.SFixed64ExLTGT{Val: 11},
			Expected: results.Success(true),
		},
		"exclusive/gt_lt/below/valid": {
			Message:  &cases.SFixed64ExLTGT{Val: -1},
			Expected: results.Success(true),
		},
		"exclusive/gt_lt/invalid": {
			Message: &cases.SFixed64ExLTGT{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt_exclusive"),
					Message: proto.String("value must be greater than 10 or less than 0"),
				},
			),
		},
		"exclusive/gt_lt/max/invalid": {
			Message: &cases.SFixed64ExLTGT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt_exclusive"),
					Message: proto.String("value must be greater than 10 or less than 0"),
				},
			),
		},
		"exclusive/gt_lt/min/invalid": {
			Message: &cases.SFixed64ExLTGT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gt"),
					RuleId:  proto.String("sfixed64.gt_lt_exclusive"),
					Message: proto.String("value must be greater than 10 or less than 0"),
				},
			),
		},
		"gte_lte/valid": {
			Message:  &cases.SFixed64GTELTE{Val: 200},
			Expected: results.Success(true),
		},
		"gte_lte/max/valid": {
			Message:  &cases.SFixed64GTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"gte_lte/min/valid": {
			Message:  &cases.SFixed64GTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"gte_lte/above/invalid": {
			Message: &cases.SFixed64GTELTE{Val: 300},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gte"),
					RuleId:  proto.String("sfixed64.gte_lte"),
					Message: proto.String("value must be greater than or equal to 128 and less than or equal to 256"),
				},
			),
		},
		"gte_lte/below/invalid": {
			Message: &cases.SFixed64GTELTE{Val: 100},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gte"),
					RuleId:  proto.String("sfixed64.gte_lte"),
					Message: proto.String("value must be greater than or equal to 128 and less than or equal to 256"),
				},
			),
		},
		"exclusive/gte_lte/above/valid": {
			Message:  &cases.SFixed64ExGTELTE{Val: 300},
			Expected: results.Success(true),
		},
		"exclusive/gte_lte/below/valid": {
			Message:  &cases.SFixed64ExGTELTE{Val: 100},
			Expected: results.Success(true),
		},
		"exclusive/gte_lte/max/valid": {
			Message:  &cases.SFixed64ExGTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"exclusive/gte_lte/min/valid": {
			Message:  &cases.SFixed64ExGTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"exclusive/gte_lte/invalid": {
			Message: &cases.SFixed64ExGTELTE{Val: 200},
			Expected: results.Violations(
				&validate.Violation{
					Field:   results.FieldPath("val"),
					Rule:    results.FieldPath("sfixed64.gte"),
					RuleId:  proto.String("sfixed64.gte_lte_exclusive"),
					Message: proto.String("value must be greater than or equal to 256 or less than or equal to 128"),
				},
			),
		},
		"ignore_empty/gte_lte/valid": {
			Message:  &cases.SFixed64Ignore{Val: 0},
			Expected: results.Success(true),
		},
		"example/valid": {
			Message:  &cases.SFixed64Example{Val: 1},
			Expected: results.Success(true),
		},
	}
}
