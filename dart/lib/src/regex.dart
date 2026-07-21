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

// protovalidate patterns use RE2 syntax. Dart's RegExp mostly overlaps, but it
// does not accept RE2's leading inline flag group (e.g. `(?i)`), which appears
// in conformance patterns. Translate a leading flag group to RegExp options.
final RegExp _leadingFlags = RegExp(r'^\(\?([imsU]+)\)');

/// Compiles an RE2-style [pattern] to a Dart [RegExp], translating a leading
/// inline flag group such as `(?i)` / `(?is)` into constructor options.
RegExp compilePattern(String pattern) {
  var caseSensitive = true;
  var multiLine = false;
  var dotAll = false;
  var body = pattern;
  final match = _leadingFlags.firstMatch(pattern);
  if (match != null) {
    final flags = match.group(1)!;
    if (flags.contains('i')) caseSensitive = false;
    if (flags.contains('m')) multiLine = true;
    if (flags.contains('s')) dotAll = true;
    // 'U' (swap greediness) has no RegExp equivalent and is left unapplied.
    body = pattern.substring(match.end);
  }
  return RegExp(body,
      caseSensitive: caseSensitive, multiLine: multiLine, dotAll: dotAll);
}
