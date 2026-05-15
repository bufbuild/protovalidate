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

package celenv

import (
	"bytes"
	"fmt"
	"math"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/celenv/rules"
	"github.com/google/cel-go/cel"
	celast "github.com/google/cel-go/common/ast"
	"github.com/google/cel-go/common/operators"
	"github.com/google/cel-go/common/overloads"
	"github.com/google/cel-go/common/types"
	"github.com/google/cel-go/common/types/ref"
	"github.com/google/cel-go/common/types/traits"
	"github.com/google/cel-go/ext"
	"google.golang.org/protobuf/reflect/protoregistry"
)

// New builds a CEL environment for protovalidate's runtime environment.
// See https://protovalidate.com/reference/cel_extensions/
func New(files *protoregistry.Files, thisType, rulesType, ruleType *cel.Type) (*cel.Env, error) {
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
			uniqueMemberOverload(cel.BoolType, uniqueScalar),
			uniqueMemberOverload(cel.IntType, uniqueScalar),
			uniqueMemberOverload(cel.UintType, uniqueScalar),
			uniqueMemberOverload(cel.DoubleType, uniqueScalar),
			uniqueMemberOverload(cel.StringType, uniqueScalar),
			uniqueMemberOverload(cel.BytesType, uniqueBytes),
		),
		cel.Function("getField",
			cel.Overload("get_field_any_string", []*cel.Type{cel.DynType, cel.StringType}, cel.DynType,
				cel.FunctionBinding(func(values ...ref.Val) ref.Val {
					message, ok := values[0].(traits.Indexer)
					if !ok {
						return types.UnsupportedRefValConversionErr(values[0])
					}
					fieldName, ok := values[1].Value().(string)
					if !ok {
						return types.UnsupportedRefValConversionErr(values[1])
					}
					return message.Get(types.String(fieldName))
				}),
			),
		),
		cel.Function("isNan",
			cel.MemberOverload("double_is_nan_bool", []*cel.Type{cel.DoubleType}, cel.BoolType,
				cel.UnaryBinding(func(value ref.Val) ref.Val {
					num, ok := value.Value().(float64)
					if !ok {
						return types.UnsupportedRefValConversionErr(value)
					}
					return types.Bool(math.IsNaN(num))
				}),
			),
		),
		cel.Function("isInf",
			cel.MemberOverload("double_is_inf_bool", []*cel.Type{cel.DoubleType}, cel.BoolType,
				cel.UnaryBinding(func(value ref.Val) ref.Val {
					num, ok := value.Value().(float64)
					if !ok {
						return types.UnsupportedRefValConversionErr(value)
					}
					return types.Bool(math.IsInf(num, 0))
				}),
			),
			cel.MemberOverload("double_int_is_inf_bool", []*cel.Type{cel.DoubleType, cel.IntType}, cel.BoolType,
				cel.BinaryBinding(func(lhs ref.Val, rhs ref.Val) ref.Val {
					num, ok := lhs.Value().(float64)
					if !ok {
						return types.UnsupportedRefValConversionErr(lhs)
					}
					sign, ok := rhs.Value().(int64)
					if !ok {
						return types.UnsupportedRefValConversionErr(rhs)
					}
					return types.Bool(math.IsInf(num, int(sign)))
				}),
			),
		),
		cel.Function("isHostname",
			cel.MemberOverload("string_is_hostname_bool", []*cel.Type{cel.StringType}, cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					host, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsHostname(host))
				}),
			),
		),
		cel.Function("isEmail",
			cel.MemberOverload("string_is_email_bool", []*cel.Type{cel.StringType}, cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					addr, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsEmail(addr))
				}),
			),
		),
		cel.Function("isIp",
			cel.MemberOverload("string_is_ip_bool", []*cel.Type{cel.StringType}, cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					addr, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIP(addr, 0))
				}),
			),
			cel.MemberOverload("string_int_is_ip_bool", []*cel.Type{cel.StringType, cel.IntType}, cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					addr, aok := args[0].Value().(string)
					vers, vok := args[1].Value().(int64)
					if !aok || !vok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIP(addr, vers))
				}),
			),
		),
		cel.Function("isIpPrefix",
			cel.MemberOverload(
				"string_is_ip_prefix_bool",
				[]*cel.Type{cel.StringType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					prefix, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIPPrefix(prefix, 0, false))
				})),
			cel.MemberOverload(
				"string_int_is_ip_prefix_bool",
				[]*cel.Type{cel.StringType, cel.IntType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					prefix, pok := args[0].Value().(string)
					vers, vok := args[1].Value().(int64)
					if !pok || !vok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIPPrefix(prefix, vers, false))
				})),
			cel.MemberOverload(
				"string_bool_is_ip_prefix_bool",
				[]*cel.Type{cel.StringType, cel.BoolType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					prefix, pok := args[0].Value().(string)
					strict, sok := args[1].Value().(bool)
					if !pok || !sok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIPPrefix(prefix, 0, strict))
				})),
			cel.MemberOverload(
				"string_int_bool_is_ip_prefix_bool",
				[]*cel.Type{cel.StringType, cel.IntType, cel.BoolType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					prefix, pok := args[0].Value().(string)
					vers, vok := args[1].Value().(int64)
					strict, sok := args[2].Value().(bool)
					if !pok || !vok || !sok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsIPPrefix(prefix, vers, strict))
				})),
		),
		cel.Function("isUri",
			cel.MemberOverload(
				"string_is_uri_bool",
				[]*cel.Type{cel.StringType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					s, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsURI(s))
				}),
			),
		),
		cel.Function("isUriRef",
			cel.MemberOverload(
				"string_is_uri_ref_bool",
				[]*cel.Type{cel.StringType},
				cel.BoolType,
				cel.FunctionBinding(func(args ...ref.Val) ref.Val {
					s, ok := args[0].Value().(string)
					if !ok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsURIRef(s))
				}),
			),
		),
		cel.Function("isHostAndPort",
			cel.MemberOverload("string_bool_is_host_and_port_bool",
				[]*cel.Type{cel.StringType, cel.BoolType}, cel.BoolType,
				cel.BinaryBinding(func(lhs ref.Val, rhs ref.Val) ref.Val {
					val, vok := lhs.Value().(string)
					portReq, pok := rhs.Value().(bool)
					if !vok || !pok {
						return types.Bool(false)
					}
					return types.Bool(rules.IsHostAndPort(val, portReq))
				}),
			),
		),
		cel.Function(overloads.Contains,
			buildStringMemberOverload(overloads.ContainsString, strings.Contains),
			buildBytesMemberOverload("contains_bytes", bytes.Contains),
		),
		cel.Function(overloads.EndsWith,
			buildStringMemberOverload(overloads.EndsWithString, strings.HasSuffix),
			buildBytesMemberOverload("ends_with_bytes", bytes.HasSuffix),
		),
		cel.Function(overloads.StartsWith,
			buildStringMemberOverload(overloads.StartsWithString, strings.HasPrefix),
			buildBytesMemberOverload("starts_with_bytes", bytes.HasPrefix),
		),
	)
	if err != nil {
		return nil, fmt.Errorf("failed to build CEL env: %w", err)
	}
	return env, nil
}

