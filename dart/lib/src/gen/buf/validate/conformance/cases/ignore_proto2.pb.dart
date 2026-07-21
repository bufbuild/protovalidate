// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_proto2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Proto2ScalarOptionalIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreUnspecified._();

  factory Proto2ScalarOptionalIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarOptionalIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreUnspecified copyWith(
          void Function(Proto2ScalarOptionalIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarOptionalIgnoreUnspecified))
          as Proto2ScalarOptionalIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreUnspecified create() =>
      Proto2ScalarOptionalIgnoreUnspecified._();
  @$core.override
  Proto2ScalarOptionalIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarOptionalIgnoreUnspecified>(create);
  static Proto2ScalarOptionalIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarOptionalIgnoreUnspecifiedWithDefault
    extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreUnspecifiedWithDefault._();

  factory Proto2ScalarOptionalIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreUnspecifiedWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'Proto2ScalarOptionalIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreUnspecifiedWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreUnspecifiedWithDefault copyWith(
          void Function(Proto2ScalarOptionalIgnoreUnspecifiedWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as Proto2ScalarOptionalIgnoreUnspecifiedWithDefault))
          as Proto2ScalarOptionalIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreUnspecifiedWithDefault create() =>
      Proto2ScalarOptionalIgnoreUnspecifiedWithDefault._();
  @$core.override
  Proto2ScalarOptionalIgnoreUnspecifiedWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreUnspecifiedWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarOptionalIgnoreUnspecifiedWithDefault>(create);
  static Proto2ScalarOptionalIgnoreUnspecifiedWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarOptionalIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreEmpty._();

  factory Proto2ScalarOptionalIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarOptionalIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreEmpty copyWith(
          void Function(Proto2ScalarOptionalIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2ScalarOptionalIgnoreEmpty))
          as Proto2ScalarOptionalIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreEmpty create() =>
      Proto2ScalarOptionalIgnoreEmpty._();
  @$core.override
  Proto2ScalarOptionalIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2ScalarOptionalIgnoreEmpty>(
          create);
  static Proto2ScalarOptionalIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarOptionalIgnoreEmptyWithDefault extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreEmptyWithDefault._();

  factory Proto2ScalarOptionalIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreEmptyWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarOptionalIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreEmptyWithDefault copyWith(
          void Function(Proto2ScalarOptionalIgnoreEmptyWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarOptionalIgnoreEmptyWithDefault))
          as Proto2ScalarOptionalIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreEmptyWithDefault create() =>
      Proto2ScalarOptionalIgnoreEmptyWithDefault._();
  @$core.override
  Proto2ScalarOptionalIgnoreEmptyWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreEmptyWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarOptionalIgnoreEmptyWithDefault>(create);
  static Proto2ScalarOptionalIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarOptionalIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreAlways._();

  factory Proto2ScalarOptionalIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarOptionalIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreAlways copyWith(
          void Function(Proto2ScalarOptionalIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2ScalarOptionalIgnoreAlways))
          as Proto2ScalarOptionalIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreAlways create() =>
      Proto2ScalarOptionalIgnoreAlways._();
  @$core.override
  Proto2ScalarOptionalIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2ScalarOptionalIgnoreAlways>(
          create);
  static Proto2ScalarOptionalIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarOptionalIgnoreAlwaysWithDefault extends $pb.GeneratedMessage {
  factory Proto2ScalarOptionalIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarOptionalIgnoreAlwaysWithDefault._();

  factory Proto2ScalarOptionalIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarOptionalIgnoreAlwaysWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarOptionalIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarOptionalIgnoreAlwaysWithDefault copyWith(
          void Function(Proto2ScalarOptionalIgnoreAlwaysWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarOptionalIgnoreAlwaysWithDefault))
          as Proto2ScalarOptionalIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreAlwaysWithDefault create() =>
      Proto2ScalarOptionalIgnoreAlwaysWithDefault._();
  @$core.override
  Proto2ScalarOptionalIgnoreAlwaysWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarOptionalIgnoreAlwaysWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarOptionalIgnoreAlwaysWithDefault>(create);
  static Proto2ScalarOptionalIgnoreAlwaysWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreUnspecified._();

  factory Proto2ScalarRequiredIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarRequiredIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreUnspecified copyWith(
          void Function(Proto2ScalarRequiredIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarRequiredIgnoreUnspecified))
          as Proto2ScalarRequiredIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreUnspecified create() =>
      Proto2ScalarRequiredIgnoreUnspecified._();
  @$core.override
  Proto2ScalarRequiredIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarRequiredIgnoreUnspecified>(create);
  static Proto2ScalarRequiredIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreUnspecifiedWithDefault
    extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreUnspecifiedWithDefault._();

  factory Proto2ScalarRequiredIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreUnspecifiedWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'Proto2ScalarRequiredIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreUnspecifiedWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreUnspecifiedWithDefault copyWith(
          void Function(Proto2ScalarRequiredIgnoreUnspecifiedWithDefault)
              updates) =>
      super.copyWith((message) => updates(
              message as Proto2ScalarRequiredIgnoreUnspecifiedWithDefault))
          as Proto2ScalarRequiredIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreUnspecifiedWithDefault create() =>
      Proto2ScalarRequiredIgnoreUnspecifiedWithDefault._();
  @$core.override
  Proto2ScalarRequiredIgnoreUnspecifiedWithDefault createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreUnspecifiedWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarRequiredIgnoreUnspecifiedWithDefault>(create);
  static Proto2ScalarRequiredIgnoreUnspecifiedWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreEmpty._();

  factory Proto2ScalarRequiredIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarRequiredIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreEmpty copyWith(
          void Function(Proto2ScalarRequiredIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2ScalarRequiredIgnoreEmpty))
          as Proto2ScalarRequiredIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreEmpty create() =>
      Proto2ScalarRequiredIgnoreEmpty._();
  @$core.override
  Proto2ScalarRequiredIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2ScalarRequiredIgnoreEmpty>(
          create);
  static Proto2ScalarRequiredIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreEmptyWithDefault extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreEmptyWithDefault._();

  factory Proto2ScalarRequiredIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreEmptyWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarRequiredIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreEmptyWithDefault copyWith(
          void Function(Proto2ScalarRequiredIgnoreEmptyWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarRequiredIgnoreEmptyWithDefault))
          as Proto2ScalarRequiredIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreEmptyWithDefault create() =>
      Proto2ScalarRequiredIgnoreEmptyWithDefault._();
  @$core.override
  Proto2ScalarRequiredIgnoreEmptyWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreEmptyWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarRequiredIgnoreEmptyWithDefault>(create);
  static Proto2ScalarRequiredIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreAlways._();

  factory Proto2ScalarRequiredIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarRequiredIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreAlways copyWith(
          void Function(Proto2ScalarRequiredIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2ScalarRequiredIgnoreAlways))
          as Proto2ScalarRequiredIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreAlways create() =>
      Proto2ScalarRequiredIgnoreAlways._();
  @$core.override
  Proto2ScalarRequiredIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2ScalarRequiredIgnoreAlways>(
          create);
  static Proto2ScalarRequiredIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2ScalarRequiredIgnoreAlwaysWithDefault extends $pb.GeneratedMessage {
  factory Proto2ScalarRequiredIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2ScalarRequiredIgnoreAlwaysWithDefault._();

  factory Proto2ScalarRequiredIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2ScalarRequiredIgnoreAlwaysWithDefault.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2ScalarRequiredIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val',
        fieldType: $pb.PbFieldType.Q3, defaultOrMaker: -42);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2ScalarRequiredIgnoreAlwaysWithDefault copyWith(
          void Function(Proto2ScalarRequiredIgnoreAlwaysWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2ScalarRequiredIgnoreAlwaysWithDefault))
          as Proto2ScalarRequiredIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreAlwaysWithDefault create() =>
      Proto2ScalarRequiredIgnoreAlwaysWithDefault._();
  @$core.override
  Proto2ScalarRequiredIgnoreAlwaysWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2ScalarRequiredIgnoreAlwaysWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2ScalarRequiredIgnoreAlwaysWithDefault>(create);
  static Proto2ScalarRequiredIgnoreAlwaysWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getI(0, -42);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageOptionalIgnoreUnspecified_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreUnspecified_Msg._();

  factory Proto2MessageOptionalIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreUnspecified_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreUnspecified_Msg copyWith(
          void Function(Proto2MessageOptionalIgnoreUnspecified_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageOptionalIgnoreUnspecified_Msg))
          as Proto2MessageOptionalIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreUnspecified_Msg create() =>
      Proto2MessageOptionalIgnoreUnspecified_Msg._();
  @$core.override
  Proto2MessageOptionalIgnoreUnspecified_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreUnspecified_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageOptionalIgnoreUnspecified_Msg>(create);
  static Proto2MessageOptionalIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageOptionalIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreUnspecified({
    Proto2MessageOptionalIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreUnspecified._();

  factory Proto2MessageOptionalIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto2MessageOptionalIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageOptionalIgnoreUnspecified_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreUnspecified copyWith(
          void Function(Proto2MessageOptionalIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageOptionalIgnoreUnspecified))
          as Proto2MessageOptionalIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreUnspecified create() =>
      Proto2MessageOptionalIgnoreUnspecified._();
  @$core.override
  Proto2MessageOptionalIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageOptionalIgnoreUnspecified>(create);
  static Proto2MessageOptionalIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageOptionalIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreUnspecified_Msg ensureVal() => $_ensure(0);
}

class Proto2MessageOptionalIgnoreEmpty_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreEmpty_Msg._();

  factory Proto2MessageOptionalIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreEmpty_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreEmpty_Msg copyWith(
          void Function(Proto2MessageOptionalIgnoreEmpty_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageOptionalIgnoreEmpty_Msg))
          as Proto2MessageOptionalIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreEmpty_Msg create() =>
      Proto2MessageOptionalIgnoreEmpty_Msg._();
  @$core.override
  Proto2MessageOptionalIgnoreEmpty_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageOptionalIgnoreEmpty_Msg>(create);
  static Proto2MessageOptionalIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageOptionalIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreEmpty({
    Proto2MessageOptionalIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreEmpty._();

  factory Proto2MessageOptionalIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto2MessageOptionalIgnoreEmpty_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageOptionalIgnoreEmpty_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreEmpty copyWith(
          void Function(Proto2MessageOptionalIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MessageOptionalIgnoreEmpty))
          as Proto2MessageOptionalIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreEmpty create() =>
      Proto2MessageOptionalIgnoreEmpty._();
  @$core.override
  Proto2MessageOptionalIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MessageOptionalIgnoreEmpty>(
          create);
  static Proto2MessageOptionalIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageOptionalIgnoreEmpty_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

class Proto2MessageOptionalIgnoreAlways_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreAlways_Msg._();

  factory Proto2MessageOptionalIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreAlways_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreAlways_Msg copyWith(
          void Function(Proto2MessageOptionalIgnoreAlways_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageOptionalIgnoreAlways_Msg))
          as Proto2MessageOptionalIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreAlways_Msg create() =>
      Proto2MessageOptionalIgnoreAlways_Msg._();
  @$core.override
  Proto2MessageOptionalIgnoreAlways_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageOptionalIgnoreAlways_Msg>(create);
  static Proto2MessageOptionalIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageOptionalIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2MessageOptionalIgnoreAlways({
    Proto2MessageOptionalIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageOptionalIgnoreAlways._();

  factory Proto2MessageOptionalIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageOptionalIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageOptionalIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto2MessageOptionalIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageOptionalIgnoreAlways_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageOptionalIgnoreAlways copyWith(
          void Function(Proto2MessageOptionalIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageOptionalIgnoreAlways))
          as Proto2MessageOptionalIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreAlways create() =>
      Proto2MessageOptionalIgnoreAlways._();
  @$core.override
  Proto2MessageOptionalIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageOptionalIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MessageOptionalIgnoreAlways>(
          create);
  static Proto2MessageOptionalIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageOptionalIgnoreAlways_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageOptionalIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

class Proto2MessageRequiredIgnoreUnspecified_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreUnspecified_Msg._();

  factory Proto2MessageRequiredIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreUnspecified_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreUnspecified_Msg copyWith(
          void Function(Proto2MessageRequiredIgnoreUnspecified_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageRequiredIgnoreUnspecified_Msg))
          as Proto2MessageRequiredIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreUnspecified_Msg create() =>
      Proto2MessageRequiredIgnoreUnspecified_Msg._();
  @$core.override
  Proto2MessageRequiredIgnoreUnspecified_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreUnspecified_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageRequiredIgnoreUnspecified_Msg>(create);
  static Proto2MessageRequiredIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageRequiredIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreUnspecified({
    Proto2MessageRequiredIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreUnspecified._();

  factory Proto2MessageRequiredIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<Proto2MessageRequiredIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageRequiredIgnoreUnspecified_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreUnspecified copyWith(
          void Function(Proto2MessageRequiredIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageRequiredIgnoreUnspecified))
          as Proto2MessageRequiredIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreUnspecified create() =>
      Proto2MessageRequiredIgnoreUnspecified._();
  @$core.override
  Proto2MessageRequiredIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageRequiredIgnoreUnspecified>(create);
  static Proto2MessageRequiredIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageRequiredIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreUnspecified_Msg ensureVal() => $_ensure(0);
}

class Proto2MessageRequiredIgnoreEmpty_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreEmpty_Msg._();

  factory Proto2MessageRequiredIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreEmpty_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreEmpty_Msg copyWith(
          void Function(Proto2MessageRequiredIgnoreEmpty_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageRequiredIgnoreEmpty_Msg))
          as Proto2MessageRequiredIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreEmpty_Msg create() =>
      Proto2MessageRequiredIgnoreEmpty_Msg._();
  @$core.override
  Proto2MessageRequiredIgnoreEmpty_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageRequiredIgnoreEmpty_Msg>(create);
  static Proto2MessageRequiredIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageRequiredIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreEmpty({
    Proto2MessageRequiredIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreEmpty._();

  factory Proto2MessageRequiredIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<Proto2MessageRequiredIgnoreEmpty_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageRequiredIgnoreEmpty_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreEmpty copyWith(
          void Function(Proto2MessageRequiredIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MessageRequiredIgnoreEmpty))
          as Proto2MessageRequiredIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreEmpty create() =>
      Proto2MessageRequiredIgnoreEmpty._();
  @$core.override
  Proto2MessageRequiredIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MessageRequiredIgnoreEmpty>(
          create);
  static Proto2MessageRequiredIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageRequiredIgnoreEmpty_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

class Proto2MessageRequiredIgnoreAlways_Msg extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreAlways_Msg._();

  factory Proto2MessageRequiredIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreAlways_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreAlways_Msg copyWith(
          void Function(Proto2MessageRequiredIgnoreAlways_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageRequiredIgnoreAlways_Msg))
          as Proto2MessageRequiredIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreAlways_Msg create() =>
      Proto2MessageRequiredIgnoreAlways_Msg._();
  @$core.override
  Proto2MessageRequiredIgnoreAlways_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2MessageRequiredIgnoreAlways_Msg>(create);
  static Proto2MessageRequiredIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto2MessageRequiredIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2MessageRequiredIgnoreAlways({
    Proto2MessageRequiredIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2MessageRequiredIgnoreAlways._();

  factory Proto2MessageRequiredIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MessageRequiredIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MessageRequiredIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aQM<Proto2MessageRequiredIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto2MessageRequiredIgnoreAlways_Msg.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MessageRequiredIgnoreAlways copyWith(
          void Function(Proto2MessageRequiredIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2MessageRequiredIgnoreAlways))
          as Proto2MessageRequiredIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreAlways create() =>
      Proto2MessageRequiredIgnoreAlways._();
  @$core.override
  Proto2MessageRequiredIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MessageRequiredIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MessageRequiredIgnoreAlways>(
          create);
  static Proto2MessageRequiredIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto2MessageRequiredIgnoreAlways_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto2MessageRequiredIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

enum Proto2OneofIgnoreUnspecified_O { val, notSet }

class Proto2OneofIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreUnspecified._();

  factory Proto2OneofIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreUnspecified_O>
      _Proto2OneofIgnoreUnspecified_OByTag = {
    1: Proto2OneofIgnoreUnspecified_O.val,
    0: Proto2OneofIgnoreUnspecified_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreUnspecified copyWith(
          void Function(Proto2OneofIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2OneofIgnoreUnspecified))
          as Proto2OneofIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreUnspecified create() =>
      Proto2OneofIgnoreUnspecified._();
  @$core.override
  Proto2OneofIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2OneofIgnoreUnspecified>(create);
  static Proto2OneofIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreUnspecified_O whichO() =>
      _Proto2OneofIgnoreUnspecified_OByTag[$_whichOneof(0)]!;
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

enum Proto2OneofIgnoreUnspecifiedWithDefault_O { val, notSet }

class Proto2OneofIgnoreUnspecifiedWithDefault extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreUnspecifiedWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreUnspecifiedWithDefault._();

  factory Proto2OneofIgnoreUnspecifiedWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreUnspecifiedWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreUnspecifiedWithDefault_O>
      _Proto2OneofIgnoreUnspecifiedWithDefault_OByTag = {
    1: Proto2OneofIgnoreUnspecifiedWithDefault_O.val,
    0: Proto2OneofIgnoreUnspecifiedWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreUnspecifiedWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreUnspecifiedWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreUnspecifiedWithDefault copyWith(
          void Function(Proto2OneofIgnoreUnspecifiedWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2OneofIgnoreUnspecifiedWithDefault))
          as Proto2OneofIgnoreUnspecifiedWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreUnspecifiedWithDefault create() =>
      Proto2OneofIgnoreUnspecifiedWithDefault._();
  @$core.override
  Proto2OneofIgnoreUnspecifiedWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreUnspecifiedWithDefault getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2OneofIgnoreUnspecifiedWithDefault>(create);
  static Proto2OneofIgnoreUnspecifiedWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreUnspecifiedWithDefault_O whichO() =>
      _Proto2OneofIgnoreUnspecifiedWithDefault_OByTag[$_whichOneof(0)]!;
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

enum Proto2OneofIgnoreEmpty_O { val, notSet }

class Proto2OneofIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreEmpty._();

  factory Proto2OneofIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreEmpty_O>
      _Proto2OneofIgnoreEmpty_OByTag = {
    1: Proto2OneofIgnoreEmpty_O.val,
    0: Proto2OneofIgnoreEmpty_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreEmpty copyWith(
          void Function(Proto2OneofIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto2OneofIgnoreEmpty))
          as Proto2OneofIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreEmpty create() => Proto2OneofIgnoreEmpty._();
  @$core.override
  Proto2OneofIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2OneofIgnoreEmpty>(create);
  static Proto2OneofIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreEmpty_O whichO() =>
      _Proto2OneofIgnoreEmpty_OByTag[$_whichOneof(0)]!;
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

enum Proto2OneofIgnoreEmptyWithDefault_O { val, notSet }

class Proto2OneofIgnoreEmptyWithDefault extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreEmptyWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreEmptyWithDefault._();

  factory Proto2OneofIgnoreEmptyWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreEmptyWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreEmptyWithDefault_O>
      _Proto2OneofIgnoreEmptyWithDefault_OByTag = {
    1: Proto2OneofIgnoreEmptyWithDefault_O.val,
    0: Proto2OneofIgnoreEmptyWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreEmptyWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreEmptyWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreEmptyWithDefault copyWith(
          void Function(Proto2OneofIgnoreEmptyWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2OneofIgnoreEmptyWithDefault))
          as Proto2OneofIgnoreEmptyWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreEmptyWithDefault create() =>
      Proto2OneofIgnoreEmptyWithDefault._();
  @$core.override
  Proto2OneofIgnoreEmptyWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreEmptyWithDefault getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2OneofIgnoreEmptyWithDefault>(
          create);
  static Proto2OneofIgnoreEmptyWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreEmptyWithDefault_O whichO() =>
      _Proto2OneofIgnoreEmptyWithDefault_OByTag[$_whichOneof(0)]!;
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

enum Proto2OneofIgnoreAlways_O { val, notSet }

class Proto2OneofIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreAlways._();

  factory Proto2OneofIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreAlways_O>
      _Proto2OneofIgnoreAlways_OByTag = {
    1: Proto2OneofIgnoreAlways_O.val,
    0: Proto2OneofIgnoreAlways_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreAlways copyWith(
          void Function(Proto2OneofIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto2OneofIgnoreAlways))
          as Proto2OneofIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreAlways create() => Proto2OneofIgnoreAlways._();
  @$core.override
  Proto2OneofIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2OneofIgnoreAlways>(create);
  static Proto2OneofIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreAlways_O whichO() =>
      _Proto2OneofIgnoreAlways_OByTag[$_whichOneof(0)]!;
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

enum Proto2OneofIgnoreAlwaysWithDefault_O { val, notSet }

class Proto2OneofIgnoreAlwaysWithDefault extends $pb.GeneratedMessage {
  factory Proto2OneofIgnoreAlwaysWithDefault({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto2OneofIgnoreAlwaysWithDefault._();

  factory Proto2OneofIgnoreAlwaysWithDefault.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2OneofIgnoreAlwaysWithDefault.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto2OneofIgnoreAlwaysWithDefault_O>
      _Proto2OneofIgnoreAlwaysWithDefault_OByTag = {
    1: Proto2OneofIgnoreAlwaysWithDefault_O.val,
    0: Proto2OneofIgnoreAlwaysWithDefault_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2OneofIgnoreAlwaysWithDefault',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val', defaultOrMaker: -42)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreAlwaysWithDefault clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2OneofIgnoreAlwaysWithDefault copyWith(
          void Function(Proto2OneofIgnoreAlwaysWithDefault) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2OneofIgnoreAlwaysWithDefault))
          as Proto2OneofIgnoreAlwaysWithDefault;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreAlwaysWithDefault create() =>
      Proto2OneofIgnoreAlwaysWithDefault._();
  @$core.override
  Proto2OneofIgnoreAlwaysWithDefault createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2OneofIgnoreAlwaysWithDefault getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2OneofIgnoreAlwaysWithDefault>(
          create);
  static Proto2OneofIgnoreAlwaysWithDefault? _defaultInstance;

  @$pb.TagNumber(1)
  Proto2OneofIgnoreAlwaysWithDefault_O whichO() =>
      _Proto2OneofIgnoreAlwaysWithDefault_OByTag[$_whichOneof(0)]!;
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

class Proto2RepeatedIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2RepeatedIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedIgnoreUnspecified._();

  factory Proto2RepeatedIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreUnspecified copyWith(
          void Function(Proto2RepeatedIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2RepeatedIgnoreUnspecified))
          as Proto2RepeatedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreUnspecified create() =>
      Proto2RepeatedIgnoreUnspecified._();
  @$core.override
  Proto2RepeatedIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2RepeatedIgnoreUnspecified>(
          create);
  static Proto2RepeatedIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2RepeatedIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2RepeatedIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedIgnoreEmpty._();

  factory Proto2RepeatedIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreEmpty copyWith(
          void Function(Proto2RepeatedIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto2RepeatedIgnoreEmpty))
          as Proto2RepeatedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreEmpty create() => Proto2RepeatedIgnoreEmpty._();
  @$core.override
  Proto2RepeatedIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2RepeatedIgnoreEmpty>(create);
  static Proto2RepeatedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2RepeatedIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2RepeatedIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedIgnoreAlways._();

  factory Proto2RepeatedIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedIgnoreAlways copyWith(
          void Function(Proto2RepeatedIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2RepeatedIgnoreAlways))
          as Proto2RepeatedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreAlways create() => Proto2RepeatedIgnoreAlways._();
  @$core.override
  Proto2RepeatedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2RepeatedIgnoreAlways>(create);
  static Proto2RepeatedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2MapIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2MapIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapIgnoreUnspecified._();

  factory Proto2MapIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreUnspecified copyWith(
          void Function(Proto2MapIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MapIgnoreUnspecified))
          as Proto2MapIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreUnspecified create() => Proto2MapIgnoreUnspecified._();
  @$core.override
  Proto2MapIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapIgnoreUnspecified>(create);
  static Proto2MapIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2MapIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapIgnoreEmpty._();

  factory Proto2MapIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreEmpty copyWith(void Function(Proto2MapIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto2MapIgnoreEmpty))
          as Proto2MapIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreEmpty create() => Proto2MapIgnoreEmpty._();
  @$core.override
  Proto2MapIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapIgnoreEmpty>(create);
  static Proto2MapIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2MapIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapIgnoreAlways._();

  factory Proto2MapIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapIgnoreAlways copyWith(
          void Function(Proto2MapIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto2MapIgnoreAlways))
          as Proto2MapIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreAlways create() => Proto2MapIgnoreAlways._();
  @$core.override
  Proto2MapIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapIgnoreAlways>(create);
  static Proto2MapIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2RepeatedItemIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2RepeatedItemIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedItemIgnoreUnspecified._();

  factory Proto2RepeatedItemIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedItemIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedItemIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreUnspecified copyWith(
          void Function(Proto2RepeatedItemIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto2RepeatedItemIgnoreUnspecified))
          as Proto2RepeatedItemIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreUnspecified create() =>
      Proto2RepeatedItemIgnoreUnspecified._();
  @$core.override
  Proto2RepeatedItemIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto2RepeatedItemIgnoreUnspecified>(create);
  static Proto2RepeatedItemIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2RepeatedItemIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2RepeatedItemIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedItemIgnoreEmpty._();

  factory Proto2RepeatedItemIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedItemIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedItemIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreEmpty copyWith(
          void Function(Proto2RepeatedItemIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2RepeatedItemIgnoreEmpty))
          as Proto2RepeatedItemIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreEmpty create() =>
      Proto2RepeatedItemIgnoreEmpty._();
  @$core.override
  Proto2RepeatedItemIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2RepeatedItemIgnoreEmpty>(create);
  static Proto2RepeatedItemIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2RepeatedItemIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2RepeatedItemIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto2RepeatedItemIgnoreAlways._();

  factory Proto2RepeatedItemIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2RepeatedItemIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2RepeatedItemIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2RepeatedItemIgnoreAlways copyWith(
          void Function(Proto2RepeatedItemIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2RepeatedItemIgnoreAlways))
          as Proto2RepeatedItemIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreAlways create() =>
      Proto2RepeatedItemIgnoreAlways._();
  @$core.override
  Proto2RepeatedItemIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2RepeatedItemIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2RepeatedItemIgnoreAlways>(create);
  static Proto2RepeatedItemIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto2MapKeyIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2MapKeyIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapKeyIgnoreUnspecified._();

  factory Proto2MapKeyIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapKeyIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapKeyIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapKeyIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreUnspecified copyWith(
          void Function(Proto2MapKeyIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MapKeyIgnoreUnspecified))
          as Proto2MapKeyIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreUnspecified create() =>
      Proto2MapKeyIgnoreUnspecified._();
  @$core.override
  Proto2MapKeyIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapKeyIgnoreUnspecified>(create);
  static Proto2MapKeyIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapKeyIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2MapKeyIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapKeyIgnoreEmpty._();

  factory Proto2MapKeyIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapKeyIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapKeyIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapKeyIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreEmpty copyWith(
          void Function(Proto2MapKeyIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto2MapKeyIgnoreEmpty))
          as Proto2MapKeyIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreEmpty create() => Proto2MapKeyIgnoreEmpty._();
  @$core.override
  Proto2MapKeyIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapKeyIgnoreEmpty>(create);
  static Proto2MapKeyIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapKeyIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2MapKeyIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapKeyIgnoreAlways._();

  factory Proto2MapKeyIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapKeyIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapKeyIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapKeyIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapKeyIgnoreAlways copyWith(
          void Function(Proto2MapKeyIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto2MapKeyIgnoreAlways))
          as Proto2MapKeyIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreAlways create() => Proto2MapKeyIgnoreAlways._();
  @$core.override
  Proto2MapKeyIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapKeyIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapKeyIgnoreAlways>(create);
  static Proto2MapKeyIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapValueIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto2MapValueIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapValueIgnoreUnspecified._();

  factory Proto2MapValueIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapValueIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapValueIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapValueIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreUnspecified copyWith(
          void Function(Proto2MapValueIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MapValueIgnoreUnspecified))
          as Proto2MapValueIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreUnspecified create() =>
      Proto2MapValueIgnoreUnspecified._();
  @$core.override
  Proto2MapValueIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapValueIgnoreUnspecified>(
          create);
  static Proto2MapValueIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapValueIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto2MapValueIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapValueIgnoreEmpty._();

  factory Proto2MapValueIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapValueIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapValueIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapValueIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreEmpty copyWith(
          void Function(Proto2MapValueIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto2MapValueIgnoreEmpty))
          as Proto2MapValueIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreEmpty create() => Proto2MapValueIgnoreEmpty._();
  @$core.override
  Proto2MapValueIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapValueIgnoreEmpty>(create);
  static Proto2MapValueIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto2MapValueIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto2MapValueIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto2MapValueIgnoreAlways._();

  factory Proto2MapValueIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto2MapValueIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto2MapValueIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto2MapValueIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto2MapValueIgnoreAlways copyWith(
          void Function(Proto2MapValueIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto2MapValueIgnoreAlways))
          as Proto2MapValueIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreAlways create() => Proto2MapValueIgnoreAlways._();
  @$core.override
  Proto2MapValueIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto2MapValueIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto2MapValueIgnoreAlways>(create);
  static Proto2MapValueIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
