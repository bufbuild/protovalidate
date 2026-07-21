// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_empty_proto3.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IgnoreEmptyProto3Scalar extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Scalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto3Scalar._();

  factory IgnoreEmptyProto3Scalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Scalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Scalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Scalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Scalar copyWith(
          void Function(IgnoreEmptyProto3Scalar) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto3Scalar))
          as IgnoreEmptyProto3Scalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Scalar create() => IgnoreEmptyProto3Scalar._();
  @$core.override
  IgnoreEmptyProto3Scalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Scalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Scalar>(create);
  static IgnoreEmptyProto3Scalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto3OptionalScalar extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3OptionalScalar({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto3OptionalScalar._();

  factory IgnoreEmptyProto3OptionalScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3OptionalScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3OptionalScalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3OptionalScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3OptionalScalar copyWith(
          void Function(IgnoreEmptyProto3OptionalScalar) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyProto3OptionalScalar))
          as IgnoreEmptyProto3OptionalScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3OptionalScalar create() =>
      IgnoreEmptyProto3OptionalScalar._();
  @$core.override
  IgnoreEmptyProto3OptionalScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3OptionalScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3OptionalScalar>(
          create);
  static IgnoreEmptyProto3OptionalScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto3Message_Msg extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Message_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto3Message_Msg._();

  factory IgnoreEmptyProto3Message_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Message_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Message.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Message_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Message_Msg copyWith(
          void Function(IgnoreEmptyProto3Message_Msg) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyProto3Message_Msg))
          as IgnoreEmptyProto3Message_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Message_Msg create() =>
      IgnoreEmptyProto3Message_Msg._();
  @$core.override
  IgnoreEmptyProto3Message_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Message_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Message_Msg>(create);
  static IgnoreEmptyProto3Message_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyProto3Message extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Message({
    IgnoreEmptyProto3Message_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto3Message._();

  factory IgnoreEmptyProto3Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Message',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<IgnoreEmptyProto3Message_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: IgnoreEmptyProto3Message_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Message copyWith(
          void Function(IgnoreEmptyProto3Message) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto3Message))
          as IgnoreEmptyProto3Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Message create() => IgnoreEmptyProto3Message._();
  @$core.override
  IgnoreEmptyProto3Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Message getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Message>(create);
  static IgnoreEmptyProto3Message? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyProto3Message_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyProto3Message_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  IgnoreEmptyProto3Message_Msg ensureVal() => $_ensure(0);
}

enum IgnoreEmptyProto3Oneof_O { val, notSet }

class IgnoreEmptyProto3Oneof extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Oneof({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyProto3Oneof._();

  factory IgnoreEmptyProto3Oneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Oneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, IgnoreEmptyProto3Oneof_O>
      _IgnoreEmptyProto3Oneof_OByTag = {
    1: IgnoreEmptyProto3Oneof_O.val,
    0: IgnoreEmptyProto3Oneof_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Oneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Oneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Oneof copyWith(
          void Function(IgnoreEmptyProto3Oneof) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto3Oneof))
          as IgnoreEmptyProto3Oneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Oneof create() => IgnoreEmptyProto3Oneof._();
  @$core.override
  IgnoreEmptyProto3Oneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Oneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Oneof>(create);
  static IgnoreEmptyProto3Oneof? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyProto3Oneof_O whichO() =>
      _IgnoreEmptyProto3Oneof_OByTag[$_whichOneof(0)]!;
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

class IgnoreEmptyProto3Repeated extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Repeated({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  IgnoreEmptyProto3Repeated._();

  factory IgnoreEmptyProto3Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Repeated copyWith(
          void Function(IgnoreEmptyProto3Repeated) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto3Repeated))
          as IgnoreEmptyProto3Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Repeated create() => IgnoreEmptyProto3Repeated._();
  @$core.override
  IgnoreEmptyProto3Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Repeated>(create);
  static IgnoreEmptyProto3Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class IgnoreEmptyProto3Map extends $pb.GeneratedMessage {
  factory IgnoreEmptyProto3Map({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  IgnoreEmptyProto3Map._();

  factory IgnoreEmptyProto3Map.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyProto3Map.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyProto3Map',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'IgnoreEmptyProto3Map.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Map clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyProto3Map copyWith(void Function(IgnoreEmptyProto3Map) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyProto3Map))
          as IgnoreEmptyProto3Map;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Map create() => IgnoreEmptyProto3Map._();
  @$core.override
  IgnoreEmptyProto3Map createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyProto3Map getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyProto3Map>(create);
  static IgnoreEmptyProto3Map? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class IgnoreEmptyRepeatedItems extends $pb.GeneratedMessage {
  factory IgnoreEmptyRepeatedItems({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  IgnoreEmptyRepeatedItems._();

  factory IgnoreEmptyRepeatedItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyRepeatedItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyRepeatedItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyRepeatedItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyRepeatedItems copyWith(
          void Function(IgnoreEmptyRepeatedItems) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyRepeatedItems))
          as IgnoreEmptyRepeatedItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyRepeatedItems create() => IgnoreEmptyRepeatedItems._();
  @$core.override
  IgnoreEmptyRepeatedItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyRepeatedItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyRepeatedItems>(create);
  static IgnoreEmptyRepeatedItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class IgnoreEmptyMapPairs extends $pb.GeneratedMessage {
  factory IgnoreEmptyMapPairs({
    $core.Iterable<$core.MapEntry<$core.String, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  IgnoreEmptyMapPairs._();

  factory IgnoreEmptyMapPairs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyMapPairs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyMapPairs',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'IgnoreEmptyMapPairs.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyMapPairs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyMapPairs copyWith(void Function(IgnoreEmptyMapPairs) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyMapPairs))
          as IgnoreEmptyMapPairs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyMapPairs create() => IgnoreEmptyMapPairs._();
  @$core.override
  IgnoreEmptyMapPairs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyMapPairs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyMapPairs>(create);
  static IgnoreEmptyMapPairs? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
