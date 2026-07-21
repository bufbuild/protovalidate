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

import 'descriptor_index.dart';
import 'evaluator.dart';
import 'gen/buf/validate/validate.pb.dart';
import 'gen/google/protobuf/descriptor.pb.dart';

/// Validates Protobuf messages against the standard (CEL-free) rules declared
/// with `buf.validate` options.
///
/// A validator is built from a [FileDescriptorSet] describing the messages to
/// validate — typically produced with `buf build -o image.binpb` (or received
/// in a conformance request). Rules and structure are read from the descriptor
/// set; field values are read from the live message by reflection.
class Validator {
  /// Builds a validator from an already-parsed [fdset].
  Validator(FileDescriptorSet fdset) : _index = DescriptorIndex(fdset);

  /// Builds a validator from a serialized [FileDescriptorSet].
  factory Validator.fromBuffer(List<int> bytes) =>
      Validator(FileDescriptorSet.fromBuffer(bytes));

  final DescriptorIndex _index;

  /// Returns the violations found in [message]. An empty list means the message
  /// is valid. Messages whose type is absent from the descriptor set are
  /// treated as valid (no rules are known for them).
  List<Violation> validate(GeneratedMessage message) {
    final evaluator = Evaluator(_index);
    final info = _index.message(message.info_.qualifiedMessageName);
    if (info != null) {
      evaluator.evaluateMessage(message, info, const []);
    }
    return evaluator.violations;
  }

  /// Like [validate] but returns the violations wrapped in a [Violations]
  /// message (matching the shape produced by other protovalidate runtimes).
  Violations validateToProto(GeneratedMessage message) =>
      Violations()..violations.addAll(validate(message));

  /// Validates [message] and throws a [ValidationException] if it is invalid.
  void check(GeneratedMessage message) {
    final violations = validate(message);
    if (violations.isNotEmpty) {
      throw ValidationException(violations);
    }
  }
}

/// Thrown by [Validator.check] when a message fails validation.
class ValidationException implements Exception {
  ValidationException(this.violations);

  /// The violations that caused validation to fail.
  final List<Violation> violations;

  @override
  String toString() {
    final ids = violations.map((v) => v.ruleId).join(', ');
    return 'ValidationException: ${violations.length} violation(s): $ids';
  }
}
