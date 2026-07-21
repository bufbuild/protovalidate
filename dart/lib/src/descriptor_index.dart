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

import 'gen/buf/validate/validate.pb.dart';
import 'gen/google/protobuf/descriptor.pb.dart';

/// How a field expresses presence, which decides whether unset fields are
/// validated. See the `Ignore` enum documentation in validate.proto.
enum Presence {
  /// The field tracks presence: message fields, `optional`, oneof members, and
  /// all proto2 / editions-explicit fields. Unset means "no value".
  explicit,

  /// The field does not track presence: proto3 non-optional scalars/enums, and
  /// repeated/map fields. Such fields are always validated.
  implicit,
}

/// An index over a [FileDescriptorSet] that resolves message and enum types by
/// fully-qualified name and exposes the [FieldRules] declared on each field.
///
/// The runtime reads *structure and rules* from this index and reads *values*
/// from the live [GeneratedMessage] via reflection, joining the two by the
/// message's fully-qualified name.
class DescriptorIndex {
  DescriptorIndex(FileDescriptorSet fdset) {
    _registry = ExtensionRegistry();
    Validate.registerAllExtensions(_registry);
    // Re-parse the set with the buf.validate extensions registered so field and
    // message options decode into FieldRules/MessageRules rather than unknown
    // fields. Re-parsing is required because the incoming set may have been
    // decoded without the extension registry.
    final resolved = FileDescriptorSet.fromBuffer(fdset.writeToBuffer(), _registry);
    for (final file in resolved.file) {
      _indexFile(file);
    }
    // Second pass: resolve field type references and compute per-field metadata,
    // now that every message and enum is registered.
    for (final msg in _messages.values) {
      msg._resolve(this);
    }
  }

  /// Parses [bytes] as a serialized [FileDescriptorSet] and indexes it.
  factory DescriptorIndex.fromBuffer(List<int> bytes) =>
      DescriptorIndex(FileDescriptorSet.fromBuffer(bytes));

  late final ExtensionRegistry _registry;
  final Map<String, MessageDescriptorInfo> _messages = {};
  final Map<String, Set<int>> _enumNumbers = {};

  /// The extension registry holding the buf.validate extensions.
  ExtensionRegistry get registry => _registry;

  /// Returns the message info for [fullName] (no leading dot), or null.
  MessageDescriptorInfo? message(String fullName) => _messages[fullName];

  /// Returns the set of defined numbers for the enum [fullName], or null.
  Set<int>? enumNumbers(String fullName) => _enumNumbers[fullName];

  void _indexFile(FileDescriptorProto file) {
    final pkg = file.hasPackage() ? file.package : '';
    final syntax = _syntaxOf(file);
    for (final msg in file.messageType) {
      _indexMessage(pkg, msg, syntax);
    }
    for (final en in file.enumType) {
      _indexEnum(pkg, en);
    }
  }

  void _indexMessage(String prefix, DescriptorProto msg, _Syntax syntax) {
    final fullName = prefix.isEmpty ? msg.name : '$prefix.${msg.name}';
    _messages[fullName] = MessageDescriptorInfo._(fullName, msg, syntax);
    for (final nested in msg.nestedType) {
      _indexMessage(fullName, nested, syntax);
    }
    for (final en in msg.enumType) {
      _indexEnum(fullName, en);
    }
  }

  void _indexEnum(String prefix, EnumDescriptorProto en) {
    final fullName = prefix.isEmpty ? en.name : '$prefix.${en.name}';
    _enumNumbers[fullName] = {for (final v in en.value) v.number};
  }
}

enum _Syntax { proto2, proto3, editions }

_Syntax _syntaxOf(FileDescriptorProto file) {
  switch (file.hasSyntax() ? file.syntax : 'proto2') {
    case 'proto3':
      return _Syntax.proto3;
    case 'editions':
      return _Syntax.editions;
    default:
      return _Syntax.proto2;
  }
}

/// Resolved information about a single message type.
class MessageDescriptorInfo {
  MessageDescriptorInfo._(this.fullName, this._proto, this._syntax);

  final String fullName;
  final DescriptorProto _proto;
  final _Syntax _syntax;

