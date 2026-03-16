// Copyright 2023-2026 Buf Technologies, Inc.
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

package main

import (
	"fmt"

	"github.com/google/cel-go/cel"
	celast "github.com/google/cel-go/common/ast"
	"github.com/google/cel-go/common/operators"
	"github.com/google/cel-go/common/overloads"
	"github.com/google/cel-go/ext"
	"google.golang.org/protobuf/reflect/protoregistry"
)

// celEnv builds a CEL environment for protovalidate's runtime environment.
// See https://protovalidate.com/reference/cel_extensions/
func celEnv(files *protoregistry.Files, thisType, rulesType, ruleType *cel.Type) (*cel.Env, error) {
	env, err := cel.NewEnv(
		// settings
		cel.TypeDescs(files),
		cel.DefaultUTCTimeZone(true),
		cel.CrossTypeNumericComparisons(true),
		cel.EagerlyValidateDeclarations(true),
		// extensions
		ext.Strings(),
		// variables
		cel.Variable("now", cel.TimestampType),
		cel.Variable("this", thisType),
		cel.Variable("rules", rulesType),
		cel.Variable("rule", ruleType),
		// functions
		cel.Function("unique",
			cel.MemberOverload("unique_list_bool_bool", []*cel.Type{cel.ListType(cel.BoolType)}, cel.BoolType),
			cel.MemberOverload("unique_list_int_bool", []*cel.Type{cel.ListType(cel.IntType)}, cel.BoolType),
			cel.MemberOverload("unique_list_uint_bool", []*cel.Type{cel.ListType(cel.UintType)}, cel.BoolType),
			cel.MemberOverload("unique_list_double_bool", []*cel.Type{cel.ListType(cel.DoubleType)}, cel.BoolType),
			cel.MemberOverload("unique_list_string_bool", []*cel.Type{cel.ListType(cel.StringType)}, cel.BoolType),
			cel.MemberOverload("unique_list_bytes_bool", []*cel.Type{cel.ListType(cel.BytesType)}, cel.BoolType),
		),
		cel.Function("getField",
			cel.Overload("get_field_any_string", []*cel.Type{cel.DynType, cel.StringType}, cel.DynType),
		),
		cel.Function("isNan",
			cel.MemberOverload("double_is_nan_bool", []*cel.Type{cel.DoubleType}, cel.BoolType),
		),
		cel.Function("isInf",
			cel.MemberOverload("double_is_inf_bool", []*cel.Type{cel.DoubleType}, cel.BoolType),
			cel.MemberOverload("double_int_is_inf_bool", []*cel.Type{cel.DoubleType, cel.IntType}, cel.BoolType),
		),
		cel.Function("isHostname",
			cel.MemberOverload("string_is_hostname_bool", []*cel.Type{cel.StringType}, cel.BoolType),
		),
		cel.Function("isEmail",
			cel.MemberOverload("string_is_email_bool", []*cel.Type{cel.StringType}, cel.BoolType),
		),
		cel.Function("isIp",
			cel.MemberOverload("string_is_ip_bool", []*cel.Type{cel.StringType}, cel.BoolType),
			cel.MemberOverload("string_int_is_ip_bool", []*cel.Type{cel.StringType, cel.IntType}, cel.BoolType),
		),
		cel.Function("isIpPrefix",
			cel.MemberOverload("string_is_ip_prefix_bool", []*cel.Type{cel.StringType}, cel.BoolType),
			cel.MemberOverload("string_int_is_ip_prefix_bool", []*cel.Type{cel.StringType, cel.IntType}, cel.BoolType),
			cel.MemberOverload("string_bool_is_ip_prefix_bool", []*cel.Type{cel.StringType, cel.BoolType}, cel.BoolType),
			cel.MemberOverload("string_int_bool_is_ip_prefix_bool", []*cel.Type{cel.StringType, cel.IntType, cel.BoolType}, cel.BoolType),
		),
		cel.Function("isUri",
			cel.MemberOverload("string_is_uri_bool", []*cel.Type{cel.StringType}, cel.BoolType),
		),
		cel.Function("isUriRef",
			cel.MemberOverload("string_is_uri_ref_bool", []*cel.Type{cel.StringType}, cel.BoolType),
		),
		cel.Function("isHostAndPort",
			cel.MemberOverload("string_bool_is_host_and_port_bool", []*cel.Type{cel.StringType, cel.BoolType}, cel.BoolType),
		),
		cel.Function(overloads.Contains,
			cel.MemberOverload("contains_bytes", []*cel.Type{cel.BytesType, cel.BytesType}, cel.BoolType),
		),
		cel.Function(overloads.EndsWith,
			cel.MemberOverload("ends_with_bytes", []*cel.Type{cel.BytesType, cel.BytesType}, cel.BoolType),
		),
		cel.Function(overloads.StartsWith,
			cel.MemberOverload("starts_with_bytes", []*cel.Type{cel.BytesType, cel.BytesType}, cel.BoolType),
		),
	)
	if err != nil {
		return nil, fmt.Errorf("failed to build CEL env: %w", err)
	}
	return env, nil
}

// findRE2Literals extracts RE2 pattern literals from matches() calls.
//
//	this.matches('[a-z]+')           ["[a-z]+"]
//	this.matches(cond ? 'a' : 'b')   ["a", "b"]
//	this.matches(rule)               []
func findRE2Literals(compiled *cel.Ast) []string {
	nav := celast.NavigateAST(compiled.NativeRep())
	calls := celast.MatchDescendants(nav, celast.FunctionMatcher("matches"))
	var patterns []string
	// collect appends string literals, descending into ternaries.
	var collect func(celast.NavigableExpr)
	collect = func(expr celast.NavigableExpr) {
		switch expr.Kind() { //nolint:exhaustive
		case celast.LiteralKind:
			if s, ok := expr.AsLiteral().Value().(string); ok {
				patterns = append(patterns, s)
			}
		case celast.CallKind:
			if expr.AsCall().FunctionName() == operators.Conditional {
				children := expr.Children()
				collect(children[1])
				collect(children[2])
			}
		}
	}
	for _, call := range calls {
		children := call.Children()
		collect(children[len(children)-1])
	}
	return patterns
}
