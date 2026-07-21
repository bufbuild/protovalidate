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

import 'descriptor_index.dart';
import 'errors.dart';
import 'field_path.dart';
import 'gen/buf/validate/validate.pb.dart';
import 'rule_ids.dart';
import 'rules/bool_rules.dart';
import 'rules/bytes_rules.dart';
import 'rules/context.dart';
import 'rules/enum_rules.dart';
import 'rules/map_rules.dart';
import 'rules/number_rules.dart';
import 'rules/repeated_rules.dart';
import 'rules/string_rules.dart';

// FieldRules `type` oneof field numbers, keyed by the value's proto type.
const _oneofNumber = <PType, int>{
  PType.TYPE_FLOAT: 1,
  PType.TYPE_DOUBLE: 2,
  PType.TYPE_INT32: 3,
  PType.TYPE_INT64: 4,
  PType.TYPE_UINT32: 5,
  PType.TYPE_UINT64: 6,
  PType.TYPE_SINT32: 7,
  PType.TYPE_SINT64: 8,
  PType.TYPE_FIXED32: 9,
  PType.TYPE_FIXED64: 10,
  PType.TYPE_SFIXED32: 11,
  PType.TYPE_SFIXED64: 12,
  PType.TYPE_BOOL: 13,
  PType.TYPE_STRING: 14,
  PType.TYPE_BYTES: 15,
  PType.TYPE_ENUM: 16,
};

// FieldRules `type` oneof field number for the repeated and map rule sets.
const _repeatedOneof = 18;
const _mapOneof = 19;

/// Walks a message tree and collects the [Violation]s produced by the supported
/// standard rules. One instance is used per top-level `validate` call.
class Evaluator {
  Evaluator(this._index);

  final DescriptorIndex _index;
  final List<Violation> violations = [];

  /// Validates [message] against [info]'s field rules, prefixing every
  /// violation's field path with [prefix].
  void evaluateMessage(
    GeneratedMessage message,
    MessageDescriptorInfo info,
    List<FieldPathElement> prefix,
  ) {
    for (final field in info.fields) {
      _evaluateField(field, message, prefix);
    }
  }

  void _evaluateField(
    FieldDescriptorInfo field,
    GeneratedMessage message,
    List<FieldPathElement> prefix,
  ) {
    final rules = field.rules;
    final ignore = rules?.ignore ?? Ignore.IGNORE_UNSPECIFIED;
    if (ignore == Ignore.IGNORE_ALWAYS) return;

    if (rules != null) _checkRuleType(field, rules);

    if (rules != null && rules.required) {
      if (!_isPresent(field, message)) {
        violations.add(buildViolation(
          field: [...prefix, singularField(field)],
          rule: [requiredElement()],
          ruleId: 'required',
          message: 'value is required',
        ));
        return;
      }
    } else if (_shouldSkip(field, message, ignore)) {
      return;
    }

    if (field.isMap) {
      _evaluateMap(field, message, prefix);
    } else if (field.isRepeated) {
      _evaluateRepeated(field, message, prefix);
    } else {
      _evaluateSingular(field, message, prefix);
    }
  }

  void _evaluateSingular(
    FieldDescriptorInfo field,
    GeneratedMessage message,
    List<FieldPathElement> prefix,
  ) {
    final value = message.getField(field.number);
    final fieldPath = [...prefix, singularField(field)];
    final rules = field.rules;
    if (rules != null) {
      final enumNumber = field.protoType == PType.TYPE_ENUM
          ? _enumNumber(message, field.number, value)
          : null;
      _applyScalarRulesForType(
          rules, field.protoType, field.enumType, value, fieldPath, const [], false, enumNumber);
    }
    if (_isMessage(field.protoType) &&
        field.messageType != null &&
        message.getFieldOrNull(field.number) != null) {
      final info = _index.message(field.messageType!);
      if (info != null) {
        evaluateMessage(value as GeneratedMessage, info, fieldPath);
      }
    }
  }

