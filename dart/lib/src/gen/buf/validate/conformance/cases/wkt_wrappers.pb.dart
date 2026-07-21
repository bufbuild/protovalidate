// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_wrappers.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/wrappers.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class WrapperNone extends $pb.GeneratedMessage {
  factory WrapperNone({
    $0.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperNone._();

  factory WrapperNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperNone copyWith(void Function(WrapperNone) updates) =>
      super.copyWith((message) => updates(message as WrapperNone))
          as WrapperNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperNone create() => WrapperNone._();
  @$core.override
  WrapperNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperNone>(create);
  static WrapperNone? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Int32Value ensureVal() => $_ensure(0);
}

class WrapperFloat extends $pb.GeneratedMessage {
  factory WrapperFloat({
    $0.FloatValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperFloat._();

  factory WrapperFloat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperFloat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperFloat',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperFloat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperFloat copyWith(void Function(WrapperFloat) updates) =>
      super.copyWith((message) => updates(message as WrapperFloat))
          as WrapperFloat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperFloat create() => WrapperFloat._();
  @$core.override
  WrapperFloat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperFloat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperFloat>(create);
  static WrapperFloat? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FloatValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FloatValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FloatValue ensureVal() => $_ensure(0);
}

class WrapperDouble extends $pb.GeneratedMessage {
  factory WrapperDouble({
    $0.DoubleValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperDouble._();

  factory WrapperDouble.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperDouble.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperDouble',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperDouble clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperDouble copyWith(void Function(WrapperDouble) updates) =>
      super.copyWith((message) => updates(message as WrapperDouble))
          as WrapperDouble;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperDouble create() => WrapperDouble._();
  @$core.override
  WrapperDouble createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperDouble getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperDouble>(create);
  static WrapperDouble? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DoubleValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.DoubleValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DoubleValue ensureVal() => $_ensure(0);
}

class WrapperInt64 extends $pb.GeneratedMessage {
  factory WrapperInt64({
    $0.Int64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperInt64._();

  factory WrapperInt64.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperInt64.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperInt64',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperInt64 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperInt64 copyWith(void Function(WrapperInt64) updates) =>
      super.copyWith((message) => updates(message as WrapperInt64))
          as WrapperInt64;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperInt64 create() => WrapperInt64._();
  @$core.override
  WrapperInt64 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperInt64 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperInt64>(create);
  static WrapperInt64? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Int64Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Int64Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Int64Value ensureVal() => $_ensure(0);
}

class WrapperInt32 extends $pb.GeneratedMessage {
  factory WrapperInt32({
    $0.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperInt32._();

  factory WrapperInt32.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperInt32.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperInt32',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperInt32 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperInt32 copyWith(void Function(WrapperInt32) updates) =>
      super.copyWith((message) => updates(message as WrapperInt32))
          as WrapperInt32;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperInt32 create() => WrapperInt32._();
  @$core.override
  WrapperInt32 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperInt32 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperInt32>(create);
  static WrapperInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Int32Value ensureVal() => $_ensure(0);
}

class WrapperUInt64 extends $pb.GeneratedMessage {
  factory WrapperUInt64({
    $0.UInt64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperUInt64._();

  factory WrapperUInt64.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperUInt64.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperUInt64',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperUInt64 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperUInt64 copyWith(void Function(WrapperUInt64) updates) =>
      super.copyWith((message) => updates(message as WrapperUInt64))
          as WrapperUInt64;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperUInt64 create() => WrapperUInt64._();
  @$core.override
  WrapperUInt64 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperUInt64 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperUInt64>(create);
  static WrapperUInt64? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UInt64Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.UInt64Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UInt64Value ensureVal() => $_ensure(0);
}

class WrapperUInt32 extends $pb.GeneratedMessage {
  factory WrapperUInt32({
    $0.UInt32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperUInt32._();

  factory WrapperUInt32.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperUInt32.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperUInt32',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperUInt32 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperUInt32 copyWith(void Function(WrapperUInt32) updates) =>
      super.copyWith((message) => updates(message as WrapperUInt32))
          as WrapperUInt32;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperUInt32 create() => WrapperUInt32._();
  @$core.override
  WrapperUInt32 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperUInt32 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperUInt32>(create);
  static WrapperUInt32? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UInt32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.UInt32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UInt32Value ensureVal() => $_ensure(0);
}

class WrapperBool extends $pb.GeneratedMessage {
  factory WrapperBool({
    $0.BoolValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperBool._();

  factory WrapperBool.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperBool.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperBool',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperBool clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperBool copyWith(void Function(WrapperBool) updates) =>
      super.copyWith((message) => updates(message as WrapperBool))
          as WrapperBool;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperBool create() => WrapperBool._();
  @$core.override
  WrapperBool createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperBool getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperBool>(create);
  static WrapperBool? _defaultInstance;

  @$pb.TagNumber(1)
  $0.BoolValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.BoolValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.BoolValue ensureVal() => $_ensure(0);
}

class WrapperString extends $pb.GeneratedMessage {
  factory WrapperString({
    $0.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperString._();

  factory WrapperString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperString',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperString copyWith(void Function(WrapperString) updates) =>
      super.copyWith((message) => updates(message as WrapperString))
          as WrapperString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperString create() => WrapperString._();
  @$core.override
  WrapperString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperString>(create);
  static WrapperString? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StringValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.StringValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.StringValue ensureVal() => $_ensure(0);
}

class WrapperBytes extends $pb.GeneratedMessage {
  factory WrapperBytes({
    $0.BytesValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperBytes._();

  factory WrapperBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperBytes copyWith(void Function(WrapperBytes) updates) =>
      super.copyWith((message) => updates(message as WrapperBytes))
          as WrapperBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperBytes create() => WrapperBytes._();
  @$core.override
  WrapperBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperBytes>(create);
  static WrapperBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $0.BytesValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.BytesValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.BytesValue ensureVal() => $_ensure(0);
}

class WrapperRequiredString extends $pb.GeneratedMessage {
  factory WrapperRequiredString({
    $0.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperRequiredString._();

  factory WrapperRequiredString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperRequiredString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperRequiredString',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredString copyWith(
          void Function(WrapperRequiredString) updates) =>
      super.copyWith((message) => updates(message as WrapperRequiredString))
          as WrapperRequiredString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperRequiredString create() => WrapperRequiredString._();
  @$core.override
  WrapperRequiredString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperRequiredString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperRequiredString>(create);
  static WrapperRequiredString? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StringValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.StringValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.StringValue ensureVal() => $_ensure(0);
}

class WrapperRequiredEmptyString extends $pb.GeneratedMessage {
  factory WrapperRequiredEmptyString({
    $0.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperRequiredEmptyString._();

  factory WrapperRequiredEmptyString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperRequiredEmptyString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperRequiredEmptyString',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredEmptyString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredEmptyString copyWith(
          void Function(WrapperRequiredEmptyString) updates) =>
      super.copyWith(
              (message) => updates(message as WrapperRequiredEmptyString))
          as WrapperRequiredEmptyString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperRequiredEmptyString create() => WrapperRequiredEmptyString._();
  @$core.override
  WrapperRequiredEmptyString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperRequiredEmptyString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperRequiredEmptyString>(create);
  static WrapperRequiredEmptyString? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StringValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.StringValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.StringValue ensureVal() => $_ensure(0);
}

class WrapperOptionalUuidString extends $pb.GeneratedMessage {
  factory WrapperOptionalUuidString({
    $0.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperOptionalUuidString._();

  factory WrapperOptionalUuidString.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperOptionalUuidString.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperOptionalUuidString',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperOptionalUuidString clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperOptionalUuidString copyWith(
          void Function(WrapperOptionalUuidString) updates) =>
      super.copyWith((message) => updates(message as WrapperOptionalUuidString))
          as WrapperOptionalUuidString;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperOptionalUuidString create() => WrapperOptionalUuidString._();
  @$core.override
  WrapperOptionalUuidString createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperOptionalUuidString getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperOptionalUuidString>(create);
  static WrapperOptionalUuidString? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StringValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.StringValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.StringValue ensureVal() => $_ensure(0);
}

class WrapperRequiredFloat extends $pb.GeneratedMessage {
  factory WrapperRequiredFloat({
    $0.FloatValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  WrapperRequiredFloat._();

  factory WrapperRequiredFloat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WrapperRequiredFloat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WrapperRequiredFloat',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredFloat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WrapperRequiredFloat copyWith(void Function(WrapperRequiredFloat) updates) =>
      super.copyWith((message) => updates(message as WrapperRequiredFloat))
          as WrapperRequiredFloat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrapperRequiredFloat create() => WrapperRequiredFloat._();
  @$core.override
  WrapperRequiredFloat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WrapperRequiredFloat getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WrapperRequiredFloat>(create);
  static WrapperRequiredFloat? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FloatValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FloatValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FloatValue ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
