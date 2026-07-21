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

import 'package:protobuf/protobuf.dart';

import '../field_path.dart';
import 'context.dart';

// Field numbers shared by every numeric *Rules message.
const _const = 1;
const _lt = 2;
const _lte = 3;
const _gt = 4;
const _gte = 5;
const _in = 6;
const _notIn = 7;
const _finite = 8;

/// Applies the numeric rules in [rules] (a `FloatRules`, `Int32Rules`, …) to
/// [value] (a `double`, `int`, or `Int64`). [numType] is the proto type used
/// for the rule-path elements of the numeric bounds.
void applyNumberRules(
  GeneratedMessage rules,
  Object value,
  PType numType,
  RuleContext ctx,
) {
  if (rules.hasField(_const)) {
    final want = rules.getField(_const);
    if (value != want) {
      ctx.violate('const', [pathElement(_const, 'const', numType)],
          'value must equal $want');
    }
  }

  final inList = rules.getField(_in) as List;
  if (inList.isNotEmpty && !inList.contains(value)) {
    ctx.violate('in', [pathElement(_in, 'in', numType)],
        'value must be in the allowed set');
  }
  final notInList = rules.getField(_notIn) as List;
  if (notInList.isNotEmpty && notInList.contains(value)) {
    ctx.violate('not_in', [pathElement(_notIn, 'not_in', numType)],
        'value must not be in the forbidden set');
  }

  if (rules.hasField(_finite) && rules.getField(_finite) == true) {
    if (!(value as double).isFinite) {
      ctx.violate('finite', [pathElement(_finite, 'finite', PType.TYPE_BOOL)],
          'value must be finite');
    }
  }

  _applyBounds(rules, value, numType, ctx);
}

class _Bound {
  _Bound(this.number, this.name, this.value, this.inclusive);
  final int number;
  final String name;
  final dynamic value;
  final bool inclusive;

  bool satisfiedAsLower(Object v) =>
      inclusive ? _gte_(v, value) : _gt_(v, value);
  bool satisfiedAsUpper(Object v) =>
      inclusive ? _lte_(v, value) : _lt_(v, value);
}

void _applyBounds(
  GeneratedMessage rules,
  Object value,
  PType numType,
  RuleContext ctx,
) {
  final _Bound? lower = rules.hasField(_gt)
      ? _Bound(_gt, 'gt', rules.getField(_gt), false)
      : rules.hasField(_gte)
          ? _Bound(_gte, 'gte', rules.getField(_gte), true)
          : null;
  final _Bound? upper = rules.hasField(_lt)
      ? _Bound(_lt, 'lt', rules.getField(_lt), false)
      : rules.hasField(_lte)
          ? _Bound(_lte, 'lte', rules.getField(_lte), true)
          : null;

  if (lower != null && upper != null) {
    final reversed = _gt_(lower.value, upper.value);
    // The rule id combines both bounds; the rule path points at the lower bound.
    final id = '${ctx.typeName}.${lower.name}_${upper.name}'
        '${reversed ? '_exclusive' : ''}';
    final ruleElement = pathElement(lower.number, lower.name, numType);
    final lowerOk = lower.satisfiedAsLower(value);
    final upperOk = upper.satisfiedAsUpper(value);
    final ok = reversed ? (lowerOk || upperOk) : (lowerOk && upperOk);
    if (!ok) {
      ctx.violateId(id, [ruleElement], 'value out of range');
    }
    return;
  }
  if (lower != null && !lower.satisfiedAsLower(value)) {
    ctx.violate(lower.name, [pathElement(lower.number, lower.name, numType)],
        'value must be ${lower.inclusive ? '>=' : '>'} ${lower.value}');
  }
  if (upper != null && !upper.satisfiedAsUpper(value)) {
    ctx.violate(upper.name, [pathElement(upper.number, upper.name, numType)],
        'value must be ${upper.inclusive ? '<=' : '<'} ${upper.value}');
  }
}

// Numeric comparisons across int, double, and Int64. Within a single numeric
// rule set the value and bounds share a Dart type, so the overloaded operators
// resolve correctly.
bool _lt_(dynamic a, dynamic b) => (a < b) as bool;
bool _gt_(dynamic a, dynamic b) => (a > b) as bool;
bool _lte_(dynamic a, dynamic b) => (a <= b) as bool;
bool _gte_(dynamic a, dynamic b) => (a >= b) as bool;
