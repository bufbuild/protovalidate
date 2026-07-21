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

import '../field_path.dart';
import '../gen/buf/validate/validate.pb.dart';
import '../rule_ids.dart';

/// Carries the context needed to emit a [Violation] for one value under
/// evaluation: the absolute [fieldPath] to the value, the rule-path [prefix]
/// that precedes the rule's own type element (empty at the top level,
/// `repeated.items` / `map.keys` / `map.values` for container elements), the
/// rule [typeName] (e.g. `string`), and whether the value is a map key.
class RuleContext {
  RuleContext({
    required this.fieldPath,
    required this.prefix,
    required this.typeName,
    required this.sink,
    this.forKey = false,
  });

  final List<FieldPathElement> fieldPath;
  final List<FieldPathElement> prefix;
  final String typeName;
  final List<Violation> sink;
  final bool forKey;

  /// Emits a violation whose id is `<typeName>.<ruleName>` and whose rule path
  /// is `prefix + typeElement + ruleElements`.
  void violate(
    String ruleName,
    List<FieldPathElement> ruleElements,
    String message,
  ) {
    violateId('$typeName.$ruleName', ruleElements, message);
  }

  /// Like [violate] but with an explicit rule id (for combined-range and
  /// `_empty` rules whose id does not follow `<typeName>.<ruleName>`).
  void violateId(
    String ruleId,
    List<FieldPathElement> ruleElements,
    String message,
  ) {
    sink.add(buildViolation(
      field: fieldPath,
      rule: [...prefix, typeElement(typeName), ...ruleElements],
      ruleId: ruleId,
      message: message,
      forKey: forKey,
    ));
  }
}
