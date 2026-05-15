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

package oracle

import (
	"errors"
	"fmt"
	"slices"
	"sort"
	"strconv"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/celenv"
	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// Violation is everything the walker observed about a firing rule. It mirrors
// what runtimes emit on the wire (validate.Violation), modulo only the fields
// downstream consumers need.
type Violation struct {
	RuleID    string
	FieldPath string
	RulePath  string
	Message   string
	ForKey    bool
}

// ErrMessageRequired is returned by Violations when called with a nil host.
var ErrMessageRequired = errors.New("oracle: host message is required")

// Violations walks every CEL-expressible rule reachable from host and returns
// the set that fires, sorted for stable output. Rules whose semantics aren't
// in CEL (validateschema.NoCEL) have no predefined CEL annotation, so they're
// naturally skipped.
//
// Currently supports:
//   - Message-level user CEL on the host.
//   - Field-level user CEL on each field with (buf.validate.field).cel.
//   - Field-level predefined CEL for the *Rules type set on each field.
//   - Nested rules under repeated.items, map.keys, and map.values.
//
// Recursive submessage validation (a field whose type is itself a message
// carrying its own protovalidate options) is not yet implemented.
func (o *Oracle) Violations(msg proto.Message) ([]Violation, error) {
	if msg == nil {
		return nil, ErrMessageRequired
	}
	msgReflection := msg.ProtoReflect()
	var out []Violation

	msgRules, _ := proto.GetExtension(msgReflection.Descriptor().Options(), validate.E_Message).(*validate.MessageRules)
	if msgRules != nil {
		for _, celRule := range msgRules.GetCel() {
			fired, msg, err := o.evalUserMessageCEL(celRule.GetExpression(), celRule.GetMessage(), msgReflection)
			if err != nil {
				return nil, fmt.Errorf("eval message-level CEL %q on %s: %w",
					celRule.GetId(), msgReflection.Descriptor().FullName(), err)
			}
			if fired {
				out = append(out, Violation{RuleID: celRule.GetId(), Message: msg})
			}
		}
	}

	fields := msgReflection.Descriptor().Fields()
	for i := range fields.Len() {
		fieldDescriptor := fields.Get(i)
		fieldRules, _ := proto.GetExtension(fieldDescriptor.Options(), validate.E_Field).(*validate.FieldRules)
		if fieldRules == nil {
			continue
		}
		val := msgReflection.Get(fieldDescriptor)
		ctx := walkCtx{
			fieldPath:      string(fieldDescriptor.Name()),
			rulePathPrefix: "",
			thisType:       celenv.TypeForField(fieldDescriptor),
		}
		if err := o.evalFieldRules(&out, fieldRules, fieldDescriptor, val, ctx); err != nil {
			return nil, err
		}
	}

	slices.SortStableFunc(out, func(left, right Violation) int {
		compare := strings.Compare(left.FieldPath, right.FieldPath)
		if compare != 0 {
			return compare
		}
		compare = strings.Compare(left.RulePath, right.RulePath)
		if compare != 0 {
			return compare
		}
		return strings.Compare(left.RuleID, right.RuleID)
	})
	return out, nil
}

// walkCtx threads the per-recursion-level context through evalFieldRules.
type walkCtx struct {
	fieldPath      string    // path to `this`, e.g. "val", "val[0]", "val[\"k\"]"
	rulePathPrefix string    // "" or "repeated.items."/"map.keys."/"map.values."
	thisType       *cel.Type // CEL type to bind `this` to
	forKey         bool      // ForKey on emitted violations (true under map.keys)
}

// evalFieldRules evaluates one FieldRules against a top-level field value,
// emitting violations into out. Handles user CEL, predefined CEL on the set
// *Rules type, and recurses into repeated.items / map.keys / map.values when
// the field itself is a list or map.
//
// fieldDescriptor is only consulted for the container-recursion branch; the
// recurse helpers call evalLeafRules (not back into evalFieldRules) for each
// element, so the structurally-impossible "list element that is itself a
// list" branch is never reached.
func (o *Oracle) evalFieldRules(
	out *[]Violation,
	fieldRules *validate.FieldRules,
	fieldDescriptor protoreflect.FieldDescriptor,
	val protoreflect.Value,
	ctx walkCtx,
) error {
	if err := o.evalLeafRules(out, fieldRules, val, ctx); err != nil {
		return err
	}
	frRefl := fieldRules.ProtoReflect()
	typeOneof := frRefl.Descriptor().Oneofs().ByName("type")
	setOneof := frRefl.WhichOneof(typeOneof)
	if setOneof == nil {
		return nil
	}
	rulesMsg := frRefl.Get(setOneof).Message()
	switch setOneof.Name() {
	case "repeated":
		return o.recurseRepeatedItems(out, rulesMsg, fieldDescriptor, val, ctx)
	case "map":
		return o.recurseMap(out, rulesMsg, fieldDescriptor, val, ctx)
	}
	return nil
}

// evalLeafRules evaluates user CEL and predefined CEL rules on val without
// recursing into containers. Used for both top-level fields (via
// evalFieldRules) and individual list/map elements (via recurseRepeatedItems
// and recurseMap) where further nesting is structurally impossible in proto3.
func (o *Oracle) evalLeafRules(
	out *[]Violation,
	fieldRules *validate.FieldRules,
	val protoreflect.Value,
	ctx walkCtx,
) error {
	for i, celRule := range fieldRules.GetCel() {
		fired, msg, err := o.evalUserFieldCEL(celRule.GetExpression(), celRule.GetMessage(), ctx.thisType, val)
		if err != nil {
			return fmt.Errorf("eval field CEL %q on %s: %w", celRule.GetId(), ctx.fieldPath, err)
		}
		if fired {
			*out = append(*out, Violation{
				RuleID:    celRule.GetId(),
				FieldPath: ctx.fieldPath,
				RulePath:  ctx.rulePathPrefix + "cel[" + strconv.Itoa(i) + "]",
				Message:   msg,
				ForKey:    ctx.forKey,
			})
		}
	}

	frRefl := fieldRules.ProtoReflect()
	typeOneof := frRefl.Descriptor().Oneofs().ByName("type")
	setOneof := frRefl.WhichOneof(typeOneof)
	if setOneof == nil {
		return nil
	}
	rulesMsg := frRefl.Get(setOneof).Message()
	rulesMessage := o.schema.RulesMessageByDesc[setOneof.Message().FullName()]
	if rulesMessage == nil {
		return nil
	}

	for _, ruleField := range rulesMessage.Fields {
		if !rulesMsg.Has(ruleField.Desc) {
			continue
		}
		for ruleIdx := range ruleField.Rules {
			rule := &ruleField.Rules[ruleIdx]
			fired, msg, err := o.evalPredefined(rule, ctx.thisType, val, rulesMsg)
			if err != nil {
				return fmt.Errorf("eval predefined %q on %s: %w", rule.ID, ctx.fieldPath, err)
			}
			if fired {
				*out = append(*out, Violation{
					RuleID:    rule.ID,
					FieldPath: ctx.fieldPath,
					RulePath:  ctx.rulePathPrefix + string(setOneof.Name()) + "." + string(ruleField.Desc.Name()),
					Message:   msg,
					ForKey:    ctx.forKey,
				})
			}
		}
	}
	return nil
}

// recurseRepeatedItems walks the items sub-FieldRules over each list element.
func (o *Oracle) recurseRepeatedItems(
	out *[]Violation,
	rulesMsg protoreflect.Message,
	fieldDescriptor protoreflect.FieldDescriptor,
	val protoreflect.Value,
	ctx walkCtx,
) error {
	itemsField := rulesMsg.Descriptor().Fields().ByName("items")
	if itemsField == nil || !rulesMsg.Has(itemsField) {
		return nil
	}
	itemsFr, ok := rulesMsg.Get(itemsField).Message().Interface().(*validate.FieldRules)
	if !ok || itemsFr == nil {
		return nil
	}
	itemThisType := celenv.KindToType(fieldDescriptor.Kind(), celenv.MessageOrEnumName(fieldDescriptor))
	list := val.List()
	for i := range list.Len() {
		itemCtx := walkCtx{
			fieldPath:      ctx.fieldPath + "[" + strconv.Itoa(i) + "]",
			rulePathPrefix: ctx.rulePathPrefix + "repeated.items.",
			thisType:       itemThisType,
		}
		if err := o.evalLeafRules(out, itemsFr, list.Get(i), itemCtx); err != nil {
			return err
		}
	}
	return nil
}

// recurseMap walks keys' and values' sub-FieldRules over each map entry.
func (o *Oracle) recurseMap(
	out *[]Violation,
	rulesMsg protoreflect.Message,
	fieldDescriptor protoreflect.FieldDescriptor,
	val protoreflect.Value,
	ctx walkCtx,
) error {
	keysField := rulesMsg.Descriptor().Fields().ByName("keys")
	valuesField := rulesMsg.Descriptor().Fields().ByName("values")

	var keysFr, valuesFr *validate.FieldRules
	if keysField != nil && rulesMsg.Has(keysField) {
		keysFr, _ = rulesMsg.Get(keysField).Message().Interface().(*validate.FieldRules)
	}
	if valuesField != nil && rulesMsg.Has(valuesField) {
		valuesFr, _ = rulesMsg.Get(valuesField).Message().Interface().(*validate.FieldRules)
	}
	if keysFr == nil && valuesFr == nil {
		return nil
	}

	keyDesc := fieldDescriptor.MapKey()
	valueDesc := fieldDescriptor.MapValue()
	keyThisType := celenv.KindToType(keyDesc.Kind(), celenv.MessageOrEnumName(keyDesc))
	valueThisType := celenv.KindToType(valueDesc.Kind(), celenv.MessageOrEnumName(valueDesc))

	type entry struct {
		key   protoreflect.MapKey
		value protoreflect.Value
	}
	var entries []entry
	val.Map().Range(func(k protoreflect.MapKey, v protoreflect.Value) bool {
		entries = append(entries, entry{key: k, value: v})
		return true
	})
	sort.Slice(entries, func(i, j int) bool {
		return formatMapKey(entries[i].key, keyDesc.Kind()) < formatMapKey(entries[j].key, keyDesc.Kind())
	})

	for _, singleEntry := range entries {
		entryPath := ctx.fieldPath + "[" + formatMapKey(singleEntry.key, keyDesc.Kind()) + "]"

		if keysFr != nil {
			keyCtx := walkCtx{
				fieldPath:      entryPath,
				rulePathPrefix: ctx.rulePathPrefix + "map.keys.",
				thisType:       keyThisType,
				forKey:         true,
			}
			if err := o.evalLeafRules(out, keysFr, protoreflect.ValueOf(singleEntry.key.Interface()), keyCtx); err != nil {
				return err
			}
		}
		if valuesFr != nil {
			valueCtx := walkCtx{
				fieldPath:      entryPath,
				rulePathPrefix: ctx.rulePathPrefix + "map.values.",
				thisType:       valueThisType,
			}
			if err := o.evalLeafRules(out, valuesFr, singleEntry.value, valueCtx); err != nil {
				return err
			}
		}
	}
	return nil
}

// formatMapKey formats a map key the way runtimes do in field paths:
// strings are go-quoted, ints/uints/bools render in base-10 / true|false.
func formatMapKey(mapKey protoreflect.MapKey, kind protoreflect.Kind) string {
	switch kind { //nolint:exhaustive
	case protoreflect.StringKind:
		return strconv.Quote(mapKey.String())
	case protoreflect.BoolKind:
		return strconv.FormatBool(mapKey.Bool())
	case protoreflect.Int32Kind, protoreflect.Int64Kind,
		protoreflect.Sint32Kind, protoreflect.Sint64Kind,
		protoreflect.Sfixed32Kind, protoreflect.Sfixed64Kind:
		return strconv.FormatInt(mapKey.Int(), 10)
	case protoreflect.Uint32Kind, protoreflect.Uint64Kind,
		protoreflect.Fixed32Kind, protoreflect.Fixed64Kind:
		return strconv.FormatUint(mapKey.Uint(), 10)
	default:
		return mapKey.String()
	}
}

// evalUserMessageCEL evaluates a message-level CEL expression with `this`
// bound to host. `rules` and `rule` are bound to nil — they're declared in
// the env (so the compiler accepts references to them) but user CEL almost
// never touches them, and nil keeps a stray reference from raising a runtime
// "no such attribute" error.
func (o *Oracle) evalUserMessageCEL(expression, staticMsg string, host protoreflect.Message) (bool, string, error) {
	thisType := cel.ObjectType(string(host.Descriptor().FullName()))
	env, err := celenv.New(o.schema.Files, thisType, cel.DynType, cel.DynType)
	if err != nil {
		return false, "", err
	}
	return runCEL(env, expression, staticMsg, map[string]any{
		"this":  host.Interface(),
		"rules": nil,
		"rule":  nil,
	})
}

// evalUserFieldCEL evaluates a field-level user CEL expression with `this` bound
// to val and the given thisType. `rules`/`rule` are bound to nil — see
// evalUserMessageCEL for the rationale.
func (o *Oracle) evalUserFieldCEL(expression, staticMsg string, thisType *cel.Type, val protoreflect.Value) (bool, string, error) {
	env, err := celenv.New(o.schema.Files, thisType, cel.DynType, cel.DynType)
	if err != nil {
		return false, "", err
	}
	return runCEL(env, expression, staticMsg, map[string]any{
		"this":  toCEL(val),
		"rules": nil,
		"rule":  nil,
	})
}

// runCEL compiles and evaluates expression. Returns:
//   - (false, "", nil) when the rule passes.
//   - (true, message, nil) when it fires; message is what the runtime emits
//     (the CEL string return for ternary-style expressions, or staticMsg
//     for boolean expressions whose `false` carries no string).
//   - (false, "", err) on compile/runtime/type errors.
func runCEL(env *cel.Env, expression, staticMsg string, activation map[string]any) (bool, string, error) {
	ast, issues := env.Compile(expression)
	if issues != nil && issues.Err() != nil {
		return false, "", fmt.Errorf("compile: %w", issues.Err())
	}
	prg, err := env.Program(ast)
	if err != nil {
		return false, "", fmt.Errorf("program: %w", err)
	}
	out, _, err := prg.Eval(activation)
	if err != nil {
		return false, "", fmt.Errorf("eval: %w", err)
	}
	switch value := out.Value().(type) {
	case bool:
		if value {
			return false, "", nil
		}
		if staticMsg == "" {
			return true, fmt.Sprintf("%q returned false", expression), nil
		}
		return true, staticMsg, nil
	case string:
		if value == "" {
			return false, "", nil
		}
		return true, value, nil
	default:
		return false, "", fmt.Errorf("unexpected CEL result type %T", value)
	}
}
