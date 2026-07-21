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

import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import '../field_path.dart';
import '../formats.dart' as formats;
import '../regex.dart';
import 'context.dart';

const _const = 1;
const _minLen = 2;
const _maxLen = 3;
const _minBytes = 4;
const _maxBytes = 5;
const _pattern = 6;
const _prefix = 7;
const _suffix = 8;
const _contains = 9;
const _in = 10;
const _notIn = 11;
const _email = 12;
const _uri = 17;
const _uuid = 22;
const _len = 19;
const _lenBytes = 20;
const _notContains = 23;

/// Applies the supported `StringRules` in [rules] to the string [value].
void applyStringRules(GeneratedMessage rules, String value, RuleContext ctx) {
  if (rules.hasField(_const)) {
    final want = rules.getField(_const) as String;
    if (value != want) {
      ctx.violate('const', [pathElement(_const, 'const', PType.TYPE_STRING)],
          'value must equal "$want"');
    }
  }

  final runeLen = value.runes.length;
  if (rules.hasField(_len) && runeLen != _int(rules, _len)) {
    ctx.violate('len', [pathElement(_len, 'len', PType.TYPE_UINT64)],
        'value must be ${_int(rules, _len)} characters');
  }
  if (rules.hasField(_minLen) && runeLen < _int(rules, _minLen)) {
    ctx.violate('min_len', [pathElement(_minLen, 'min_len', PType.TYPE_UINT64)],
        'value must be at least ${_int(rules, _minLen)} characters');
  }
  if (rules.hasField(_maxLen) && runeLen > _int(rules, _maxLen)) {
    ctx.violate('max_len', [pathElement(_maxLen, 'max_len', PType.TYPE_UINT64)],
        'value must be at most ${_int(rules, _maxLen)} characters');
  }

  final byteLen = utf8.encode(value).length;
  if (rules.hasField(_lenBytes) && byteLen != _int(rules, _lenBytes)) {
    ctx.violate('len_bytes',
        [pathElement(_lenBytes, 'len_bytes', PType.TYPE_UINT64)],
        'value must be ${_int(rules, _lenBytes)} bytes');
  }
  if (rules.hasField(_minBytes) && byteLen < _int(rules, _minBytes)) {
    ctx.violate('min_bytes',
        [pathElement(_minBytes, 'min_bytes', PType.TYPE_UINT64)],
        'value must be at least ${_int(rules, _minBytes)} bytes');
  }
  if (rules.hasField(_maxBytes) && byteLen > _int(rules, _maxBytes)) {
    ctx.violate('max_bytes',
        [pathElement(_maxBytes, 'max_bytes', PType.TYPE_UINT64)],
        'value must be at most ${_int(rules, _maxBytes)} bytes');
  }

  if (rules.hasField(_pattern)) {
    final pattern = rules.getField(_pattern) as String;
    if (!compilePattern(pattern).hasMatch(value)) {
      ctx.violate('pattern', [pathElement(_pattern, 'pattern', PType.TYPE_STRING)],
          'value must match pattern "$pattern"');
    }
  }
  if (rules.hasField(_prefix)) {
    final prefix = rules.getField(_prefix) as String;
    if (!value.startsWith(prefix)) {
      ctx.violate('prefix', [pathElement(_prefix, 'prefix', PType.TYPE_STRING)],
          'value must start with "$prefix"');
    }
  }
  if (rules.hasField(_suffix)) {
    final suffix = rules.getField(_suffix) as String;
    if (!value.endsWith(suffix)) {
      ctx.violate('suffix', [pathElement(_suffix, 'suffix', PType.TYPE_STRING)],
          'value must end with "$suffix"');
    }
  }
  if (rules.hasField(_contains)) {
    final needle = rules.getField(_contains) as String;
    if (!value.contains(needle)) {
      ctx.violate('contains',
          [pathElement(_contains, 'contains', PType.TYPE_STRING)],
          'value must contain "$needle"');
    }
  }
  if (rules.hasField(_notContains)) {
    final needle = rules.getField(_notContains) as String;
    if (value.contains(needle)) {
      ctx.violate('not_contains',
          [pathElement(_notContains, 'not_contains', PType.TYPE_STRING)],
          'value must not contain "$needle"');
    }
  }

  final inList = rules.getField(_in) as List;
  if (inList.isNotEmpty && !inList.contains(value)) {
    ctx.violate('in', [pathElement(_in, 'in', PType.TYPE_STRING)],
        'value must be in the allowed set');
  }
  final notInList = rules.getField(_notIn) as List;
  if (notInList.isNotEmpty && notInList.contains(value)) {
    ctx.violate('not_in', [pathElement(_notIn, 'not_in', PType.TYPE_STRING)],
        'value must not be in the forbidden set');
  }

  _format(rules, _email, 'email', value, formats.isEmail, ctx);
  _format(rules, _uri, 'uri', value, formats.isUri, ctx);
  _format(rules, _uuid, 'uuid', value, formats.isUuid, ctx);
}

// A well-known format flag. An empty value violates `<name>_empty`; a non-empty
// invalid value violates `<name>`. Both share the flag's rule path element.
void _format(
  GeneratedMessage rules,
  int number,
  String name,
  String value,
  bool Function(String) isValid,
  RuleContext ctx,
) {
  if (!rules.hasField(number) || rules.getField(number) != true) return;
  final element = pathElement(number, name, PType.TYPE_BOOL);
  if (value.isEmpty) {
    ctx.violate('${name}_empty', [element], 'value is empty');
  } else if (!isValid(value)) {
    ctx.violate(name, [element], 'value must be a valid $name');
  }
}

int _int(GeneratedMessage rules, int number) =>
    (rules.getField(number) as Int64).toInt();
