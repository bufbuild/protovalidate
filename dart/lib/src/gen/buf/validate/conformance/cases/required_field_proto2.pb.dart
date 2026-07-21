// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/required_field_proto2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RequiredProto2ScalarOptional extends $pb.GeneratedMessage {
  factory RequiredProto2ScalarOptional({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2ScalarOptional._();

  factory RequiredProto2ScalarOptional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2ScalarOptional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2ScalarOptional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptional copyWith(
          void Function(RequiredProto2ScalarOptional) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto2ScalarOptional))
          as RequiredProto2ScalarOptional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptional create() =>
      RequiredProto2ScalarOptional._();
  @$core.override
  RequiredProto2ScalarOptional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2ScalarOptional>(create);
  static RequiredProto2ScalarOptional? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2ScalarOptionalIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto2ScalarOptionalIgnoreAlways({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2ScalarOptionalIgnoreAlways._();

  factory RequiredProto2ScalarOptionalIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2ScalarOptionalIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2ScalarOptionalIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalIgnoreAlways copyWith(
          void Function(RequiredProto2ScalarOptionalIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto2ScalarOptionalIgnoreAlways))
          as RequiredProto2ScalarOptionalIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalIgnoreAlways create() =>
      RequiredProto2ScalarOptionalIgnoreAlways._();
  @$core.override
  RequiredProto2ScalarOptionalIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto2ScalarOptionalIgnoreAlways>(create);
  static RequiredProto2ScalarOptionalIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2ScalarOptionalDefault extends $pb.GeneratedMessage {
  factory RequiredProto2ScalarOptionalDefault({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2ScalarOptionalDefault._();

  factory RequiredProto2ScalarOptionalDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2ScalarOptionalDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2ScalarOptionalDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.String>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS,
        defaultOrMaker: 'foo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalDefault copyWith(
          void Function(RequiredProto2ScalarOptionalDefault) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto2ScalarOptionalDefault))
          as RequiredProto2ScalarOptionalDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalDefault create() =>
      RequiredProto2ScalarOptionalDefault._();
  @$core.override
  RequiredProto2ScalarOptionalDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto2ScalarOptionalDefault>(create);
  static RequiredProto2ScalarOptionalDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getS(0, 'foo');
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2ScalarOptionalDefaultIgnoreAlways
    extends $pb.GeneratedMessage {
  factory RequiredProto2ScalarOptionalDefaultIgnoreAlways({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2ScalarOptionalDefaultIgnoreAlways._();

  factory RequiredProto2ScalarOptionalDefaultIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2ScalarOptionalDefaultIgnoreAlways.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'RequiredProto2ScalarOptionalDefaultIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.String>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS,
        defaultOrMaker: 'foo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalDefaultIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarOptionalDefaultIgnoreAlways copyWith(
          void Function(RequiredProto2ScalarOptionalDefaultIgnoreAlways)
              updates) =>
      super.copyWith((message) => updates(
              message as RequiredProto2ScalarOptionalDefaultIgnoreAlways))
          as RequiredProto2ScalarOptionalDefaultIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalDefaultIgnoreAlways create() =>
      RequiredProto2ScalarOptionalDefaultIgnoreAlways._();
  @$core.override
  RequiredProto2ScalarOptionalDefaultIgnoreAlways createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarOptionalDefaultIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto2ScalarOptionalDefaultIgnoreAlways>(create);
  static RequiredProto2ScalarOptionalDefaultIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getS(0, 'foo');
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2ScalarRequired extends $pb.GeneratedMessage {
  factory RequiredProto2ScalarRequired({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2ScalarRequired._();

  factory RequiredProto2ScalarRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2ScalarRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2ScalarRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'val');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2ScalarRequired copyWith(
          void Function(RequiredProto2ScalarRequired) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto2ScalarRequired))
          as RequiredProto2ScalarRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarRequired create() =>
      RequiredProto2ScalarRequired._();
  @$core.override
  RequiredProto2ScalarRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2ScalarRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2ScalarRequired>(create);
  static RequiredProto2ScalarRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2Message_Msg extends $pb.GeneratedMessage {
  factory RequiredProto2Message_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2Message_Msg._();

  factory RequiredProto2Message_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2Message_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2Message.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Message_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Message_Msg copyWith(
          void Function(RequiredProto2Message_Msg) updates) =>
      super.copyWith((message) => updates(message as RequiredProto2Message_Msg))
          as RequiredProto2Message_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2Message_Msg create() => RequiredProto2Message_Msg._();
  @$core.override
  RequiredProto2Message_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2Message_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2Message_Msg>(create);
  static RequiredProto2Message_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2Message extends $pb.GeneratedMessage {
  factory RequiredProto2Message({
    RequiredProto2Message_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2Message._();

  factory RequiredProto2Message.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2Message.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2Message',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<RequiredProto2Message_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: RequiredProto2Message_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Message clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Message copyWith(
          void Function(RequiredProto2Message) updates) =>
      super.copyWith((message) => updates(message as RequiredProto2Message))
          as RequiredProto2Message;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2Message create() => RequiredProto2Message._();
  @$core.override
  RequiredProto2Message createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2Message getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2Message>(create);
  static RequiredProto2Message? _defaultInstance;

  @$pb.TagNumber(1)
  RequiredProto2Message_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(RequiredProto2Message_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  RequiredProto2Message_Msg ensureVal() => $_ensure(0);
}

class RequiredProto2MessageIgnoreAlways_Msg extends $pb.GeneratedMessage {
  factory RequiredProto2MessageIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2MessageIgnoreAlways_Msg._();

  factory RequiredProto2MessageIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2MessageIgnoreAlways_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2MessageIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MessageIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MessageIgnoreAlways_Msg copyWith(
          void Function(RequiredProto2MessageIgnoreAlways_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto2MessageIgnoreAlways_Msg))
          as RequiredProto2MessageIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2MessageIgnoreAlways_Msg create() =>
      RequiredProto2MessageIgnoreAlways_Msg._();
  @$core.override
  RequiredProto2MessageIgnoreAlways_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2MessageIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RequiredProto2MessageIgnoreAlways_Msg>(create);
  static RequiredProto2MessageIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RequiredProto2MessageIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto2MessageIgnoreAlways({
    RequiredProto2MessageIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  RequiredProto2MessageIgnoreAlways._();

  factory RequiredProto2MessageIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2MessageIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2MessageIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<RequiredProto2MessageIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: RequiredProto2MessageIgnoreAlways_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MessageIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MessageIgnoreAlways copyWith(
          void Function(RequiredProto2MessageIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto2MessageIgnoreAlways))
          as RequiredProto2MessageIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2MessageIgnoreAlways create() =>
      RequiredProto2MessageIgnoreAlways._();
  @$core.override
  RequiredProto2MessageIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2MessageIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2MessageIgnoreAlways>(
          create);
  static RequiredProto2MessageIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  RequiredProto2MessageIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(RequiredProto2MessageIgnoreAlways_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  RequiredProto2MessageIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

enum RequiredProto2Oneof_Val { a, b, notSet }

class RequiredProto2Oneof extends $pb.GeneratedMessage {
  factory RequiredProto2Oneof({
    $core.String? a,
    $core.String? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  RequiredProto2Oneof._();

  factory RequiredProto2Oneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2Oneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RequiredProto2Oneof_Val>
      _RequiredProto2Oneof_ValByTag = {
    1: RequiredProto2Oneof_Val.a,
    2: RequiredProto2Oneof_Val.b,
    0: RequiredProto2Oneof_Val.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2Oneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'a')
    ..aOS(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Oneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Oneof copyWith(void Function(RequiredProto2Oneof) updates) =>
      super.copyWith((message) => updates(message as RequiredProto2Oneof))
          as RequiredProto2Oneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2Oneof create() => RequiredProto2Oneof._();
  @$core.override
  RequiredProto2Oneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2Oneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2Oneof>(create);
  static RequiredProto2Oneof? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  RequiredProto2Oneof_Val whichVal() =>
      _RequiredProto2Oneof_ValByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVal() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get a => $_getSZ(0);
  @$pb.TagNumber(1)
  set a($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get b => $_getSZ(1);
  @$pb.TagNumber(2)
  set b($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
}

enum RequiredProto2OneofIgnoreAlways_Val { a, b, notSet }

class RequiredProto2OneofIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto2OneofIgnoreAlways({
    $core.String? a,
    $core.String? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  RequiredProto2OneofIgnoreAlways._();

  factory RequiredProto2OneofIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2OneofIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RequiredProto2OneofIgnoreAlways_Val>
      _RequiredProto2OneofIgnoreAlways_ValByTag = {
    1: RequiredProto2OneofIgnoreAlways_Val.a,
    2: RequiredProto2OneofIgnoreAlways_Val.b,
    0: RequiredProto2OneofIgnoreAlways_Val.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2OneofIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'a')
    ..aOS(2, _omitFieldNames ? '' : 'b')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2OneofIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2OneofIgnoreAlways copyWith(
          void Function(RequiredProto2OneofIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto2OneofIgnoreAlways))
          as RequiredProto2OneofIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2OneofIgnoreAlways create() =>
      RequiredProto2OneofIgnoreAlways._();
  @$core.override
  RequiredProto2OneofIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2OneofIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2OneofIgnoreAlways>(
          create);
  static RequiredProto2OneofIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  RequiredProto2OneofIgnoreAlways_Val whichVal() =>
      _RequiredProto2OneofIgnoreAlways_ValByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearVal() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get a => $_getSZ(0);
  @$pb.TagNumber(1)
  set a($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get b => $_getSZ(1);
  @$pb.TagNumber(2)
  set b($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
}

class RequiredProto2Repeated extends $pb.GeneratedMessage {
  factory RequiredProto2Repeated({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredProto2Repeated._();

  factory RequiredProto2Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Repeated copyWith(
          void Function(RequiredProto2Repeated) updates) =>
      super.copyWith((message) => updates(message as RequiredProto2Repeated))
          as RequiredProto2Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2Repeated create() => RequiredProto2Repeated._();
  @$core.override
  RequiredProto2Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2Repeated>(create);
  static RequiredProto2Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredProto2RepeatedIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto2RepeatedIgnoreAlways({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RequiredProto2RepeatedIgnoreAlways._();

  factory RequiredProto2RepeatedIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2RepeatedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2RepeatedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2RepeatedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2RepeatedIgnoreAlways copyWith(
          void Function(RequiredProto2RepeatedIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as RequiredProto2RepeatedIgnoreAlways))
          as RequiredProto2RepeatedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2RepeatedIgnoreAlways create() =>
      RequiredProto2RepeatedIgnoreAlways._();
  @$core.override
  RequiredProto2RepeatedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2RepeatedIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2RepeatedIgnoreAlways>(
          create);
  static RequiredProto2RepeatedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RequiredProto2Map extends $pb.GeneratedMessage {
  factory RequiredProto2Map({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto2Map._();

  factory RequiredProto2Map.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2Map.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2Map',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto2Map.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Map clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2Map copyWith(void Function(RequiredProto2Map) updates) =>
      super.copyWith((message) => updates(message as RequiredProto2Map))
          as RequiredProto2Map;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2Map create() => RequiredProto2Map._();
  @$core.override
  RequiredProto2Map createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2Map getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2Map>(create);
  static RequiredProto2Map? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

class RequiredProto2MapIgnoreAlways extends $pb.GeneratedMessage {
  factory RequiredProto2MapIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  RequiredProto2MapIgnoreAlways._();

  factory RequiredProto2MapIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequiredProto2MapIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequiredProto2MapIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'RequiredProto2MapIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MapIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequiredProto2MapIgnoreAlways copyWith(
          void Function(RequiredProto2MapIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as RequiredProto2MapIgnoreAlways))
          as RequiredProto2MapIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequiredProto2MapIgnoreAlways create() =>
      RequiredProto2MapIgnoreAlways._();
  @$core.override
  RequiredProto2MapIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequiredProto2MapIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequiredProto2MapIgnoreAlways>(create);
  static RequiredProto2MapIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
