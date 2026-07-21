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

import 'field_path.dart';
import 'gen/buf/validate/validate.pb.dart';

/// The `FieldRules.type` oneof field number for each rule type name. These are
/// the first element of every rule path (e.g. `string` → 14).
const _fieldRulesOneof = <String, int>{
  'float': 1,
  'double': 2,
  'int32': 3,
  'int64': 4,
  'uint32': 5,
  'uint64': 6,
  'sint32': 7,
  'sint64': 8,
  'fixed32': 9,
  'fixed64': 10,
  'sfixed32': 11,
  'sfixed64': 12,
  'bool': 13,
  'string': 14,
  'bytes': 15,
  'enum': 16,
  'repeated': 18,
  'map': 19,
};

/// Maps a proto field type to the protovalidate rule type name used in rule ids
/// and rule paths (e.g. `TYPE_SINT64` → `sint64`). Returns null for types that
/// have no scalar rule set (message/group).
String? scalarTypeName(PType type) {
  switch (type) {
    case PType.TYPE_FLOAT:
      return 'float';
    case PType.TYPE_DOUBLE:
      return 'double';
    case PType.TYPE_INT32:
      return 'int32';
    case PType.TYPE_INT64:
      return 'int64';
    case PType.TYPE_UINT32:
      return 'uint32';
    case PType.TYPE_UINT64:
      return 'uint64';
    case PType.TYPE_SINT32:
      return 'sint32';
    case PType.TYPE_SINT64:
      return 'sint64';
    case PType.TYPE_FIXED32:
      return 'fixed32';
    case PType.TYPE_FIXED64:
      return 'fixed64';
    case PType.TYPE_SFIXED32:
      return 'sfixed32';
    case PType.TYPE_SFIXED64:
      return 'sfixed64';
    case PType.TYPE_BOOL:
      return 'bool';
    case PType.TYPE_STRING:
      return 'string';
    case PType.TYPE_BYTES:
      return 'bytes';
    case PType.TYPE_ENUM:
      return 'enum';
    default:
      return null;
  }
}

/// The rule-path element for a rule type's `FieldRules` oneof field, e.g.
/// `string` → `{14, "string", TYPE_MESSAGE}`.
FieldPathElement typeElement(String typeName) =>
    pathElement(_fieldRulesOneof[typeName]!, typeName, PType.TYPE_MESSAGE);

/// Rule-path prefix for rules applied to each element of a repeated field:
/// `repeated.items`.
List<FieldPathElement> itemsPrefix() => [
      pathElement(18, 'repeated', PType.TYPE_MESSAGE),
      pathElement(4, 'items', PType.TYPE_MESSAGE),
    ];

/// Rule-path prefix for rules applied to map keys (`map.keys`) or values
/// (`map.values`).
List<FieldPathElement> mapEntryPrefix({required bool forKey}) => [
      pathElement(19, 'map', PType.TYPE_MESSAGE),
      forKey
          ? pathElement(4, 'keys', PType.TYPE_MESSAGE)
          : pathElement(5, 'values', PType.TYPE_MESSAGE),
    ];

/// The rule-path element for the field-level `required` rule.
FieldPathElement requiredElement() =>
    pathElement(25, 'required', PType.TYPE_BOOL);
