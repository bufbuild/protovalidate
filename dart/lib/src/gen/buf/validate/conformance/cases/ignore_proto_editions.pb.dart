// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_proto_editions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class EditionsScalarExplicitPresenceIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreUnspecified._();

  factory EditionsScalarExplicitPresenceIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarExplicitPresenceIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreUnspecified copyWith(
          void Function(EditionsScalarExplicitPresenceIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarExplicitPresenceIgnoreUnspecified))
          as EditionsScalarExplicitPresenceIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreUnspecified create() =>
      EditionsScalarExplicitPresenceIgnoreUnspecified._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreUnspecified>(create);
  static EditionsScalarExplicitPresenceIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault._();

  factory EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault copyWith(
          void Function(
                  EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault))
          as EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault create() =>
      EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault>(create);
  static EditionsScalarExplicitPresenceIgnoreUnspecifiedWithDefault?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarExplicitPresenceIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreEmpty._();

  factory EditionsScalarExplicitPresenceIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarExplicitPresenceIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreEmpty copyWith(
          void Function(EditionsScalarExplicitPresenceIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarExplicitPresenceIgnoreEmpty))
          as EditionsScalarExplicitPresenceIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreEmpty create() =>
      EditionsScalarExplicitPresenceIgnoreEmpty._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreEmpty>(create);
  static EditionsScalarExplicitPresenceIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarExplicitPresenceIgnoreEmptyWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreEmptyWithDefault._();

  factory EditionsScalarExplicitPresenceIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreEmptyWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarExplicitPresenceIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreEmptyWithDefault copyWith(
          void Function(EditionsScalarExplicitPresenceIgnoreEmptyWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarExplicitPresenceIgnoreEmptyWithDefault))
          as EditionsScalarExplicitPresenceIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreEmptyWithDefault create() =>
      EditionsScalarExplicitPresenceIgnoreEmptyWithDefault._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreEmptyWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreEmptyWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreEmptyWithDefault>(create);
  static EditionsScalarExplicitPresenceIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarExplicitPresenceIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreAlways._();

  factory EditionsScalarExplicitPresenceIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarExplicitPresenceIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreAlways copyWith(
          void Function(EditionsScalarExplicitPresenceIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarExplicitPresenceIgnoreAlways))
          as EditionsScalarExplicitPresenceIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreAlways create() =>
      EditionsScalarExplicitPresenceIgnoreAlways._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreAlways>(create);
  static EditionsScalarExplicitPresenceIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault._();

  factory EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault copyWith(
          void Function(EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault))
          as EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault create() =>
      EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault._();
  @$core.override
  EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault>(create);
  static EditionsScalarExplicitPresenceIgnoreAlwaysWithDefault?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarImplicitPresenceIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsScalarImplicitPresenceIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarImplicitPresenceIgnoreUnspecified._();

  factory EditionsScalarImplicitPresenceIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarImplicitPresenceIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarImplicitPresenceIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreUnspecified copyWith(
          void Function(EditionsScalarImplicitPresenceIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarImplicitPresenceIgnoreUnspecified))
          as EditionsScalarImplicitPresenceIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreUnspecified create() =>
      EditionsScalarImplicitPresenceIgnoreUnspecified._();
  @$core.override
  EditionsScalarImplicitPresenceIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarImplicitPresenceIgnoreUnspecified>(create);
  static EditionsScalarImplicitPresenceIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarImplicitPresenceIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsScalarImplicitPresenceIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarImplicitPresenceIgnoreEmpty._();

  factory EditionsScalarImplicitPresenceIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarImplicitPresenceIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarImplicitPresenceIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreEmpty copyWith(
          void Function(EditionsScalarImplicitPresenceIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarImplicitPresenceIgnoreEmpty))
          as EditionsScalarImplicitPresenceIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreEmpty create() =>
      EditionsScalarImplicitPresenceIgnoreEmpty._();
  @$core.override
  EditionsScalarImplicitPresenceIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarImplicitPresenceIgnoreEmpty>(create);
  static EditionsScalarImplicitPresenceIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarImplicitPresenceIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsScalarImplicitPresenceIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarImplicitPresenceIgnoreAlways._();

  factory EditionsScalarImplicitPresenceIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarImplicitPresenceIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarImplicitPresenceIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarImplicitPresenceIgnoreAlways copyWith(
          void Function(EditionsScalarImplicitPresenceIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarImplicitPresenceIgnoreAlways))
          as EditionsScalarImplicitPresenceIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreAlways create() =>
      EditionsScalarImplicitPresenceIgnoreAlways._();
  @$core.override
  EditionsScalarImplicitPresenceIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarImplicitPresenceIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarImplicitPresenceIgnoreAlways>(create);
  static EditionsScalarImplicitPresenceIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreUnspecified._();

  factory EditionsScalarLegacyRequiredIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarLegacyRequiredIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreUnspecified copyWith(
          void Function(EditionsScalarLegacyRequiredIgnoreUnspecified)
              updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarLegacyRequiredIgnoreUnspecified))
          as EditionsScalarLegacyRequiredIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreUnspecified create() =>
      EditionsScalarLegacyRequiredIgnoreUnspecified._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreUnspecified>(create);
  static EditionsScalarLegacyRequiredIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault._();

  factory EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault copyWith(
          void Function(
                  EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault))
          as EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault create() =>
      EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault>(create);
  static EditionsScalarLegacyRequiredIgnoreUnspecifiedWithDefault?
      _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreEmpty._();

  factory EditionsScalarLegacyRequiredIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarLegacyRequiredIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreEmpty copyWith(
          void Function(EditionsScalarLegacyRequiredIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarLegacyRequiredIgnoreEmpty))
          as EditionsScalarLegacyRequiredIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreEmpty create() =>
      EditionsScalarLegacyRequiredIgnoreEmpty._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreEmpty>(create);
  static EditionsScalarLegacyRequiredIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreEmptyWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreEmptyWithDefault._();

  factory EditionsScalarLegacyRequiredIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreEmptyWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarLegacyRequiredIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreEmptyWithDefault copyWith(
          void Function(EditionsScalarLegacyRequiredIgnoreEmptyWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarLegacyRequiredIgnoreEmptyWithDefault))
          as EditionsScalarLegacyRequiredIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreEmptyWithDefault create() =>
      EditionsScalarLegacyRequiredIgnoreEmptyWithDefault._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreEmptyWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreEmptyWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreEmptyWithDefault>(create);
  static EditionsScalarLegacyRequiredIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreAlways._();

  factory EditionsScalarLegacyRequiredIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsScalarLegacyRequiredIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreAlways copyWith(
          void Function(EditionsScalarLegacyRequiredIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsScalarLegacyRequiredIgnoreAlways))
          as EditionsScalarLegacyRequiredIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreAlways create() =>
      EditionsScalarLegacyRequiredIgnoreAlways._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreAlways>(create);
  static EditionsScalarLegacyRequiredIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault
    extends $pb.GeneratedMessage {
  factory EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault._();

  factory EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault copyWith(
          void Function(EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault))
          as EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault create() =>
      EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault._();
  @$core.override
  EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault>(create);
  static EditionsScalarLegacyRequiredIgnoreAlwaysWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreUnspecified_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg._();

  factory EditionsMessageExplicitPresenceIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreUnspecified_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreUnspecified_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceIgnoreUnspecified_Msg))
          as EditionsMessageExplicitPresenceIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreUnspecified_Msg create() =>
      EditionsMessageExplicitPresenceIgnoreUnspecified_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreUnspecified_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreUnspecified_Msg>(create);
  static EditionsMessageExplicitPresenceIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreUnspecified({
    EditionsMessageExplicitPresenceIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreUnspecified._();

  factory EditionsMessageExplicitPresenceIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<EditionsMessageExplicitPresenceIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageExplicitPresenceIgnoreUnspecified_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreUnspecified copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceIgnoreUnspecified))
          as EditionsMessageExplicitPresenceIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreUnspecified create() =>
      EditionsMessageExplicitPresenceIgnoreUnspecified._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreUnspecified>(create);
  static EditionsMessageExplicitPresenceIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageExplicitPresenceIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreUnspecified_Msg ensureVal() =>
      $_ensure(0);
}

class EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg copyWith(
          void Function(
                  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg))
          as EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
      create() =>
          EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg>(
          create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg?
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

class EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified({
    EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OG,
        subBuilder:
            EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
                .create,
        defaultOrMaker:
            EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
                .getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified copyWith(
          void Function(
                  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified))
          as EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified create() =>
      EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified>(create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified?
      _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg get val =>
      $_getN(0);
  @$pb.TagNumber(1)
  set val(
          EditionsMessageExplicitPresenceDelimitedIgnoreUnspecified_Msg
              value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreEmpty_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreEmpty_Msg._();

  factory EditionsMessageExplicitPresenceIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreEmpty_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageExplicitPresenceIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreEmpty_Msg copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreEmpty_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceIgnoreEmpty_Msg))
          as EditionsMessageExplicitPresenceIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreEmpty_Msg create() =>
      EditionsMessageExplicitPresenceIgnoreEmpty_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreEmpty_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreEmpty_Msg>(create);
  static EditionsMessageExplicitPresenceIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreEmpty({
    EditionsMessageExplicitPresenceIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreEmpty._();

  factory EditionsMessageExplicitPresenceIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageExplicitPresenceIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<EditionsMessageExplicitPresenceIgnoreEmpty_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageExplicitPresenceIgnoreEmpty_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreEmpty copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageExplicitPresenceIgnoreEmpty))
          as EditionsMessageExplicitPresenceIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreEmpty create() =>
      EditionsMessageExplicitPresenceIgnoreEmpty._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreEmpty>(create);
  static EditionsMessageExplicitPresenceIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageExplicitPresenceIgnoreEmpty_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

class EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg copyWith(
          void Function(EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg))
          as EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg create() =>
      EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg>(create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg?
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

class EditionsMessageExplicitPresenceDelimitedIgnoreEmpty
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty({
    EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreEmpty.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OG,
        subBuilder:
            EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg.create,
        defaultOrMaker:
            EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty copyWith(
          void Function(EditionsMessageExplicitPresenceDelimitedIgnoreEmpty)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceDelimitedIgnoreEmpty))
          as EditionsMessageExplicitPresenceDelimitedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty create() =>
      EditionsMessageExplicitPresenceDelimitedIgnoreEmpty._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceDelimitedIgnoreEmpty>(create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageExplicitPresenceDelimitedIgnoreEmpty_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreAlways_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreAlways_Msg._();

  factory EditionsMessageExplicitPresenceIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreAlways_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreAlways_Msg copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreAlways_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceIgnoreAlways_Msg))
          as EditionsMessageExplicitPresenceIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreAlways_Msg create() =>
      EditionsMessageExplicitPresenceIgnoreAlways_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreAlways_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreAlways_Msg>(create);
  static EditionsMessageExplicitPresenceIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageExplicitPresenceIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceIgnoreAlways({
    EditionsMessageExplicitPresenceIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceIgnoreAlways._();

  factory EditionsMessageExplicitPresenceIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceIgnoreAlways.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageExplicitPresenceIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<EditionsMessageExplicitPresenceIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageExplicitPresenceIgnoreAlways_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceIgnoreAlways copyWith(
          void Function(EditionsMessageExplicitPresenceIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageExplicitPresenceIgnoreAlways))
          as EditionsMessageExplicitPresenceIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreAlways create() =>
      EditionsMessageExplicitPresenceIgnoreAlways._();
  @$core.override
  EditionsMessageExplicitPresenceIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceIgnoreAlways>(create);
  static EditionsMessageExplicitPresenceIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageExplicitPresenceIgnoreAlways_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

class EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg copyWith(
          void Function(
                  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg))
          as EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg create() =>
      EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg>(create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg?
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

class EditionsMessageExplicitPresenceDelimitedIgnoreAlways
    extends $pb.GeneratedMessage {
  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways({
    EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageExplicitPresenceDelimitedIgnoreAlways._();

  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageExplicitPresenceDelimitedIgnoreAlways.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageExplicitPresenceDelimitedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OG,
        subBuilder:
            EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg.create,
        defaultOrMaker:
            EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways copyWith(
          void Function(EditionsMessageExplicitPresenceDelimitedIgnoreAlways)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageExplicitPresenceDelimitedIgnoreAlways))
          as EditionsMessageExplicitPresenceDelimitedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways create() =>
      EditionsMessageExplicitPresenceDelimitedIgnoreAlways._();
  @$core.override
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageExplicitPresenceDelimitedIgnoreAlways>(create);
  static EditionsMessageExplicitPresenceDelimitedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageExplicitPresenceDelimitedIgnoreAlways_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreUnspecified_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg._();

  factory EditionsMessageLegacyRequiredIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreUnspecified_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreUnspecified_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageLegacyRequiredIgnoreUnspecified_Msg))
          as EditionsMessageLegacyRequiredIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreUnspecified_Msg create() =>
      EditionsMessageLegacyRequiredIgnoreUnspecified_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreUnspecified_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreUnspecified_Msg>(create);
  static EditionsMessageLegacyRequiredIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreUnspecified({
    EditionsMessageLegacyRequiredIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreUnspecified._();

  factory EditionsMessageLegacyRequiredIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageLegacyRequiredIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<EditionsMessageLegacyRequiredIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageLegacyRequiredIgnoreUnspecified_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreUnspecified copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageLegacyRequiredIgnoreUnspecified))
          as EditionsMessageLegacyRequiredIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreUnspecified create() =>
      EditionsMessageLegacyRequiredIgnoreUnspecified._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreUnspecified>(create);
  static EditionsMessageLegacyRequiredIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreUnspecified_Msg ensureVal() => $_ensure(0);
}

class EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg clone() =>
      deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg copyWith(
          void Function(
                  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg))
          as EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg?
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

class EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified({
    EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.QG,
        subBuilder:
            EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg.create,
        defaultOrMaker:
            EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg
                .getDefault);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified copyWith(
          void Function(EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified))
          as EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified?
      _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg get val =>
      $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredDelimitedIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreEmpty_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreEmpty_Msg._();

  factory EditionsMessageLegacyRequiredIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreEmpty_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageLegacyRequiredIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreEmpty_Msg copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreEmpty_Msg)
              updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageLegacyRequiredIgnoreEmpty_Msg))
          as EditionsMessageLegacyRequiredIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreEmpty_Msg create() =>
      EditionsMessageLegacyRequiredIgnoreEmpty_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreEmpty_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreEmpty_Msg>(create);
  static EditionsMessageLegacyRequiredIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreEmpty({
    EditionsMessageLegacyRequiredIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreEmpty._();

  factory EditionsMessageLegacyRequiredIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageLegacyRequiredIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<EditionsMessageLegacyRequiredIgnoreEmpty_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageLegacyRequiredIgnoreEmpty_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreEmpty copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageLegacyRequiredIgnoreEmpty))
          as EditionsMessageLegacyRequiredIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreEmpty create() =>
      EditionsMessageLegacyRequiredIgnoreEmpty._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreEmpty>(create);
  static EditionsMessageLegacyRequiredIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredIgnoreEmpty_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

class EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg copyWith(
          void Function(EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg))
          as EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg?
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

class EditionsMessageLegacyRequiredDelimitedIgnoreEmpty
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty({
    EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreEmpty.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.QG,
        subBuilder:
            EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg.create,
        defaultOrMaker:
            EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg.getDefault);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty copyWith(
          void Function(EditionsMessageLegacyRequiredDelimitedIgnoreEmpty)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageLegacyRequiredDelimitedIgnoreEmpty))
          as EditionsMessageLegacyRequiredDelimitedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreEmpty._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreEmpty>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredDelimitedIgnoreEmpty_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreAlways_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreAlways_Msg._();

  factory EditionsMessageLegacyRequiredIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreAlways_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageLegacyRequiredIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreAlways_Msg copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreAlways_Msg)
              updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageLegacyRequiredIgnoreAlways_Msg))
          as EditionsMessageLegacyRequiredIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreAlways_Msg create() =>
      EditionsMessageLegacyRequiredIgnoreAlways_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreAlways_Msg createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreAlways_Msg>(create);
  static EditionsMessageLegacyRequiredIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsMessageLegacyRequiredIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredIgnoreAlways({
    EditionsMessageLegacyRequiredIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredIgnoreAlways._();

  factory EditionsMessageLegacyRequiredIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMessageLegacyRequiredIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<EditionsMessageLegacyRequiredIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: EditionsMessageLegacyRequiredIgnoreAlways_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredIgnoreAlways copyWith(
          void Function(EditionsMessageLegacyRequiredIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMessageLegacyRequiredIgnoreAlways))
          as EditionsMessageLegacyRequiredIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreAlways create() =>
      EditionsMessageLegacyRequiredIgnoreAlways._();
  @$core.override
  EditionsMessageLegacyRequiredIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredIgnoreAlways>(create);
  static EditionsMessageLegacyRequiredIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredIgnoreAlways_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

class EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg copyWith(
          void Function(EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg)
              updates) =>
      super.copyWith((message) => updates(message
              as EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg))
          as EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg
      createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg?
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

class EditionsMessageLegacyRequiredDelimitedIgnoreAlways
    extends $pb.GeneratedMessage {
  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways({
    EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsMessageLegacyRequiredDelimitedIgnoreAlways._();

  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMessageLegacyRequiredDelimitedIgnoreAlways.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'EditionsMessageLegacyRequiredDelimitedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.QG,
        subBuilder:
            EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg.create,
        defaultOrMaker:
            EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg.getDefault);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways copyWith(
          void Function(EditionsMessageLegacyRequiredDelimitedIgnoreAlways)
              updates) =>
      super.copyWith((message) => updates(
              message as EditionsMessageLegacyRequiredDelimitedIgnoreAlways))
          as EditionsMessageLegacyRequiredDelimitedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways create() =>
      EditionsMessageLegacyRequiredDelimitedIgnoreAlways._();
  @$core.override
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsMessageLegacyRequiredDelimitedIgnoreAlways>(create);
  static EditionsMessageLegacyRequiredDelimitedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(EditionsMessageLegacyRequiredDelimitedIgnoreAlways_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum EditionsOneofIgnoreUnspecified_O { val, notSet }

class EditionsOneofIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreUnspecified._();

  factory EditionsOneofIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreUnspecified_O>
      _EditionsOneofIgnoreUnspecified_OByTag = {
    1: EditionsOneofIgnoreUnspecified_O.val,
    0: EditionsOneofIgnoreUnspecified_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreUnspecified copyWith(
          void Function(EditionsOneofIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsOneofIgnoreUnspecified))
          as EditionsOneofIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreUnspecified create() =>
      EditionsOneofIgnoreUnspecified._();
  @$core.override
  EditionsOneofIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsOneofIgnoreUnspecified>(create);
  static EditionsOneofIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreUnspecified_O whichO() =>
      _EditionsOneofIgnoreUnspecified_OByTag[$_whichOneof(0)]!;
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

enum EditionsOneofIgnoreUnspecifiedWithDefault_O { val, notSet }

class EditionsOneofIgnoreUnspecifiedWithDefault extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreUnspecifiedWithDefault._();

  factory EditionsOneofIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreUnspecifiedWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreUnspecifiedWithDefault_O>
      _EditionsOneofIgnoreUnspecifiedWithDefault_OByTag = {
    1: EditionsOneofIgnoreUnspecifiedWithDefault_O.val,
    0: EditionsOneofIgnoreUnspecifiedWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreUnspecifiedWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreUnspecifiedWithDefault copyWith(
          void Function(EditionsOneofIgnoreUnspecifiedWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsOneofIgnoreUnspecifiedWithDefault))
          as EditionsOneofIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreUnspecifiedWithDefault create() =>
      EditionsOneofIgnoreUnspecifiedWithDefault._();
  @$core.override
  EditionsOneofIgnoreUnspecifiedWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreUnspecifiedWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsOneofIgnoreUnspecifiedWithDefault>(create);
  static EditionsOneofIgnoreUnspecifiedWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreUnspecifiedWithDefault_O whichO() =>
      _EditionsOneofIgnoreUnspecifiedWithDefault_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum EditionsOneofIgnoreEmpty_O { val, notSet }

class EditionsOneofIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreEmpty._();

  factory EditionsOneofIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreEmpty_O>
      _EditionsOneofIgnoreEmpty_OByTag = {
    1: EditionsOneofIgnoreEmpty_O.val,
    0: EditionsOneofIgnoreEmpty_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreEmpty copyWith(
          void Function(EditionsOneofIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as EditionsOneofIgnoreEmpty))
          as EditionsOneofIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreEmpty create() => EditionsOneofIgnoreEmpty._();
  @$core.override
  EditionsOneofIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsOneofIgnoreEmpty>(create);
  static EditionsOneofIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreEmpty_O whichO() =>
      _EditionsOneofIgnoreEmpty_OByTag[$_whichOneof(0)]!;
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

enum EditionsOneofIgnoreEmptyWithDefault_O { val, notSet }

class EditionsOneofIgnoreEmptyWithDefault extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreEmptyWithDefault._();

  factory EditionsOneofIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreEmptyWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreEmptyWithDefault_O>
      _EditionsOneofIgnoreEmptyWithDefault_OByTag = {
    1: EditionsOneofIgnoreEmptyWithDefault_O.val,
    0: EditionsOneofIgnoreEmptyWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreEmptyWithDefault copyWith(
          void Function(EditionsOneofIgnoreEmptyWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsOneofIgnoreEmptyWithDefault))
          as EditionsOneofIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreEmptyWithDefault create() =>
      EditionsOneofIgnoreEmptyWithDefault._();
  @$core.override
  EditionsOneofIgnoreEmptyWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreEmptyWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsOneofIgnoreEmptyWithDefault>(create);
  static EditionsOneofIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreEmptyWithDefault_O whichO() =>
      _EditionsOneofIgnoreEmptyWithDefault_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum EditionsOneofIgnoreAlways_O { val, notSet }

class EditionsOneofIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreAlways._();

  factory EditionsOneofIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreAlways_O>
      _EditionsOneofIgnoreAlways_OByTag = {
    1: EditionsOneofIgnoreAlways_O.val,
    0: EditionsOneofIgnoreAlways_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreAlways copyWith(
          void Function(EditionsOneofIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as EditionsOneofIgnoreAlways))
          as EditionsOneofIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreAlways create() => EditionsOneofIgnoreAlways._();
  @$core.override
  EditionsOneofIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsOneofIgnoreAlways>(create);
  static EditionsOneofIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreAlways_O whichO() =>
      _EditionsOneofIgnoreAlways_OByTag[$_whichOneof(0)]!;
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

enum EditionsOneofIgnoreAlwaysWithDefault_O { val, notSet }

class EditionsOneofIgnoreAlwaysWithDefault extends $pb.GeneratedMessage {
  factory EditionsOneofIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EditionsOneofIgnoreAlwaysWithDefault._();

  factory EditionsOneofIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsOneofIgnoreAlwaysWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EditionsOneofIgnoreAlwaysWithDefault_O>
      _EditionsOneofIgnoreAlwaysWithDefault_OByTag = {
    1: EditionsOneofIgnoreAlwaysWithDefault_O.val,
    0: EditionsOneofIgnoreAlwaysWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsOneofIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsOneofIgnoreAlwaysWithDefault copyWith(
          void Function(EditionsOneofIgnoreAlwaysWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsOneofIgnoreAlwaysWithDefault))
          as EditionsOneofIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreAlwaysWithDefault create() =>
      EditionsOneofIgnoreAlwaysWithDefault._();
  @$core.override
  EditionsOneofIgnoreAlwaysWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsOneofIgnoreAlwaysWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsOneofIgnoreAlwaysWithDefault>(create);
  static EditionsOneofIgnoreAlwaysWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  EditionsOneofIgnoreAlwaysWithDefault_O whichO() =>
      _EditionsOneofIgnoreAlwaysWithDefault_OByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearO() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EditionsRepeatedIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsRepeatedIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedIgnoreUnspecified._();

  factory EditionsRepeatedIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreUnspecified copyWith(
          void Function(EditionsRepeatedIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedIgnoreUnspecified))
          as EditionsRepeatedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreUnspecified create() =>
      EditionsRepeatedIgnoreUnspecified._();
  @$core.override
  EditionsRepeatedIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsRepeatedIgnoreUnspecified>(
          create);
  static EditionsRepeatedIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedIgnoreUnspecified._();

  factory EditionsRepeatedExpandedIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreUnspecified copyWith(
          void Function(EditionsRepeatedExpandedIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedIgnoreUnspecified))
          as EditionsRepeatedExpandedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreUnspecified create() =>
      EditionsRepeatedExpandedIgnoreUnspecified._();
  @$core.override
  EditionsRepeatedExpandedIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedIgnoreUnspecified>(create);
  static EditionsRepeatedExpandedIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsRepeatedIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedIgnoreEmpty._();

  factory EditionsRepeatedIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreEmpty copyWith(
          void Function(EditionsRepeatedIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsRepeatedIgnoreEmpty))
          as EditionsRepeatedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreEmpty create() =>
      EditionsRepeatedIgnoreEmpty._();
  @$core.override
  EditionsRepeatedIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsRepeatedIgnoreEmpty>(create);
  static EditionsRepeatedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedIgnoreEmpty._();

  factory EditionsRepeatedExpandedIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreEmpty copyWith(
          void Function(EditionsRepeatedExpandedIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedIgnoreEmpty))
          as EditionsRepeatedExpandedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreEmpty create() =>
      EditionsRepeatedExpandedIgnoreEmpty._();
  @$core.override
  EditionsRepeatedExpandedIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedIgnoreEmpty>(create);
  static EditionsRepeatedExpandedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsRepeatedIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedIgnoreAlways._();

  factory EditionsRepeatedIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedIgnoreAlways copyWith(
          void Function(EditionsRepeatedIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsRepeatedIgnoreAlways))
          as EditionsRepeatedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreAlways create() =>
      EditionsRepeatedIgnoreAlways._();
  @$core.override
  EditionsRepeatedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsRepeatedIgnoreAlways>(create);
  static EditionsRepeatedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedIgnoreAlways._();

  factory EditionsRepeatedExpandedIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedIgnoreAlways copyWith(
          void Function(EditionsRepeatedExpandedIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedIgnoreAlways))
          as EditionsRepeatedExpandedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreAlways create() =>
      EditionsRepeatedExpandedIgnoreAlways._();
  @$core.override
  EditionsRepeatedExpandedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedIgnoreAlways>(create);
  static EditionsRepeatedExpandedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsMapIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsMapIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapIgnoreUnspecified._();

  factory EditionsMapIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreUnspecified copyWith(
          void Function(EditionsMapIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsMapIgnoreUnspecified))
          as EditionsMapIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreUnspecified create() =>
      EditionsMapIgnoreUnspecified._();
  @$core.override
  EditionsMapIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapIgnoreUnspecified>(create);
  static EditionsMapIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsMapIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapIgnoreEmpty._();

  factory EditionsMapIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreEmpty copyWith(
          void Function(EditionsMapIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as EditionsMapIgnoreEmpty))
          as EditionsMapIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreEmpty create() => EditionsMapIgnoreEmpty._();
  @$core.override
  EditionsMapIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapIgnoreEmpty>(create);
  static EditionsMapIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsMapIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapIgnoreAlways._();

  factory EditionsMapIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapIgnoreAlways copyWith(
          void Function(EditionsMapIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as EditionsMapIgnoreAlways))
          as EditionsMapIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreAlways create() => EditionsMapIgnoreAlways._();
  @$core.override
  EditionsMapIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapIgnoreAlways>(create);
  static EditionsMapIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsRepeatedItemIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsRepeatedItemIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedItemIgnoreUnspecified._();

  factory EditionsRepeatedItemIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedItemIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedItemIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreUnspecified copyWith(
          void Function(EditionsRepeatedItemIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedItemIgnoreUnspecified))
          as EditionsRepeatedItemIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreUnspecified create() =>
      EditionsRepeatedItemIgnoreUnspecified._();
  @$core.override
  EditionsRepeatedItemIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedItemIgnoreUnspecified>(create);
  static EditionsRepeatedItemIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedItemIgnoreUnspecified
    extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedItemIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedItemIgnoreUnspecified._();

  factory EditionsRepeatedExpandedItemIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedItemIgnoreUnspecified.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedItemIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreUnspecified copyWith(
          void Function(EditionsRepeatedExpandedItemIgnoreUnspecified)
              updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedItemIgnoreUnspecified))
          as EditionsRepeatedExpandedItemIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreUnspecified create() =>
      EditionsRepeatedExpandedItemIgnoreUnspecified._();
  @$core.override
  EditionsRepeatedExpandedItemIgnoreUnspecified createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedItemIgnoreUnspecified>(create);
  static EditionsRepeatedExpandedItemIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedItemIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsRepeatedItemIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedItemIgnoreEmpty._();

  factory EditionsRepeatedItemIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedItemIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedItemIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreEmpty copyWith(
          void Function(EditionsRepeatedItemIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsRepeatedItemIgnoreEmpty))
          as EditionsRepeatedItemIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreEmpty create() =>
      EditionsRepeatedItemIgnoreEmpty._();
  @$core.override
  EditionsRepeatedItemIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsRepeatedItemIgnoreEmpty>(
          create);
  static EditionsRepeatedItemIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedItemIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedItemIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedItemIgnoreEmpty._();

  factory EditionsRepeatedExpandedItemIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedItemIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedItemIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreEmpty copyWith(
          void Function(EditionsRepeatedExpandedItemIgnoreEmpty) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedItemIgnoreEmpty))
          as EditionsRepeatedExpandedItemIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreEmpty create() =>
      EditionsRepeatedExpandedItemIgnoreEmpty._();
  @$core.override
  EditionsRepeatedExpandedItemIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreEmpty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedItemIgnoreEmpty>(create);
  static EditionsRepeatedExpandedItemIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedItemIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsRepeatedItemIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedItemIgnoreAlways._();

  factory EditionsRepeatedItemIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedItemIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedItemIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedItemIgnoreAlways copyWith(
          void Function(EditionsRepeatedItemIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsRepeatedItemIgnoreAlways))
          as EditionsRepeatedItemIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreAlways create() =>
      EditionsRepeatedItemIgnoreAlways._();
  @$core.override
  EditionsRepeatedItemIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedItemIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsRepeatedItemIgnoreAlways>(
          create);
  static EditionsRepeatedItemIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsRepeatedExpandedItemIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsRepeatedExpandedItemIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  EditionsRepeatedExpandedItemIgnoreAlways._();

  factory EditionsRepeatedExpandedItemIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsRepeatedExpandedItemIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsRepeatedExpandedItemIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsRepeatedExpandedItemIgnoreAlways copyWith(
          void Function(EditionsRepeatedExpandedItemIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsRepeatedExpandedItemIgnoreAlways))
          as EditionsRepeatedExpandedItemIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreAlways create() =>
      EditionsRepeatedExpandedItemIgnoreAlways._();
  @$core.override
  EditionsRepeatedExpandedItemIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsRepeatedExpandedItemIgnoreAlways getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EditionsRepeatedExpandedItemIgnoreAlways>(create);
  static EditionsRepeatedExpandedItemIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class EditionsMapKeyIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsMapKeyIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapKeyIgnoreUnspecified._();

  factory EditionsMapKeyIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapKeyIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapKeyIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapKeyIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreUnspecified copyWith(
          void Function(EditionsMapKeyIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsMapKeyIgnoreUnspecified))
          as EditionsMapKeyIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreUnspecified create() =>
      EditionsMapKeyIgnoreUnspecified._();
  @$core.override
  EditionsMapKeyIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapKeyIgnoreUnspecified>(
          create);
  static EditionsMapKeyIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapKeyIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsMapKeyIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapKeyIgnoreEmpty._();

  factory EditionsMapKeyIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapKeyIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapKeyIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapKeyIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreEmpty copyWith(
          void Function(EditionsMapKeyIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as EditionsMapKeyIgnoreEmpty))
          as EditionsMapKeyIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreEmpty create() => EditionsMapKeyIgnoreEmpty._();
  @$core.override
  EditionsMapKeyIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapKeyIgnoreEmpty>(create);
  static EditionsMapKeyIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapKeyIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsMapKeyIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapKeyIgnoreAlways._();

  factory EditionsMapKeyIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapKeyIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapKeyIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapKeyIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapKeyIgnoreAlways copyWith(
          void Function(EditionsMapKeyIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsMapKeyIgnoreAlways))
          as EditionsMapKeyIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreAlways create() => EditionsMapKeyIgnoreAlways._();
  @$core.override
  EditionsMapKeyIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapKeyIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapKeyIgnoreAlways>(create);
  static EditionsMapKeyIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapValueIgnoreUnspecified extends $pb.GeneratedMessage {
  factory EditionsMapValueIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapValueIgnoreUnspecified._();

  factory EditionsMapValueIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapValueIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapValueIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapValueIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreUnspecified copyWith(
          void Function(EditionsMapValueIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as EditionsMapValueIgnoreUnspecified))
          as EditionsMapValueIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreUnspecified create() =>
      EditionsMapValueIgnoreUnspecified._();
  @$core.override
  EditionsMapValueIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapValueIgnoreUnspecified>(
          create);
  static EditionsMapValueIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapValueIgnoreEmpty extends $pb.GeneratedMessage {
  factory EditionsMapValueIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapValueIgnoreEmpty._();

  factory EditionsMapValueIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapValueIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapValueIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapValueIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreEmpty copyWith(
          void Function(EditionsMapValueIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsMapValueIgnoreEmpty))
          as EditionsMapValueIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreEmpty create() =>
      EditionsMapValueIgnoreEmpty._();
  @$core.override
  EditionsMapValueIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapValueIgnoreEmpty>(create);
  static EditionsMapValueIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class EditionsMapValueIgnoreAlways extends $pb.GeneratedMessage {
  factory EditionsMapValueIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  EditionsMapValueIgnoreAlways._();

  factory EditionsMapValueIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditionsMapValueIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditionsMapValueIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'EditionsMapValueIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditionsMapValueIgnoreAlways copyWith(
          void Function(EditionsMapValueIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as EditionsMapValueIgnoreAlways))
          as EditionsMapValueIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreAlways create() =>
      EditionsMapValueIgnoreAlways._();
  @$core.override
  EditionsMapValueIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditionsMapValueIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditionsMapValueIgnoreAlways>(create);
  static EditionsMapValueIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
