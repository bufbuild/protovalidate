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
	"google.golang.org/protobuf/types/known/durationpb"
)

func durationSuite() suites.Suite {
	return suites.Suite{
		"none/valid": {
			Message: &cases.DurationNone{
				Val: &durationpb.Duration{
					Seconds: 123,
				},
			},
			Expected: results.Success(true),
		},
		"required/valid": {
			Message: &cases.DurationRequired{
				Val: &durationpb.Duration{},
			},
			Expected: results.Success(true),
		},
		"required/invalid": {
			Message: &cases.DurationRequired{
				Val: nil,
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("required"),
				Message:      proto.String("value is required"),
			}),
		},
		"const/valid": {
			Message: &cases.DurationConst{
				Val: &durationpb.Duration{
					Seconds: 3,
				},
			},
			Expected: results.Success(true),
		},
		"const/valid/empty": {
			Message: &cases.DurationConst{}, Expected: results.Success(true),
		},
		"const/invalid": {
			Message: &cases.DurationConst{
				Val: &durationpb.Duration{
					Nanos: 3,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.const"),
				Message:      proto.String("value must equal 3s"),
			}),
		},
		"in/valid": {
			Message: &cases.DurationIn{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Success(true),
		},
		"in/valid/empty": {
			Message: &cases.DurationIn{}, Expected: results.Success(true),
		},
		"in/invalid": {
			Message: &cases.DurationIn{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.in"),
				Message:      proto.String(`value must be in list [duration("1s"), duration("0.000001s")]`),
			}),
		},
		"not in/valid": {
			Message: &cases.DurationNotIn{
				Val: &durationpb.Duration{
					Nanos: 1,
				},
			},
			Expected: results.Success(true),
		},
		"not in/valid/empty": {
			Message: &cases.DurationNotIn{}, Expected: results.Success(true),
		},
		"not in/invalid": {
			Message: &cases.DurationNotIn{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.not_in"),
				Message:      proto.String(`value must not be in list [duration("0s")]`),
			}),
		},
		"lt/valid": {
			Message: &cases.DurationLT{
				Val: &durationpb.Duration{
					Nanos: -1,
				},
			},
			Expected: results.Success(true),
		},
		"lt/valid/empty": {
			Message: &cases.DurationLT{}, Expected: results.Success(true),
		},
		"lt/invalid/equal": {
			Message: &cases.DurationLT{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.lt"),
				Message:      proto.String("value must be less than 0s"),
			}),
		},
		"lt/invalid": {
			Message: &cases.DurationLT{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.lt"),
				Message:      proto.String("value must be less than 0s"),
			}),
		},
		"lte/valid": {
			Message: &cases.DurationLTE{
				Val: &durationpb.Duration{},
			},
			Expected: results.Success(true),
		},
		"lte/valid/empty": {
			Message: &cases.DurationLTE{}, Expected: results.Success(true),
		},
		"lte/valid/equal": {
			Message: &cases.DurationLTE{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Success(true),
		},
		"lte/invalid": {
			Message: &cases.DurationLTE{
				Val: &durationpb.Duration{
					Seconds: 1, Nanos: 1,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.lte"),
				Message:      proto.String(""),
			}),
		},
		"gt/valid": {
			Message: &cases.DurationGT{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Success(true),
		},
		"gt/valid/empty": {
			Message: &cases.DurationGT{}, Expected: results.Success(true),
		},
		"gt/invalid/equal": {
			Message: &cases.DurationGT{
				Val: &durationpb.Duration{
					Nanos: 1000,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt"),
				Message:      proto.String(""),
			}),
		},
		"gt/invalid": {
			Message: &cases.DurationGT{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt"),
				Message:      proto.String("value must be greater than 0.000001s"),
			}),
		},
		"gte/valid": {
			Message: &cases.DurationGTE{
				Val: &durationpb.Duration{
					Seconds: 3,
				},
			},
			Expected: results.Success(true),
		},
		"gte/valid/empty": {
			Message: &cases.DurationGTE{}, Expected: results.Success(true),
		},
		"gte/valid/equal": {
			Message: &cases.DurationGTE{
				Val: &durationpb.Duration{
					Nanos: 1000000,
				},
			},
			Expected: results.Success(true),
		},
		"gte/invalid": {
			Message: &cases.DurationGTE{
				Val: &durationpb.Duration{Seconds: -1},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gte"),
				Message:      proto.String("value must be greater than or equal to 0.001s"),
			}),
		},
		"gt_lt/valid": {
			Message: &cases.DurationGTLT{
				Val: &durationpb.Duration{
					Nanos: 1000,
				},
			},
			Expected: results.Success(true),
		},
		"gt_lt/valid/empty": {
			Message: &cases.DurationGTLT{}, Expected: results.Success(true),
		},
		"gt_lt/invalid/above": {
			Message: &cases.DurationGTLT{
				Val: &durationpb.Duration{
					Seconds: 1000,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt"),
				Message:      proto.String("value must be greater than 0s and less than 1s"),
			}),
		},
		"gt_lt/invalid/below": {
			Message: &cases.DurationGTLT{
				Val: &durationpb.Duration{
					Nanos: -1000,
				},
			}, Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt"),
				Message:      proto.String("value must be greater than 0s and less than 1s"),
			}),
		},
		"gt_lt/invalid/max": {
			Message: &cases.DurationGTLT{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt"),
				Message:      proto.String("value must be greater than 0s and less than 1s"),
			}),
		},
		"gt_lt/invalid/min": {
			Message: &cases.DurationGTLT{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt"),
				Message:      proto.String("value must be greater than 0s and less than 1s"),
			}),
		},
		"gt_lt/exclusive/valid/empty": {
			Message: &cases.DurationExLTGT{}, Expected: results.Success(true),
		},
		"gt_lt/exclusive/valid/above": {
			Message: &cases.DurationExLTGT{
				Val: &durationpb.Duration{
					Seconds: 2,
				},
			},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/valid/below": {
			Message: &cases.DurationExLTGT{
				Val: &durationpb.Duration{
					Nanos: -1,
				},
			},
			Expected: results.Success(true),
		},
		"gt_lt/exclusive/invalid": {
			Message: &cases.DurationExLTGT{
				Val: &durationpb.Duration{
					Nanos: 1000,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt_exclusive"),
				Message:      proto.String("value must be greater than 1s or less than 0s"),
			}),
		},
		"gt_lt/exclusive/invalid/max": {
			Message: &cases.DurationExLTGT{
				Val: &durationpb.Duration{
					Seconds: 1,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt_exclusive"),
				Message:      proto.String("value must be greater than 1s or less than 0s"),
			}),
		},
		"gt_lt/exclusive/invalid/min": {
			Message: &cases.DurationExLTGT{
				Val: &durationpb.Duration{},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gt_lt_exclusive"),
				Message:      proto.String("value must be greater than 1s or less than 0s"),
			}),
		},
		"gte_lte/valid": {
			Message: &cases.DurationGTELTE{
				Val: &durationpb.Duration{Seconds: 60, Nanos: 1},
			},
			Expected: results.Success(true),
		},
		"gte_lte/valid/empty": {
			Message:  &cases.DurationGTELTE{},
			Expected: results.Success(true),
		},
		"gte_lte/valid/max": {
			Message: &cases.DurationGTELTE{
				Val: &durationpb.Duration{
					Seconds: 3600,
				},
			},
			Expected: results.Success(true),
		},
		"gte_lte/valid/min": {
			Message: &cases.DurationGTELTE{
				Val: &durationpb.Duration{
					Seconds: 60,
				},
			},
			Expected: results.Success(true),
		},
		"gte_lte/invalid/above": {
			Message: &cases.DurationGTELTE{
				Val: &durationpb.Duration{Seconds: 3600, Nanos: 1},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gte_lte"),
				Message:      proto.String("value must be greater than or equal to 60s and less than or equal to 3600s"),
			}),
		},
		"gte_lte/invalid/below": {
			Message: &cases.DurationGTELTE{
				Val: &durationpb.Duration{
					Seconds: 59,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gte_lte"),
				Message:      proto.String("value must be greater than or equal to 60s and less than or equal to 3600s"),
			}),
		},
		"Ex gte_lte/valid/empty": {
			Message: &cases.DurationExGTELTE{}, Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/above": {
			Message: &cases.DurationExGTELTE{
				Val: &durationpb.Duration{
					Seconds: 3601,
				},
			},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/below": {
			Message:  &cases.DurationExGTELTE{Val: &durationpb.Duration{}},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/max": {
			Message: &cases.DurationExGTELTE{
				Val: &durationpb.Duration{
					Seconds: 3600,
				},
			},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/valid/min": {
			Message: &cases.DurationExGTELTE{
				Val: &durationpb.Duration{
					Seconds: 60,
				},
			},
			Expected: results.Success(true),
		},
		"gte_lte/exclusive/invalid": {
			Message: &cases.DurationExGTELTE{
				Val: &durationpb.Duration{
					Seconds: 61,
				},
			},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("val"),
				ConstraintId: proto.String("duration.gte_lte_exclusive"),
				Message:      proto.String("value must be greater than or equal to 3600s or less than or equal to 60s"),
			}),
		},
		"fields_with_other_fields/invalid_other_field": {
			Message: &cases.DurationFieldWithOtherFields{DurationVal: nil, IntVal: 12},
			Expected: results.Violations(&validate.Violation{
				FieldPath:    proto.String("int_val"),
				ConstraintId: proto.String("int32.gt"),
				Message:      proto.String("value must be greater than 16"),
			}),
		},
		"example/valid": {
			Message: &cases.DurationExample{
				Val: &durationpb.Duration{
					Seconds: 3,
				},
			},
			Expected: results.Success(true),
		},
	}
}
