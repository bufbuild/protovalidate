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

import 'descriptor_index.dart';
import 'gen/buf/validate/validate.pb.dart';
import 'gen/google/protobuf/descriptor.pbenum.dart';

/// Shorthand for the protobuf field-type enum used in field paths.
typedef PType = FieldDescriptorProto_Type;

/// Builds a bare path element with number, name, and type.
FieldPathElement pathElement(int number, String name, PType type) =>
    FieldPathElement()
      ..fieldNumber = number
      ..fieldName = name
      ..fieldType = type;

/// Path element for a singular scalar, enum, or message field.
FieldPathElement singularField(FieldDescriptorInfo f) =>
    pathElement(f.number, f.name, f.protoType);

/// Path element for the element at [index] of a repeated field. The element
/// type is the field's own proto type (the element type in descriptors).
FieldPathElement repeatedElement(FieldDescriptorInfo f, int index) =>
    pathElement(f.number, f.name, f.protoType)..index = Int64(index);

/// Path element for a map field itself (used by map-level rules such as
/// `min_pairs`), carrying no subscript or key/value type.
FieldPathElement mapField(FieldDescriptorInfo f) =>
    pathElement(f.number, f.name, PType.TYPE_MESSAGE);

/// Path element for the map entry keyed by [key] (a live map key value),
/// carrying the key/value types and the typed key subscript.
FieldPathElement mapEntry(FieldDescriptorInfo f, Object? key) {
  final keyType = f.mapKey!.protoType;
  final element = pathElement(f.number, f.name, PType.TYPE_MESSAGE)
    ..keyType = keyType
    ..valueType = f.mapValue!.protoType;
  _setKeySubscript(element, keyType, key);
  return element;
}

void _setKeySubscript(FieldPathElement element, PType keyType, Object? key) {
  switch (keyType) {
    case PType.TYPE_BOOL:
      element.boolKey = key as bool;
    case PType.TYPE_STRING:
      element.stringKey = key as String;
    case PType.TYPE_INT32 ||
          PType.TYPE_SINT32 ||
          PType.TYPE_SFIXED32 ||
          PType.TYPE_INT64 ||
          PType.TYPE_SINT64 ||
          PType.TYPE_SFIXED64:
      element.intKey = _toInt64(key);
    case PType.TYPE_UINT32 ||
          PType.TYPE_FIXED32 ||
          PType.TYPE_UINT64 ||
          PType.TYPE_FIXED64:
      element.uintKey = _toInt64(key);
    default:
      break;
  }
}

Int64 _toInt64(Object? key) => key is Int64 ? key : Int64(key as int);

/// Assembles a [FieldPath] from an ordered list of elements.
FieldPath fieldPath(List<FieldPathElement> elements) =>
    FieldPath()..elements.addAll(elements);

/// Constructs a [Violation] with the given absolute field path, local rule
/// path, id, and message.
Violation buildViolation({
  required List<FieldPathElement> field,
  required List<FieldPathElement> rule,
  required String ruleId,
  required String message,
  bool forKey = false,
}) {
  final violation = Violation()
    ..field_5 = fieldPath(field)
    ..rule = fieldPath(rule)
    ..ruleId = ruleId
    ..message = message;
  if (forKey) violation.forKey = true;
  return violation;
}
