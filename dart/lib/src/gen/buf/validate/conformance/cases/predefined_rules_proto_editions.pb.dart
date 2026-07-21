// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/predefined_rules_proto_editions.proto.

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
import 'predefined_rules_proto_editions.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'predefined_rules_proto_editions.pbenum.dart';

class PredefinedFloatRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedFloatRuleEdition2023({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFloatRuleEdition2023._();

  factory PredefinedFloatRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFloatRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFloatRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFloatRuleEdition2023 copyWith(
          void Function(PredefinedFloatRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFloatRuleEdition2023))
          as PredefinedFloatRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleEdition2023 create() =>
      PredefinedFloatRuleEdition2023._();
  @$core.override
  PredefinedFloatRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFloatRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFloatRuleEdition2023>(create);
  static PredefinedFloatRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedDoubleRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedDoubleRuleEdition2023({
    $core.double? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDoubleRuleEdition2023._();

  factory PredefinedDoubleRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDoubleRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDoubleRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDoubleRuleEdition2023 copyWith(
          void Function(PredefinedDoubleRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedDoubleRuleEdition2023))
          as PredefinedDoubleRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleEdition2023 create() =>
      PredefinedDoubleRuleEdition2023._();
  @$core.override
  PredefinedDoubleRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDoubleRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDoubleRuleEdition2023>(
          create);
  static PredefinedDoubleRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedInt32RuleEdition2023({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt32RuleEdition2023._();

  factory PredefinedInt32RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt32RuleEdition2023 copyWith(
          void Function(PredefinedInt32RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedInt32RuleEdition2023))
          as PredefinedInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleEdition2023 create() =>
      PredefinedInt32RuleEdition2023._();
  @$core.override
  PredefinedInt32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt32RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt32RuleEdition2023>(create);
  static PredefinedInt32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedInt64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedInt64RuleEdition2023({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedInt64RuleEdition2023._();

  factory PredefinedInt64RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedInt64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedInt64RuleEdition2023 copyWith(
          void Function(PredefinedInt64RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedInt64RuleEdition2023))
          as PredefinedInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleEdition2023 create() =>
      PredefinedInt64RuleEdition2023._();
  @$core.override
  PredefinedInt64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedInt64RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedInt64RuleEdition2023>(create);
  static PredefinedInt64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedUInt32RuleEdition2023({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt32RuleEdition2023._();

  factory PredefinedUInt32RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt32RuleEdition2023 copyWith(
          void Function(PredefinedUInt32RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt32RuleEdition2023))
          as PredefinedUInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleEdition2023 create() =>
      PredefinedUInt32RuleEdition2023._();
  @$core.override
  PredefinedUInt32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt32RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt32RuleEdition2023>(
          create);
  static PredefinedUInt32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedUInt64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedUInt64RuleEdition2023({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedUInt64RuleEdition2023._();

  factory PredefinedUInt64RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedUInt64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedUInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedUInt64RuleEdition2023 copyWith(
          void Function(PredefinedUInt64RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedUInt64RuleEdition2023))
          as PredefinedUInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleEdition2023 create() =>
      PredefinedUInt64RuleEdition2023._();
  @$core.override
  PredefinedUInt64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedUInt64RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedUInt64RuleEdition2023>(
          create);
  static PredefinedUInt64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedSInt32RuleEdition2023({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt32RuleEdition2023._();

  factory PredefinedSInt32RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt32RuleEdition2023 copyWith(
          void Function(PredefinedSInt32RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt32RuleEdition2023))
          as PredefinedSInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleEdition2023 create() =>
      PredefinedSInt32RuleEdition2023._();
  @$core.override
  PredefinedSInt32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt32RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt32RuleEdition2023>(
          create);
  static PredefinedSInt32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSInt64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedSInt64RuleEdition2023({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSInt64RuleEdition2023._();

  factory PredefinedSInt64RuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSInt64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSInt64RuleEdition2023 copyWith(
          void Function(PredefinedSInt64RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedSInt64RuleEdition2023))
          as PredefinedSInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleEdition2023 create() =>
      PredefinedSInt64RuleEdition2023._();
  @$core.override
  PredefinedSInt64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSInt64RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSInt64RuleEdition2023>(
          create);
  static PredefinedSInt64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedFixed32RuleEdition2023({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed32RuleEdition2023._();

  factory PredefinedFixed32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed32RuleEdition2023 copyWith(
          void Function(PredefinedFixed32RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed32RuleEdition2023))
          as PredefinedFixed32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleEdition2023 create() =>
      PredefinedFixed32RuleEdition2023._();
  @$core.override
  PredefinedFixed32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed32RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed32RuleEdition2023>(
          create);
  static PredefinedFixed32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedFixed64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedFixed64RuleEdition2023({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedFixed64RuleEdition2023._();

  factory PredefinedFixed64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedFixed64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedFixed64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedFixed64RuleEdition2023 copyWith(
          void Function(PredefinedFixed64RuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedFixed64RuleEdition2023))
          as PredefinedFixed64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleEdition2023 create() =>
      PredefinedFixed64RuleEdition2023._();
  @$core.override
  PredefinedFixed64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedFixed64RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedFixed64RuleEdition2023>(
          create);
  static PredefinedFixed64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedSFixed32RuleEdition2023({
    $core.int? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed32RuleEdition2023._();

  factory PredefinedSFixed32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'val', fieldType: $pb.PbFieldType.OSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed32RuleEdition2023 copyWith(
          void Function(PredefinedSFixed32RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedSFixed32RuleEdition2023))
          as PredefinedSFixed32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleEdition2023 create() =>
      PredefinedSFixed32RuleEdition2023._();
  @$core.override
  PredefinedSFixed32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed32RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed32RuleEdition2023>(
          create);
  static PredefinedSFixed32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedSFixed64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedSFixed64RuleEdition2023({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedSFixed64RuleEdition2023._();

  factory PredefinedSFixed64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedSFixed64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedSFixed64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedSFixed64RuleEdition2023 copyWith(
          void Function(PredefinedSFixed64RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedSFixed64RuleEdition2023))
          as PredefinedSFixed64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleEdition2023 create() =>
      PredefinedSFixed64RuleEdition2023._();
  @$core.override
  PredefinedSFixed64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedSFixed64RuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedSFixed64RuleEdition2023>(
          create);
  static PredefinedSFixed64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBoolRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedBoolRuleEdition2023({
    $core.bool? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBoolRuleEdition2023._();

  factory PredefinedBoolRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBoolRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBoolRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBoolRuleEdition2023 copyWith(
          void Function(PredefinedBoolRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedBoolRuleEdition2023))
          as PredefinedBoolRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleEdition2023 create() =>
      PredefinedBoolRuleEdition2023._();
  @$core.override
  PredefinedBoolRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBoolRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBoolRuleEdition2023>(create);
  static PredefinedBoolRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get val => $_getBF(0);
  @$pb.TagNumber(1)
  set val($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedStringRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedStringRuleEdition2023({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedStringRuleEdition2023._();

  factory PredefinedStringRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedStringRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedStringRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedStringRuleEdition2023 copyWith(
          void Function(PredefinedStringRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedStringRuleEdition2023))
          as PredefinedStringRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleEdition2023 create() =>
      PredefinedStringRuleEdition2023._();
  @$core.override
  PredefinedStringRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedStringRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedStringRuleEdition2023>(
          create);
  static PredefinedStringRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedBytesRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedBytesRuleEdition2023({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedBytesRuleEdition2023._();

  factory PredefinedBytesRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedBytesRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedBytesRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedBytesRuleEdition2023 copyWith(
          void Function(PredefinedBytesRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedBytesRuleEdition2023))
          as PredefinedBytesRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleEdition2023 create() =>
      PredefinedBytesRuleEdition2023._();
  @$core.override
  PredefinedBytesRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedBytesRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedBytesRuleEdition2023>(create);
  static PredefinedBytesRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedEnumRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedEnumRuleEdition2023({
    PredefinedEnumRuleEdition2023_EnumEdition2023? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedEnumRuleEdition2023._();

  factory PredefinedEnumRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedEnumRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedEnumRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<PredefinedEnumRuleEdition2023_EnumEdition2023>(
        1, _omitFieldNames ? '' : 'val',
        enumValues: PredefinedEnumRuleEdition2023_EnumEdition2023.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedEnumRuleEdition2023 copyWith(
          void Function(PredefinedEnumRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedEnumRuleEdition2023))
          as PredefinedEnumRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleEdition2023 create() =>
      PredefinedEnumRuleEdition2023._();
  @$core.override
  PredefinedEnumRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedEnumRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedEnumRuleEdition2023>(create);
  static PredefinedEnumRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  PredefinedEnumRuleEdition2023_EnumEdition2023 get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(PredefinedEnumRuleEdition2023_EnumEdition2023 value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class PredefinedRepeatedRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedRepeatedRuleEdition2023({
    $core.Iterable<$fixnum.Int64>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedRuleEdition2023._();

  factory PredefinedRepeatedRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedRuleEdition2023))
          as PredefinedRepeatedRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleEdition2023 create() =>
      PredefinedRepeatedRuleEdition2023._();
  @$core.override
  PredefinedRepeatedRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedRepeatedRuleEdition2023>(
          create);
  static PredefinedRepeatedRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get val => $_getList(0);
}

class PredefinedMapRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedMapRuleEdition2023({
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $fixnum.Int64>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  PredefinedMapRuleEdition2023._();

  factory PredefinedMapRuleEdition2023.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedMapRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedMapRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$fixnum.Int64, $fixnum.Int64>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'PredefinedMapRuleEdition2023.ValEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OU6,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedMapRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedMapRuleEdition2023 copyWith(
          void Function(PredefinedMapRuleEdition2023) updates) =>
      super.copyWith(
              (message) => updates(message as PredefinedMapRuleEdition2023))
          as PredefinedMapRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedMapRuleEdition2023 create() =>
      PredefinedMapRuleEdition2023._();
  @$core.override
  PredefinedMapRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedMapRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedMapRuleEdition2023>(create);
  static PredefinedMapRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$fixnum.Int64, $fixnum.Int64> get val => $_getMap(0);
}

class PredefinedDurationRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedDurationRuleEdition2023({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedDurationRuleEdition2023._();

  factory PredefinedDurationRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedDurationRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedDurationRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedDurationRuleEdition2023 copyWith(
          void Function(PredefinedDurationRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedDurationRuleEdition2023))
          as PredefinedDurationRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleEdition2023 create() =>
      PredefinedDurationRuleEdition2023._();
  @$core.override
  PredefinedDurationRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedDurationRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedDurationRuleEdition2023>(
          create);
  static PredefinedDurationRuleEdition2023? _defaultInstance;

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

class PredefinedTimestampRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedTimestampRuleEdition2023({
    $1.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedTimestampRuleEdition2023._();

  factory PredefinedTimestampRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedTimestampRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedTimestampRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedTimestampRuleEdition2023 copyWith(
          void Function(PredefinedTimestampRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedTimestampRuleEdition2023))
          as PredefinedTimestampRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleEdition2023 create() =>
      PredefinedTimestampRuleEdition2023._();
  @$core.override
  PredefinedTimestampRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedTimestampRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedTimestampRuleEdition2023>(
          create);
  static PredefinedTimestampRuleEdition2023? _defaultInstance;

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

class PredefinedWrappedFloatRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedFloatRuleEdition2023({
    $2.FloatValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedFloatRuleEdition2023._();

  factory PredefinedWrappedFloatRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedFloatRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedFloatRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedFloatRuleEdition2023 copyWith(
          void Function(PredefinedWrappedFloatRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedFloatRuleEdition2023))
          as PredefinedWrappedFloatRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleEdition2023 create() =>
      PredefinedWrappedFloatRuleEdition2023._();
  @$core.override
  PredefinedWrappedFloatRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedFloatRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedFloatRuleEdition2023>(create);
  static PredefinedWrappedFloatRuleEdition2023? _defaultInstance;

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

class PredefinedWrappedDoubleRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedDoubleRuleEdition2023({
    $2.DoubleValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedDoubleRuleEdition2023._();

  factory PredefinedWrappedDoubleRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedDoubleRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedDoubleRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedDoubleRuleEdition2023 copyWith(
          void Function(PredefinedWrappedDoubleRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedDoubleRuleEdition2023))
          as PredefinedWrappedDoubleRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleEdition2023 create() =>
      PredefinedWrappedDoubleRuleEdition2023._();
  @$core.override
  PredefinedWrappedDoubleRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedDoubleRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedDoubleRuleEdition2023>(create);
  static PredefinedWrappedDoubleRuleEdition2023? _defaultInstance;

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

class PredefinedWrappedInt32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt32RuleEdition2023({
    $2.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt32RuleEdition2023._();

  factory PredefinedWrappedInt32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt32RuleEdition2023 copyWith(
          void Function(PredefinedWrappedInt32RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedInt32RuleEdition2023))
          as PredefinedWrappedInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleEdition2023 create() =>
      PredefinedWrappedInt32RuleEdition2023._();
  @$core.override
  PredefinedWrappedInt32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt32RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedInt32RuleEdition2023>(create);
  static PredefinedWrappedInt32RuleEdition2023? _defaultInstance;

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

class PredefinedWrappedInt64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedInt64RuleEdition2023({
    $2.Int64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedInt64RuleEdition2023._();

  factory PredefinedWrappedInt64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedInt64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedInt64RuleEdition2023 copyWith(
          void Function(PredefinedWrappedInt64RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedInt64RuleEdition2023))
          as PredefinedWrappedInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleEdition2023 create() =>
      PredefinedWrappedInt64RuleEdition2023._();
  @$core.override
  PredefinedWrappedInt64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedInt64RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedInt64RuleEdition2023>(create);
  static PredefinedWrappedInt64RuleEdition2023? _defaultInstance;

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

class PredefinedWrappedUInt32RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt32RuleEdition2023({
    $2.UInt32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt32RuleEdition2023._();

  factory PredefinedWrappedUInt32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt32RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt32RuleEdition2023 copyWith(
          void Function(PredefinedWrappedUInt32RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt32RuleEdition2023))
          as PredefinedWrappedUInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleEdition2023 create() =>
      PredefinedWrappedUInt32RuleEdition2023._();
  @$core.override
  PredefinedWrappedUInt32RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt32RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedUInt32RuleEdition2023>(create);
  static PredefinedWrappedUInt32RuleEdition2023? _defaultInstance;

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

class PredefinedWrappedUInt64RuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedUInt64RuleEdition2023({
    $2.UInt64Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedUInt64RuleEdition2023._();

  factory PredefinedWrappedUInt64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedUInt64RuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedUInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedUInt64RuleEdition2023 copyWith(
          void Function(PredefinedWrappedUInt64RuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedUInt64RuleEdition2023))
          as PredefinedWrappedUInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleEdition2023 create() =>
      PredefinedWrappedUInt64RuleEdition2023._();
  @$core.override
  PredefinedWrappedUInt64RuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedUInt64RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedUInt64RuleEdition2023>(create);
  static PredefinedWrappedUInt64RuleEdition2023? _defaultInstance;

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

class PredefinedWrappedBoolRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBoolRuleEdition2023({
    $2.BoolValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBoolRuleEdition2023._();

  factory PredefinedWrappedBoolRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBoolRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBoolRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBoolRuleEdition2023 copyWith(
          void Function(PredefinedWrappedBoolRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedBoolRuleEdition2023))
          as PredefinedWrappedBoolRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleEdition2023 create() =>
      PredefinedWrappedBoolRuleEdition2023._();
  @$core.override
  PredefinedWrappedBoolRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBoolRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedBoolRuleEdition2023>(create);
  static PredefinedWrappedBoolRuleEdition2023? _defaultInstance;

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

class PredefinedWrappedStringRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedStringRuleEdition2023({
    $2.StringValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedStringRuleEdition2023._();

  factory PredefinedWrappedStringRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedStringRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedStringRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedStringRuleEdition2023 copyWith(
          void Function(PredefinedWrappedStringRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedStringRuleEdition2023))
          as PredefinedWrappedStringRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleEdition2023 create() =>
      PredefinedWrappedStringRuleEdition2023._();
  @$core.override
  PredefinedWrappedStringRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedStringRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedStringRuleEdition2023>(create);
  static PredefinedWrappedStringRuleEdition2023? _defaultInstance;

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

class PredefinedWrappedBytesRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedWrappedBytesRuleEdition2023({
    $2.BytesValue? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  PredefinedWrappedBytesRuleEdition2023._();

  factory PredefinedWrappedBytesRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedWrappedBytesRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedWrappedBytesRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedWrappedBytesRuleEdition2023 copyWith(
          void Function(PredefinedWrappedBytesRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedWrappedBytesRuleEdition2023))
          as PredefinedWrappedBytesRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleEdition2023 create() =>
      PredefinedWrappedBytesRuleEdition2023._();
  @$core.override
  PredefinedWrappedBytesRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedWrappedBytesRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedWrappedBytesRuleEdition2023>(create);
  static PredefinedWrappedBytesRuleEdition2023? _defaultInstance;

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

class PredefinedRepeatedWrappedFloatRuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedFloatRuleEdition2023({
    $core.Iterable<$2.FloatValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedFloatRuleEdition2023._();

  factory PredefinedRepeatedWrappedFloatRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedFloatRuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedFloatRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.FloatValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.FloatValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedFloatRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedFloatRuleEdition2023)
              updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedFloatRuleEdition2023))
          as PredefinedRepeatedWrappedFloatRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleEdition2023 create() =>
      PredefinedRepeatedWrappedFloatRuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedFloatRuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedFloatRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedFloatRuleEdition2023>(create);
  static PredefinedRepeatedWrappedFloatRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.FloatValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedDoubleRuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedDoubleRuleEdition2023({
    $core.Iterable<$2.DoubleValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedDoubleRuleEdition2023._();

  factory PredefinedRepeatedWrappedDoubleRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedDoubleRuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedDoubleRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.DoubleValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.DoubleValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedDoubleRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedDoubleRuleEdition2023)
              updates) =>
      super.copyWith((message) => updates(
              message as PredefinedRepeatedWrappedDoubleRuleEdition2023))
          as PredefinedRepeatedWrappedDoubleRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleEdition2023 create() =>
      PredefinedRepeatedWrappedDoubleRuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedDoubleRuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedDoubleRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedDoubleRuleEdition2023>(create);
  static PredefinedRepeatedWrappedDoubleRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.DoubleValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt32RuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt32RuleEdition2023({
    $core.Iterable<$2.Int32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt32RuleEdition2023._();

  factory PredefinedRepeatedWrappedInt32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt32RuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt32RuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedInt32RuleEdition2023)
              updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt32RuleEdition2023))
          as PredefinedRepeatedWrappedInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleEdition2023 create() =>
      PredefinedRepeatedWrappedInt32RuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedInt32RuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt32RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt32RuleEdition2023>(create);
  static PredefinedRepeatedWrappedInt32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedInt64RuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedInt64RuleEdition2023({
    $core.Iterable<$2.Int64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedInt64RuleEdition2023._();

  factory PredefinedRepeatedWrappedInt64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedInt64RuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Int64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedInt64RuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedInt64RuleEdition2023)
              updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedInt64RuleEdition2023))
          as PredefinedRepeatedWrappedInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleEdition2023 create() =>
      PredefinedRepeatedWrappedInt64RuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedInt64RuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedInt64RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedInt64RuleEdition2023>(create);
  static PredefinedRepeatedWrappedInt64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Int64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt32RuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt32RuleEdition2023({
    $core.Iterable<$2.UInt32Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt32RuleEdition2023._();

  factory PredefinedRepeatedWrappedUInt32RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt32RuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt32RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt32RuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedUInt32RuleEdition2023)
              updates) =>
      super.copyWith((message) => updates(
              message as PredefinedRepeatedWrappedUInt32RuleEdition2023))
          as PredefinedRepeatedWrappedUInt32RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleEdition2023 create() =>
      PredefinedRepeatedWrappedUInt32RuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedUInt32RuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt32RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt32RuleEdition2023>(create);
  static PredefinedRepeatedWrappedUInt32RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt32Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedUInt64RuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedUInt64RuleEdition2023({
    $core.Iterable<$2.UInt64Value>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedUInt64RuleEdition2023._();

  factory PredefinedRepeatedWrappedUInt64RuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedUInt64RuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedUInt64RuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.UInt64Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.UInt64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedUInt64RuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedUInt64RuleEdition2023)
              updates) =>
      super.copyWith((message) => updates(
              message as PredefinedRepeatedWrappedUInt64RuleEdition2023))
          as PredefinedRepeatedWrappedUInt64RuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleEdition2023 create() =>
      PredefinedRepeatedWrappedUInt64RuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedUInt64RuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedUInt64RuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedUInt64RuleEdition2023>(create);
  static PredefinedRepeatedWrappedUInt64RuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UInt64Value> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBoolRuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBoolRuleEdition2023({
    $core.Iterable<$2.BoolValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBoolRuleEdition2023._();

  factory PredefinedRepeatedWrappedBoolRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBoolRuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBoolRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BoolValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BoolValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBoolRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedBoolRuleEdition2023)
              updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBoolRuleEdition2023))
          as PredefinedRepeatedWrappedBoolRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleEdition2023 create() =>
      PredefinedRepeatedWrappedBoolRuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedBoolRuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBoolRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBoolRuleEdition2023>(create);
  static PredefinedRepeatedWrappedBoolRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BoolValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedStringRuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedStringRuleEdition2023({
    $core.Iterable<$2.StringValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedStringRuleEdition2023._();

  factory PredefinedRepeatedWrappedStringRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedStringRuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedStringRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.StringValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.StringValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedStringRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedStringRuleEdition2023)
              updates) =>
      super.copyWith((message) => updates(
              message as PredefinedRepeatedWrappedStringRuleEdition2023))
          as PredefinedRepeatedWrappedStringRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleEdition2023 create() =>
      PredefinedRepeatedWrappedStringRuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedStringRuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedStringRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedStringRuleEdition2023>(create);
  static PredefinedRepeatedWrappedStringRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.StringValue> get val => $_getList(0);
}

class PredefinedRepeatedWrappedBytesRuleEdition2023
    extends $pb.GeneratedMessage {
  factory PredefinedRepeatedWrappedBytesRuleEdition2023({
    $core.Iterable<$2.BytesValue>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  PredefinedRepeatedWrappedBytesRuleEdition2023._();

  factory PredefinedRepeatedWrappedBytesRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRepeatedWrappedBytesRuleEdition2023.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRepeatedWrappedBytesRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.BytesValue>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.BytesValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRepeatedWrappedBytesRuleEdition2023 copyWith(
          void Function(PredefinedRepeatedWrappedBytesRuleEdition2023)
              updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedRepeatedWrappedBytesRuleEdition2023))
          as PredefinedRepeatedWrappedBytesRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleEdition2023 create() =>
      PredefinedRepeatedWrappedBytesRuleEdition2023._();
  @$core.override
  PredefinedRepeatedWrappedBytesRuleEdition2023 createEmptyInstance() =>
      create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRepeatedWrappedBytesRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedRepeatedWrappedBytesRuleEdition2023>(create);
  static PredefinedRepeatedWrappedBytesRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.BytesValue> get val => $_getList(0);
}

class PredefinedAndCustomRuleEdition2023_Nested extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleEdition2023_Nested({
    $core.int? c,
  }) {
    final result = create();
    if (c != null) result.c = c;
    return result;
  }

  PredefinedAndCustomRuleEdition2023_Nested._();

  factory PredefinedAndCustomRuleEdition2023_Nested.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleEdition2023_Nested.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleEdition2023.Nested',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'c', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleEdition2023_Nested clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleEdition2023_Nested copyWith(
          void Function(PredefinedAndCustomRuleEdition2023_Nested) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedAndCustomRuleEdition2023_Nested))
          as PredefinedAndCustomRuleEdition2023_Nested;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleEdition2023_Nested create() =>
      PredefinedAndCustomRuleEdition2023_Nested._();
  @$core.override
  PredefinedAndCustomRuleEdition2023_Nested createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleEdition2023_Nested getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PredefinedAndCustomRuleEdition2023_Nested>(create);
  static PredefinedAndCustomRuleEdition2023_Nested? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get c => $_getIZ(0);
  @$pb.TagNumber(1)
  set c($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasC() => $_has(0);
  @$pb.TagNumber(1)
  void clearC() => $_clearField(1);
}

class PredefinedAndCustomRuleEdition2023 extends $pb.GeneratedMessage {
  factory PredefinedAndCustomRuleEdition2023({
    $core.int? a,
    PredefinedAndCustomRuleEdition2023_Nested? b,
  }) {
    final result = create();
    if (a != null) result.a = a;
    if (b != null) result.b = b;
    return result;
  }

  PredefinedAndCustomRuleEdition2023._();

  factory PredefinedAndCustomRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedAndCustomRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedAndCustomRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..aOM<PredefinedAndCustomRuleEdition2023_Nested>(
        2, _omitFieldNames ? '' : 'b',
        subBuilder: PredefinedAndCustomRuleEdition2023_Nested.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedAndCustomRuleEdition2023 copyWith(
          void Function(PredefinedAndCustomRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as PredefinedAndCustomRuleEdition2023))
          as PredefinedAndCustomRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleEdition2023 create() =>
      PredefinedAndCustomRuleEdition2023._();
  @$core.override
  PredefinedAndCustomRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedAndCustomRuleEdition2023 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedAndCustomRuleEdition2023>(
          create);
  static PredefinedAndCustomRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);

  @$pb.TagNumber(2)
  PredefinedAndCustomRuleEdition2023_Nested get b => $_getN(1);
  @$pb.TagNumber(2)
  set b(PredefinedAndCustomRuleEdition2023_Nested value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => $_clearField(2);
  @$pb.TagNumber(2)
  PredefinedAndCustomRuleEdition2023_Nested ensureB() => $_ensure(1);
}

class StandardPredefinedAndCustomRuleEdition2023 extends $pb.GeneratedMessage {
  factory StandardPredefinedAndCustomRuleEdition2023({
    $core.int? a,
  }) {
    final result = create();
    if (a != null) result.a = a;
    return result;
  }

  StandardPredefinedAndCustomRuleEdition2023._();

  factory StandardPredefinedAndCustomRuleEdition2023.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StandardPredefinedAndCustomRuleEdition2023.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StandardPredefinedAndCustomRuleEdition2023',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'a', fieldType: $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleEdition2023 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StandardPredefinedAndCustomRuleEdition2023 copyWith(
          void Function(StandardPredefinedAndCustomRuleEdition2023) updates) =>
      super.copyWith((message) =>
              updates(message as StandardPredefinedAndCustomRuleEdition2023))
          as StandardPredefinedAndCustomRuleEdition2023;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleEdition2023 create() =>
      StandardPredefinedAndCustomRuleEdition2023._();
  @$core.override
  StandardPredefinedAndCustomRuleEdition2023 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StandardPredefinedAndCustomRuleEdition2023 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StandardPredefinedAndCustomRuleEdition2023>(create);
  static StandardPredefinedAndCustomRuleEdition2023? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => $_clearField(1);
}

class Predefined_rules_proto_editions {
  static final floatAbsRangeEdition2023 = $pb.Extension<$core.double>(
      _omitMessageNames ? '' : 'buf.validate.FloatRules',
      _omitFieldNames ? '' : 'floatAbsRangeEdition2023',
      1162,
      $pb.PbFieldType.OF,
      protoName: 'float_abs_range_edition_2023');
  static final doubleAbsRangeEdition2023 = $pb.Extension<$core.double>(
      _omitMessageNames ? '' : 'buf.validate.DoubleRules',
      _omitFieldNames ? '' : 'doubleAbsRangeEdition2023',
      1162,
      $pb.PbFieldType.OD,
      protoName: 'double_abs_range_edition_2023');
  static final int32AbsInEdition2023 = $pb.Extension<$core.int>.repeated(
      _omitMessageNames ? '' : 'buf.validate.Int32Rules',
      _omitFieldNames ? '' : 'int32AbsInEdition2023',
      1162,
      $pb.PbFieldType.K3,
      protoName: 'int32_abs_in_edition_2023',
      check: $pb.getCheckFunction($pb.PbFieldType.K3));
  static final int64AbsInEdition2023 = $pb.Extension<$2.Int64Value>.repeated(
      _omitMessageNames ? '' : 'buf.validate.Int64Rules',
      _omitFieldNames ? '' : 'int64AbsInEdition2023',
      1162,
      $pb.PbFieldType.PM,
      protoName: 'int64_abs_in_edition_2023',
      check: $pb.getCheckFunction($pb.PbFieldType.PM),
      subBuilder: $2.Int64Value.create);
  static final uint32EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.UInt32Rules',
      _omitFieldNames ? '' : 'uint32EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'uint32_even_edition_2023');
  static final uint64EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.UInt64Rules',
      _omitFieldNames ? '' : 'uint64EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'uint64_even_edition_2023');
  static final sint32EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SInt32Rules',
      _omitFieldNames ? '' : 'sint32EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'sint32_even_edition_2023');
  static final sint64EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SInt64Rules',
      _omitFieldNames ? '' : 'sint64EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'sint64_even_edition_2023');
  static final fixed32EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.Fixed32Rules',
      _omitFieldNames ? '' : 'fixed32EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'fixed32_even_edition_2023');
  static final fixed64EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.Fixed64Rules',
      _omitFieldNames ? '' : 'fixed64EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'fixed64_even_edition_2023');
  static final sfixed32EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SFixed32Rules',
      _omitFieldNames ? '' : 'sfixed32EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'sfixed32_even_edition_2023');
  static final sfixed64EvenEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.SFixed64Rules',
      _omitFieldNames ? '' : 'sfixed64EvenEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'sfixed64_even_edition_2023');
  static final boolFalseEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.BoolRules',
      _omitFieldNames ? '' : 'boolFalseEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'bool_false_edition_2023');
  static final stringValidPathEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.StringRules',
      _omitFieldNames ? '' : 'stringValidPathEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'string_valid_path_edition_2023');
  static final bytesValidPathEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.BytesRules',
      _omitFieldNames ? '' : 'bytesValidPathEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'bytes_valid_path_edition_2023');
  static final enumNonZeroEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.EnumRules',
      _omitFieldNames ? '' : 'enumNonZeroEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'enum_non_zero_edition_2023');
  static final repeatedAtLeastFiveEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.RepeatedRules',
      _omitFieldNames ? '' : 'repeatedAtLeastFiveEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'repeated_at_least_five_edition_2023');
  static final mapAtLeastFiveEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.MapRules',
      _omitFieldNames ? '' : 'mapAtLeastFiveEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'map_at_least_five_edition_2023');
  static final durationTooLongEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.DurationRules',
      _omitFieldNames ? '' : 'durationTooLongEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'duration_too_long_edition_2023');
  static final timestampInRangeEdition2023 = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'buf.validate.TimestampRules',
      _omitFieldNames ? '' : 'timestampInRangeEdition2023',
      1162,
      $pb.PbFieldType.OB,
      protoName: 'timestamp_in_range_edition_2023');
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(floatAbsRangeEdition2023);
    registry.add(doubleAbsRangeEdition2023);
    registry.add(int32AbsInEdition2023);
    registry.add(int64AbsInEdition2023);
    registry.add(uint32EvenEdition2023);
    registry.add(uint64EvenEdition2023);
    registry.add(sint32EvenEdition2023);
    registry.add(sint64EvenEdition2023);
    registry.add(fixed32EvenEdition2023);
    registry.add(fixed64EvenEdition2023);
    registry.add(sfixed32EvenEdition2023);
    registry.add(sfixed64EvenEdition2023);
    registry.add(boolFalseEdition2023);
    registry.add(stringValidPathEdition2023);
    registry.add(bytesValidPathEdition2023);
    registry.add(enumNonZeroEdition2023);
    registry.add(repeatedAtLeastFiveEdition2023);
    registry.add(mapAtLeastFiveEdition2023);
    registry.add(durationTooLongEdition2023);
    registry.add(timestampInRangeEdition2023);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
