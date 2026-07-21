// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/messages.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'other_package/embed.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TestMsg extends $pb.GeneratedMessage {
  factory TestMsg({
    $core.String? const_1,
    TestMsg? nested,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (nested != null) result.nested = nested;
    return result;
  }

  TestMsg._();

  factory TestMsg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TestMsg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TestMsg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'const')
    ..aOM<TestMsg>(2, _omitFieldNames ? '' : 'nested',
        subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestMsg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TestMsg copyWith(void Function(TestMsg) updates) =>
      super.copyWith((message) => updates(message as TestMsg)) as TestMsg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TestMsg create() => TestMsg._();
  @$core.override
  TestMsg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TestMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMsg>(create);
  static TestMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get const_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set const_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  @$pb.TagNumber(2)
  TestMsg get nested => $_getN(1);
  @$pb.TagNumber(2)
  set nested(TestMsg value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNested() => $_has(1);
  @$pb.TagNumber(2)
  void clearNested() => $_clearField(2);
  @$pb.TagNumber(2)
  TestMsg ensureNested() => $_ensure(1);
}

class MessageNone_NoneMsg extends $pb.GeneratedMessage {
  factory MessageNone_NoneMsg() => create();

  MessageNone_NoneMsg._();

  factory MessageNone_NoneMsg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageNone_NoneMsg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageNone.NoneMsg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageNone_NoneMsg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageNone_NoneMsg copyWith(void Function(MessageNone_NoneMsg) updates) =>
      super.copyWith((message) => updates(message as MessageNone_NoneMsg))
          as MessageNone_NoneMsg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageNone_NoneMsg create() => MessageNone_NoneMsg._();
  @$core.override
  MessageNone_NoneMsg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageNone_NoneMsg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageNone_NoneMsg>(create);
  static MessageNone_NoneMsg? _defaultInstance;
}

class MessageNone extends $pb.GeneratedMessage {
  factory MessageNone({
    MessageNone_NoneMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageNone._();

  factory MessageNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<MessageNone_NoneMsg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: MessageNone_NoneMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageNone copyWith(void Function(MessageNone) updates) =>
      super.copyWith((message) => updates(message as MessageNone))
          as MessageNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageNone create() => MessageNone._();
  @$core.override
  MessageNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageNone>(create);
  static MessageNone? _defaultInstance;

  @$pb.TagNumber(1)
  MessageNone_NoneMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(MessageNone_NoneMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  MessageNone_NoneMsg ensureVal() => $_ensure(0);
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    TestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Message._();

  factory Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Message',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'val', subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Message copyWith(void Function(Message) updates) =>
      super.copyWith((message) => updates(message as Message)) as Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  @$core.override
  Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  TestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureVal() => $_ensure(0);
}

class MessageCrossPackage extends $pb.GeneratedMessage {
  factory MessageCrossPackage({
    $0.Embed? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageCrossPackage._();

  factory MessageCrossPackage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageCrossPackage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageCrossPackage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Embed>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Embed.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageCrossPackage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageCrossPackage copyWith(void Function(MessageCrossPackage) updates) =>
      super.copyWith((message) => updates(message as MessageCrossPackage))
          as MessageCrossPackage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageCrossPackage create() => MessageCrossPackage._();
  @$core.override
  MessageCrossPackage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageCrossPackage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageCrossPackage>(create);
  static MessageCrossPackage? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Embed get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Embed value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Embed ensureVal() => $_ensure(0);
}

class MessageSkip extends $pb.GeneratedMessage {
  factory MessageSkip({
    TestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageSkip._();

  factory MessageSkip.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageSkip.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageSkip',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'val', subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageSkip clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageSkip copyWith(void Function(MessageSkip) updates) =>
      super.copyWith((message) => updates(message as MessageSkip))
          as MessageSkip;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageSkip create() => MessageSkip._();
  @$core.override
  MessageSkip createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageSkip getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageSkip>(create);
  static MessageSkip? _defaultInstance;

  @$pb.TagNumber(1)
  TestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureVal() => $_ensure(0);
}

class MessageRequired extends $pb.GeneratedMessage {
  factory MessageRequired({
    TestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageRequired._();

  factory MessageRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'val', subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequired copyWith(void Function(MessageRequired) updates) =>
      super.copyWith((message) => updates(message as MessageRequired))
          as MessageRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRequired create() => MessageRequired._();
  @$core.override
  MessageRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageRequired>(create);
  static MessageRequired? _defaultInstance;

  @$pb.TagNumber(1)
  TestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureVal() => $_ensure(0);
}

class MessageRequiredButOptional extends $pb.GeneratedMessage {
  factory MessageRequiredButOptional({
    TestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageRequiredButOptional._();

  factory MessageRequiredButOptional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageRequiredButOptional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageRequiredButOptional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'val', subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequiredButOptional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequiredButOptional copyWith(
          void Function(MessageRequiredButOptional) updates) =>
      super.copyWith(
              (message) => updates(message as MessageRequiredButOptional))
          as MessageRequiredButOptional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRequiredButOptional create() => MessageRequiredButOptional._();
  @$core.override
  MessageRequiredButOptional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageRequiredButOptional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageRequiredButOptional>(create);
  static MessageRequiredButOptional? _defaultInstance;

  @$pb.TagNumber(1)
  TestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureVal() => $_ensure(0);
}

enum MessageRequiredOneof_One { val, notSet }

class MessageRequiredOneof extends $pb.GeneratedMessage {
  factory MessageRequiredOneof({
    TestMsg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  MessageRequiredOneof._();

  factory MessageRequiredOneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageRequiredOneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, MessageRequiredOneof_One>
      _MessageRequiredOneof_OneByTag = {
    1: MessageRequiredOneof_One.val,
    0: MessageRequiredOneof_One.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageRequiredOneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'val', subBuilder: TestMsg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequiredOneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRequiredOneof copyWith(void Function(MessageRequiredOneof) updates) =>
      super.copyWith((message) => updates(message as MessageRequiredOneof))
          as MessageRequiredOneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRequiredOneof create() => MessageRequiredOneof._();
  @$core.override
  MessageRequiredOneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageRequiredOneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageRequiredOneof>(create);
  static MessageRequiredOneof? _defaultInstance;

  @$pb.TagNumber(1)
  MessageRequiredOneof_One whichOne() =>
      _MessageRequiredOneof_OneByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearOne() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TestMsg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureVal() => $_ensure(0);
}

class MessageWith3dInside extends $pb.GeneratedMessage {
  factory MessageWith3dInside() => create();

  MessageWith3dInside._();

  factory MessageWith3dInside.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageWith3dInside.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageWith3dInside',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageWith3dInside clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageWith3dInside copyWith(void Function(MessageWith3dInside) updates) =>
      super.copyWith((message) => updates(message as MessageWith3dInside))
          as MessageWith3dInside;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageWith3dInside create() => MessageWith3dInside._();
  @$core.override
  MessageWith3dInside createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageWith3dInside getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageWith3dInside>(create);
  static MessageWith3dInside? _defaultInstance;
}

class MessageOneofSingleField extends $pb.GeneratedMessage {
  factory MessageOneofSingleField({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofSingleField._();

  factory MessageOneofSingleField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofSingleField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofSingleField',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofSingleField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofSingleField copyWith(
          void Function(MessageOneofSingleField) updates) =>
      super.copyWith((message) => updates(message as MessageOneofSingleField))
          as MessageOneofSingleField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofSingleField create() => MessageOneofSingleField._();
  @$core.override
  MessageOneofSingleField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofSingleField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofSingleField>(create);
  static MessageOneofSingleField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofSingleFieldRequired extends $pb.GeneratedMessage {
  factory MessageOneofSingleFieldRequired({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofSingleFieldRequired._();

  factory MessageOneofSingleFieldRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofSingleFieldRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofSingleFieldRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofSingleFieldRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofSingleFieldRequired copyWith(
          void Function(MessageOneofSingleFieldRequired) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofSingleFieldRequired))
          as MessageOneofSingleFieldRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofSingleFieldRequired create() =>
      MessageOneofSingleFieldRequired._();
  @$core.override
  MessageOneofSingleFieldRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofSingleFieldRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofSingleFieldRequired>(
          create);
  static MessageOneofSingleFieldRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofMultipleFields extends $pb.GeneratedMessage {
  factory MessageOneofMultipleFields({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofMultipleFields._();

  factory MessageOneofMultipleFields.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofMultipleFields.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofMultipleFields',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleFields clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleFields copyWith(
          void Function(MessageOneofMultipleFields) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofMultipleFields))
          as MessageOneofMultipleFields;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleFields create() => MessageOneofMultipleFields._();
  @$core.override
  MessageOneofMultipleFields createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleFields getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofMultipleFields>(create);
  static MessageOneofMultipleFields? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofMultipleFieldsRequired extends $pb.GeneratedMessage {
  factory MessageOneofMultipleFieldsRequired({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofMultipleFieldsRequired._();

  factory MessageOneofMultipleFieldsRequired.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofMultipleFieldsRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofMultipleFieldsRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleFieldsRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleFieldsRequired copyWith(
          void Function(MessageOneofMultipleFieldsRequired) updates) =>
      super.copyWith((message) =>
              updates(message as MessageOneofMultipleFieldsRequired))
          as MessageOneofMultipleFieldsRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleFieldsRequired create() =>
      MessageOneofMultipleFieldsRequired._();
  @$core.override
  MessageOneofMultipleFieldsRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleFieldsRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofMultipleFieldsRequired>(
          create);
  static MessageOneofMultipleFieldsRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofMultipleSharedFields extends $pb.GeneratedMessage {
  factory MessageOneofMultipleSharedFields({
    $core.String? strField,
    $core.bool? boolField,
    $core.int? intField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    if (intField != null) result.intField = intField;
    return result;
  }

  MessageOneofMultipleSharedFields._();

  factory MessageOneofMultipleSharedFields.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofMultipleSharedFields.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofMultipleSharedFields',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..aI(3, _omitFieldNames ? '' : 'intField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleSharedFields clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofMultipleSharedFields copyWith(
          void Function(MessageOneofMultipleSharedFields) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofMultipleSharedFields))
          as MessageOneofMultipleSharedFields;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleSharedFields create() =>
      MessageOneofMultipleSharedFields._();
  @$core.override
  MessageOneofMultipleSharedFields createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofMultipleSharedFields getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofMultipleSharedFields>(
          create);
  static MessageOneofMultipleSharedFields? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get intField => $_getIZ(2);
  @$pb.TagNumber(3)
  set intField($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntField() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntField() => $_clearField(3);
}

class MessageOneofUnknownFieldName extends $pb.GeneratedMessage {
  factory MessageOneofUnknownFieldName({
    $core.String? strField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    return result;
  }

  MessageOneofUnknownFieldName._();

  factory MessageOneofUnknownFieldName.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofUnknownFieldName.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofUnknownFieldName',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofUnknownFieldName clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofUnknownFieldName copyWith(
          void Function(MessageOneofUnknownFieldName) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofUnknownFieldName))
          as MessageOneofUnknownFieldName;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofUnknownFieldName create() =>
      MessageOneofUnknownFieldName._();
  @$core.override
  MessageOneofUnknownFieldName createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofUnknownFieldName getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofUnknownFieldName>(create);
  static MessageOneofUnknownFieldName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);
}

class MessageOneofDuplicateField extends $pb.GeneratedMessage {
  factory MessageOneofDuplicateField({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofDuplicateField._();

  factory MessageOneofDuplicateField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofDuplicateField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofDuplicateField',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofDuplicateField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofDuplicateField copyWith(
          void Function(MessageOneofDuplicateField) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofDuplicateField))
          as MessageOneofDuplicateField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofDuplicateField create() => MessageOneofDuplicateField._();
  @$core.override
  MessageOneofDuplicateField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofDuplicateField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofDuplicateField>(create);
  static MessageOneofDuplicateField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofZeroFields extends $pb.GeneratedMessage {
  factory MessageOneofZeroFields({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofZeroFields._();

  factory MessageOneofZeroFields.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofZeroFields.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofZeroFields',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofZeroFields clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofZeroFields copyWith(
          void Function(MessageOneofZeroFields) updates) =>
      super.copyWith((message) => updates(message as MessageOneofZeroFields))
          as MessageOneofZeroFields;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofZeroFields create() => MessageOneofZeroFields._();
  @$core.override
  MessageOneofZeroFields createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofZeroFields getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofZeroFields>(create);
  static MessageOneofZeroFields? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofUnsatisfiable extends $pb.GeneratedMessage {
  factory MessageOneofUnsatisfiable({
    $core.bool? a,
    $core.bool? b,
    $core.bool? c,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    if (c != null) result.c = c;
    return result;
  }

  MessageOneofUnsatisfiable._();

  factory MessageOneofUnsatisfiable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofUnsatisfiable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofUnsatisfiable',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'a')
    ..aOB(2, _omitFieldNames ? '' : 'b')
    ..aOB(3, _omitFieldNames ? '' : 'c')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofUnsatisfiable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofUnsatisfiable copyWith(
          void Function(MessageOneofUnsatisfiable) updates) =>
      super.copyWith((message) => updates(message as MessageOneofUnsatisfiable))
          as MessageOneofUnsatisfiable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofUnsatisfiable create() => MessageOneofUnsatisfiable._();
  @$core.override
  MessageOneofUnsatisfiable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofUnsatisfiable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofUnsatisfiable>(create);
  static MessageOneofUnsatisfiable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get a => $_getBF(0);
  @$pb.TagNumber(1)
  set a($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get b => $_getBF(1);
  @$pb.TagNumber(2)
  set b($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get c => $_getBF(2);
  @$pb.TagNumber(3)
  set c($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => $_clearField(3);
}

class MessageOneofIgnoreUnpopulated extends $pb.GeneratedMessage {
  factory MessageOneofIgnoreUnpopulated({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofIgnoreUnpopulated._();

  factory MessageOneofIgnoreUnpopulated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofIgnoreUnpopulated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofIgnoreUnpopulated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreUnpopulated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreUnpopulated copyWith(
          void Function(MessageOneofIgnoreUnpopulated) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofIgnoreUnpopulated))
          as MessageOneofIgnoreUnpopulated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreUnpopulated create() =>
      MessageOneofIgnoreUnpopulated._();
  @$core.override
  MessageOneofIgnoreUnpopulated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreUnpopulated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofIgnoreUnpopulated>(create);
  static MessageOneofIgnoreUnpopulated? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofIgnoreUnpopulatedRequired extends $pb.GeneratedMessage {
  factory MessageOneofIgnoreUnpopulatedRequired({
    $core.String? strField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (strField != null) result.strField = strField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofIgnoreUnpopulatedRequired._();

  factory MessageOneofIgnoreUnpopulatedRequired.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofIgnoreUnpopulatedRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofIgnoreUnpopulatedRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strField')
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreUnpopulatedRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreUnpopulatedRequired copyWith(
          void Function(MessageOneofIgnoreUnpopulatedRequired) updates) =>
      super.copyWith((message) =>
              updates(message as MessageOneofIgnoreUnpopulatedRequired))
          as MessageOneofIgnoreUnpopulatedRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreUnpopulatedRequired create() =>
      MessageOneofIgnoreUnpopulatedRequired._();
  @$core.override
  MessageOneofIgnoreUnpopulatedRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreUnpopulatedRequired getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          MessageOneofIgnoreUnpopulatedRequired>(create);
  static MessageOneofIgnoreUnpopulatedRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strField => $_getSZ(0);
  @$pb.TagNumber(1)
  set strField($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStrField() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrField() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

class MessageOneofIgnoreOverride extends $pb.GeneratedMessage {
  factory MessageOneofIgnoreOverride({
    TestMsg? msgField,
    $core.bool? boolField,
  }) {
    final result = create();
    if (msgField != null) result.msgField = msgField;
    if (boolField != null) result.boolField = boolField;
    return result;
  }

  MessageOneofIgnoreOverride._();

  factory MessageOneofIgnoreOverride.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofIgnoreOverride.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofIgnoreOverride',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<TestMsg>(1, _omitFieldNames ? '' : 'msgField',
        subBuilder: TestMsg.create)
    ..aOB(2, _omitFieldNames ? '' : 'boolField')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreOverride clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofIgnoreOverride copyWith(
          void Function(MessageOneofIgnoreOverride) updates) =>
      super.copyWith(
              (message) => updates(message as MessageOneofIgnoreOverride))
          as MessageOneofIgnoreOverride;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreOverride create() => MessageOneofIgnoreOverride._();
  @$core.override
  MessageOneofIgnoreOverride createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofIgnoreOverride getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofIgnoreOverride>(create);
  static MessageOneofIgnoreOverride? _defaultInstance;

  @$pb.TagNumber(1)
  TestMsg get msgField => $_getN(0);
  @$pb.TagNumber(1)
  set msgField(TestMsg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMsgField() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgField() => $_clearField(1);
  @$pb.TagNumber(1)
  TestMsg ensureMsgField() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get boolField => $_getBF(1);
  @$pb.TagNumber(2)
  set boolField($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoolField() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolField() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
