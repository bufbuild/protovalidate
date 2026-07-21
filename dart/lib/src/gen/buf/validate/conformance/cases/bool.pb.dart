// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/bool.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BoolNone extends $pb.GeneratedMessage {
  factory BoolNone({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BoolNone._();

  factory BoolNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolNone copyWith(void Function(BoolNone) updates) =>
      super.copyWith((message) => updates(message as BoolNone)) as BoolNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolNone create() => BoolNone._();
  @$core.override
  BoolNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolNone>(create);
  static BoolNone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BoolConstTrue extends $pb.GeneratedMessage {
  factory BoolConstTrue({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BoolConstTrue._();

  factory BoolConstTrue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolConstTrue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolConstTrue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolConstTrue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolConstTrue copyWith(void Function(BoolConstTrue) updates) =>
      super.copyWith((message) => updates(message as BoolConstTrue))
          as BoolConstTrue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolConstTrue create() => BoolConstTrue._();
  @$core.override
  BoolConstTrue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolConstTrue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoolConstTrue>(create);
  static BoolConstTrue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BoolConstFalse extends $pb.GeneratedMessage {
  factory BoolConstFalse({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BoolConstFalse._();

  factory BoolConstFalse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolConstFalse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolConstFalse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolConstFalse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolConstFalse copyWith(void Function(BoolConstFalse) updates) =>
      super.copyWith((message) => updates(message as BoolConstFalse))
          as BoolConstFalse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolConstFalse create() => BoolConstFalse._();
  @$core.override
  BoolConstFalse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolConstFalse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoolConstFalse>(create);
  static BoolConstFalse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BoolExample extends $pb.GeneratedMessage {
  factory BoolExample({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BoolExample._();

  factory BoolExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolExample copyWith(void Function(BoolExample) updates) =>
      super.copyWith((message) => updates(message as BoolExample))
          as BoolExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolExample create() => BoolExample._();
  @$core.override
  BoolExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoolExample>(create);
  static BoolExample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
