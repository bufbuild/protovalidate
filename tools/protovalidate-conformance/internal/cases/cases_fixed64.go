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

func fixed64Suite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.Fixed64None{Val: 123},
			Expected: results.Success(true),
		},
		"const/valid": {
			Message:  &cases.Fixed64Const{Val: 1},
			Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.Fixed64Const{Val: 2},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.const"),
					ConstraintId: proto.String("fixed64.const"),
				},
			),
		},
		"in/valid": {
			Message:  &cases.Fixed64In{Val: 3},
			Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.Fixed64In{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.in"),
					ConstraintId: proto.String("fixed64.in"),
				},
			),
		},
		"not_in/valid": {
			Message:  &cases.Fixed64NotIn{Val: 1},
			Expected: results.Success(true),
		},
		"not_in/invalid": {
			Message: &cases.Fixed64NotIn{Val: 0},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.not_in"),
					ConstraintId: proto.String("fixed64.not_in"),
				},
			),
		},
		"lt/valid/less": {
			Message:  &cases.Fixed64LT{Val: 4},
			Expected: results.Success(true),
		},
		"lt/invalid/equal": {
			Message: &cases.Fixed64LT{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.lt"),
					ConstraintId: proto.String("fixed64.lt"),
				},
			),
		},
		"lt/invalid/greater": {
			Message: &cases.Fixed64LT{Val: 6},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.lt"),
					ConstraintId: proto.String("fixed64.lt"),
				},
			),
		},
		"lte/valid/less": {
			Message:  &cases.Fixed64LTE{Val: 63},
			Expected: results.Success(true),
		},
		"lte/valid/equal": {
			Message:  &cases.Fixed64LTE{Val: 64},
			Expected: results.Success(true),
		},
		"lte/invalid/greater": {
			Message: &cases.Fixed64LTE{Val: 65},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.lte"),
					ConstraintId: proto.String("fixed64.lte"),
				},
			),
		},
		"gt/valid/greater": {
			Message:  &cases.Fixed64GT{Val: 17},
			Expected: results.Success(true),
		},
		"gt/invalid/equal": {
			Message: &cases.Fixed64GT{Val: 16},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt"),
				},
			),
		},
		"gt/invalid/less": {
			Message: &cases.Fixed64GT{Val: 15},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt"),
				},
			),
		},
		"gte/valid/greater": {
			Message:  &cases.Fixed64GTE{Val: 9},
			Expected: results.Success(true),
		},
		"gte/valid/equal": {
			Message:  &cases.Fixed64GTE{Val: 8},
			Expected: results.Success(true),
		},
		"gte/invalid/less": {
			Message: &cases.Fixed64GTE{Val: 7},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gte"),
					ConstraintId: proto.String("fixed64.gte"),
				},
			),
		},
		"gt_lt/inclusive/valid/within": {
			Message:  &cases.Fixed64GTLT{Val: 6},
			Expected: results.Success(true),
		},
		"gt_lt/inclusive/invalid/above": {
			Message: &cases.Fixed64GTLT{Val: 11},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt"),
				},
			),
		},
		"gt_lt/inclusive/invalid/below": {
			Message: &cases.Fixed64GTLT{Val: 4},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt"),
				},
			),
		},
		"gt_lt/inclusive/invalid/max": {
			Message: &cases.Fixed64GTLT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt"),
				},
			),
		},
		"gt_lt/inclusive/invalid/min": {
			Message: &cases.Fixed64GTLT{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt"),
				},
			),
		},
		"gt_lt/exclusive/valid/above": {
			Message:  &cases.Fixed64ExLTGT{Val: 11},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/valid/below": {
			Message:  &cases.Fixed64ExLTGT{Val: 4},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/invalid/within": {
			Message: &cases.Fixed64ExLTGT{Val: 6},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt_exclusive"),
				},
			),
		},
		"gt_lt/exclusive/invalid/max": {
			Message: &cases.Fixed64ExLTGT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt_exclusive"),
				},
			),
		},
		"gt_lt/exclusive/invalid/min": {
			Message: &cases.Fixed64ExLTGT{Val: 5},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gt"),
					ConstraintId: proto.String("fixed64.gt_lt_exclusive"),
				},
			),
		},
		"gte_lte/inclusive/valid/within": {
			Message:  &cases.Fixed64GTELTE{Val: 200},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/valid/max": {
			Message:  &cases.Fixed64GTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/valid/min": {
			Message:  &cases.Fixed64GTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/invalid/above": {
			Message: &cases.Fixed64GTELTE{Val: 300},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gte"),
					ConstraintId: proto.String("fixed64.gte_lte"),
				},
			),
		},
		"gte_lte/inclusive/invalid/below": {
			Message: &cases.Fixed64GTELTE{Val: 100},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gte"),
					ConstraintId: proto.String("fixed64.gte_lte"),
				},
			),
		},
		"gte_lte/exclusive/valid/above": {
			Message:  &cases.Fixed64ExGTELTE{Val: 300},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/below": {
			Message:  &cases.Fixed64ExGTELTE{Val: 100},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/max": {
			Message:  &cases.Fixed64ExGTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/min": {
			Message:  &cases.Fixed64ExGTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/invalid/within": {
			Message: &cases.Fixed64ExGTELTE{Val: 200},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gte"),
					ConstraintId: proto.String("fixed64.gte_lte_exclusive"),
				},
			),
		},
		"ignore_empty/valid/empty": {
			Message:  &cases.Fixed64Ignore{Val: 0},
			Expected: results.Success(true),
		},
		"ignore_empty/valid/within": {
			Message:  &cases.Fixed64Ignore{Val: 200},
			Expected: results.Success(true),
		},
		"ignore_empty/invalid/above": {
			Message: &cases.Fixed64Ignore{Val: 300},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    proto.String("val"),
					RulePath:     proto.String("fixed64.gte"),
					ConstraintId: proto.String("fixed64.gte_lte"),
				},
			),
		},
		"compilation/wrong_type": {
			Message:  &cases.Fixed64IncorrectType{Val: 123},
			Expected: results.CompilationError("double constraints on float field"),
		},
		"example/valid": {
			Message:  &cases.Fixed64Example{Val: 1},
			Expected: results.Success(true),
		},
	}
}
