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

/// Thrown when a message's `buf.validate` rules are invalid — for example, when
/// a field carries a rule set for the wrong type (`double` rules on an `int32`
/// field). This corresponds to a protovalidate compile-time error.
class CompilationError implements Exception {
  CompilationError(this.message);

  final String message;

  @override
  String toString() => 'CompilationError: $message';
}
