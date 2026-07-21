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

import 'package:protovalidate/src/formats.dart';
import 'package:protovalidate/src/regex.dart';
import 'package:test/test.dart';

void main() {
  group('isEmail', () {
    test('accepts valid addresses', () {
      expect(isEmail('foo@bar.com'), isTrue);
    });
    test('rejects malformed addresses', () {
      for (final v in [
        'foobar',
        'foo@.',
        'foo@-bar.com',
        '<foo@example.com>',
        ' foo@example.com',
        'foo@x0123456789012345678901234567890123456789012345678901234567890123456789.com',
      ]) {
        expect(isEmail(v), isFalse, reason: v);
      }
    });
  });

  group('isUri', () {
    test('accepts absolute URIs', () {
      expect(isUri('urn:isbn:0451450523'), isTrue);
      expect(isUri('https://example.com/foo/bar?baz=quux'), isTrue);
    });
    test('rejects relative refs, bad schemes, and bad encoding', () {
      for (final v in [
        '/foo/bar?baz=quux',
        ':isbn:0451450523',
        '!@#\$%^&*',
        'https://example.com/foo/bar?baz=%x',
        'urn:isbn:0451450523?baz=%x',
      ]) {
        expect(isUri(v), isFalse, reason: v);
      }
    });
  });

  group('isUuid', () {
    test('accepts hyphenated UUIDs of either case', () {
      expect(isUuid('a6edc906-2f9f-5fb2-a373-efac406f0ef2'), isTrue);
      expect(isUuid('A6EDC906-2F9F-5FB2-A373-EFAC406F0EF2'), isTrue);
    });
    test('rejects unhyphenated', () {
      expect(isUuid('8b20830500e84460a4405e0dcd83bb0a'), isFalse);
    });
  });

  group('compilePattern', () {
    test('applies leading (?i) as case-insensitive', () {
      final re = compilePattern(r'(?i)^[a-z0-9]+$');
      expect(re.hasMatch('Alpha123'), isTrue);
      expect(re.hasMatch('!nope'), isFalse);
    });
    test('is unanchored by default', () {
      expect(compilePattern('bar').hasMatch('foobarbaz'), isTrue);
    });
  });
}
