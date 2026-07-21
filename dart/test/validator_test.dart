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

import 'dart:io';

import 'package:protovalidate/protovalidate.dart';
import 'package:protovalidate/src/gen/buf/validate/conformance/cases/enums.pb.dart'
    as enums;
import 'package:protovalidate/src/gen/buf/validate/conformance/cases/maps.pb.dart'
    as maps;
import 'package:protovalidate/src/gen/buf/validate/conformance/cases/numbers.pb.dart'
    as numbers;
import 'package:protovalidate/src/gen/buf/validate/conformance/cases/strings.pb.dart'
    as strings;
import 'package:test/test.dart';

/// The trailing rule-path element's field name (the specific rule that failed).
String leafRule(Violation v) => v.rule.elements.last.fieldName;

void main() {
  // Build a descriptor set for the conformance testing module. Requires `buf`
  // on PATH (a dev dependency of this repository); tests skip if it is absent.
  Validator? validator;
  try {
    final result = Process.runSync(
      'buf',
      ['build', '../proto/protovalidate-testing', '-o', '-', '--as-file-descriptor-set'],
      stdoutEncoding: null,
    );
    if (result.exitCode == 0) {
      validator = Validator.fromBuffer(result.stdout as List<int>);
    }
  } on ProcessException {
    // buf not installed; tests below are skipped.
  }
  final Object? skip = validator == null ? 'buf not available' : null;

  test('string.min_len reports id and paths', () {
    final v = validator!.validate(strings.StringMinLen()..val = 'pb');
    expect(v, hasLength(1));
    expect(v.single.ruleId, 'string.min_len');
    expect(v.single.field_5.elements.single.fieldName, 'val');
    expect(v.single.rule.elements.map((e) => e.fieldName), ['string', 'min_len']);
  }, skip: skip);

  test('valid string produces no violations', () {
    expect(validator!.validate(strings.StringMinLen()..val = 'foobar'), isEmpty);
  }, skip: skip);

  test('numeric exclusive combined range uses _exclusive id', () {
    // Int32ExGTELTE has gte=256, lte=128 (reversed); 200 lies inside the
    // excluded range.
    final v = validator!.validate(numbers.Int32ExGTELTE()..val = 200);
    expect(v.single.ruleId, 'int32.gte_lte_exclusive');
    expect(leafRule(v.single), 'gte'); // rule path points at the lower bound
  }, skip: skip);

  test('enum defined_only catches an unknown value', () {
    // Set val to an undefined enum number (2147483647) via the wire format.
    final message = enums.EnumDefined()
      ..mergeFromBuffer([0x08, 0xff, 0xff, 0xff, 0xff, 0x07]);
    final v = validator!.validate(message);
    expect(v.single.ruleId, 'enum.defined_only');
  }, skip: skip);

  test('map value pattern violation carries the entry key path', () {
    final message = maps.MapValuesPattern()
      ..val['a'] = 'A'
      ..val['b'] = '!@#';
    final v = validator!.validate(message);
    expect(v.single.ruleId, 'string.pattern');
    expect(v.single.forKey, isFalse);
    final entry = v.single.field_5.elements.single;
    expect(entry.fieldName, 'val');
    expect(entry.stringKey, 'b');
    expect(v.single.rule.elements.map((e) => e.fieldName),
        ['map', 'values', 'string', 'pattern']);
  }, skip: skip);

  test('check throws ValidationException on invalid input', () {
    expect(() => validator!.check(strings.StringMinLen()..val = 'x'),
        throwsA(isA<ValidationException>()));
  }, skip: skip);
}
