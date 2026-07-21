// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto2.proto.

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
import 'predefined_rules_proto2.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'predefined_rules_proto2.pbenum.dart';

class PredefinedFloatRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedFloatRuleProto2({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFloatRuleProto2._();

  factory PredefinedFloatRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFloatRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFloatRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleProto2 copyWith(
          void Function(PredefinedFloatRuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedFloatRuleProto2))
          as PredefinedFloatRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleProto2 create() => PredefinedFloatRuleProto2._();
  @$core.override
  PredefinedFloatRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFloatRuleProto2>(create);
  static PredefinedFloatRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedDoubleRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedDoubleRuleProto2({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDoubleRuleProto2._();

  factory PredefinedDoubleRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDoubleRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDoubleRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleProto2 copyWith(
          void Function(PredefinedDoubleRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedDoubleRuleProto2))
          as PredefinedDoubleRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleProto2 create() => PredefinedDoubleRuleProto2._();
  @$core.override
  PredefinedDoubleRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDoubleRuleProto2>(create);
  static PredefinedDoubleRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedInt32RuleProto2({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt32RuleProto2._();

  factory PredefinedInt32RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleProto2 copyWith(
          void Function(PredefinedInt32RuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedInt32RuleProto2))
          as PredefinedInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleProto2 create() => PredefinedInt32RuleProto2._();
  @$core.override
  PredefinedInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt32RuleProto2>(create);
  static PredefinedInt32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedInt64RuleProto2({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt64RuleProto2._();

  factory PredefinedInt64RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleProto2 copyWith(
          void Function(PredefinedInt64RuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedInt64RuleProto2))
          as PredefinedInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleProto2 create() => PredefinedInt64RuleProto2._();
  @$core.override
  PredefinedInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt64RuleProto2>(create);
  static PredefinedInt64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedUInt32RuleProto2({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt32RuleProto2._();

  factory PredefinedUInt32RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleProto2 copyWith(
          void Function(PredefinedUInt32RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt32RuleProto2))
          as PredefinedUInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleProto2 create() => PredefinedUInt32RuleProto2._();
  @$core.override
  PredefinedUInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt32RuleProto2>(create);
  static PredefinedUInt32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedUInt64RuleProto2({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt64RuleProto2._();

  factory PredefinedUInt64RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleProto2 copyWith(
          void Function(PredefinedUInt64RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt64RuleProto2))
          as PredefinedUInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleProto2 create() => PredefinedUInt64RuleProto2._();
  @$core.override
  PredefinedUInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt64RuleProto2>(create);
  static PredefinedUInt64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedSInt32RuleProto2({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt32RuleProto2._();

  factory PredefinedSInt32RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleProto2 copyWith(
          void Function(PredefinedSInt32RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt32RuleProto2))
          as PredefinedSInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleProto2 create() => PredefinedSInt32RuleProto2._();
  @$core.override
  PredefinedSInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt32RuleProto2>(create);
  static PredefinedSInt32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedSInt64RuleProto2({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt64RuleProto2._();

  factory PredefinedSInt64RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleProto2 copyWith(
          void Function(PredefinedSInt64RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt64RuleProto2))
          as PredefinedSInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleProto2 create() => PredefinedSInt64RuleProto2._();
  @$core.override
  PredefinedSInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt64RuleProto2>(create);
  static PredefinedSInt64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedFixed32RuleProto2({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed32RuleProto2._();

  factory PredefinedFixed32RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleProto2 copyWith(
          void Function(PredefinedFixed32RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed32RuleProto2))
          as PredefinedFixed32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleProto2 create() =>
      PredefinedFixed32RuleProto2._();
  @$core.override
  PredefinedFixed32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed32RuleProto2>(create);
  static PredefinedFixed32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedFixed64RuleProto2({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed64RuleProto2._();

  factory PredefinedFixed64RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleProto2 copyWith(
          void Function(PredefinedFixed64RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed64RuleProto2))
          as PredefinedFixed64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleProto2 create() =>
      PredefinedFixed64RuleProto2._();
  @$core.override
  PredefinedFixed64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed64RuleProto2>(create);
  static PredefinedFixed64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedSFixed32RuleProto2({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed32RuleProto2._();

  factory PredefinedSFixed32RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleProto2 copyWith(
          void Function(PredefinedSFixed32RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSFixed32RuleProto2))
          as PredefinedSFixed32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleProto2 create() =>
      PredefinedSFixed32RuleProto2._();
  @$core.override
  PredefinedSFixed32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed32RuleProto2>(create);
  static PredefinedSFixed32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedSFixed64RuleProto2({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed64RuleProto2._();

  factory PredefinedSFixed64RuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleProto2 copyWith(
          void Function(PredefinedSFixed64RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSFixed64RuleProto2))
          as PredefinedSFixed64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleProto2 create() =>
      PredefinedSFixed64RuleProto2._();
  @$core.override
  PredefinedSFixed64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed64RuleProto2>(create);
  static PredefinedSFixed64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBoolRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedBoolRuleProto2({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBoolRuleProto2._();

  factory PredefinedBoolRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBoolRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBoolRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleProto2 copyWith(
          void Function(PredefinedBoolRuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedBoolRuleProto2))
          as PredefinedBoolRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleProto2 create() => PredefinedBoolRuleProto2._();
  @$core.override
  PredefinedBoolRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBoolRuleProto2>(create);
  static PredefinedBoolRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedStringRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedStringRuleProto2({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedStringRuleProto2._();

  factory PredefinedStringRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedStringRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedStringRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleProto2 copyWith(
          void Function(PredefinedStringRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedStringRuleProto2))
          as PredefinedStringRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleProto2 create() => PredefinedStringRuleProto2._();
  @$core.override
  PredefinedStringRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedStringRuleProto2>(create);
  static PredefinedStringRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBytesRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedBytesRuleProto2({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBytesRuleProto2._();

  factory PredefinedBytesRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBytesRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBytesRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleProto2 copyWith(
          void Function(PredefinedBytesRuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedBytesRuleProto2))
          as PredefinedBytesRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleProto2 create() => PredefinedBytesRuleProto2._();
  @$core.override
  PredefinedBytesRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBytesRuleProto2>(create);
  static PredefinedBytesRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedEnumRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedEnumRuleProto2({
    PredefinedEnumRuleProto2_EnumProto2? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedEnumRuleProto2._();

  factory PredefinedEnumRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedEnumRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedEnumRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<PredefinedEnumRuleProto2_EnumProto2>(1, _omitFieldNames ? '' : 'val',
        enumValues: PredefinedEnumRuleProto2_EnumProto2.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleProto2 copyWith(
          void Function(PredefinedEnumRuleProto2) updates) =>
      super.copyWith((message) => updates(message as PredefinedEnumRuleProto2))
          as PredefinedEnumRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleProto2 create() => PredefinedEnumRuleProto2._();
  @$core.override
  PredefinedEnumRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedEnumRuleProto2>(create);
  static PredefinedEnumRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  PredefinedEnumRuleProto2_EnumProto2 get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(PredefinedEnumRuleProto2_EnumProto2 value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedRepeatedRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedRuleProto2({
    $core.Iterable<$fixnum.Int64>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedRuleProto2._();

  factory PredefinedRepeatedRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.PU6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleProto2 copyWith(
          void Function(PredefinedRepeatedRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedRepeatedRuleProto2))
          as PredefinedRepeatedRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleProto2 create() =>
      PredefinedRepeatedRuleProto2._();
  @$core.override
  PredefinedRepeatedRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedRepeatedRuleProto2>(create);
  static PredefinedRepeatedRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get val => $_getList(0);
}

class PredefinedDurationRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedDurationRuleProto2({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDurationRuleProto2._();

  factory PredefinedDurationRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDurationRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDurationRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleProto2 copyWith(
          void Function(PredefinedDurationRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedDurationRuleProto2))
          as PredefinedDurationRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleProto2 create() =>
      PredefinedDurationRuleProto2._();
  @$core.override
  PredefinedDurationRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDurationRuleProto2>(create);
  static PredefinedDurationRuleProto2? _defaultInstance;

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

class PredefinedTimestampRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedTimestampRuleProto2({
    $1.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedTimestampRuleProto2._();

  factory PredefinedTimestampRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedTimestampRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedTimestampRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleProto2 copyWith(
          void Function(PredefinedTimestampRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedTimestampRuleProto2))
          as PredefinedTimestampRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleProto2 create() =>
      PredefinedTimestampRuleProto2._();
  @$core.override
  PredefinedTimestampRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedTimestampRuleProto2>(create);
  static PredefinedTimestampRuleProto2? _defaultInstance;

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

class PredefinedWrappedFloatRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedFloatRuleProto2({
    $2.FloatValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedFloatRuleProto2._();

  factory PredefinedWrappedFloatRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedFloatRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedFloatRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleProto2 copyWith(
          void Function(PredefinedWrappedFloatRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedFloatRuleProto2))
          as PredefinedWrappedFloatRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleProto2 create() =>
      PredefinedWrappedFloatRuleProto2._();
  @$core.override
  PredefinedWrappedFloatRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedFloatRuleProto2>(
          create);
  static PredefinedWrappedFloatRuleProto2? _defaultInstance;

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

class PredefinedWrappedDoubleRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedDoubleRuleProto2({
    $2.DoubleValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedDoubleRuleProto2._();

  factory PredefinedWrappedDoubleRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedDoubleRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedDoubleRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleProto2 copyWith(
          void Function(PredefinedWrappedDoubleRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedDoubleRuleProto2))
          as PredefinedWrappedDoubleRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleProto2 create() =>
      PredefinedWrappedDoubleRuleProto2._();
  @$core.override
  PredefinedWrappedDoubleRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedDoubleRuleProto2>(
          create);
  static PredefinedWrappedDoubleRuleProto2? _defaultInstance;

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

class PredefinedWrappedInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt32RuleProto2({
    $2.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt32RuleProto2._();

  factory PredefinedWrappedInt32RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleProto2 copyWith(
          void Function(PredefinedWrappedInt32RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedInt32RuleProto2))
          as PredefinedWrappedInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleProto2 create() =>
      PredefinedWrappedInt32RuleProto2._();
  @$core.override
  PredefinedWrappedInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedInt32RuleProto2>(
          create);
  static PredefinedWrappedInt32RuleProto2? _defaultInstance;

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

class PredefinedWrappedInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt64RuleProto2({
    $2.Int64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt64RuleProto2._();

  factory PredefinedWrappedInt64RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleProto2 copyWith(
          void Function(PredefinedWrappedInt64RuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedInt64RuleProto2))
          as PredefinedWrappedInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleProto2 create() =>
      PredefinedWrappedInt64RuleProto2._();
  @$core.override
  PredefinedWrappedInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedInt64RuleProto2>(
          create);
  static PredefinedWrappedInt64RuleProto2? _defaultInstance;

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

class PredefinedWrappedUInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt32RuleProto2({
    $2.UInt32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt32RuleProto2._();

  factory PredefinedWrappedUInt32RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleProto2 copyWith(
          void Function(PredefinedWrappedUInt32RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt32RuleProto2))
          as PredefinedWrappedUInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleProto2 create() =>
      PredefinedWrappedUInt32RuleProto2._();
  @$core.override
  PredefinedWrappedUInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedUInt32RuleProto2>(
          create);
  static PredefinedWrappedUInt32RuleProto2? _defaultInstance;

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

class PredefinedWrappedUInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt64RuleProto2({
    $2.UInt64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt64RuleProto2._();

  factory PredefinedWrappedUInt64RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleProto2 copyWith(
          void Function(PredefinedWrappedUInt64RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt64RuleProto2))
          as PredefinedWrappedUInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleProto2 create() =>
      PredefinedWrappedUInt64RuleProto2._();
  @$core.override
  PredefinedWrappedUInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedUInt64RuleProto2>(
          create);
  static PredefinedWrappedUInt64RuleProto2? _defaultInstance;

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

class PredefinedWrappedBoolRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBoolRuleProto2({
    $2.BoolValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBoolRuleProto2._();

  factory PredefinedWrappedBoolRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBoolRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBoolRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleProto2 copyWith(
          void Function(PredefinedWrappedBoolRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedBoolRuleProto2))
          as PredefinedWrappedBoolRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleProto2 create() =>
      PredefinedWrappedBoolRuleProto2._();
  @$core.override
  PredefinedWrappedBoolRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedBoolRuleProto2>(
          create);
  static PredefinedWrappedBoolRuleProto2? _defaultInstance;

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

class PredefinedWrappedStringRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedStringRuleProto2({
    $2.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedStringRuleProto2._();

  factory PredefinedWrappedStringRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedStringRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedStringRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleProto2 copyWith(
          void Function(PredefinedWrappedStringRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedStringRuleProto2))
          as PredefinedWrappedStringRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleProto2 create() =>
      PredefinedWrappedStringRuleProto2._();
  @$core.override
  PredefinedWrappedStringRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedStringRuleProto2>(
          create);
  static PredefinedWrappedStringRuleProto2? _defaultInstance;

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

class PredefinedWrappedBytesRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBytesRuleProto2({
    $2.BytesValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBytesRuleProto2._();

  factory PredefinedWrappedBytesRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBytesRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBytesRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleProto2 copyWith(
          void Function(PredefinedWrappedBytesRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedWrappedBytesRuleProto2))
          as PredefinedWrappedBytesRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleProto2 create() =>
      PredefinedWrappedBytesRuleProto2._();
  @$core.override
  PredefinedWrappedBytesRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedWrappedBytesRuleProto2>(
          create);
  static PredefinedWrappedBytesRuleProto2? _defaultInstance;

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

class PredefinedRepeatedWrappedFloatRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedFloatRuleProto2({
    $core.Iterable<$2.FloatValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedFloatRuleProto2._();

  factory PredefinedRepeatedWrappedFloatRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedFloatRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedFloatRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedFloatRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedFloatRuleProto2))
          as PredefinedRepeatedWrappedFloatRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleProto2 create() =>
      PredefinedRepeatedWrappedFloatRuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedFloatRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedFloatRuleProto2>(create);
  static PredefinedRepeatedWrappedFloatRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.FloatValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedDoubleRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedDoubleRuleProto2({
    $core.Iterable<$2.DoubleValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedDoubleRuleProto2._();

  factory PredefinedRepeatedWrappedDoubleRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedDoubleRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedDoubleRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedDoubleRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedDoubleRuleProto2))
          as PredefinedRepeatedWrappedDoubleRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleProto2 create() =>
      PredefinedRepeatedWrappedDoubleRuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedDoubleRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedDoubleRuleProto2>(create);
  static PredefinedRepeatedWrappedDoubleRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.DoubleValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt32RuleProto2({
    $core.Iterable<$2.Int32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt32RuleProto2._();

  factory PredefinedRepeatedWrappedInt32RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedInt32RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt32RuleProto2))
          as PredefinedRepeatedWrappedInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleProto2 create() =>
      PredefinedRepeatedWrappedInt32RuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt32RuleProto2>(create);
  static PredefinedRepeatedWrappedInt32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt64RuleProto2({
    $core.Iterable<$2.Int64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt64RuleProto2._();

  factory PredefinedRepeatedWrappedInt64RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedInt64RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt64RuleProto2))
          as PredefinedRepeatedWrappedInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleProto2 create() =>
      PredefinedRepeatedWrappedInt64RuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt64RuleProto2>(create);
  static PredefinedRepeatedWrappedInt64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt32RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt32RuleProto2({
    $core.Iterable<$2.UInt32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt32RuleProto2._();

  factory PredefinedRepeatedWrappedUInt32RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt32RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt32RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedUInt32RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedUInt32RuleProto2))
          as PredefinedRepeatedWrappedUInt32RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleProto2 create() =>
      PredefinedRepeatedWrappedUInt32RuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedUInt32RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt32RuleProto2>(create);
  static PredefinedRepeatedWrappedUInt32RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt64RuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt64RuleProto2({
    $core.Iterable<$2.UInt64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt64RuleProto2._();

  factory PredefinedRepeatedWrappedUInt64RuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt64RuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt64RuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedUInt64RuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedUInt64RuleProto2))
          as PredefinedRepeatedWrappedUInt64RuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleProto2 create() =>
      PredefinedRepeatedWrappedUInt64RuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedUInt64RuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt64RuleProto2>(create);
  static PredefinedRepeatedWrappedUInt64RuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBoolRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBoolRuleProto2({
    $core.Iterable<$2.BoolValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBoolRuleProto2._();

  factory PredefinedRepeatedWrappedBoolRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBoolRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBoolRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedBoolRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBoolRuleProto2))
          as PredefinedRepeatedWrappedBoolRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleProto2 create() =>
      PredefinedRepeatedWrappedBoolRuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedBoolRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBoolRuleProto2>(create);
  static PredefinedRepeatedWrappedBoolRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BoolValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedStringRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedStringRuleProto2({
    $core.Iterable<$2.StringValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedStringRuleProto2._();

  factory PredefinedRepeatedWrappedStringRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedStringRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedStringRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedStringRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedStringRuleProto2))
          as PredefinedRepeatedWrappedStringRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleProto2 create() =>
      PredefinedRepeatedWrappedStringRuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedStringRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedStringRuleProto2>(create);
  static PredefinedRepeatedWrappedStringRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.StringValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBytesRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBytesRuleProto2({
    $core.Iterable<$2.BytesValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBytesRuleProto2._();

  factory PredefinedRepeatedWrappedBytesRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBytesRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBytesRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleProto2 copyWith(
          void Function(PredefinedRepeatedWrappedBytesRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBytesRuleProto2))
          as PredefinedRepeatedWrappedBytesRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleProto2 create() =>
      PredefinedRepeatedWrappedBytesRuleProto2._();
  @$core.override
  PredefinedRepeatedWrappedBytesRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBytesRuleProto2>(create);
  static PredefinedRepeatedWrappedBytesRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BytesValue> get val => $_getList(0);
}

class PredefinedAndCustomRuleProto2_Nested extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleProto2_Nested({
    $core.int? c,
  }) {
    final result = create();
    if (c != null) result.c = c;
    return result;
  }

  PredefinedAndCustomRuleProto2_Nested._();

  factory PredefinedAndCustomRuleProto2_Nested.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleProto2_Nested.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleProto2.Nested',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'c', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto2_Nested clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto2_Nested copyWith(
          void Function(PredefinedAndCustomRuleProto2_Nested) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedAndCustomRuleProto2_Nested))
          as PredefinedAndCustomRuleProto2_Nested;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto2_Nested create() =>
      PredefinedAndCustomRuleProto2_Nested._();
  @$core.override
  PredefinedAndCustomRuleProto2_Nested createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto2_Nested getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedAndCustomRuleProto2_Nested>(create);
  static PredefinedAndCustomRuleProto2_Nested? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get c => $_getIZ(0);
  @$pb.TagNumber(1)
  set c($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasC() => $_has(0);
  @$pb.TagNumber(1)
  void clearC() => $_clearField(1);
}

class PredefinedAndCustomRuleProto2 extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleProto2({
    $core.int? a,
    PredefinedAndCustomRuleProto2_Nested? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  PredefinedAndCustomRuleProto2._();

  factory PredefinedAndCustomRuleProto2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..aOM<PredefinedAndCustomRuleProto2_Nested>(2, _omitFieldNames ? '' : 'b',
        subBuilder: PredefinedAndCustomRuleProto2_Nested.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleProto2 copyWith(
          void Function(PredefinedAndCustomRuleProto2) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedAndCustomRuleProto2))
          as PredefinedAndCustomRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto2 create() =>
      PredefinedAndCustomRuleProto2._();
  @$core.override
  PredefinedAndCustomRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleProto2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedAndCustomRuleProto2>(create);
  static PredefinedAndCustomRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  PredefinedAndCustomRuleProto2_Nested get b => $_getN(1);
  @$pb.TagNumber(2)
  set b(PredefinedAndCustomRuleProto2_Nested value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
  @$pb.TagNumber(2)
  PredefinedAndCustomRuleProto2_Nested ensureB() => $_ensure(1);
}

class StandardPredefinedAndCustomRuleProto2 extends $pb.GeneratedMessage {
  factory StandardPredefinedAndCustomRuleProto2({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  StandardPredefinedAndCustomRuleProto2._();

  factory StandardPredefinedAndCustomRuleProto2.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StandardPredefinedAndCustomRuleProto2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StandardPredefinedAndCustomRuleProto2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleProto2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleProto2 copyWith(
          void Function(StandardPredefinedAndCustomRuleProto2) updates) =>
      super.copyWith((message) =>
              updates(message as StandardPredefinedAndCustomRuleProto2))
          as StandardPredefinedAndCustomRuleProto2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleProto2 create() =>
      StandardPredefinedAndCustomRuleProto2._();
  @$core.override
  StandardPredefinedAndCustomRuleProto2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleProto2 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StandardPredefinedAndCustomRuleProto2>(create);
  static StandardPredefinedAndCustomRuleProto2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class Predefined_rules_proto2 {
  static final floatAbsRangeProto2 = $pb.Extension<$core.double>(
      _omitMessageNames ? '' : 'buf.validate.FloatRules',
      _omitFieldNames ? '' : 'floatAbsRangeProto2',
      1161,
      $pb.PbFieldType.OF);
  static final doubleAbsRangeProto2 = $pb.Extension<$core.double>(
      _omitMessageNames ? '' : 'buf.validate.DoubleRules',
      _omitFieldNames ? '' : 'doubleAbsRangeProto2',
      1161,
      $pb.PbFieldType.OD);
  static final int32AbsInProto2 = $pb.Extension<$core.int>.repeated(
      _omitMessageNames ? '' : 'buf.validate.Int32Rules',
      _omitFieldNames ? '' : 'int32AbsInProto2',
      1161,
      $pb.PbFieldType.P3,
      check: $pb.getCheckFunction($pb.PbFieldType.P3));
  static final int64AbsInProto2 = $pb.Extension<$2.Int64Value>.repeated(
      _omitMessageNames ? '' : 'buf.validate.Int64Rules',
      _omitFieldNames ? '' : 'int64AbsInProto2',
      1161,
      $pb.PbFieldType.PM,
      check: $pb.getCheckFunction($pb.PbFieldType.PM),
      subBuilder: $2.Int64Value.create);
  static final uint32EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.UInt32Rules',
      _omitFieldNames ? '' : 'uint32EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final uint64EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.UInt64Rules',
      _omitFieldNames ? '' : 'uint64EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final sint32EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SInt32Rules',
      _omitFieldNames ? '' : 'sint32EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final sint64EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SInt64Rules',
      _omitFieldNames ? '' : 'sint64EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final fixed32EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.Fixed32Rules',
      _omitFieldNames ? '' : 'fixed32EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final fixed64EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.Fixed64Rules',
      _omitFieldNames ? '' : 'fixed64EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final sfixed32EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SFixed32Rules',
      _omitFieldNames ? '' : 'sfixed32EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final sfixed64EvenProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SFixed64Rules',
      _omitFieldNames ? '' : 'sfixed64EvenProto2',
      1161,
      $pb.PbFieldType.OB);
  static final boolFalseProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.BoolRules',
      _omitFieldNames ? '' : 'boolFalseProto2',
      1161,
      $pb.PbFieldType.OB);
  static final stringValidPathProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.StringRules',
      _omitFieldNames ? '' : 'stringValidPathProto2',
      1161,
      $pb.PbFieldType.OB);
  static final bytesValidPathProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.BytesRules',
      _omitFieldNames ? '' : 'bytesValidPathProto2',
      1161,
      $pb.PbFieldType.OB);
  static final enumNonZeroProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.EnumRules',
      _omitFieldNames ? '' : 'enumNonZeroProto2',
      1161,
      $pb.PbFieldType.OB);
  static final repeatedAtLeastFiveProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.RepeatedRules',
      _omitFieldNames ? '' : 'repeatedAtLeastFiveProto2',
      1161,
      $pb.PbFieldType.OB);
  static final durationTooLongProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.DurationRules',
      _omitFieldNames ? '' : 'durationTooLongProto2',
      1161,
      $pb.PbFieldType.OB);
  static final timestampInRangeProto2 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.TimestampRules',
      _omitFieldNames ? '' : 'timestampInRangeProto2',
      1161,
      $pb.PbFieldType.OB);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(floatAbsRangeProto2);
    registry.add(doubleAbsRangeProto2);
    registry.add(int32AbsInProto2);
    registry.add(int64AbsInProto2);
    registry.add(uint32EvenProto2);
    registry.add(uint64EvenProto2);
    registry.add(sint32EvenProto2);
    registry.add(sint64EvenProto2);
    registry.add(fixed32EvenProto2);
    registry.add(fixed64EvenProto2);
    registry.add(sfixed32EvenProto2);
    registry.add(sfixed64EvenProto2);
    registry.add(boolFalseProto2);
    registry.add(stringValidPathProto2);
    registry.add(bytesValidPathProto2);
    registry.add(enumNonZeroProto2);
    registry.add(repeatedAtLeastFiveProto2);
    registry.add(durationTooLongProto2);
    registry.add(timestampInRangeProto2);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