  void _evaluateRepeated(
    FieldDescriptorInfo field,
    GeneratedMessage message,
    List<FieldPathElement> prefix,
  ) {
    final list = message.getField(field.number) as List;
    final rules = field.rules;
    FieldRules? itemRules;
    if (rules != null && rules.hasField(_repeatedOneof)) {
      final repeated = rules.getField(_repeatedOneof) as GeneratedMessage;
      applyRepeatedRules(
        repeated,
        list,
        RuleContext(
          fieldPath: [...prefix, singularField(field)],
          prefix: const [],
          typeName: 'repeated',
          sink: violations,
        ),
      );
      if (repeated.hasField(4)) {
        itemRules = repeated.getField(4) as FieldRules;
      }
    }
    for (var i = 0; i < list.length; i++) {
      _applyElementRules(
        itemRules,
        list[i],
        field.protoType,
        field.messageType,
        field.enumType,
        [...prefix, repeatedElement(field, i)],
        itemsPrefix(),
        forKey: false,
      );
    }
  }

  void _evaluateMap(
    FieldDescriptorInfo field,
    GeneratedMessage message,
    List<FieldPathElement> prefix,
  ) {
    final map = message.getField(field.number) as Map;
    final rules = field.rules;
    FieldRules? keyRules;
    FieldRules? valueRules;
    if (rules != null && rules.hasField(_mapOneof)) {
      final mapRules = rules.getField(_mapOneof) as GeneratedMessage;
      applyMapRules(
        mapRules,
        map,
        RuleContext(
          fieldPath: [...prefix, singularField(field)],
          prefix: const [],
          typeName: 'map',
          sink: violations,
        ),
      );
      if (mapRules.hasField(4)) keyRules = mapRules.getField(4) as FieldRules;
      if (mapRules.hasField(5)) valueRules = mapRules.getField(5) as FieldRules;
    }
    map.forEach((key, value) {
      final entryPath = [...prefix, mapEntry(field, key)];
      _applyElementRules(
        keyRules,
        key,
        field.mapKey!.protoType,
        null,
        null,
        entryPath,
        mapEntryPrefix(forKey: true),
        forKey: true,
      );
      _applyElementRules(
        valueRules,
        value,
        field.mapValue!.protoType,
        field.mapValue!.messageType,
        field.mapValue!.enumType,
        entryPath,
        mapEntryPrefix(forKey: false),
        forKey: false,
      );
    });
  }

  /// Applies a nested `FieldRules` ([rules], which may be null) to a repeated
  /// element or map key/value, then recurses into message values.
  void _applyElementRules(
    FieldRules? rules,
    Object? value,
    PType valueType,
    String? messageType,
    String? enumType,
    List<FieldPathElement> fieldPath,
    List<FieldPathElement> rulePrefix, {
    required bool forKey,
  }) {
    if (rules != null) {
      if (rules.ignore == Ignore.IGNORE_ALWAYS) return;
      if (rules.ignore == Ignore.IGNORE_IF_ZERO_VALUE &&
          _isZeroValue(valueType, value)) {
        return;
      }
      _applyScalarRulesForType(
          rules, valueType, enumType, value!, fieldPath, rulePrefix, forKey, null);
    }
    if (_isMessage(valueType) && messageType != null && value != null) {
      final info = _index.message(messageType);
      if (info != null) {
        evaluateMessage(value as GeneratedMessage, info, fieldPath);
      }
    }
  }

  void _applyScalarRulesForType(
    GeneratedMessage rules,
    PType valueType,
    String? enumType,
    Object value,
    List<FieldPathElement> fieldPath,
    List<FieldPathElement> rulePrefix,
    bool forKey,
    int? enumNumber,
  ) {
    final oneof = _oneofNumber[valueType];
    if (oneof == null || !rules.hasField(oneof)) return;
    final sub = rules.getField(oneof) as GeneratedMessage;
    final typeName = scalarTypeName(valueType)!;
    final ctx = RuleContext(
      fieldPath: fieldPath,
      prefix: rulePrefix,
      typeName: typeName,
      sink: violations,
      forKey: forKey,
    );
    switch (valueType) {
      case PType.TYPE_STRING:
        applyStringRules(sub, value as String, ctx);
      case PType.TYPE_BYTES:
        applyBytesRules(sub, (value as List).cast<int>(), ctx);
      case PType.TYPE_BOOL:
        applyBoolRules(sub, value as bool, ctx);
      case PType.TYPE_ENUM:
        applyEnumRules(sub, enumNumber ?? (value as ProtobufEnum).value,
            enumType != null ? _index.enumNumbers(enumType) : null, ctx);
      default:
        applyNumberRules(sub, value, valueType, ctx);
    }
  }

