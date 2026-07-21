// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto3.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $0;
import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../../../google/protobuf/wrappers.pb.dart' as $2;
import 'predefined_rules_proto2.pb.dart' as $3;
import 'predefined_rules_proto3.pbenum.dart';
import 'predefined_rules_proto_editions.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'predefined_rules_proto3.pbenum.dart';

class PredefinedFloatRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedFloatRuleProto3({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFloatRuleProto3._();

  factory PredefinedFloatRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFloatRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFloatRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleProto3 copyWith(
          void Function(PredefinedFloatRuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedFloatRuleProto3))
          as PredefinedFloatRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleProto3 create() => PredefinedFloatRuleProto3._();
  @$core.override
  PredefinedFloatRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFloatRuleProto3>(create);
  static PredefinedFloatRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedDoubleRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedDoubleRuleProto3({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDoubleRuleProto3._();

  factory PredefinedDoubleRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDoubleRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDoubleRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleProto3 copyWith(
          void Function(PredefinedDoubleRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedDoubleRuleProto3))
          as PredefinedDoubleRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleProto3 create() => PredefinedDoubleRuleProto3._();
  @$core.override
  PredefinedDoubleRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDoubleRuleProto3>(create);
  static PredefinedDoubleRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedInt32RuleProto3({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt32RuleProto3._();

  factory PredefinedInt32RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleProto3 copyWith(
          void Function(PredefinedInt32RuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedInt32RuleProto3))
          as PredefinedInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleProto3 create() => PredefinedInt32RuleProto3._();
  @$core.override
  PredefinedInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt32RuleProto3>(create);
  static PredefinedInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedInt64RuleProto3({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt64RuleProto3._();

  factory PredefinedInt64RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleProto3 copyWith(
          void Function(PredefinedInt64RuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedInt64RuleProto3))
          as PredefinedInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleProto3 create() => PredefinedInt64RuleProto3._();
  @$core.override
  PredefinedInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt64RuleProto3>(create);
  static PredefinedInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedUInt32RuleProto3({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt32RuleProto3._();

  factory PredefinedUInt32RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleProto3 copyWith(
          void Function(PredefinedUInt32RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt32RuleProto3))
          as PredefinedUInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleProto3 create() => PredefinedUInt32RuleProto3._();
  @$core.override
  PredefinedUInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt32RuleProto3>(create);
  static PredefinedUInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedUInt64RuleProto3({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt64RuleProto3._();

  factory PredefinedUInt64RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleProto3 copyWith(
          void Function(PredefinedUInt64RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt64RuleProto3))
          as PredefinedUInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleProto3 create() => PredefinedUInt64RuleProto3._();
  @$core.override
  PredefinedUInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt64RuleProto3>(create);
  static PredefinedUInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedSInt32RuleProto3({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt32RuleProto3._();

  factory PredefinedSInt32RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleProto3 copyWith(
          void Function(PredefinedSInt32RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt32RuleProto3))
          as PredefinedSInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleProto3 create() => PredefinedSInt32RuleProto3._();
  @$core.override
  PredefinedSInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt32RuleProto3>(create);
  static PredefinedSInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedSInt64RuleProto3({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt64RuleProto3._();

  factory PredefinedSInt64RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleProto3 copyWith(
          void Function(PredefinedSInt64RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt64RuleProto3))
          as PredefinedSInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleProto3 create() => PredefinedSInt64RuleProto3._();
  @$core.override
  PredefinedSInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt64RuleProto3>(create);
  static PredefinedSInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedFixed32RuleProto3({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed32RuleProto3._();

  factory PredefinedFixed32RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleProto3 copyWith(
          void Function(PredefinedFixed32RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed32RuleProto3))
          as PredefinedFixed32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleProto3 create() =>
      PredefinedFixed32RuleProto3._();
  @$core.override
  PredefinedFixed32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed32RuleProto3>(create);
  static PredefinedFixed32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedFixed64RuleProto3({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed64RuleProto3._();

  factory PredefinedFixed64RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleProto3 copyWith(
          void Function(PredefinedFixed64RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed64RuleProto3))
          as PredefinedFixed64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleProto3 create() =>
      PredefinedFixed64RuleProto3._();
  @$core.override
  PredefinedFixed64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed64RuleProto3>(create);
  static PredefinedFixed64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedSFixed32RuleProto3({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed32RuleProto3._();

  factory PredefinedSFixed32RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleProto3 copyWith(
          void Function(PredefinedSFixed32RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSFixed32RuleProto3))
          as PredefinedSFixed32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleProto3 create() =>
      PredefinedSFixed32RuleProto3._();
  @$core.override
  PredefinedSFixed32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed32RuleProto3>(create);
  static PredefinedSFixed32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedSFixed64RuleProto3({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed64RuleProto3._();

  factory PredefinedSFixed64RuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleProto3 copyWith(
          void Function(PredefinedSFixed64RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSFixed64RuleProto3))
          as PredefinedSFixed64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleProto3 create() =>
      PredefinedSFixed64RuleProto3._();
  @$core.override
  PredefinedSFixed64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed64RuleProto3>(create);
  static PredefinedSFixed64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBoolRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedBoolRuleProto3({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBoolRuleProto3._();

  factory PredefinedBoolRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBoolRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBoolRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleProto3 copyWith(
          void Function(PredefinedBoolRuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedBoolRuleProto3))
          as PredefinedBoolRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleProto3 create() => PredefinedBoolRuleProto3._();
  @$core.override
  PredefinedBoolRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBoolRuleProto3>(create);
  static PredefinedBoolRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedStringRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedStringRuleProto3({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedStringRuleProto3._();

  factory PredefinedStringRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedStringRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedStringRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleProto3 copyWith(
          void Function(PredefinedStringRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedStringRuleProto3))
          as PredefinedStringRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleProto3 create() => PredefinedStringRuleProto3._();
  @$core.override
  PredefinedStringRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedStringRuleProto3>(create);
  static PredefinedStringRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBytesRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedBytesRuleProto3({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBytesRuleProto3._();

  factory PredefinedBytesRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBytesRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBytesRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleProto3 copyWith(
          void Function(PredefinedBytesRuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedBytesRuleProto3))
          as PredefinedBytesRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleProto3 create() => PredefinedBytesRuleProto3._();
  @$core.override
  PredefinedBytesRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBytesRuleProto3>(create);
  static PredefinedBytesRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedEnumRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedEnumRuleProto3({
    PredefinedEnumRuleProto3_EnumProto3? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedEnumRuleProto3._();

  factory PredefinedEnumRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedEnumRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedEnumRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<PredefinedEnumRuleProto3_EnumProto3>(1, _omitFieldNames ? '' : 'val',
        enumValues: PredefinedEnumRuleProto3_EnumProto3.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleProto3 copyWith(
          void Function(PredefinedEnumRuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedEnumRuleProto3))
          as PredefinedEnumRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleProto3 create() => PredefinedEnumRuleProto3._();
  @$core.override
  PredefinedEnumRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedEnumRuleProto3>(create);
  static PredefinedEnumRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  PredefinedEnumRuleProto3_EnumProto3 get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(PredefinedEnumRuleProto3_EnumProto3 value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedMapRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedMapRuleProto3({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $fixnum.Int64>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  PredefinedMapRuleProto3._();

  factory PredefinedMapRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedMapRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedMapRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'PredefinedMapRuleProto3.ValEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OU6,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedMapRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedMapRuleProto3 copyWith(
          void Function(PredefinedMapRuleProto3) updates) =>
      super.copyWith((message) => updates(message as PredefinedMapRuleProto3))
          as PredefinedMapRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedMapRuleProto3 create() => PredefinedMapRuleProto3._();
  @$core.override
  PredefinedMapRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedMapRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedMapRuleProto3>(create);
  static PredefinedMapRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $fixnum.Int64> get val => $_getMap(0);
}

class PredefinedRepeatedRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedRuleProto3({
    $core.Iterable<$fixnum.Int64>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedRuleProto3._();

  factory PredefinedRepeatedRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleProto3 copyWith(
          void Function(PredefinedRepeatedRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedRepeatedRuleProto3))
          as PredefinedRepeatedRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleProto3 create() =>
      PredefinedRepeatedRuleProto3._();
  @$core.override
  PredefinedRepeatedRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedRepeatedRuleProto3>(create);
  static PredefinedRepeatedRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get val => $_getList(0);
}

class PredefinedDurationRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedDurationRuleProto3({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDurationRuleProto3._();

  factory PredefinedDurationRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDurationRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDurationRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleProto3 copyWith(
          void Function(PredefinedDurationRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedDurationRuleProto3))
          as PredefinedDurationRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleProto3 create() =>
      PredefinedDurationRuleProto3._();
  @$core.override
  PredefinedDurationRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDurationRuleProto3>(create);
  static PredefinedDurationRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Duration get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Duration ensureVal() => $_ensure(0);
}

class PredefinedTimestampRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedTimestampRuleProto3({
    $1.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedTimestampRuleProto3._();

  factory PredefinedTimestampRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedTimestampRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedTimestampRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleProto3 copyWith(
          void Function(PredefinedTimestampRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedTimestampRuleProto3))
          as PredefinedTimestampRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleProto3 create() =>
      PredefinedTimestampRuleProto3._();
  @$core.override
  PredefinedTimestampRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedTimestampRuleProto3>(create);
  static PredefinedTimestampRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($1.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureVal() => $_ensure(0);
}

class PredefinedWrappedFloatRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedFloatRuleProto3({
    $2.FloatValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedFloatRuleProto3._();

  factory PredefinedWrappedFloatRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedFloatRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedFloatRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleProto3 copyWith(
          void Function(PredefinedWrappedFloatRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedFloatRuleProto3))
          as PredefinedWrappedFloatRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleProto3 create() =>
      PredefinedWrappedFloatRuleProto3._();
  @$core.override
  PredefinedWrappedFloatRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedFloatRuleProto3>(
          create);
  static PredefinedWrappedFloatRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.FloatValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.FloatValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.FloatValue ensureVal() => $_ensure(0);
}

class PredefinedWrappedDoubleRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedDoubleRuleProto3({
    $2.DoubleValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedDoubleRuleProto3._();

  factory PredefinedWrappedDoubleRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedDoubleRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedDoubleRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleProto3 copyWith(
          void Function(PredefinedWrappedDoubleRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedDoubleRuleProto3))
          as PredefinedWrappedDoubleRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleProto3 create() =>
      PredefinedWrappedDoubleRuleProto3._();
  @$core.override
  PredefinedWrappedDoubleRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedDoubleRuleProto3>(
          create);
  static PredefinedWrappedDoubleRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.DoubleValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.DoubleValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.DoubleValue ensureVal() => $_ensure(0);
}

class PredefinedWrappedInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt32RuleProto3({
    $2.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt32RuleProto3._();

  factory PredefinedWrappedInt32RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleProto3 copyWith(
          void Function(PredefinedWrappedInt32RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedInt32RuleProto3))
          as PredefinedWrappedInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleProto3 create() =>
      PredefinedWrappedInt32RuleProto3._();
  @$core.override
  PredefinedWrappedInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedInt32RuleProto3>(
          create);
  static PredefinedWrappedInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Int32Value ensureVal() => $_ensure(0);
}

class PredefinedWrappedInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt64RuleProto3({
    $2.Int64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt64RuleProto3._();

  factory PredefinedWrappedInt64RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleProto3 copyWith(
          void Function(PredefinedWrappedInt64RuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedInt64RuleProto3))
          as PredefinedWrappedInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleProto3 create() =>
      PredefinedWrappedInt64RuleProto3._();
  @$core.override
  PredefinedWrappedInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedInt64RuleProto3>(
          create);
  static PredefinedWrappedInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Int64Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.Int64Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Int64Value ensureVal() => $_ensure(0);
}

class PredefinedWrappedUInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt32RuleProto3({
    $2.UInt32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt32RuleProto3._();

  factory PredefinedWrappedUInt32RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleProto3 copyWith(
          void Function(PredefinedWrappedUInt32RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt32RuleProto3))
          as PredefinedWrappedUInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleProto3 create() =>
      PredefinedWrappedUInt32RuleProto3._();
  @$core.override
  PredefinedWrappedUInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedUInt32RuleProto3>(
          create);
  static PredefinedWrappedUInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.UInt32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.UInt32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.UInt32Value ensureVal() => $_ensure(0);
}

class PredefinedWrappedUInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt64RuleProto3({
    $2.UInt64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt64RuleProto3._();

  factory PredefinedWrappedUInt64RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleProto3 copyWith(
          void Function(PredefinedWrappedUInt64RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt64RuleProto3))
          as PredefinedWrappedUInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleProto3 create() =>
      PredefinedWrappedUInt64RuleProto3._();
  @$core.override
  PredefinedWrappedUInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedUInt64RuleProto3>(
          create);
  static PredefinedWrappedUInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.UInt64Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.UInt64Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.UInt64Value ensureVal() => $_ensure(0);
}

class PredefinedWrappedBoolRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBoolRuleProto3({
    $2.BoolValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBoolRuleProto3._();

  factory PredefinedWrappedBoolRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBoolRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBoolRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleProto3 copyWith(
          void Function(PredefinedWrappedBoolRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedBoolRuleProto3))
          as PredefinedWrappedBoolRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleProto3 create() =>
      PredefinedWrappedBoolRuleProto3._();
  @$core.override
  PredefinedWrappedBoolRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedBoolRuleProto3>(
          create);
  static PredefinedWrappedBoolRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.BoolValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.BoolValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.BoolValue ensureVal() => $_ensure(0);
}

class PredefinedWrappedStringRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedStringRuleProto3({
    $2.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedStringRuleProto3._();

  factory PredefinedWrappedStringRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedStringRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedStringRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleProto3 copyWith(
          void Function(PredefinedWrappedStringRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedStringRuleProto3))
          as PredefinedWrappedStringRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleProto3 create() =>
      PredefinedWrappedStringRuleProto3._();
  @$core.override
  PredefinedWrappedStringRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedStringRuleProto3>(
          create);
  static PredefinedWrappedStringRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.StringValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.StringValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.StringValue ensureVal() => $_ensure(0);
}

class PredefinedWrappedBytesRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBytesRuleProto3({
    $2.BytesValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBytesRuleProto3._();

  factory PredefinedWrappedBytesRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBytesRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBytesRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleProto3 copyWith(
          void Function(PredefinedWrappedBytesRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedBytesRuleProto3))
          as PredefinedWrappedBytesRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleProto3 create() =>
      PredefinedWrappedBytesRuleProto3._();
  @$core.override
  PredefinedWrappedBytesRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedBytesRuleProto3>(
          create);
  static PredefinedWrappedBytesRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $2.BytesValue get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.BytesValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.BytesValue ensureVal() => $_ensure(0);
}

class PredefinedRepeatedWrappedFloatRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedFloatRuleProto3({
    $core.Iterable<$2.FloatValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedFloatRuleProto3._();

  factory PredefinedRepeatedWrappedFloatRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedFloatRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedFloatRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedFloatRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedFloatRuleProto3))
          as PredefinedRepeatedWrappedFloatRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleProto3 create() =>
      PredefinedRepeatedWrappedFloatRuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedFloatRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedFloatRuleProto3>(create);
  static PredefinedRepeatedWrappedFloatRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.FloatValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedDoubleRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedDoubleRuleProto3({
    $core.Iterable<$2.DoubleValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedDoubleRuleProto3._();

  factory PredefinedRepeatedWrappedDoubleRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedDoubleRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedDoubleRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedDoubleRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedDoubleRuleProto3))
          as PredefinedRepeatedWrappedDoubleRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleProto3 create() =>
      PredefinedRepeatedWrappedDoubleRuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedDoubleRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedDoubleRuleProto3>(create);
  static PredefinedRepeatedWrappedDoubleRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.DoubleValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt32RuleProto3({
    $core.Iterable<$2.Int32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt32RuleProto3._();

  factory PredefinedRepeatedWrappedInt32RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedInt32RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt32RuleProto3))
          as PredefinedRepeatedWrappedInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleProto3 create() =>
      PredefinedRepeatedWrappedInt32RuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt32RuleProto3>(create);
  static PredefinedRepeatedWrappedInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt64RuleProto3({
    $core.Iterable<$2.Int64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt64RuleProto3._();

  factory PredefinedRepeatedWrappedInt64RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedInt64RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt64RuleProto3))
          as PredefinedRepeatedWrappedInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleProto3 create() =>
      PredefinedRepeatedWrappedInt64RuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt64RuleProto3>(create);
  static PredefinedRepeatedWrappedInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt32RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt32RuleProto3({
    $core.Iterable<$2.UInt32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt32RuleProto3._();

  factory PredefinedRepeatedWrappedUInt32RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt32RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt32RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedUInt32RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedUInt32RuleProto3))
          as PredefinedRepeatedWrappedUInt32RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleProto3 create() =>
      PredefinedRepeatedWrappedUInt32RuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedUInt32RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt32RuleProto3>(create);
  static PredefinedRepeatedWrappedUInt32RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt64RuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt64RuleProto3({
    $core.Iterable<$2.UInt64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt64RuleProto3._();

  factory PredefinedRepeatedWrappedUInt64RuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt64RuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt64RuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedUInt64RuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedUInt64RuleProto3))
          as PredefinedRepeatedWrappedUInt64RuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleProto3 create() =>
      PredefinedRepeatedWrappedUInt64RuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedUInt64RuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt64RuleProto3>(create);
  static PredefinedRepeatedWrappedUInt64RuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBoolRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBoolRuleProto3({
    $core.Iterable<$2.BoolValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBoolRuleProto3._();

  factory PredefinedRepeatedWrappedBoolRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBoolRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBoolRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedBoolRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBoolRuleProto3))
          as PredefinedRepeatedWrappedBoolRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleProto3 create() =>
      PredefinedRepeatedWrappedBoolRuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedBoolRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBoolRuleProto3>(create);
  static PredefinedRepeatedWrappedBoolRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BoolValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedStringRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedStringRuleProto3({
    $core.Iterable<$2.StringValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedStringRuleProto3._();

  factory PredefinedRepeatedWrappedStringRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedStringRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedStringRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedStringRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedStringRuleProto3))
          as PredefinedRepeatedWrappedStringRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleProto3 create() =>
      PredefinedRepeatedWrappedStringRuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedStringRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedStringRuleProto3>(create);
  static PredefinedRepeatedWrappedStringRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.StringValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBytesRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBytesRuleProto3({
    $core.Iterable<$2.BytesValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBytesRuleProto3._();

  factory PredefinedRepeatedWrappedBytesRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBytesRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBytesRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleProto3 copyWith(
          void Function(PredefinedRepeatedWrappedBytesRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBytesRuleProto3))
          as PredefinedRepeatedWrappedBytesRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleProto3 create() =>
      PredefinedRepeatedWrappedBytesRuleProto3._();
  @$core.override
  PredefinedRepeatedWrappedBytesRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBytesRuleProto3>(create);
  static PredefinedRepeatedWrappedBytesRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BytesValue> get val => $_getList(0);
}

class PredefinedAndCustomRuleProto3_Nested extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleProto3_Nested({
    $core.int? c,
  }) {
    final result = create();
    if (c != null) result.c = c;
    return result;
  }

  PredefinedAndCustomRuleProto3_Nested._();

  factory PredefinedAndCustomRuleProto3_Nested.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleProto3_Nested.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleProto3.Nested',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'c', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto3_Nested clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto3_Nested copyWith(
          void Function(PredefinedAndCustomRuleProto3_Nested) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedAndCustomRuleProto3_Nested))
          as PredefinedAndCustomRuleProto3_Nested;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto3_Nested create() =>
      PredefinedAndCustomRuleProto3_Nested._();
  @$core.override
  PredefinedAndCustomRuleProto3_Nested createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto3_Nested getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedAndCustomRuleProto3_Nested>(create);
  static PredefinedAndCustomRuleProto3_Nested? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get c => $_getIZ(0);
  @$pb.TagNumber(1)
  set c($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasC() => $_has(0);
  @$pb.TagNumber(1)
  void clearC() => $_clearField(1);
}

class PredefinedAndCustomRuleProto3 extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleProto3({
    $core.int? a,
    PredefinedAndCustomRuleProto3_Nested? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  PredefinedAndCustomRuleProto3._();

  factory PredefinedAndCustomRuleProto3.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..aOM<PredefinedAndCustomRuleProto3_Nested>(2, _omitFieldNames ? '' : 'b',
        subBuilder: PredefinedAndCustomRuleProto3_Nested.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto3 copyWith(
          void Function(PredefinedAndCustomRuleProto3) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedAndCustomRuleProto3))
          as PredefinedAndCustomRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto3 create() =>
      PredefinedAndCustomRuleProto3._();
  @$core.override
  PredefinedAndCustomRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto3 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedAndCustomRuleProto3>(create);
  static PredefinedAndCustomRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  PredefinedAndCustomRuleProto3_Nested get b => $_getN(1);
  @$pb.TagNumber(2)
  set b(PredefinedAndCustomRuleProto3_Nested value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
  @$pb.TagNumber(2)
  PredefinedAndCustomRuleProto3_Nested ensureB() => $_ensure(1);
}

class StandardPredefinedAndCustomRuleProto3 extends $pb.GeneratedMessage {
  factory StandardPredefinedAndCustomRuleProto3({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  StandardPredefinedAndCustomRuleProto3._();

  factory StandardPredefinedAndCustomRuleProto3.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StandardPredefinedAndCustomRuleProto3.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StandardPredefinedAndCustomRuleProto3',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleProto3 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleProto3 copyWith(
          void Function(StandardPredefinedAndCustomRuleProto3) updates) =>
      super.copyWith((message) =>
              updates(message as StandardPredefinedAndCustomRuleProto3))
          as StandardPredefinedAndCustomRuleProto3;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleProto3 create() =>
      StandardPredefinedAndCustomRuleProto3._();
  @$core.override
  StandardPredefinedAndCustomRuleProto3 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleProto3 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StandardPredefinedAndCustomRuleProto3>(create);
  static StandardPredefinedAndCustomRuleProto3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

/// This is a workaround for https://github.com/bufbuild/buf/issues/3306.
/// TODO(jchadwick-buf): Remove this when bufbuild/buf#3306 is fixed.
class PredefinedRulesProto3UnusedImportBugWorkaround
    extends $pb.GeneratedMessage {
  factory PredefinedRulesProto3UnusedImportBugWorkaround({
    $3.StandardPredefinedAndCustomRuleProto2? dummy1,
    $4.StandardPredefinedAndCustomRuleEdition2023? dummy2,
  }) {
    final result = create();
    if (dummy1 != null) result.dummy1 = dummy1;
    if (dummy2 != null) result.dummy2 = dummy2;
    return result;
  }

  PredefinedRulesProto3UnusedImportBugWorkaround._();

  factory PredefinedRulesProto3UnusedImportBugWorkaround.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRulesProto3UnusedImportBugWorkaround.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRulesProto3UnusedImportBugWorkaround',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$3.StandardPredefinedAndCustomRuleProto2>(
        1, _omitFieldNames ? '' : 'dummy1',
        protoName: 'dummy_1',
        subBuilder: $3.StandardPredefinedAndCustomRuleProto2.create)
    ..aOM<$4.StandardPredefinedAndCustomRuleEdition2023>(
        2, _omitFieldNames ? '' : 'dummy2',
        protoName: 'dummy_2',
        subBuilder: $4.StandardPredefinedAndCustomRuleEdition2023.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRulesProto3UnusedImportBugWorkaround clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRulesProto3UnusedImportBugWorkaround copyWith(
          void Function(PredefinedRulesProto3UnusedImportBugWorkaround)
              updates) =>
      super.copyWith((message) => updates(
              message as PredefinedRulesProto3UnusedImportBugWorkaround))
          as PredefinedRulesProto3UnusedImportBugWorkaround;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRulesProto3UnusedImportBugWorkaround create() =>
      PredefinedRulesProto3UnusedImportBugWorkaround._();
  @$core.override
  PredefinedRulesProto3UnusedImportBugWorkaround createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRulesProto3UnusedImportBugWorkaround getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRulesProto3UnusedImportBugWorkaround>(create);
  static PredefinedRulesProto3UnusedImportBugWorkaround? _defaultInstance;

  @$pb.TagNumber(1)
  $3.StandardPredefinedAndCustomRuleProto2 get dummy1 => $_getN(0);
  @$pb.TagNumber(1)
  set dummy1($3.StandardPredefinedAndCustomRuleProto2 value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDummy1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDummy1() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.StandardPredefinedAndCustomRuleProto2 ensureDummy1() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.StandardPredefinedAndCustomRuleEdition2023 get dummy2 => $_getN(1);
  @$pb.TagNumber(2)
  set dummy2($4.StandardPredefinedAndCustomRuleEdition2023 value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDummy2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDummy2() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.StandardPredefinedAndCustomRuleEdition2023 ensureDummy2() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
