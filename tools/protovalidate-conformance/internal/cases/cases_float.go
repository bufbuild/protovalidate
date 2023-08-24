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
	"math"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/results"
	"github.com/bufbuild/protovalidate/tools/protovalidate-conformance/internal/suites"
)

func floatSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message:  &cases.FloatNone{Val: -1.23456},
			Expected: results.Success(true),
		},
		"const/valid": {
			Message:  &cases.FloatConst{Val: 1.23},
			Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.FloatConst{Val: 4.56},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.const"}),
		},
		"const/nan": {
			Message: &cases.FloatConst{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.const"}),
		},
		"in/valid": {
			Message:  &cases.FloatIn{Val: 7.89},
			Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.FloatIn{Val: 10.11},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.in"}),
		},
		"in/nan": {
			Message: &cases.FloatIn{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.in"}),
		},
		"not_in/valid": {
			Message:  &cases.FloatNotIn{Val: 1},
			Expected: results.Success(true),
		},
		"not_in/invalid": {
			Message: &cases.FloatNotIn{Val: 0},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.not_in"}),
		},
		"not_in/nan": {
			Message:  &cases.FloatNotIn{Val: float32(math.NaN())},
			Expected: results.Success(true),
		},
		"lt/valid/less": {
			Message:  &cases.FloatLT{Val: -1},
			Expected: results.Success(true),
		},
		"lt/invalid/equal": {
			Message: &cases.FloatLT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.lt"}),
		},
		"lt/invalid/greater": {
			Message: &cases.FloatLT{Val: 1},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.lt"}),
		},
		"lt/invalid/nan": {
			Message: &cases.FloatLT{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.lt"}),
		},
		"lte/valid/less": {
			Message:  &cases.FloatLTE{Val: 63},
			Expected: results.Success(true),
		},
		"lte/valid/equal": {
			Message:  &cases.FloatLTE{Val: 64},
			Expected: results.Success(true),
		},
		"lte/invalid/greater": {
			Message: &cases.FloatLTE{Val: 65},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.lte"}),
		},
		"lte/invalid/nan": {
			Message: &cases.FloatLTE{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.lte"}),
		},
		"gt/valid/greater": {
			Message:  &cases.FloatGT{Val: 17},
			Expected: results.Success(true),
		},
		"gt/invalid/equal": {
			Message: &cases.FloatGT{Val: 16},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt"}),
		},
		"gt/invalid/less": {
			Message: &cases.FloatGT{Val: 15},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt"}),
		},
		"gt/invalid/nan": {
			Message: &cases.FloatGT{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt"}),
		},
		"gte/valid/greater": {
			Message:  &cases.FloatGTE{Val: 9},
			Expected: results.Success(true),
		},
		"gte/valid/equal": {
			Message:  &cases.FloatGTE{Val: 8},
			Expected: results.Success(true),
		},
		"gte/invalid/less": {
			Message: &cases.FloatGTE{Val: 7},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte"}),
		},
		"gte/invalid/nan": {
			Message: &cases.FloatGTE{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte"}),
		},
		"gt_lt/inclusive/valid/within": {
			Message:  &cases.FloatGTLT{Val: 5},
			Expected: results.Success(true),
		},
		"gt_lt/inclusive/invalid/above": {
			Message: &cases.FloatGTLT{Val: 11},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt"}),
		},
		"gt_lt/inclusive/invalid/below": {
			Message: &cases.FloatGTLT{Val: -1},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt"}),
		},
		"gt_lt/inclusive/invalid/max": {
			Message: &cases.FloatGTLT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt"}),
		},
		"gt_lt/inclusive/invalid/min": {
			Message: &cases.FloatGTLT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt"}),
		},
		"gt_lt/inclusive/invalid/nan": {
			Message: &cases.FloatGTLT{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt"}),
		},
		"gt_lt/exclusive/valid/above": {
			Message:  &cases.FloatExLTGT{Val: 11},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/valid/below": {
			Message:  &cases.FloatExLTGT{Val: -1},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/invalid/within": {
			Message: &cases.FloatExLTGT{Val: 5},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt_exclusive"}),
		},
		"gt_lt/exclusive/invalid/max": {
			Message: &cases.FloatExLTGT{Val: 10},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt_exclusive"}),
		},
		"gt_lt/exclusive/invalid/min": {
			Message: &cases.FloatExLTGT{Val: 0},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt_exclusive"}),
		},
		"gt_lt/exclusive/invalid/nan": {
			Message: &cases.FloatExLTGT{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gt_lt_exclusive"}),
		},
		"gte_lte/inclusive/valid/within": {
			Message:  &cases.FloatGTELTE{Val: 200},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/valid/max": {
			Message:  &cases.FloatGTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/valid/min": {
			Message:  &cases.FloatGTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"gte_lte/inclusive/invalid/above": {
			Message: &cases.FloatGTELTE{Val: 300},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte"}),
		},
		"gte_lte/inclusive/invalid/below": {
			Message: &cases.FloatGTELTE{Val: 100},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte"}),
		},
		"gte_lte/inclusive/invalid/nan": {
			Message: &cases.FloatGTELTE{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte"}),
		},
		"gte_lte/exclusive/valid/above": {
			Message:  &cases.FloatExGTELTE{Val: 300},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/below": {
			Message:  &cases.FloatExGTELTE{Val: 100},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/max": {
			Message:  &cases.FloatExGTELTE{Val: 256},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/min": {
			Message:  &cases.FloatExGTELTE{Val: 128},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/invalid/within": {
			Message: &cases.FloatExGTELTE{Val: 200},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte_exclusive"}),
		},
		"gte_lte/exclusive/invalid/nan": {
			Message: &cases.FloatExGTELTE{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte_exclusive"}),
		},
		"finite/valid": {
			Message:  &cases.FloatFinite{Val: 1},
			Expected: results.Success(true),
		},
		"finite/nan": {
			Message: &cases.FloatFinite{Val: float32(math.NaN())},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.finite",
					Message:      "value must be finite",
				}),
		},
		"finite/inf": {
			Message: &cases.FloatFinite{Val: float32(math.Inf(1))},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.finite",
					Message:      "value must be finite"}),
		},
		"finite/neginf": {
			Message: &cases.FloatFinite{Val: float32(math.Inf(-1))},
			Expected: results.Violations(
				&validate.Violation{
					FieldPath:    "val",
					ConstraintId: "float.finite",
					Message:      "value must be finite"}),
		},
		"ignore_empty/valid/empty": {
			Message:  &cases.FloatIgnore{Val: 0},
			Expected: results.Success(true),
		},
		"ignore_empty/valid/within": {
			Message:  &cases.FloatIgnore{Val: 200},
			Expected: results.Success(true),
		},
		"ignore_empty/invalid/above": {
			Message: &cases.FloatIgnore{Val: 300},
			Expected: results.Violations(
				&validate.Violation{FieldPath: "val", ConstraintId: "float.gte_lte"}),
		},
		"compilation/wrong_type": {
			Message:  &cases.FloatIncorrectType{Val: 123},
			Expected: results.CompilationError("double constraints on float field"),
		},
	}
}
