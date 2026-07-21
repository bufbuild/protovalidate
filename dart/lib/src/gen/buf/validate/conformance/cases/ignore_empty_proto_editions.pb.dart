// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_empty_proto_editions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IgnoreEmptyEditionsScalarExplicitPresence extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsScalarExplicitPresence({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsScalarExplicitPresence._();

  factory IgnoreEmptyEditionsScalarExplicitPresence.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsScalarExplicitPresence.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsScalarExplicitPresence',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarExplicitPresence clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarExplicitPresence copyWith(
          void Function(IgnoreEmptyEditionsScalarExplicitPresence) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsScalarExplicitPresence))
          as IgnoreEmptyEditionsScalarExplicitPresence;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarExplicitPresence create() =>
      IgnoreEmptyEditionsScalarExplicitPresence._();
  @$core.override
  IgnoreEmptyEditionsScalarExplicitPresence createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarExplicitPresence getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsScalarExplicitPresence>(create);
  static IgnoreEmptyEditionsScalarExplicitPresence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsScalarExplicitPresenceWithDefault
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsScalarExplicitPresenceWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsScalarExplicitPresenceWithDefault._();

  factory IgnoreEmptyEditionsScalarExplicitPresenceWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsScalarExplicitPresenceWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsScalarExplicitPresenceWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: 42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarExplicitPresenceWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarExplicitPresenceWithDefault copyWith(
          void Function(IgnoreEmptyEditionsScalarExplicitPresenceWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsScalarExplicitPresenceWithDefault))
          as IgnoreEmptyEditionsScalarExplicitPresenceWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarExplicitPresenceWithDefault create() =>
      IgnoreEmptyEditionsScalarExplicitPresenceWithDefault._();
  @$core.override
  IgnoreEmptyEditionsScalarExplicitPresenceWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarExplicitPresenceWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsScalarExplicitPresenceWithDefault>(create);
  static IgnoreEmptyEditionsScalarExplicitPresenceWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, 42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsScalarImplicitPresence extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsScalarImplicitPresence({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsScalarImplicitPresence._();

  factory IgnoreEmptyEditionsScalarImplicitPresence.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsScalarImplicitPresence.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsScalarImplicitPresence',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarImplicitPresence clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarImplicitPresence copyWith(
          void Function(IgnoreEmptyEditionsScalarImplicitPresence) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsScalarImplicitPresence))
          as IgnoreEmptyEditionsScalarImplicitPresence;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarImplicitPresence create() =>
      IgnoreEmptyEditionsScalarImplicitPresence._();
  @$core.override
  IgnoreEmptyEditionsScalarImplicitPresence createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarImplicitPresence getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsScalarImplicitPresence>(create);
  static IgnoreEmptyEditionsScalarImplicitPresence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsScalarLegacyRequired extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsScalarLegacyRequired({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsScalarLegacyRequired._();

  factory IgnoreEmptyEditionsScalarLegacyRequired.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsScalarLegacyRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsScalarLegacyRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarLegacyRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarLegacyRequired copyWith(
          void Function(IgnoreEmptyEditionsScalarLegacyRequired) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsScalarLegacyRequired))
          as IgnoreEmptyEditionsScalarLegacyRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarLegacyRequired create() =>
      IgnoreEmptyEditionsScalarLegacyRequired._();
  @$core.override
  IgnoreEmptyEditionsScalarLegacyRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarLegacyRequired getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsScalarLegacyRequired>(create);
  static IgnoreEmptyEditionsScalarLegacyRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsScalarLegacyRequiredWithDefault
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsScalarLegacyRequiredWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsScalarLegacyRequiredWithDefault._();

  factory IgnoreEmptyEditionsScalarLegacyRequiredWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsScalarLegacyRequiredWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsScalarLegacyRequiredWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: 42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarLegacyRequiredWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsScalarLegacyRequiredWithDefault copyWith(
          void Function(IgnoreEmptyEditionsScalarLegacyRequiredWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsScalarLegacyRequiredWithDefault))
          as IgnoreEmptyEditionsScalarLegacyRequiredWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarLegacyRequiredWithDefault create() =>
      IgnoreEmptyEditionsScalarLegacyRequiredWithDefault._();
  @$core.override
  IgnoreEmptyEditionsScalarLegacyRequiredWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsScalarLegacyRequiredWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsScalarLegacyRequiredWithDefault>(create);
  static IgnoreEmptyEditionsScalarLegacyRequiredWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, 42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageExplicitPresence_Msg
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageExplicitPresence_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageExplicitPresence_Msg._();

  factory IgnoreEmptyEditionsMessageExplicitPresence_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageExplicitPresence_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsMessageExplicitPresence.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresence_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresence_Msg copyWith(
          void Function(IgnoreEmptyEditionsMessageExplicitPresence_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsMessageExplicitPresence_Msg))
          as IgnoreEmptyEditionsMessageExplicitPresence_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresence_Msg create() =>
      IgnoreEmptyEditionsMessageExplicitPresence_Msg._();
  @$core.override
  IgnoreEmptyEditionsMessageExplicitPresence_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresence_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageExplicitPresence_Msg>(create);
  static IgnoreEmptyEditionsMessageExplicitPresence_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageExplicitPresence extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageExplicitPresence({
    IgnoreEmptyEditionsMessageExplicitPresence_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageExplicitPresence._();

  factory IgnoreEmptyEditionsMessageExplicitPresence.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageExplicitPresence.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsMessageExplicitPresence',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<IgnoreEmptyEditionsMessageExplicitPresence_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: IgnoreEmptyEditionsMessageExplicitPresence_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresence clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresence copyWith(
          void Function(IgnoreEmptyEditionsMessageExplicitPresence) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsMessageExplicitPresence))
          as IgnoreEmptyEditionsMessageExplicitPresence;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresence create() =>
      IgnoreEmptyEditionsMessageExplicitPresence._();
  @$core.override
  IgnoreEmptyEditionsMessageExplicitPresence createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresence getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageExplicitPresence>(create);
  static IgnoreEmptyEditionsMessageExplicitPresence? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageExplicitPresence_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyEditionsMessageExplicitPresence_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageExplicitPresence_Msg ensureVal() => $_ensure(0);
}

class IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg._();

  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsMessageExplicitPresenceDelimited.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg copyWith(
          void Function(IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg))
          as IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg create() =>
      IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg._();
  @$core.override
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg>(create);
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageExplicitPresenceDelimited
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited({
    IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageExplicitPresenceDelimited._();

  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageExplicitPresenceDelimited.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsMessageExplicitPresenceDelimited',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OG,
        subBuilder:
            IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg.create,
        defaultOrMaker:
            IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited copyWith(
          void Function(IgnoreEmptyEditionsMessageExplicitPresenceDelimited)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsMessageExplicitPresenceDelimited))
          as IgnoreEmptyEditionsMessageExplicitPresenceDelimited;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited create() =>
      IgnoreEmptyEditionsMessageExplicitPresenceDelimited._();
  @$core.override
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageExplicitPresenceDelimited>(create);
  static IgnoreEmptyEditionsMessageExplicitPresenceDelimited? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyEditionsMessageExplicitPresenceDelimited_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageLegacyRequired_Msg
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageLegacyRequired_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageLegacyRequired_Msg._();

  factory IgnoreEmptyEditionsMessageLegacyRequired_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageLegacyRequired_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsMessageLegacyRequired.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequired_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequired_Msg copyWith(
          void Function(IgnoreEmptyEditionsMessageLegacyRequired_Msg)
              updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsMessageLegacyRequired_Msg))
          as IgnoreEmptyEditionsMessageLegacyRequired_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequired_Msg create() =>
      IgnoreEmptyEditionsMessageLegacyRequired_Msg._();
  @$core.override
  IgnoreEmptyEditionsMessageLegacyRequired_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequired_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageLegacyRequired_Msg>(create);
  static IgnoreEmptyEditionsMessageLegacyRequired_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageLegacyRequired extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageLegacyRequired({
    IgnoreEmptyEditionsMessageLegacyRequired_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageLegacyRequired._();

  factory IgnoreEmptyEditionsMessageLegacyRequired.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageLegacyRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsMessageLegacyRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<IgnoreEmptyEditionsMessageLegacyRequired_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: IgnoreEmptyEditionsMessageLegacyRequired_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequired copyWith(
          void Function(IgnoreEmptyEditionsMessageLegacyRequired) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsMessageLegacyRequired))
          as IgnoreEmptyEditionsMessageLegacyRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequired create() =>
      IgnoreEmptyEditionsMessageLegacyRequired._();
  @$core.override
  IgnoreEmptyEditionsMessageLegacyRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequired getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageLegacyRequired>(create);
  static IgnoreEmptyEditionsMessageLegacyRequired? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageLegacyRequired_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyEditionsMessageLegacyRequired_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageLegacyRequired_Msg ensureVal() => $_ensure(0);
}

class IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg._();

  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsMessageLegacyRequiredDelimited.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg copyWith(
          void Function(IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg))
          as IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg create() =>
      IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg._();
  @$core.override
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg>(create);
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IgnoreEmptyEditionsMessageLegacyRequiredDelimited
    extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited({
    IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsMessageLegacyRequiredDelimited._();

  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMessageLegacyRequiredDelimited.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'IgnoreEmptyEditionsMessageLegacyRequiredDelimited',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.QG,
        subBuilder:
            IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg.create,
        defaultOrMaker:
            IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg.getDefault);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited copyWith(
          void Function(IgnoreEmptyEditionsMessageLegacyRequiredDelimited)
              updates) =>
      super.copyWith((message) => updates(
              message as IgnoreEmptyEditionsMessageLegacyRequiredDelimited))
          as IgnoreEmptyEditionsMessageLegacyRequiredDelimited;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited create() =>
      IgnoreEmptyEditionsMessageLegacyRequiredDelimited._();
  @$core.override
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsMessageLegacyRequiredDelimited>(create);
  static IgnoreEmptyEditionsMessageLegacyRequiredDelimited? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(IgnoreEmptyEditionsMessageLegacyRequiredDelimited_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum IgnoreEmptyEditionsOneof_O { val, notSet }

class IgnoreEmptyEditionsOneof extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsOneof({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IgnoreEmptyEditionsOneof._();

  factory IgnoreEmptyEditionsOneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsOneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, IgnoreEmptyEditionsOneof_O>
      _IgnoreEmptyEditionsOneof_OByTag = {
    1: IgnoreEmptyEditionsOneof_O.val,
    0: IgnoreEmptyEditionsOneof_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsOneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsOneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsOneof copyWith(
          void Function(IgnoreEmptyEditionsOneof) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyEditionsOneof))
          as IgnoreEmptyEditionsOneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsOneof create() => IgnoreEmptyEditionsOneof._();
  @$core.override
  IgnoreEmptyEditionsOneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsOneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyEditionsOneof>(create);
  static IgnoreEmptyEditionsOneof? _defaultInstance;

  @$pb.TagNumber(1)
  IgnoreEmptyEditionsOneof_O whichO() =>
      _IgnoreEmptyEditionsOneof_OByTag[$_whichOneof(0)]!;
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

class IgnoreEmptyEditionsRepeated extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsRepeated({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  IgnoreEmptyEditionsRepeated._();

  factory IgnoreEmptyEditionsRepeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsRepeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsRepeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsRepeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsRepeated copyWith(
          void Function(IgnoreEmptyEditionsRepeated) updates) =>
      super.copyWith(
              (message) => updates(message as IgnoreEmptyEditionsRepeated))
          as IgnoreEmptyEditionsRepeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsRepeated create() =>
      IgnoreEmptyEditionsRepeated._();
  @$core.override
  IgnoreEmptyEditionsRepeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsRepeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyEditionsRepeated>(create);
  static IgnoreEmptyEditionsRepeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class IgnoreEmptyEditionsRepeatedExpanded extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsRepeatedExpanded({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  IgnoreEmptyEditionsRepeatedExpanded._();

  factory IgnoreEmptyEditionsRepeatedExpanded.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsRepeatedExpanded.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsRepeatedExpanded',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsRepeatedExpanded clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsRepeatedExpanded copyWith(
          void Function(IgnoreEmptyEditionsRepeatedExpanded) updates) =>
      super.copyWith((message) =>
              updates(message as IgnoreEmptyEditionsRepeatedExpanded))
          as IgnoreEmptyEditionsRepeatedExpanded;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsRepeatedExpanded create() =>
      IgnoreEmptyEditionsRepeatedExpanded._();
  @$core.override
  IgnoreEmptyEditionsRepeatedExpanded createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsRepeatedExpanded getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          IgnoreEmptyEditionsRepeatedExpanded>(create);
  static IgnoreEmptyEditionsRepeatedExpanded? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class IgnoreEmptyEditionsMap extends $pb.GeneratedMessage {
  factory IgnoreEmptyEditionsMap({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  IgnoreEmptyEditionsMap._();

  factory IgnoreEmptyEditionsMap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IgnoreEmptyEditionsMap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IgnoreEmptyEditionsMap',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'IgnoreEmptyEditionsMap.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IgnoreEmptyEditionsMap copyWith(
          void Function(IgnoreEmptyEditionsMap) updates) =>
      super.copyWith((message) => updates(message as IgnoreEmptyEditionsMap))
          as IgnoreEmptyEditionsMap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMap create() => IgnoreEmptyEditionsMap._();
  @$core.override
  IgnoreEmptyEditionsMap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IgnoreEmptyEditionsMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IgnoreEmptyEditionsMap>(create);
  static IgnoreEmptyEditionsMap? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
