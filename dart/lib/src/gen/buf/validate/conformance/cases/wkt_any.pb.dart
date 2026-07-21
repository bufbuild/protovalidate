// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_any.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $0;
import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../../google/protobuf/wrappers.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AnyNone extends $pb.GeneratedMessage {
  factory AnyNone({
    $0.Any? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyNone._();

  factory AnyNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyNone copyWith(void Function(AnyNone) updates) =>
      super.copyWith((message) => updates(message as AnyNone)) as AnyNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyNone create() => AnyNone._();
  @$core.override
  AnyNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnyNone>(create);
  static AnyNone? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Any value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureVal() => $_ensure(0);
}

class AnyRequired extends $pb.GeneratedMessage {
  factory AnyRequired({
    $0.Any? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyRequired._();

  factory AnyRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyRequired copyWith(void Function(AnyRequired) updates) =>
      super.copyWith((message) => updates(message as AnyRequired))
          as AnyRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyRequired create() => AnyRequired._();
  @$core.override
  AnyRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyRequired>(create);
  static AnyRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Any value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureVal() => $_ensure(0);
}

class AnyIn extends $pb.GeneratedMessage {
  factory AnyIn({
    $0.Any? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyIn._();

  factory AnyIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyIn copyWith(void Function(AnyIn) updates) =>
      super.copyWith((message) => updates(message as AnyIn)) as AnyIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyIn create() => AnyIn._();
  @$core.override
  AnyIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnyIn>(create);
  static AnyIn? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Any value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureVal() => $_ensure(0);
}

class AnyNotIn extends $pb.GeneratedMessage {
  factory AnyNotIn({
    $0.Any? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyNotIn._();

  factory AnyNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyNotIn copyWith(void Function(AnyNotIn) updates) =>
      super.copyWith((message) => updates(message as AnyNotIn)) as AnyNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyNotIn create() => AnyNotIn._();
  @$core.override
  AnyNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyNotIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnyNotIn>(create);
  static AnyNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Any value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureVal() => $_ensure(0);
}

/// The below messages should throw compilation errors due to incorrect types.
class AnyWrongTypeScalar extends $pb.GeneratedMessage {
  factory AnyWrongTypeScalar({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyWrongTypeScalar._();

  factory AnyWrongTypeScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyWrongTypeScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyWrongTypeScalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeScalar copyWith(void Function(AnyWrongTypeScalar) updates) =>
      super.copyWith((message) => updates(message as AnyWrongTypeScalar))
          as AnyWrongTypeScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeScalar create() => AnyWrongTypeScalar._();
  @$core.override
  AnyWrongTypeScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyWrongTypeScalar>(create);
  static AnyWrongTypeScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class AnyWrongTypeMessage_WrongType extends $pb.GeneratedMessage {
  factory AnyWrongTypeMessage_WrongType({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyWrongTypeMessage_WrongType._();

  factory AnyWrongTypeMessage_WrongType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyWrongTypeMessage_WrongType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyWrongTypeMessage.WrongType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeMessage_WrongType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeMessage_WrongType copyWith(
          void Function(AnyWrongTypeMessage_WrongType) updates) =>
      super.copyWith(
              (message) => updates(message as AnyWrongTypeMessage_WrongType))
          as AnyWrongTypeMessage_WrongType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeMessage_WrongType create() =>
      AnyWrongTypeMessage_WrongType._();
  @$core.override
  AnyWrongTypeMessage_WrongType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeMessage_WrongType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyWrongTypeMessage_WrongType>(create);
  static AnyWrongTypeMessage_WrongType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class AnyWrongTypeMessage extends $pb.GeneratedMessage {
  factory AnyWrongTypeMessage({
    AnyWrongTypeMessage_WrongType? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyWrongTypeMessage._();

  factory AnyWrongTypeMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyWrongTypeMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyWrongTypeMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<AnyWrongTypeMessage_WrongType>(1, _omitFieldNames ? '' : 'val',
        subBuilder: AnyWrongTypeMessage_WrongType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeMessage copyWith(void Function(AnyWrongTypeMessage) updates) =>
      super.copyWith((message) => updates(message as AnyWrongTypeMessage))
          as AnyWrongTypeMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeMessage create() => AnyWrongTypeMessage._();
  @$core.override
  AnyWrongTypeMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyWrongTypeMessage>(create);
  static AnyWrongTypeMessage? _defaultInstance;

  @$pb.TagNumber(1)
  AnyWrongTypeMessage_WrongType get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(AnyWrongTypeMessage_WrongType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  AnyWrongTypeMessage_WrongType ensureVal() => $_ensure(0);
}

class AnyWrongTypeWrapper extends $pb.GeneratedMessage {
  factory AnyWrongTypeWrapper({
    $1.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyWrongTypeWrapper._();

  factory AnyWrongTypeWrapper.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyWrongTypeWrapper.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyWrongTypeWrapper',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeWrapper clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeWrapper copyWith(void Function(AnyWrongTypeWrapper) updates) =>
      super.copyWith((message) => updates(message as AnyWrongTypeWrapper))
          as AnyWrongTypeWrapper;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeWrapper create() => AnyWrongTypeWrapper._();
  @$core.override
  AnyWrongTypeWrapper createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeWrapper getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyWrongTypeWrapper>(create);
  static AnyWrongTypeWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($1.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Int32Value ensureVal() => $_ensure(0);
}

class AnyWrongTypeWKT extends $pb.GeneratedMessage {
  factory AnyWrongTypeWKT({
    $2.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  AnyWrongTypeWKT._();

  factory AnyWrongTypeWKT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyWrongTypeWKT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyWrongTypeWKT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeWKT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyWrongTypeWKT copyWith(void Function(AnyWrongTypeWKT) updates) =>
      super.copyWith((message) => updates(message as AnyWrongTypeWKT))
          as AnyWrongTypeWKT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeWKT create() => AnyWrongTypeWKT._();
  @$core.override
  AnyWrongTypeWKT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyWrongTypeWKT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnyWrongTypeWKT>(create);
  static AnyWrongTypeWKT? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