  /// True if this message is a synthetic map entry (`map<k, v>`).
  bool get isMapEntry => _proto.hasOptions() && _proto.options.mapEntry;

  /// Fields in declaration order.
  late final List<FieldDescriptorInfo> fields = _proto.field
      .map((f) => FieldDescriptorInfo._(f, this))
      .toList(growable: false);

  /// Names of the real (non-synthetic) oneofs declared on this message.
  late final List<String> oneofNames =
      _proto.oneofDecl.map((o) => o.name).toList(growable: false);

  void _resolve(DescriptorIndex index) {
    for (final f in fields) {
      f._resolve(index);
    }
  }
}

/// Resolved information about a single field, including its [FieldRules].
class FieldDescriptorInfo {
  FieldDescriptorInfo._(this._proto, this._parent);

  final FieldDescriptorProto _proto;
  final MessageDescriptorInfo _parent;

  int get number => _proto.number;
  String get name => _proto.name;
  FieldDescriptorProto_Type get protoType => _proto.type;

  /// The validation rules on this field, or null if none are declared.
  late final FieldRules? rules = _readRules();

  /// True for `repeated` fields that are not maps.
  bool get isRepeated =>
      _proto.label == FieldDescriptorProto_Label.LABEL_REPEATED && !isMap;

  /// True for map fields. Resolved in [_resolve].
  bool get isMap => _mapEntry != null;

  /// For map fields, the synthetic key/value field descriptors.
  MessageDescriptorInfo? _mapEntry;
  FieldDescriptorInfo? get mapKey => _mapEntry?.fields[0];
  FieldDescriptorInfo? get mapValue => _mapEntry?.fields[1];

  /// Fully-qualified type name (no leading dot) for message/group fields.
  String? get messageType => _isMessage ? _stripDot(_proto.typeName) : null;

  /// Fully-qualified type name (no leading dot) for enum fields.
  String? get enumType =>
      _proto.type == FieldDescriptorProto_Type.TYPE_ENUM
          ? _stripDot(_proto.typeName)
          : null;

  bool get _isMessage =>
      _proto.type == FieldDescriptorProto_Type.TYPE_MESSAGE ||
      _proto.type == FieldDescriptorProto_Type.TYPE_GROUP;

  /// The index of the real oneof this field belongs to, or null. Synthetic
  /// oneofs (generated for proto3 `optional`) are not counted.
  int? get realOneofIndex {
    if (!_proto.hasOneofIndex()) return null;
    if (_proto.hasProto3Optional() && _proto.proto3Optional) return null;
    return _proto.oneofIndex;
  }

  /// How this field expresses presence.
  late final Presence presence = _computePresence();

  void _resolve(DescriptorIndex index) {
    if (_proto.label == FieldDescriptorProto_Label.LABEL_REPEATED &&
        _proto.type == FieldDescriptorProto_Type.TYPE_MESSAGE) {
      final entry = index.message(_stripDot(_proto.typeName));
      if (entry != null && entry.isMapEntry) {
        _mapEntry = entry;
      }
    }
  }

  FieldRules? _readRules() {
    if (!_proto.hasOptions()) return null;
    final opts = _proto.options;
    if (!opts.hasExtension(Validate.field_1159)) return null;
    return opts.getExtension(Validate.field_1159) as FieldRules;
  }

  Presence _computePresence() {
    if (_proto.label == FieldDescriptorProto_Label.LABEL_REPEATED) {
      return Presence.implicit; // repeated + map never track presence
    }
    if (_isMessage) return Presence.explicit; // messages always track presence
    switch (_parent._syntax) {
      case _Syntax.proto2:
        return Presence.explicit;
      case _Syntax.proto3:
        if (_proto.hasProto3Optional() && _proto.proto3Optional) {
          return Presence.explicit;
        }
        if (realOneofIndex != null) return Presence.explicit;
        return Presence.implicit;
      case _Syntax.editions:
        // Editions default to explicit presence; implicit/legacy-required are
        // opt-in via features. Full feature resolution is future work, so we
        // approximate with the common case.
        if (realOneofIndex != null) return Presence.explicit;
        return Presence.explicit;
    }
  }
}

String _stripDot(String typeName) =>
    typeName.startsWith('.') ? typeName.substring(1) : typeName;
