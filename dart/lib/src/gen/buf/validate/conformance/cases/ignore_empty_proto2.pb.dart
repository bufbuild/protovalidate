// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_empty_proto2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IgnoreEmptyProto2ScalarOptional extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2ScalarOptional({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2ScalarOptional._();

  factory IgnoreEmptyProto2ScalarOptional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2ScalarOptional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2ScalarOptional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarOptional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarOptional copyWith(
          void Function(IgnoreEmptyProto2ScalarOptional) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyProto2ScalarOptional))
          as IgnoreEmptyProto2ScalarOptional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarOptional create() =>
      IgnoreEmptyProto2ScalarOptional._();
  @$core.override
  IgnoreEmptyProto2ScalarOptional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarOptional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2ScalarOptional>(
          create);
  static IgnoreEmptyProto2ScalarOptional? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto2ScalarOptionalWithDefault extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2ScalarOptionalWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2ScalarOptionalWithDefault._();

  factory IgnoreEmptyProto2ScalarOptionalWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2ScalarOptionalWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2ScalarOptionalWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: 42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarOptionalWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarOptionalWithDefault copyWith(
          void Function(IgnoreEmptyProto2ScalarOptionalWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyProto2ScalarOptionalWithDefault))
          as IgnoreEmptyProto2ScalarOptionalWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarOptionalWithDefault create() =>
      IgnoreEmptyProto2ScalarOptionalWithDefault._();
  @$core.override
  IgnoreEmptyProto2ScalarOptionalWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarOptionalWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyProto2ScalarOptionalWithDefault>(create);
  static IgnoreEmptyProto2ScalarOptionalWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, 42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto2ScalarRequired extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2ScalarRequired({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2ScalarRequired._();

  factory IgnoreEmptyProto2ScalarRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2ScalarRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2ScalarRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2ScalarRequired copyWith(
          void Function(IgnoreEmptyProto2ScalarRequired) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyProto2ScalarRequired))
          as IgnoreEmptyProto2ScalarRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarRequired create() =>
      IgnoreEmptyProto2ScalarRequired._();
  @$core.override
  IgnoreEmptyProto2ScalarRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2ScalarRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2ScalarRequired>(
          create);
  static IgnoreEmptyProto2ScalarRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto2Message_Msg extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2Message_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2Message_Msg._();

  factory IgnoreEmptyProto2Message_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2Message_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2Message.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Message_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Message_Msg copyWith(
          void Function(IgnoreEmptyProto2Message_Msg) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyProto2Message_Msg))
          as IgnoreEmptyProto2Message_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Message_Msg create() =>
      IgnoreEmptyProto2Message_Msg._();
  @$core.override
  IgnoreEmptyProto2Message_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Message_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2Message_Msg>(create);
  static IgnoreEmptyProto2Message_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto2Message extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2Message({
    IgnoreEmptyProto2Message_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2Message._();

  factory IgnoreEmptyProto2Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2Message',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<IgnoreEmptyProto2Message_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: IgnoreEmptyProto2Message_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Message copyWith(
          void Function(IgnoreEmptyProto2Message) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto2Message))
          as IgnoreEmptyProto2Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Message create() => IgnoreEmptyProto2Message._();
  @$core.override
  IgnoreEmptyProto2Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Message getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2Message>(create);
  static IgnoreEmptyProto2Message? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyProto2Message_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyProto2Message_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  IgnoreEmptyProto2Message_Msg ensureVal() => $_ensure(0);
}

enum IgnoreEmptyProto2Oneof_O { val, notSet }

class IgnoreEmptyProto2Oneof extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2Oneof({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto2Oneof._();

  factory IgnoreEmptyProto2Oneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2Oneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, IgnoreEmptyProto2Oneof_O>
      _IgnoreEmptyProto2Oneof_OByTag = {
    1: IgnoreEmptyProto2Oneof_O.val,
    0: IgnoreEmptyProto2Oneof_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2Oneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Oneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Oneof copyWith(
          void Function(IgnoreEmptyProto2Oneof) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto2Oneof))
          as IgnoreEmptyProto2Oneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Oneof create() => IgnoreEmptyProto2Oneof._();
  @$core.override
  IgnoreEmptyProto2Oneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Oneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2Oneof>(create);
  static IgnoreEmptyProto2Oneof? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyProto2Oneof_O whichO() =>
      _IgnoreEmptyProto2Oneof_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto2Repeated extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2Repeated({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  IgnoreEmptyProto2Repeated._();

  factory IgnoreEmptyProto2Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Repeated copyWith(
          void Function(IgnoreEmptyProto2Repeated) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto2Repeated))
          as IgnoreEmptyProto2Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Repeated create() => IgnoreEmptyProto2Repeated._();
  @$core.override
  IgnoreEmptyProto2Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2Repeated>(create);
  static IgnoreEmptyProto2Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class IgnoreEmptyProto2Map extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto2Map({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  IgnoreEmptyProto2Map._();

  factory IgnoreEmptyProto2Map.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto2Map.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto2Map',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'IgnoreEmptyProto2Map.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Map clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto2Map copyWith(void Function(IgnoreEmptyProto2Map) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto2Map))
          as IgnoreEmptyProto2Map;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Map create() => IgnoreEmptyProto2Map._();
  @$core.override
  IgnoreEmptyProto2Map createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto2Map getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto2Map>(create);
  static IgnoreEmptyProto2Map? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