  // Reads the numeric value of a singular enum field, including values not
  // defined by the enum type, which Dart stores as an unknown varint field
  // rather than exposing through getField.
  int _enumNumber(GeneratedMessage message, int fieldNumber, Object value) {
    final unknown = message.unknownFields.getField(fieldNumber);
    if (unknown != null && unknown.varints.isNotEmpty) {
      return unknown.varints.first.toInt();
    }
    return (value as ProtobufEnum).value;
  }

  // --- presence / ignore helpers ---

  bool _shouldSkip(FieldDescriptorInfo field, GeneratedMessage message, Ignore ignore) {
    if (ignore == Ignore.IGNORE_IF_ZERO_VALUE) {
      return _isZeroOrUnset(field, message);
    }
    // IGNORE_UNSPECIFIED: skip only presence-tracking fields that are unset.
    if (field.presence == Presence.explicit) {
      return message.getFieldOrNull(field.number) == null;
    }
    return false;
  }

  bool _isPresent(FieldDescriptorInfo field, GeneratedMessage message) {
    if (field.isRepeated || field.isMap) {
      return (message.getField(field.number) as dynamic).isNotEmpty as bool;
    }
    if (field.presence == Presence.explicit) {
      return message.getFieldOrNull(field.number) != null;
    }
    return !_isZeroScalar(field, message);
  }

  bool _isZeroOrUnset(FieldDescriptorInfo field, GeneratedMessage message) {
    if (field.isRepeated || field.isMap) {
      return (message.getField(field.number) as dynamic).isEmpty as bool;
    }
    // For presence-tracking fields (messages, proto2/proto3 optional, oneof
    // members), IGNORE_IF_ZERO_VALUE is a no-op equivalent to IGNORE_UNSPECIFIED
    // (skip only when unset), so an explicitly-set value — even the type's zero
    // or a proto2 custom default — is still validated.
    if (field.presence == Presence.explicit) {
      return message.getFieldOrNull(field.number) == null;
    }
    return _isZeroScalar(field, message);
  }

  bool _isZeroScalar(FieldDescriptorInfo field, GeneratedMessage message) {
    final value = message.getField(field.number);
    switch (field.protoType) {
      case PType.TYPE_STRING:
        return (value as String).isEmpty;
      case PType.TYPE_BYTES:
        return (value as List).isEmpty;
      case PType.TYPE_BOOL:
        return value == false;
      case PType.TYPE_ENUM:
        return (value as ProtobufEnum).value == 0;
      case PType.TYPE_FLOAT:
      case PType.TYPE_DOUBLE:
        return value == 0.0;
      case PType.TYPE_INT64:
      case PType.TYPE_UINT64:
      case PType.TYPE_SINT64:
      case PType.TYPE_FIXED64:
      case PType.TYPE_SFIXED64:
        return value == Int64.ZERO;
      default:
        return value == 0;
    }
  }

  // Whether a value equals its type's zero value, for IGNORE_IF_ZERO_VALUE on
  // repeated items and map keys/values.
  bool _isZeroValue(PType type, Object? value) {
    switch (type) {
      case PType.TYPE_STRING:
        return (value as String).isEmpty;
      case PType.TYPE_BYTES:
        return (value as List).isEmpty;
      case PType.TYPE_BOOL:
        return value == false;
      case PType.TYPE_ENUM:
        return (value as ProtobufEnum).value == 0;
      case PType.TYPE_FLOAT:
      case PType.TYPE_DOUBLE:
        return value == 0.0;
      case PType.TYPE_INT64:
      case PType.TYPE_UINT64:
      case PType.TYPE_SINT64:
      case PType.TYPE_FIXED64:
      case PType.TYPE_SFIXED64:
        return value == Int64.ZERO;
      case PType.TYPE_MESSAGE:
      case PType.TYPE_GROUP:
        return value == null;
      default:
        return value == 0;
    }
  }

  bool _isMessage(PType type) =>
      type == PType.TYPE_MESSAGE || type == PType.TYPE_GROUP;

  // Rejects a scalar field that carries a rule set for a different scalar type
  // (e.g. `double` rules on an `int32` field), which protovalidate treats as a
  // compile-time error.
  void _checkRuleType(FieldDescriptorInfo field, FieldRules rules) {
    if (field.isRepeated || field.isMap) return;
    final expected = _oneofNumber[field.protoType];
    if (expected == null) return; // message/group/well-known type field
    if (rules.whichType() == FieldRules_Type.notSet) return;
    if (!rules.hasField(expected)) {
      throw CompilationError(
          'rules for ${rules.whichType()} do not match field type ${field.protoType}');
    }
  }
}
