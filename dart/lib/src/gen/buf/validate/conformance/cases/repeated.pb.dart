// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/repeated.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $1;
import '../../../../google/protobuf/duration.pb.dart' as $2;
import 'other_package/embed.pb.dart' as $0;
import 'repeated.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'repeated.pbenum.dart';

class Embed extends $pb.GeneratedMessage {
  factory Embed({
    $fixnum.Int64? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  Embed._();

  factory Embed.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Embed.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Embed',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Embed clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Embed copyWith(void Function(Embed) updates) =>
      super.copyWith((message) => updates(message as Embed)) as Embed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Embed create() => Embed._();
  @$core.override
  Embed createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Embed getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Embed>(create);
  static Embed? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RepeatedNone extends $pb.GeneratedMessage {
  factory RepeatedNone({
    $core.Iterable<$fixnum.Int64>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedNone._();

  factory RepeatedNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedNone copyWith(void Function(RepeatedNone) updates) =>
      super.copyWith((message) => updates(message as RepeatedNone))
          as RepeatedNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedNone create() => RepeatedNone._();
  @$core.override
  RepeatedNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedNone>(create);
  static RepeatedNone? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get val => $_getList(0);
}

class RepeatedEmbedNone extends $pb.GeneratedMessage {
  factory RepeatedEmbedNone({
    $core.Iterable<Embed>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEmbedNone._();

  factory RepeatedEmbedNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEmbedNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEmbedNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<Embed>(1, _omitFieldNames ? '' : 'val', subBuilder: Embed.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedNone copyWith(void Function(RepeatedEmbedNone) updates) =>
      super.copyWith((message) => updates(message as RepeatedEmbedNone))
          as RepeatedEmbedNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedNone create() => RepeatedEmbedNone._();
  @$core.override
  RepeatedEmbedNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEmbedNone>(create);
  static RepeatedEmbedNone? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Embed> get val => $_getList(0);
}

class RepeatedEmbedCrossPackageNone extends $pb.GeneratedMessage {
  factory RepeatedEmbedCrossPackageNone({
    $core.Iterable<$0.Embed>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEmbedCrossPackageNone._();

  factory RepeatedEmbedCrossPackageNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEmbedCrossPackageNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEmbedCrossPackageNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$0.Embed>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Embed.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedCrossPackageNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedCrossPackageNone copyWith(
          void Function(RepeatedEmbedCrossPackageNone) updates) =>
      super.copyWith(
              (message) => updates(message as RepeatedEmbedCrossPackageNone))
          as RepeatedEmbedCrossPackageNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedCrossPackageNone create() =>
      RepeatedEmbedCrossPackageNone._();
  @$core.override
  RepeatedEmbedCrossPackageNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedCrossPackageNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEmbedCrossPackageNone>(create);
  static RepeatedEmbedCrossPackageNone? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Embed> get val => $_getList(0);
}

class RepeatedMin extends $pb.GeneratedMessage {
  factory RepeatedMin({
    $core.Iterable<Embed>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedMin._();

  factory RepeatedMin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMin',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<Embed>(1, _omitFieldNames ? '' : 'val', subBuilder: Embed.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMin copyWith(void Function(RepeatedMin) updates) =>
      super.copyWith((message) => updates(message as RepeatedMin))
          as RepeatedMin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMin create() => RepeatedMin._();
  @$core.override
  RepeatedMin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMin>(create);
  static RepeatedMin? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Embed> get val => $_getList(0);
}

class RepeatedMax extends $pb.GeneratedMessage {
  factory RepeatedMax({
    $core.Iterable<$core.double>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedMax._();

  factory RepeatedMax.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMax.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMax',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMax clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMax copyWith(void Function(RepeatedMax) updates) =>
      super.copyWith((message) => updates(message as RepeatedMax))
          as RepeatedMax;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMax create() => RepeatedMax._();
  @$core.override
  RepeatedMax createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMax getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMax>(create);
  static RepeatedMax? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get val => $_getList(0);
}

class RepeatedMinMax extends $pb.GeneratedMessage {
  factory RepeatedMinMax({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedMinMax._();

  factory RepeatedMinMax.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMinMax.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMinMax',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KSF3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinMax clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinMax copyWith(void Function(RepeatedMinMax) updates) =>
      super.copyWith((message) => updates(message as RepeatedMinMax))
          as RepeatedMinMax;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMinMax create() => RepeatedMinMax._();
  @$core.override
  RepeatedMinMax createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMinMax getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMinMax>(create);
  static RepeatedMinMax? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class RepeatedExact extends $pb.GeneratedMessage {
  factory RepeatedExact({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedExact._();

  factory RepeatedExact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedExact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedExact',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExact copyWith(void Function(RepeatedExact) updates) =>
      super.copyWith((message) => updates(message as RepeatedExact))
          as RepeatedExact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedExact create() => RepeatedExact._();
  @$core.override
  RepeatedExact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedExact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedExact>(create);
  static RepeatedExact? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

class RepeatedUnique extends $pb.GeneratedMessage {
  factory RepeatedUnique({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedUnique._();

  factory RepeatedUnique.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedUnique.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedUnique',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedUnique clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedUnique copyWith(void Function(RepeatedUnique) updates) =>
      super.copyWith((message) => updates(message as RepeatedUnique))
          as RepeatedUnique;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedUnique create() => RepeatedUnique._();
  @$core.override
  RepeatedUnique createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedUnique getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedUnique>(create);
  static RepeatedUnique? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedNotUnique extends $pb.GeneratedMessage {
  factory RepeatedNotUnique({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedNotUnique._();

  factory RepeatedNotUnique.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedNotUnique.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedNotUnique',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedNotUnique clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedNotUnique copyWith(void Function(RepeatedNotUnique) updates) =>
      super.copyWith((message) => updates(message as RepeatedNotUnique))
          as RepeatedNotUnique;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedNotUnique create() => RepeatedNotUnique._();
  @$core.override
  RepeatedNotUnique createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedNotUnique getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedNotUnique>(create);
  static RepeatedNotUnique? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedMultipleUnique extends $pb.GeneratedMessage {
  factory RepeatedMultipleUnique({
    $core.Iterable<$core.String>? a,
    $core.Iterable<$core.int>? b,
  }) {
    final result = create();
    if (a != null) result.a.addAll(a);
    if (b != null) result.b.addAll(b);
    return result;
  }

  RepeatedMultipleUnique._();

  factory RepeatedMultipleUnique.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMultipleUnique.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMultipleUnique',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'a')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMultipleUnique clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMultipleUnique copyWith(
          void Function(RepeatedMultipleUnique) updates) =>
      super.copyWith((message) => updates(message as RepeatedMultipleUnique))
          as RepeatedMultipleUnique;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMultipleUnique create() => RepeatedMultipleUnique._();
  @$core.override
  RepeatedMultipleUnique createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMultipleUnique getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMultipleUnique>(create);
  static RepeatedMultipleUnique? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get a => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get b => $_getList(1);
}

class RepeatedItemRule extends $pb.GeneratedMessage {
  factory RepeatedItemRule({
    $core.Iterable<$core.double>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedItemRule._();

  factory RepeatedItemRule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedItemRule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedItemRule',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemRule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemRule copyWith(void Function(RepeatedItemRule) updates) =>
      super.copyWith((message) => updates(message as RepeatedItemRule))
          as RepeatedItemRule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedItemRule create() => RepeatedItemRule._();
  @$core.override
  RepeatedItemRule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedItemRule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedItemRule>(create);
  static RepeatedItemRule? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get val => $_getList(0);
}

class RepeatedItemPattern extends $pb.GeneratedMessage {
  factory RepeatedItemPattern({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedItemPattern._();

  factory RepeatedItemPattern.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedItemPattern.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedItemPattern',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemPattern clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemPattern copyWith(void Function(RepeatedItemPattern) updates) =>
      super.copyWith((message) => updates(message as RepeatedItemPattern))
          as RepeatedItemPattern;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedItemPattern create() => RepeatedItemPattern._();
  @$core.override
  RepeatedItemPattern createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedItemPattern getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedItemPattern>(create);
  static RepeatedItemPattern? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedEmbedSkip extends $pb.GeneratedMessage {
  factory RepeatedEmbedSkip({
    $core.Iterable<Embed>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEmbedSkip._();

  factory RepeatedEmbedSkip.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEmbedSkip.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEmbedSkip',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<Embed>(1, _omitFieldNames ? '' : 'val', subBuilder: Embed.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedSkip clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbedSkip copyWith(void Function(RepeatedEmbedSkip) updates) =>
      super.copyWith((message) => updates(message as RepeatedEmbedSkip))
          as RepeatedEmbedSkip;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedSkip create() => RepeatedEmbedSkip._();
  @$core.override
  RepeatedEmbedSkip createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEmbedSkip getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEmbedSkip>(create);
  static RepeatedEmbedSkip? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Embed> get val => $_getList(0);
}

class RepeatedItemIn extends $pb.GeneratedMessage {
  factory RepeatedItemIn({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedItemIn._();

  factory RepeatedItemIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedItemIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedItemIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemIn copyWith(void Function(RepeatedItemIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedItemIn))
          as RepeatedItemIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedItemIn create() => RepeatedItemIn._();
  @$core.override
  RepeatedItemIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedItemIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedItemIn>(create);
  static RepeatedItemIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedItemNotIn extends $pb.GeneratedMessage {
  factory RepeatedItemNotIn({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedItemNotIn._();

  factory RepeatedItemNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedItemNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedItemNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedItemNotIn copyWith(void Function(RepeatedItemNotIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedItemNotIn))
          as RepeatedItemNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedItemNotIn create() => RepeatedItemNotIn._();
  @$core.override
  RepeatedItemNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedItemNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedItemNotIn>(create);
  static RepeatedItemNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedEnumIn extends $pb.GeneratedMessage {
  factory RepeatedEnumIn({
    $core.Iterable<AnEnum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEnumIn._();

  factory RepeatedEnumIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEnumIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEnumIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<AnEnum>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: AnEnum.valueOf,
        enumValues: AnEnum.values,
        defaultEnumValue: AnEnum.AN_ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumIn copyWith(void Function(RepeatedEnumIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedEnumIn))
          as RepeatedEnumIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEnumIn create() => RepeatedEnumIn._();
  @$core.override
  RepeatedEnumIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEnumIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEnumIn>(create);
  static RepeatedEnumIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AnEnum> get val => $_getList(0);
}

class RepeatedEnumNotIn extends $pb.GeneratedMessage {
  factory RepeatedEnumNotIn({
    $core.Iterable<AnEnum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEnumNotIn._();

  factory RepeatedEnumNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEnumNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEnumNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<AnEnum>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: AnEnum.valueOf,
        enumValues: AnEnum.values,
        defaultEnumValue: AnEnum.AN_ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumNotIn copyWith(void Function(RepeatedEnumNotIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedEnumNotIn))
          as RepeatedEnumNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEnumNotIn create() => RepeatedEnumNotIn._();
  @$core.override
  RepeatedEnumNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEnumNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEnumNotIn>(create);
  static RepeatedEnumNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AnEnum> get val => $_getList(0);
}

class RepeatedEmbeddedEnumIn extends $pb.GeneratedMessage {
  factory RepeatedEmbeddedEnumIn({
    $core.Iterable<RepeatedEmbeddedEnumIn_AnotherInEnum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEmbeddedEnumIn._();

  factory RepeatedEmbeddedEnumIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEmbeddedEnumIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEmbeddedEnumIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<RepeatedEmbeddedEnumIn_AnotherInEnum>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: RepeatedEmbeddedEnumIn_AnotherInEnum.valueOf,
        enumValues: RepeatedEmbeddedEnumIn_AnotherInEnum.values,
        defaultEnumValue:
            RepeatedEmbeddedEnumIn_AnotherInEnum.ANOTHER_IN_ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbeddedEnumIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbeddedEnumIn copyWith(
          void Function(RepeatedEmbeddedEnumIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedEmbeddedEnumIn))
          as RepeatedEmbeddedEnumIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEmbeddedEnumIn create() => RepeatedEmbeddedEnumIn._();
  @$core.override
  RepeatedEmbeddedEnumIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEmbeddedEnumIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEmbeddedEnumIn>(create);
  static RepeatedEmbeddedEnumIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RepeatedEmbeddedEnumIn_AnotherInEnum> get val => $_getList(0);
}

class RepeatedEmbeddedEnumNotIn extends $pb.GeneratedMessage {
  factory RepeatedEmbeddedEnumNotIn({
    $core.Iterable<RepeatedEmbeddedEnumNotIn_AnotherNotInEnum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEmbeddedEnumNotIn._();

  factory RepeatedEmbeddedEnumNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEmbeddedEnumNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEmbeddedEnumNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<RepeatedEmbeddedEnumNotIn_AnotherNotInEnum>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: RepeatedEmbeddedEnumNotIn_AnotherNotInEnum.valueOf,
        enumValues: RepeatedEmbeddedEnumNotIn_AnotherNotInEnum.values,
        defaultEnumValue: RepeatedEmbeddedEnumNotIn_AnotherNotInEnum
            .ANOTHER_NOT_IN_ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbeddedEnumNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEmbeddedEnumNotIn copyWith(
          void Function(RepeatedEmbeddedEnumNotIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedEmbeddedEnumNotIn))
          as RepeatedEmbeddedEnumNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEmbeddedEnumNotIn create() => RepeatedEmbeddedEnumNotIn._();
  @$core.override
  RepeatedEmbeddedEnumNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEmbeddedEnumNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEmbeddedEnumNotIn>(create);
  static RepeatedEmbeddedEnumNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RepeatedEmbeddedEnumNotIn_AnotherNotInEnum> get val =>
      $_getList(0);
}

class RepeatedAnyIn extends $pb.GeneratedMessage {
  factory RepeatedAnyIn({
    $core.Iterable<$1.Any>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedAnyIn._();

  factory RepeatedAnyIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedAnyIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedAnyIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$1.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $1.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedAnyIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedAnyIn copyWith(void Function(RepeatedAnyIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedAnyIn))
          as RepeatedAnyIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedAnyIn create() => RepeatedAnyIn._();
  @$core.override
  RepeatedAnyIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedAnyIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedAnyIn>(create);
  static RepeatedAnyIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Any> get val => $_getList(0);
}

class RepeatedAnyNotIn extends $pb.GeneratedMessage {
  factory RepeatedAnyNotIn({
    $core.Iterable<$1.Any>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedAnyNotIn._();

  factory RepeatedAnyNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedAnyNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedAnyNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$1.Any>(1, _omitFieldNames ? '' : 'val', subBuilder: $1.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedAnyNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedAnyNotIn copyWith(void Function(RepeatedAnyNotIn) updates) =>
      super.copyWith((message) => updates(message as RepeatedAnyNotIn))
          as RepeatedAnyNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedAnyNotIn create() => RepeatedAnyNotIn._();
  @$core.override
  RepeatedAnyNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedAnyNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedAnyNotIn>(create);
  static RepeatedAnyNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Any> get val => $_getList(0);
}

class RepeatedMinAndItemLen extends $pb.GeneratedMessage {
  factory RepeatedMinAndItemLen({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedMinAndItemLen._();

  factory RepeatedMinAndItemLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMinAndItemLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMinAndItemLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinAndItemLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinAndItemLen copyWith(
          void Function(RepeatedMinAndItemLen) updates) =>
      super.copyWith((message) => updates(message as RepeatedMinAndItemLen))
          as RepeatedMinAndItemLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMinAndItemLen create() => RepeatedMinAndItemLen._();
  @$core.override
  RepeatedMinAndItemLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMinAndItemLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMinAndItemLen>(create);
  static RepeatedMinAndItemLen? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedMinAndMaxItemLen extends $pb.GeneratedMessage {
  factory RepeatedMinAndMaxItemLen({
    $core.Iterable<$core.String>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedMinAndMaxItemLen._();

  factory RepeatedMinAndMaxItemLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedMinAndMaxItemLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedMinAndMaxItemLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinAndMaxItemLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedMinAndMaxItemLen copyWith(
          void Function(RepeatedMinAndMaxItemLen) updates) =>
      super.copyWith((message) => updates(message as RepeatedMinAndMaxItemLen))
          as RepeatedMinAndMaxItemLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedMinAndMaxItemLen create() => RepeatedMinAndMaxItemLen._();
  @$core.override
  RepeatedMinAndMaxItemLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedMinAndMaxItemLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedMinAndMaxItemLen>(create);
  static RepeatedMinAndMaxItemLen? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get val => $_getList(0);
}

class RepeatedDuration extends $pb.GeneratedMessage {
  factory RepeatedDuration({
    $core.Iterable<$2.Duration>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedDuration._();

  factory RepeatedDuration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedDuration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedDuration',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pPM<$2.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedDuration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedDuration copyWith(void Function(RepeatedDuration) updates) =>
      super.copyWith((message) => updates(message as RepeatedDuration))
          as RepeatedDuration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedDuration create() => RepeatedDuration._();
  @$core.override
  RepeatedDuration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedDuration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedDuration>(create);
  static RepeatedDuration? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Duration> get val => $_getList(0);
}

class RepeatedExactIgnore extends $pb.GeneratedMessage {
  factory RepeatedExactIgnore({
    $core.Iterable<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedExactIgnore._();

  factory RepeatedExactIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedExactIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedExactIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExactIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExactIgnore copyWith(void Function(RepeatedExactIgnore) updates) =>
      super.copyWith((message) => updates(message as RepeatedExactIgnore))
          as RepeatedExactIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedExactIgnore create() => RepeatedExactIgnore._();
  @$core.override
  RepeatedExactIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedExactIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedExactIgnore>(create);
  static RepeatedExactIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get val => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
