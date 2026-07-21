// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/ignore_proto3.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Proto3ScalarOptionalIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3ScalarOptionalIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarOptionalIgnoreUnspecified._();

  factory Proto3ScalarOptionalIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarOptionalIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarOptionalIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreUnspecified copyWith(
          void Function(Proto3ScalarOptionalIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3ScalarOptionalIgnoreUnspecified))
          as Proto3ScalarOptionalIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreUnspecified create() =>
      Proto3ScalarOptionalIgnoreUnspecified._();
  @$core.override
  Proto3ScalarOptionalIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3ScalarOptionalIgnoreUnspecified>(create);
  static Proto3ScalarOptionalIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3ScalarOptionalIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3ScalarOptionalIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarOptionalIgnoreEmpty._();

  factory Proto3ScalarOptionalIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarOptionalIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarOptionalIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreEmpty copyWith(
          void Function(Proto3ScalarOptionalIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3ScalarOptionalIgnoreEmpty))
          as Proto3ScalarOptionalIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreEmpty create() =>
      Proto3ScalarOptionalIgnoreEmpty._();
  @$core.override
  Proto3ScalarOptionalIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3ScalarOptionalIgnoreEmpty>(
          create);
  static Proto3ScalarOptionalIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3ScalarOptionalIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3ScalarOptionalIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarOptionalIgnoreAlways._();

  factory Proto3ScalarOptionalIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarOptionalIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarOptionalIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarOptionalIgnoreAlways copyWith(
          void Function(Proto3ScalarOptionalIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3ScalarOptionalIgnoreAlways))
          as Proto3ScalarOptionalIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreAlways create() =>
      Proto3ScalarOptionalIgnoreAlways._();
  @$core.override
  Proto3ScalarOptionalIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarOptionalIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3ScalarOptionalIgnoreAlways>(
          create);
  static Proto3ScalarOptionalIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3ScalarIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3ScalarIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarIgnoreUnspecified._();

  factory Proto3ScalarIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreUnspecified copyWith(
          void Function(Proto3ScalarIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3ScalarIgnoreUnspecified))
          as Proto3ScalarIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreUnspecified create() =>
      Proto3ScalarIgnoreUnspecified._();
  @$core.override
  Proto3ScalarIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3ScalarIgnoreUnspecified>(create);
  static Proto3ScalarIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3ScalarIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3ScalarIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarIgnoreEmpty._();

  factory Proto3ScalarIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreEmpty copyWith(
          void Function(Proto3ScalarIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3ScalarIgnoreEmpty))
          as Proto3ScalarIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreEmpty create() => Proto3ScalarIgnoreEmpty._();
  @$core.override
  Proto3ScalarIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3ScalarIgnoreEmpty>(create);
  static Proto3ScalarIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3ScalarIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3ScalarIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3ScalarIgnoreAlways._();

  factory Proto3ScalarIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3ScalarIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3ScalarIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3ScalarIgnoreAlways copyWith(
          void Function(Proto3ScalarIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto3ScalarIgnoreAlways))
          as Proto3ScalarIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreAlways create() => Proto3ScalarIgnoreAlways._();
  @$core.override
  Proto3ScalarIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3ScalarIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3ScalarIgnoreAlways>(create);
  static Proto3ScalarIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageOptionalIgnoreUnspecified_Msg extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreUnspecified_Msg._();

  factory Proto3MessageOptionalIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreUnspecified_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreUnspecified_Msg copyWith(
          void Function(Proto3MessageOptionalIgnoreUnspecified_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageOptionalIgnoreUnspecified_Msg))
          as Proto3MessageOptionalIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreUnspecified_Msg create() =>
      Proto3MessageOptionalIgnoreUnspecified_Msg._();
  @$core.override
  Proto3MessageOptionalIgnoreUnspecified_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreUnspecified_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3MessageOptionalIgnoreUnspecified_Msg>(create);
  static Proto3MessageOptionalIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageOptionalIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreUnspecified({
    Proto3MessageOptionalIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreUnspecified._();

  factory Proto3MessageOptionalIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto3MessageOptionalIgnoreUnspecified_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto3MessageOptionalIgnoreUnspecified_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreUnspecified copyWith(
          void Function(Proto3MessageOptionalIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageOptionalIgnoreUnspecified))
          as Proto3MessageOptionalIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreUnspecified create() =>
      Proto3MessageOptionalIgnoreUnspecified._();
  @$core.override
  Proto3MessageOptionalIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3MessageOptionalIgnoreUnspecified>(create);
  static Proto3MessageOptionalIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto3MessageOptionalIgnoreUnspecified_Msg value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreUnspecified_Msg ensureVal() => $_ensure(0);
}

class Proto3MessageOptionalIgnoreEmpty_Msg extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreEmpty_Msg._();

  factory Proto3MessageOptionalIgnoreEmpty_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreEmpty_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreEmpty_Msg copyWith(
          void Function(Proto3MessageOptionalIgnoreEmpty_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageOptionalIgnoreEmpty_Msg))
          as Proto3MessageOptionalIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreEmpty_Msg create() =>
      Proto3MessageOptionalIgnoreEmpty_Msg._();
  @$core.override
  Proto3MessageOptionalIgnoreEmpty_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreEmpty_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3MessageOptionalIgnoreEmpty_Msg>(create);
  static Proto3MessageOptionalIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageOptionalIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreEmpty({
    Proto3MessageOptionalIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreEmpty._();

  factory Proto3MessageOptionalIgnoreEmpty.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto3MessageOptionalIgnoreEmpty_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto3MessageOptionalIgnoreEmpty_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreEmpty copyWith(
          void Function(Proto3MessageOptionalIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MessageOptionalIgnoreEmpty))
          as Proto3MessageOptionalIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreEmpty create() =>
      Proto3MessageOptionalIgnoreEmpty._();
  @$core.override
  Proto3MessageOptionalIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageOptionalIgnoreEmpty>(
          create);
  static Proto3MessageOptionalIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto3MessageOptionalIgnoreEmpty_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

class Proto3MessageOptionalIgnoreAlways_Msg extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreAlways_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreAlways_Msg._();

  factory Proto3MessageOptionalIgnoreAlways_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreAlways_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreAlways.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreAlways_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreAlways_Msg copyWith(
          void Function(Proto3MessageOptionalIgnoreAlways_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageOptionalIgnoreAlways_Msg))
          as Proto3MessageOptionalIgnoreAlways_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreAlways_Msg create() =>
      Proto3MessageOptionalIgnoreAlways_Msg._();
  @$core.override
  Proto3MessageOptionalIgnoreAlways_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreAlways_Msg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3MessageOptionalIgnoreAlways_Msg>(create);
  static Proto3MessageOptionalIgnoreAlways_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageOptionalIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3MessageOptionalIgnoreAlways({
    Proto3MessageOptionalIgnoreAlways_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageOptionalIgnoreAlways._();

  factory Proto3MessageOptionalIgnoreAlways.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageOptionalIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageOptionalIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto3MessageOptionalIgnoreAlways_Msg>(
        1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto3MessageOptionalIgnoreAlways_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageOptionalIgnoreAlways copyWith(
          void Function(Proto3MessageOptionalIgnoreAlways) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageOptionalIgnoreAlways))
          as Proto3MessageOptionalIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreAlways create() =>
      Proto3MessageOptionalIgnoreAlways._();
  @$core.override
  Proto3MessageOptionalIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageOptionalIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageOptionalIgnoreAlways>(
          create);
  static Proto3MessageOptionalIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreAlways_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto3MessageOptionalIgnoreAlways_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto3MessageOptionalIgnoreAlways_Msg ensureVal() => $_ensure(0);
}

class Proto3MessageIgnoreUnspecified_Msg extends $pb.GeneratedMessage {
  factory Proto3MessageIgnoreUnspecified_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageIgnoreUnspecified_Msg._();

  factory Proto3MessageIgnoreUnspecified_Msg.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageIgnoreUnspecified_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageIgnoreUnspecified.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreUnspecified_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreUnspecified_Msg copyWith(
          void Function(Proto3MessageIgnoreUnspecified_Msg) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3MessageIgnoreUnspecified_Msg))
          as Proto3MessageIgnoreUnspecified_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreUnspecified_Msg create() =>
      Proto3MessageIgnoreUnspecified_Msg._();
  @$core.override
  Proto3MessageIgnoreUnspecified_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreUnspecified_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageIgnoreUnspecified_Msg>(
          create);
  static Proto3MessageIgnoreUnspecified_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3MessageIgnoreUnspecified({
    Proto3MessageIgnoreUnspecified_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageIgnoreUnspecified._();

  factory Proto3MessageIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto3MessageIgnoreUnspecified_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto3MessageIgnoreUnspecified_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreUnspecified copyWith(
          void Function(Proto3MessageIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MessageIgnoreUnspecified))
          as Proto3MessageIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreUnspecified create() =>
      Proto3MessageIgnoreUnspecified._();
  @$core.override
  Proto3MessageIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageIgnoreUnspecified>(create);
  static Proto3MessageIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3MessageIgnoreUnspecified_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto3MessageIgnoreUnspecified_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto3MessageIgnoreUnspecified_Msg ensureVal() => $_ensure(0);
}

class Proto3MessageIgnoreEmpty_Msg extends $pb.GeneratedMessage {
  factory Proto3MessageIgnoreEmpty_Msg({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageIgnoreEmpty_Msg._();

  factory Proto3MessageIgnoreEmpty_Msg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageIgnoreEmpty_Msg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageIgnoreEmpty.Msg',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreEmpty_Msg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreEmpty_Msg copyWith(
          void Function(Proto3MessageIgnoreEmpty_Msg) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MessageIgnoreEmpty_Msg))
          as Proto3MessageIgnoreEmpty_Msg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreEmpty_Msg create() =>
      Proto3MessageIgnoreEmpty_Msg._();
  @$core.override
  Proto3MessageIgnoreEmpty_Msg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreEmpty_Msg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageIgnoreEmpty_Msg>(create);
  static Proto3MessageIgnoreEmpty_Msg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class Proto3MessageIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3MessageIgnoreEmpty({
    Proto3MessageIgnoreEmpty_Msg? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3MessageIgnoreEmpty._();

  factory Proto3MessageIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MessageIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MessageIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<Proto3MessageIgnoreEmpty_Msg>(1, _omitFieldNames ? '' : 'val',
        subBuilder: Proto3MessageIgnoreEmpty_Msg.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MessageIgnoreEmpty copyWith(
          void Function(Proto3MessageIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3MessageIgnoreEmpty))
          as Proto3MessageIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreEmpty create() => Proto3MessageIgnoreEmpty._();
  @$core.override
  Proto3MessageIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MessageIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MessageIgnoreEmpty>(create);
  static Proto3MessageIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3MessageIgnoreEmpty_Msg get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(Proto3MessageIgnoreEmpty_Msg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  Proto3MessageIgnoreEmpty_Msg ensureVal() => $_ensure(0);
}

enum Proto3OneofIgnoreUnspecified_O { val, notSet }

class Proto3OneofIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3OneofIgnoreUnspecified({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3OneofIgnoreUnspecified._();

  factory Proto3OneofIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3OneofIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto3OneofIgnoreUnspecified_O>
      _Proto3OneofIgnoreUnspecified_OByTag = {
    1: Proto3OneofIgnoreUnspecified_O.val,
    0: Proto3OneofIgnoreUnspecified_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3OneofIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreUnspecified copyWith(
          void Function(Proto3OneofIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3OneofIgnoreUnspecified))
          as Proto3OneofIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreUnspecified create() =>
      Proto3OneofIgnoreUnspecified._();
  @$core.override
  Proto3OneofIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3OneofIgnoreUnspecified>(create);
  static Proto3OneofIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3OneofIgnoreUnspecified_O whichO() =>
      _Proto3OneofIgnoreUnspecified_OByTag[$_whichOneof(0)]!;
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

enum Proto3OneofIgnoreEmpty_O { val, notSet }

class Proto3OneofIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3OneofIgnoreEmpty({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3OneofIgnoreEmpty._();

  factory Proto3OneofIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3OneofIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto3OneofIgnoreEmpty_O>
      _Proto3OneofIgnoreEmpty_OByTag = {
    1: Proto3OneofIgnoreEmpty_O.val,
    0: Proto3OneofIgnoreEmpty_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3OneofIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreEmpty copyWith(
          void Function(Proto3OneofIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3OneofIgnoreEmpty))
          as Proto3OneofIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreEmpty create() => Proto3OneofIgnoreEmpty._();
  @$core.override
  Proto3OneofIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3OneofIgnoreEmpty>(create);
  static Proto3OneofIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3OneofIgnoreEmpty_O whichO() =>
      _Proto3OneofIgnoreEmpty_OByTag[$_whichOneof(0)]!;
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

enum Proto3OneofIgnoreAlways_O { val, notSet }

class Proto3OneofIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3OneofIgnoreAlways({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Proto3OneofIgnoreAlways._();

  factory Proto3OneofIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3OneofIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Proto3OneofIgnoreAlways_O>
      _Proto3OneofIgnoreAlways_OByTag = {
    1: Proto3OneofIgnoreAlways_O.val,
    0: Proto3OneofIgnoreAlways_O.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3OneofIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3OneofIgnoreAlways copyWith(
          void Function(Proto3OneofIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto3OneofIgnoreAlways))
          as Proto3OneofIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreAlways create() => Proto3OneofIgnoreAlways._();
  @$core.override
  Proto3OneofIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3OneofIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3OneofIgnoreAlways>(create);
  static Proto3OneofIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  Proto3OneofIgnoreAlways_O whichO() =>
      _Proto3OneofIgnoreAlways_OByTag[$_whichOneof(0)]!;
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

class Proto3RepeatedIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3RepeatedIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedIgnoreUnspecified._();

  factory Proto3RepeatedIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreUnspecified copyWith(
          void Function(Proto3RepeatedIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3RepeatedIgnoreUnspecified))
          as Proto3RepeatedIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreUnspecified create() =>
      Proto3RepeatedIgnoreUnspecified._();
  @$core.override
  Proto3RepeatedIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3RepeatedIgnoreUnspecified>(
          create);
  static Proto3RepeatedIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3RepeatedIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3RepeatedIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedIgnoreEmpty._();

  factory Proto3RepeatedIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreEmpty copyWith(
          void Function(Proto3RepeatedIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3RepeatedIgnoreEmpty))
          as Proto3RepeatedIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreEmpty create() => Proto3RepeatedIgnoreEmpty._();
  @$core.override
  Proto3RepeatedIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3RepeatedIgnoreEmpty>(create);
  static Proto3RepeatedIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3RepeatedIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3RepeatedIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedIgnoreAlways._();

  factory Proto3RepeatedIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedIgnoreAlways copyWith(
          void Function(Proto3RepeatedIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3RepeatedIgnoreAlways))
          as Proto3RepeatedIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreAlways create() => Proto3RepeatedIgnoreAlways._();
  @$core.override
  Proto3RepeatedIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3RepeatedIgnoreAlways>(create);
  static Proto3RepeatedIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3MapIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3MapIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapIgnoreUnspecified._();

  factory Proto3MapIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreUnspecified copyWith(
          void Function(Proto3MapIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MapIgnoreUnspecified))
          as Proto3MapIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreUnspecified create() => Proto3MapIgnoreUnspecified._();
  @$core.override
  Proto3MapIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapIgnoreUnspecified>(create);
  static Proto3MapIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3MapIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapIgnoreEmpty._();

  factory Proto3MapIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreEmpty copyWith(void Function(Proto3MapIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3MapIgnoreEmpty))
          as Proto3MapIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreEmpty create() => Proto3MapIgnoreEmpty._();
  @$core.override
  Proto3MapIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapIgnoreEmpty>(create);
  static Proto3MapIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3MapIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapIgnoreAlways._();

  factory Proto3MapIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapIgnoreAlways copyWith(
          void Function(Proto3MapIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto3MapIgnoreAlways))
          as Proto3MapIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreAlways create() => Proto3MapIgnoreAlways._();
  @$core.override
  Proto3MapIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapIgnoreAlways>(create);
  static Proto3MapIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3RepeatedItemIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3RepeatedItemIgnoreUnspecified({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedItemIgnoreUnspecified._();

  factory Proto3RepeatedItemIgnoreUnspecified.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedItemIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedItemIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreUnspecified copyWith(
          void Function(Proto3RepeatedItemIgnoreUnspecified) updates) =>
      super.copyWith((message) =>
              updates(message as Proto3RepeatedItemIgnoreUnspecified))
          as Proto3RepeatedItemIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreUnspecified create() =>
      Proto3RepeatedItemIgnoreUnspecified._();
  @$core.override
  Proto3RepeatedItemIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreUnspecified getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          Proto3RepeatedItemIgnoreUnspecified>(create);
  static Proto3RepeatedItemIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3RepeatedItemIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3RepeatedItemIgnoreEmpty({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedItemIgnoreEmpty._();

  factory Proto3RepeatedItemIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedItemIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedItemIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreEmpty copyWith(
          void Function(Proto3RepeatedItemIgnoreEmpty) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3RepeatedItemIgnoreEmpty))
          as Proto3RepeatedItemIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreEmpty create() =>
      Proto3RepeatedItemIgnoreEmpty._();
  @$core.override
  Proto3RepeatedItemIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3RepeatedItemIgnoreEmpty>(create);
  static Proto3RepeatedItemIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3RepeatedItemIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3RepeatedItemIgnoreAlways({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  Proto3RepeatedItemIgnoreAlways._();

  factory Proto3RepeatedItemIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3RepeatedItemIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3RepeatedItemIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3RepeatedItemIgnoreAlways copyWith(
          void Function(Proto3RepeatedItemIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3RepeatedItemIgnoreAlways))
          as Proto3RepeatedItemIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreAlways create() =>
      Proto3RepeatedItemIgnoreAlways._();
  @$core.override
  Proto3RepeatedItemIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3RepeatedItemIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3RepeatedItemIgnoreAlways>(create);
  static Proto3RepeatedItemIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class Proto3MapKeyIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3MapKeyIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapKeyIgnoreUnspecified._();

  factory Proto3MapKeyIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapKeyIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapKeyIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapKeyIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreUnspecified copyWith(
          void Function(Proto3MapKeyIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MapKeyIgnoreUnspecified))
          as Proto3MapKeyIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreUnspecified create() =>
      Proto3MapKeyIgnoreUnspecified._();
  @$core.override
  Proto3MapKeyIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapKeyIgnoreUnspecified>(create);
  static Proto3MapKeyIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapKeyIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3MapKeyIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapKeyIgnoreEmpty._();

  factory Proto3MapKeyIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapKeyIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapKeyIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapKeyIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreEmpty copyWith(
          void Function(Proto3MapKeyIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3MapKeyIgnoreEmpty))
          as Proto3MapKeyIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreEmpty create() => Proto3MapKeyIgnoreEmpty._();
  @$core.override
  Proto3MapKeyIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapKeyIgnoreEmpty>(create);
  static Proto3MapKeyIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapKeyIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3MapKeyIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapKeyIgnoreAlways._();

  factory Proto3MapKeyIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapKeyIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapKeyIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapKeyIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapKeyIgnoreAlways copyWith(
          void Function(Proto3MapKeyIgnoreAlways) updates) =>
      super.copyWith((message) => updates(message as Proto3MapKeyIgnoreAlways))
          as Proto3MapKeyIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreAlways create() => Proto3MapKeyIgnoreAlways._();
  @$core.override
  Proto3MapKeyIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapKeyIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapKeyIgnoreAlways>(create);
  static Proto3MapKeyIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapValueIgnoreUnspecified extends $pb.GeneratedMessage {
  factory Proto3MapValueIgnoreUnspecified({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapValueIgnoreUnspecified._();

  factory Proto3MapValueIgnoreUnspecified.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapValueIgnoreUnspecified.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapValueIgnoreUnspecified',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapValueIgnoreUnspecified.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreUnspecified clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreUnspecified copyWith(
          void Function(Proto3MapValueIgnoreUnspecified) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MapValueIgnoreUnspecified))
          as Proto3MapValueIgnoreUnspecified;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreUnspecified create() =>
      Proto3MapValueIgnoreUnspecified._();
  @$core.override
  Proto3MapValueIgnoreUnspecified createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreUnspecified getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapValueIgnoreUnspecified>(
          create);
  static Proto3MapValueIgnoreUnspecified? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapValueIgnoreEmpty extends $pb.GeneratedMessage {
  factory Proto3MapValueIgnoreEmpty({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapValueIgnoreEmpty._();

  factory Proto3MapValueIgnoreEmpty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapValueIgnoreEmpty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapValueIgnoreEmpty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapValueIgnoreEmpty.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreEmpty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreEmpty copyWith(
          void Function(Proto3MapValueIgnoreEmpty) updates) =>
      super.copyWith((message) => updates(message as Proto3MapValueIgnoreEmpty))
          as Proto3MapValueIgnoreEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreEmpty create() => Proto3MapValueIgnoreEmpty._();
  @$core.override
  Proto3MapValueIgnoreEmpty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreEmpty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapValueIgnoreEmpty>(create);
  static Proto3MapValueIgnoreEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

class Proto3MapValueIgnoreAlways extends $pb.GeneratedMessage {
  factory Proto3MapValueIgnoreAlways({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  Proto3MapValueIgnoreAlways._();

  factory Proto3MapValueIgnoreAlways.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Proto3MapValueIgnoreAlways.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Proto3MapValueIgnoreAlways',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'Proto3MapValueIgnoreAlways.ValEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreAlways clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Proto3MapValueIgnoreAlways copyWith(
          void Function(Proto3MapValueIgnoreAlways) updates) =>
      super.copyWith(
              (message) => updates(message as Proto3MapValueIgnoreAlways))
          as Proto3MapValueIgnoreAlways;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreAlways create() => Proto3MapValueIgnoreAlways._();
  @$core.override
  Proto3MapValueIgnoreAlways createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Proto3MapValueIgnoreAlways getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Proto3MapValueIgnoreAlways>(create);
  static Proto3MapValueIgnoreAlways? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get val => $_getMap(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
