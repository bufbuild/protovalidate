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

const _const = 1;
const _definedOnly = 2;
const _in = 3;
const _notIn = 4;

/// Applies the supported `EnumRules` in [rules] to the enum [number] (the
/// value's integer). [definedNumbers] is the set of numbers defined by the
/// enum type, used by `defined_only`.
void applyEnumRules(
  GeneratedMessage rules,
  int number,
  Set<int>? definedNumbers,
  RuleContext ctx,
) {
  if (rules.hasField(_const)) {
    final want = rules.getField(_const) as int;
    if (number != want) {
      ctx.violate('const', [pathElement(_const, 'const', PType.TYPE_INT32)],
          'value must equal $want');
    }
  }

  if (rules.hasField(_definedOnly) &&
      rules.getField(_definedOnly) == true &&
      definedNumbers != null &&
      !definedNumbers.contains(number)) {
    ctx.violate('defined_only',
        [pathElement(_definedOnly, 'defined_only', PType.TYPE_BOOL)],
        'value must be a defined enum value');
  }

  final inList = rules.getField(_in) as List;
  if (inList.isNotEmpty && !inList.contains(number)) {
    ctx.violate('in', [pathElement(_in, 'in', PType.TYPE_INT32)],
        'value must be in the allowed set');
  }
  final notInList = rules.getField(_notIn) as List;
  if (notInList.contains(number)) {
    ctx.violate('not_in', [pathElement(_notIn, 'not_in', PType.TYPE_INT32)],
        'value must not be in the forbidden set');
  }
}
