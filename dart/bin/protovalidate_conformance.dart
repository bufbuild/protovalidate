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

// Conformance test executor for the Dart protovalidate runtime.
//
// Reads a serialized `TestConformanceRequest` from stdin, validates each case
// message, and writes a serialized `TestConformanceResponse` to stdout. See
// docs/conformance.md.

import 'dart:io';

import 'package:protobuf/protobuf.dart';
import 'package:protovalidate/protovalidate.dart';
import 'package:protovalidate/src/gen/buf/validate/conformance/harness/harness.pb.dart';
import 'package:protovalidate/src/gen/google/protobuf/any.pb.dart';

import 'conformance_types.g.dart';

Future<void> main() async {
  final input = await _readStdin();
  final request = TestConformanceRequest.fromBuffer(input);
  final response = TestConformanceResponse();

  Validator? validator;
  String? buildError;
  try {
    validator = Validator(request.fdset);
  } catch (e) {
    buildError = 'failed to build validator: $e';
  }

  final registry = <String, GeneratedMessage Function()>{
    for (final factory in conformanceFactories)
      factory().info_.qualifiedMessageName: factory,
  };

  request.cases.forEach((name, testCase) {
    response.results[name] = _runCase(validator, buildError, registry, testCase);
  });

  stdout.add(response.writeToBuffer());
  await stdout.flush();
}

TestResult _runCase(
  Validator? validator,
  String? buildError,
  Map<String, GeneratedMessage Function()> registry,
  Any testCase,
) {
  final result = TestResult();
  if (validator == null) {
    return result..compilationError = buildError ?? 'no validator';
  }

  final typeName = testCase.typeUrl.split('/').last;
  final factory = registry[typeName];
  if (factory == null) {
    return result..runtimeError = 'unknown message type: $typeName';
  }

  final GeneratedMessage message;
  try {
    message = testCase.unpackInto(factory());
  } catch (e) {
    return result..runtimeError = 'failed to unpack $typeName: $e';
  }

  try {
    final violations = validator.validate(message);
    if (violations.isEmpty) {
      result.success = true;
    } else {
      result.validationError = Violations()..violations.addAll(violations);
    }
  } on CompilationError catch (e) {
    result.compilationError = e.message;
  } catch (e) {
    result.runtimeError = 'validation failed: $e';
  }
  return result;
}

Future<List<int>> _readStdin() async {
  final chunks = <List<int>>[];
  await for (final chunk in stdin) {
    chunks.add(chunk);
  }
  return chunks.expand((chunk) => chunk).toList();
}
