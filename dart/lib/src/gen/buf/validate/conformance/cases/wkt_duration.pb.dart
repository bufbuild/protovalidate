// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_duration.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $0;
import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../../google/protobuf/wrappers.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DurationNone extends $pb.GeneratedMessage {
  factory DurationNone({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationNone._();

  factory DurationNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationNone copyWith(void Function(DurationNone) updates) =>
      super.copyWith((message) => updates(message as DurationNone))
          as DurationNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationNone create() => DurationNone._();
  @$core.override
  DurationNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationNone>(create);
  static DurationNone? _defaultInstance;

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

class DurationRequired extends $pb.GeneratedMessage {
  factory DurationRequired({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationRequired._();

  factory DurationRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationRequired copyWith(void Function(DurationRequired) updates) =>
      super.copyWith((message) => updates(message as DurationRequired))
          as DurationRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationRequired create() => DurationRequired._();
  @$core.override
  DurationRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationRequired>(create);
  static DurationRequired? _defaultInstance;

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

class DurationConst extends $pb.GeneratedMessage {
  factory DurationConst({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationConst._();

  factory DurationConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationConst copyWith(void Function(DurationConst) updates) =>
      super.copyWith((message) => updates(message as DurationConst))
          as DurationConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationConst create() => DurationConst._();
  @$core.override
  DurationConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationConst>(create);
  static DurationConst? _defaultInstance;

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

class DurationIn extends $pb.GeneratedMessage {
  factory DurationIn({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationIn._();

  factory DurationIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationIn copyWith(void Function(DurationIn) updates) =>
      super.copyWith((message) => updates(message as DurationIn)) as DurationIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationIn create() => DurationIn._();
  @$core.override
  DurationIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationIn>(create);
  static DurationIn? _defaultInstance;

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

class DurationNotIn extends $pb.GeneratedMessage {
  factory DurationNotIn({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationNotIn._();

  factory DurationNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationNotIn copyWith(void Function(DurationNotIn) updates) =>
      super.copyWith((message) => updates(message as DurationNotIn))
          as DurationNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationNotIn create() => DurationNotIn._();
  @$core.override
  DurationNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationNotIn>(create);
  static DurationNotIn? _defaultInstance;

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

class DurationLT extends $pb.GeneratedMessage {
  factory DurationLT({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationLT._();

  factory DurationLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationLT copyWith(void Function(DurationLT) updates) =>
      super.copyWith((message) => updates(message as DurationLT)) as DurationLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationLT create() => DurationLT._();
  @$core.override
  DurationLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationLT>(create);
  static DurationLT? _defaultInstance;

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

class DurationLTE extends $pb.GeneratedMessage {
  factory DurationLTE({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationLTE._();

  factory DurationLTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationLTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationLTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationLTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationLTE copyWith(void Function(DurationLTE) updates) =>
      super.copyWith((message) => updates(message as DurationLTE))
          as DurationLTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationLTE create() => DurationLTE._();
  @$core.override
  DurationLTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationLTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationLTE>(create);
  static DurationLTE? _defaultInstance;

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

class DurationGT extends $pb.GeneratedMessage {
  factory DurationGT({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationGT._();

  factory DurationGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGT copyWith(void Function(DurationGT) updates) =>
      super.copyWith((message) => updates(message as DurationGT)) as DurationGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationGT create() => DurationGT._();
  @$core.override
  DurationGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationGT>(create);
  static DurationGT? _defaultInstance;

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

class DurationGTE extends $pb.GeneratedMessage {
  factory DurationGTE({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationGTE._();

  factory DurationGTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationGTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationGTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTE copyWith(void Function(DurationGTE) updates) =>
      super.copyWith((message) => updates(message as DurationGTE))
          as DurationGTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationGTE create() => DurationGTE._();
  @$core.override
  DurationGTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationGTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationGTE>(create);
  static DurationGTE? _defaultInstance;

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

class DurationGTLT extends $pb.GeneratedMessage {
  factory DurationGTLT({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationGTLT._();

  factory DurationGTLT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationGTLT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationGTLT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTLT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTLT copyWith(void Function(DurationGTLT) updates) =>
      super.copyWith((message) => updates(message as DurationGTLT))
          as DurationGTLT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationGTLT create() => DurationGTLT._();
  @$core.override
  DurationGTLT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationGTLT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationGTLT>(create);
  static DurationGTLT? _defaultInstance;

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

class DurationExLTGT extends $pb.GeneratedMessage {
  factory DurationExLTGT({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationExLTGT._();

  factory DurationExLTGT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationExLTGT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationExLTGT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExLTGT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExLTGT copyWith(void Function(DurationExLTGT) updates) =>
      super.copyWith((message) => updates(message as DurationExLTGT))
          as DurationExLTGT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationExLTGT create() => DurationExLTGT._();
  @$core.override
  DurationExLTGT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationExLTGT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationExLTGT>(create);
  static DurationExLTGT? _defaultInstance;

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

class DurationGTELTE extends $pb.GeneratedMessage {
  factory DurationGTELTE({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationGTELTE._();

  factory DurationGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationGTELTE copyWith(void Function(DurationGTELTE) updates) =>
      super.copyWith((message) => updates(message as DurationGTELTE))
          as DurationGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationGTELTE create() => DurationGTELTE._();
  @$core.override
  DurationGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationGTELTE>(create);
  static DurationGTELTE? _defaultInstance;

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

class DurationExGTELTE extends $pb.GeneratedMessage {
  factory DurationExGTELTE({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationExGTELTE._();

  factory DurationExGTELTE.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationExGTELTE.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationExGTELTE',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExGTELTE clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExGTELTE copyWith(void Function(DurationExGTELTE) updates) =>
      super.copyWith((message) => updates(message as DurationExGTELTE))
          as DurationExGTELTE;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationExGTELTE create() => DurationExGTELTE._();
  @$core.override
  DurationExGTELTE createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationExGTELTE getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationExGTELTE>(create);
  static DurationExGTELTE? _defaultInstance;

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

/// Regression for earlier bug where missing Duration field would short circuit
/// evaluation in C++.
class DurationFieldWithOtherFields extends $pb.GeneratedMessage {
  factory DurationFieldWithOtherFields({
    $0.Duration? durationVal,
    $core.int? intVal,
  }) {
    final result = create();
    if (durationVal != null) result.durationVal = durationVal;
    if (intVal != null) result.intVal = intVal;
    return result;
  }

  DurationFieldWithOtherFields._();

  factory DurationFieldWithOtherFields.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationFieldWithOtherFields.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationFieldWithOtherFields',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'durationVal',
        subBuilder: $0.Duration.create)
    ..aI(2, _omitFieldNames ? '' : 'intVal')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationFieldWithOtherFields clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationFieldWithOtherFields copyWith(
          void Function(DurationFieldWithOtherFields) updates) =>
      super.copyWith(
              (message) => updates(message as DurationFieldWithOtherFields))
          as DurationFieldWithOtherFields;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationFieldWithOtherFields create() =>
      DurationFieldWithOtherFields._();
  @$core.override
  DurationFieldWithOtherFields createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationFieldWithOtherFields getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationFieldWithOtherFields>(create);
  static DurationFieldWithOtherFields? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Duration get durationVal => $_getN(0);
  @$pb.TagNumber(1)
  set durationVal($0.Duration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDurationVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearDurationVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Duration ensureDurationVal() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get intVal => $_getIZ(1);
  @$pb.TagNumber(2)
  set intVal($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntVal() => $_clearField(2);
}

class DurationExample extends $pb.GeneratedMessage {
  factory DurationExample({
    $0.Duration? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationExample._();

  factory DurationExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$0.Duration>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $0.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationExample copyWith(void Function(DurationExample) updates) =>
      super.copyWith((message) => updates(message as DurationExample))
          as DurationExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationExample create() => DurationExample._();
  @$core.override
  DurationExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationExample>(create);
  static DurationExample? _defaultInstance;

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

/// The below messages should throw compilation errors due to incorrect types.
class DurationWrongTypeScalar extends $pb.GeneratedMessage {
  factory DurationWrongTypeScalar({
    $core.int? seconds,
  }) {
    final result = create();
    if (seconds != null) result.seconds = seconds;
    return result;
  }

  DurationWrongTypeScalar._();

  factory DurationWrongTypeScalar.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationWrongTypeScalar.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationWrongTypeScalar',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'seconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeScalar clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeScalar copyWith(
          void Function(DurationWrongTypeScalar) updates) =>
      super.copyWith((message) => updates(message as DurationWrongTypeScalar))
          as DurationWrongTypeScalar;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeScalar create() => DurationWrongTypeScalar._();
  @$core.override
  DurationWrongTypeScalar createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeScalar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationWrongTypeScalar>(create);
  static DurationWrongTypeScalar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seconds => $_getIZ(0);
  @$pb.TagNumber(1)
  set seconds($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => $_clearField(1);
}

class DurationWrongTypeMessage_WrongType extends $pb.GeneratedMessage {
  factory DurationWrongTypeMessage_WrongType({
    $core.int? seconds,
  }) {
    final result = create();
    if (seconds != null) result.seconds = seconds;
    return result;
  }

  DurationWrongTypeMessage_WrongType._();

  factory DurationWrongTypeMessage_WrongType.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationWrongTypeMessage_WrongType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationWrongTypeMessage.WrongType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'seconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeMessage_WrongType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeMessage_WrongType copyWith(
          void Function(DurationWrongTypeMessage_WrongType) updates) =>
      super.copyWith((message) =>
              updates(message as DurationWrongTypeMessage_WrongType))
          as DurationWrongTypeMessage_WrongType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeMessage_WrongType create() =>
      DurationWrongTypeMessage_WrongType._();
  @$core.override
  DurationWrongTypeMessage_WrongType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeMessage_WrongType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationWrongTypeMessage_WrongType>(
          create);
  static DurationWrongTypeMessage_WrongType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seconds => $_getIZ(0);
  @$pb.TagNumber(1)
  set seconds($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => $_clearField(1);
}

class DurationWrongTypeMessage extends $pb.GeneratedMessage {
  factory DurationWrongTypeMessage({
    DurationWrongTypeMessage_WrongType? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationWrongTypeMessage._();

  factory DurationWrongTypeMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationWrongTypeMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationWrongTypeMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<DurationWrongTypeMessage_WrongType>(1, _omitFieldNames ? '' : 'val',
        subBuilder: DurationWrongTypeMessage_WrongType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeMessage copyWith(
          void Function(DurationWrongTypeMessage) updates) =>
      super.copyWith((message) => updates(message as DurationWrongTypeMessage))
          as DurationWrongTypeMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeMessage create() => DurationWrongTypeMessage._();
  @$core.override
  DurationWrongTypeMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationWrongTypeMessage>(create);
  static DurationWrongTypeMessage? _defaultInstance;

  @$pb.TagNumber(1)
  DurationWrongTypeMessage_WrongType get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(DurationWrongTypeMessage_WrongType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  DurationWrongTypeMessage_WrongType ensureVal() => $_ensure(0);
}

class DurationWrongTypeWrapper extends $pb.GeneratedMessage {
  factory DurationWrongTypeWrapper({
    $1.Int32Value? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationWrongTypeWrapper._();

  factory DurationWrongTypeWrapper.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationWrongTypeWrapper.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationWrongTypeWrapper',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$1.Int32Value>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $1.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeWrapper clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeWrapper copyWith(
          void Function(DurationWrongTypeWrapper) updates) =>
      super.copyWith((message) => updates(message as DurationWrongTypeWrapper))
          as DurationWrongTypeWrapper;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeWrapper create() => DurationWrongTypeWrapper._();
  @$core.override
  DurationWrongTypeWrapper createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeWrapper getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationWrongTypeWrapper>(create);
  static DurationWrongTypeWrapper? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Int32Value get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($1.Int32Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Int32Value ensureVal() => $_ensure(0);
}

class DurationWrongTypeWKT extends $pb.GeneratedMessage {
  factory DurationWrongTypeWKT({
    $2.Timestamp? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  DurationWrongTypeWKT._();

  factory DurationWrongTypeWKT.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationWrongTypeWKT.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationWrongTypeWKT',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, _omitFieldNames ? '' : 'val',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeWKT clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationWrongTypeWKT copyWith(void Function(DurationWrongTypeWKT) updates) =>
      super.copyWith((message) => updates(message as DurationWrongTypeWKT))
          as DurationWrongTypeWKT;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeWKT create() => DurationWrongTypeWKT._();
  @$core.override
  DurationWrongTypeWKT createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationWrongTypeWKT getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationWrongTypeWKT>(create);
  static DurationWrongTypeWKT? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($2.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureVal() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
