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

const _minItems = 1;
const _maxItems = 2;
const _unique = 3;

/// Applies the list-level `RepeatedRules` (`min_items`, `max_items`, `unique`)
/// to [list]. Element rules (`items`) are applied by the evaluator.
void applyRepeatedRules(GeneratedMessage rules, List<dynamic> list, RuleContext ctx) {
  if (rules.hasField(_minItems)) {
    final min = (rules.getField(_minItems) as dynamic).toInt() as int;
    if (list.length < min) {
      ctx.violate('min_items',
          [pathElement(_minItems, 'min_items', PType.TYPE_UINT64)],
          'value must contain at least $min items');
    }
  }
  if (rules.hasField(_maxItems)) {
    final max = (rules.getField(_maxItems) as dynamic).toInt() as int;
    if (list.length > max) {
      ctx.violate('max_items',
          [pathElement(_maxItems, 'max_items', PType.TYPE_UINT64)],
          'value must contain at most $max items');
    }
  }
  if (rules.hasField(_unique) && rules.getField(_unique) == true) {
    if (!_allUnique(list)) {
      ctx.violate('unique', [pathElement(_unique, 'unique', PType.TYPE_BOOL)],
          'value must contain unique items');
    }
  }
}

bool _allUnique(List<dynamic> list) {
  final seen = <Object?>{};
  for (final element in list) {
    final key = element is ProtobufEnum ? element.value : element;
    if (!seen.add(key)) return false;
  }
  return true;
}
