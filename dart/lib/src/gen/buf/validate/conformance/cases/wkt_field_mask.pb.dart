// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_field_mask.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/field_mask.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FieldMaskNone extends $pb.GeneratedMessage {
  factory FieldMaskNone({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskNone._();

  factory FieldMaskNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskNone copyWith(void Function(FieldMaskNone) updates) =>
      super.copyWith((message) => updates(message as FieldMaskNone))
          as FieldMaskNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskNone create() => FieldMaskNone._();
  @$core.override
  FieldMaskNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskNone>(create);
  static FieldMaskNone? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

class FieldMaskRequired extends $pb.GeneratedMessage {
  factory FieldMaskRequired({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskRequired._();

  factory FieldMaskRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskRequired copyWith(void Function(FieldMaskRequired) updates) =>
      super.copyWith((message) => updates(message as FieldMaskRequired))
          as FieldMaskRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskRequired create() => FieldMaskRequired._();
  @$core.override
  FieldMaskRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskRequired>(create);
  static FieldMaskRequired? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

class FieldMaskConst extends $pb.GeneratedMessage {
  factory FieldMaskConst({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskConst._();

  factory FieldMaskConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskConst copyWith(void Function(FieldMaskConst) updates) =>
      super.copyWith((message) => updates(message as FieldMaskConst))
          as FieldMaskConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskConst create() => FieldMaskConst._();
  @$core.override
  FieldMaskConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskConst>(create);
  static FieldMaskConst? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

class FieldMaskIn extends $pb.GeneratedMessage {
  factory FieldMaskIn({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskIn._();

  factory FieldMaskIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskIn copyWith(void Function(FieldMaskIn) updates) =>
      super.copyWith((message) => updates(message as FieldMaskIn))
          as FieldMaskIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskIn create() => FieldMaskIn._();
  @$core.override
  FieldMaskIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskIn>(create);
  static FieldMaskIn? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

class FieldMaskNotIn extends $pb.GeneratedMessage {
  factory FieldMaskNotIn({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskNotIn._();

  factory FieldMaskNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskNotIn copyWith(void Function(FieldMaskNotIn) updates) =>
      super.copyWith((message) => updates(message as FieldMaskNotIn))
          as FieldMaskNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskNotIn create() => FieldMaskNotIn._();
  @$core.override
  FieldMaskNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskNotIn>(create);
  static FieldMaskNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

class FieldMaskExample extends $pb.GeneratedMessage {
  factory FieldMaskExample({
    $0.FieldMask? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  FieldMaskExample._();

  factory FieldMaskExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.FieldMask>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.FieldMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskExample copyWith(void Function(FieldMaskExample) updates) =>
      super.copyWith((message) => updates(message as FieldMaskExample))
          as FieldMaskExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskExample create() => FieldMaskExample._();
  @$core.override
  FieldMaskExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskExample>(create);
  static FieldMaskExample? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FieldMask get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FieldMask ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
