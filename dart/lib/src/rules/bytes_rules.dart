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

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import '../field_path.dart';
import 'context.dart';

const _const = 1;
const _minLen = 2;
const _maxLen = 3;
const _prefix = 5;
const _suffix = 6;
const _contains = 7;
const _in = 8;
const _notIn = 9;
const _len = 13;
const _uuid = 15;

/// Applies the supported `BytesRules` in [rules] to the byte string [value].
void applyBytesRules(GeneratedMessage rules, List<int> value, RuleContext ctx) {
  if (rules.hasField(_const)) {
    final want = rules.getField(_const) as List<int>;
    if (!_equal(value, want)) {
      ctx.violate('const', [pathElement(_const, 'const', PType.TYPE_BYTES)],
          'value must equal the required bytes');
    }
  }

  final len = value.length;
  if (rules.hasField(_len) && len != _int(rules, _len)) {
    ctx.violate('len', [pathElement(_len, 'len', PType.TYPE_UINT64)],
        'value must be ${_int(rules, _len)} bytes');
  }
  if (rules.hasField(_minLen) && len < _int(rules, _minLen)) {
    ctx.violate('min_len', [pathElement(_minLen, 'min_len', PType.TYPE_UINT64)],
        'value must be at least ${_int(rules, _minLen)} bytes');
  }
  if (rules.hasField(_maxLen) && len > _int(rules, _maxLen)) {
    ctx.violate('max_len', [pathElement(_maxLen, 'max_len', PType.TYPE_UINT64)],
        'value must be at most ${_int(rules, _maxLen)} bytes');
  }

  if (rules.hasField(_prefix)) {
    final prefix = rules.getField(_prefix) as List<int>;
    if (!_startsWith(value, prefix)) {
      ctx.violate('prefix', [pathElement(_prefix, 'prefix', PType.TYPE_BYTES)],
          'value must start with the required prefix');
    }
  }
  if (rules.hasField(_suffix)) {
    final suffix = rules.getField(_suffix) as List<int>;
    if (!_endsWith(value, suffix)) {
      ctx.violate('suffix', [pathElement(_suffix, 'suffix', PType.TYPE_BYTES)],
          'value must end with the required suffix');
    }
  }
  if (rules.hasField(_contains)) {
    final needle = rules.getField(_contains) as List<int>;
    if (!_byteContains(value, needle)) {
      ctx.violate('contains',
          [pathElement(_contains, 'contains', PType.TYPE_BYTES)],
          'value must contain the required bytes');
    }
  }

  final inList = rules.getField(_in) as List;
  if (inList.isNotEmpty &&
      !inList.any((e) => _equal(value, e as List<int>))) {
    ctx.violate('in', [pathElement(_in, 'in', PType.TYPE_BYTES)],
        'value must be in the allowed set');
  }
  final notInList = rules.getField(_notIn) as List;
  if (notInList.any((e) => _equal(value, e as List<int>))) {
    ctx.violate('not_in', [pathElement(_notIn, 'not_in', PType.TYPE_BYTES)],
        'value must not be in the forbidden set');
  }

  if (rules.hasField(_uuid) && rules.getField(_uuid) == true) {
    final element = pathElement(_uuid, 'uuid', PType.TYPE_BOOL);
    if (value.isEmpty) {
      ctx.violate('uuid_empty', [element], 'value is empty');
    } else if (value.length != 16) {
      ctx.violate('uuid', [element], 'value must be a valid UUID');
    }
  }
}

int _int(GeneratedMessage rules, int number) =>
    (rules.getField(number) as Int64).toInt();

bool _equal(List<int> a, List<int> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

bool _startsWith(List<int> value, List<int> prefix) {
  if (prefix.length > value.length) return false;
  for (var i = 0; i < prefix.length; i++) {
    if (value[i] != prefix[i]) return false;
  }
  return true;
}

bool _endsWith(List<int> value, List<int> suffix) {
  if (suffix.length > value.length) return false;
  final offset = value.length - suffix.length;
  for (var i = 0; i < suffix.length; i++) {
    if (value[offset + i] != suffix[i]) return false;
  }
  return true;
}

bool _byteContains(List<int> value, List<int> needle) {
  if (needle.isEmpty) return true;
  if (needle.length > value.length) return false;
  for (var i = 0; i <= value.length - needle.length; i++) {
    var match = true;
    for (var j = 0; j < needle.length; j++) {
      if (value[i + j] != needle[j]) {
        match = false;
        break;
      }
    }
    if (match) return true;
  }
  return false;
}