func buildStringMemberOverload(overloadName string, strFunc func(string, string) bool) cel.FunctionOpt {
	return cel.MemberOverload(
		overloadName, []*cel.Type{cel.StringType, cel.StringType}, cel.BoolType,
		cel.BinaryBinding(func(lhs ref.Val, rhs ref.Val) ref.Val {
			val, ok := rhs.Value().(string)
			if !ok {
				return types.UnsupportedRefValConversionErr(rhs)
			}
			value, ok := lhs.Value().(string)
			if !ok {
				return types.UnsupportedRefValConversionErr(lhs)
			}
			return types.Bool(strFunc(value, val))
		}),
	)
}

func buildBytesMemberOverload(overloadName string, bytesFunc func([]byte, []byte) bool) cel.FunctionOpt {
	return cel.MemberOverload(
		overloadName, []*cel.Type{cel.BytesType, cel.BytesType}, cel.BoolType,
		cel.BinaryBinding(func(lhs ref.Val, rhs ref.Val) ref.Val {
			val, ok := rhs.Value().([]byte)
			if !ok {
				return types.UnsupportedRefValConversionErr(rhs)
			}
			value, ok := lhs.Value().([]byte)
			if !ok {
				return types.UnsupportedRefValConversionErr(lhs)
			}
			return types.Bool(bytesFunc(value, val))
		}),
	)
}

// FindRE2Literals extracts RE2 pattern literals from matches() calls.
//
//	this.matches('[a-z]+')           ["[a-z]+"]
//	this.matches(cond ? 'a' : 'b')   ["a", "b"]
//	this.matches(rule)               []
func FindRE2Literals(compiled *cel.Ast) []string {
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

func uniqueMemberOverload(itemType *cel.Type, overload func(lister traits.Lister) ref.Val) cel.FunctionOpt {
	return cel.MemberOverload(
		itemType.String()+"_unique_bool",
		[]*cel.Type{cel.ListType(itemType)},
		cel.BoolType,
		cel.UnaryBinding(func(value ref.Val) ref.Val {
			list, ok := value.(traits.Lister)
			if !ok {
				return types.UnsupportedRefValConversionErr(value)
			}
			return overload(list)
		}),
	)
}

func uniqueScalar(list traits.Lister) ref.Val {
	size, ok := list.Size().Value().(int64)
	if !ok {
		return types.UnsupportedRefValConversionErr(list.Size().Value())
	}
	if size <= 1 {
		return types.Bool(true)
	}
	exist := map[ref.Val]struct{}{}
	for i := range size {
		val := list.Get(types.Int(i))
		if _, ok := exist[val]; ok {
			return types.Bool(false)
		}
		exist[val] = struct{}{}
	}
	return types.Bool(true)
}

// uniqueBytes is an overload implementation of the unique function that
// compares bytes type CEL values. This function is used instead of uniqueScalar
// as the bytes ([]uint8) type is not hashable in Go; we cheat this by converting
// the value to a string.
func uniqueBytes(list traits.Lister) ref.Val {
	size, ok := list.Size().Value().(int64)
	if !ok {
		return types.UnsupportedRefValConversionErr(list.Size().Value())
	}
	if size <= 1 {
		return types.Bool(true)
	}
	exist := map[string]struct{}{}
	for i := range size {
		val := list.Get(types.Int(i)).Value()
		b, ok := val.([]byte)
		if !ok {
			return types.NewErr("expected bytes, got %v", val)
		}
		str := string(b)
		if _, ok := exist[str]; ok {
			return types.Bool(false)
		}
		exist[str] = struct{}{}
	}
	return types.Bool(true)
}
