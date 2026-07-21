// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/bytes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BytesNone extends $pb.GeneratedMessage {
  factory BytesNone({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNone._();

  factory BytesNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNone copyWith(void Function(BytesNone) updates) =>
      super.copyWith((message) => updates(message as BytesNone)) as BytesNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNone create() => BytesNone._();
  @$core.override
  BytesNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesNone>(create);
  static BytesNone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesConst extends $pb.GeneratedMessage {
  factory BytesConst({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesConst._();

  factory BytesConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesConst copyWith(void Function(BytesConst) updates) =>
      super.copyWith((message) => updates(message as BytesConst)) as BytesConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesConst create() => BytesConst._();
  @$core.override
  BytesConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesConst>(create);
  static BytesConst? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesIn extends $pb.GeneratedMessage {
  factory BytesIn({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesIn._();

  factory BytesIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIn copyWith(void Function(BytesIn) updates) =>
      super.copyWith((message) => updates(message as BytesIn)) as BytesIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesIn create() => BytesIn._();
  @$core.override
  BytesIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesIn>(create);
  static BytesIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesNotIn extends $pb.GeneratedMessage {
  factory BytesNotIn({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNotIn._();

  factory BytesNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIn copyWith(void Function(BytesNotIn) updates) =>
      super.copyWith((message) => updates(message as BytesNotIn)) as BytesNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNotIn create() => BytesNotIn._();
  @$core.override
  BytesNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesNotIn>(create);
  static BytesNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesLen extends $pb.GeneratedMessage {
  factory BytesLen({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesLen._();

  factory BytesLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesLen copyWith(void Function(BytesLen) updates) =>
      super.copyWith((message) => updates(message as BytesLen)) as BytesLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesLen create() => BytesLen._();
  @$core.override
  BytesLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesLen getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesLen>(create);
  static BytesLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesMinLen extends $pb.GeneratedMessage {
  factory BytesMinLen({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesMinLen._();

  factory BytesMinLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesMinLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesMinLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMinLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMinLen copyWith(void Function(BytesMinLen) updates) =>
      super.copyWith((message) => updates(message as BytesMinLen))
          as BytesMinLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesMinLen create() => BytesMinLen._();
  @$core.override
  BytesMinLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesMinLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesMinLen>(create);
  static BytesMinLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesMaxLen extends $pb.GeneratedMessage {
  factory BytesMaxLen({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesMaxLen._();

  factory BytesMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMaxLen copyWith(void Function(BytesMaxLen) updates) =>
      super.copyWith((message) => updates(message as BytesMaxLen))
          as BytesMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesMaxLen create() => BytesMaxLen._();
  @$core.override
  BytesMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesMaxLen>(create);
  static BytesMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesMinMaxLen extends $pb.GeneratedMessage {
  factory BytesMinMaxLen({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesMinMaxLen._();

  factory BytesMinMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesMinMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesMinMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMinMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesMinMaxLen copyWith(void Function(BytesMinMaxLen) updates) =>
      super.copyWith((message) => updates(message as BytesMinMaxLen))
          as BytesMinMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesMinMaxLen create() => BytesMinMaxLen._();
  @$core.override
  BytesMinMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesMinMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesMinMaxLen>(create);
  static BytesMinMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesEqualMinMaxLen extends $pb.GeneratedMessage {
  factory BytesEqualMinMaxLen({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesEqualMinMaxLen._();

  factory BytesEqualMinMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesEqualMinMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesEqualMinMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesEqualMinMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesEqualMinMaxLen copyWith(void Function(BytesEqualMinMaxLen) updates) =>
      super.copyWith((message) => updates(message as BytesEqualMinMaxLen))
          as BytesEqualMinMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesEqualMinMaxLen create() => BytesEqualMinMaxLen._();
  @$core.override
  BytesEqualMinMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesEqualMinMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesEqualMinMaxLen>(create);
  static BytesEqualMinMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesPattern extends $pb.GeneratedMessage {
  factory BytesPattern({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesPattern._();

  factory BytesPattern.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesPattern.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesPattern',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesPattern clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesPattern copyWith(void Function(BytesPattern) updates) =>
      super.copyWith((message) => updates(message as BytesPattern))
          as BytesPattern;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesPattern create() => BytesPattern._();
  @$core.override
  BytesPattern createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesPattern getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesPattern>(create);
  static BytesPattern? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesPrefix extends $pb.GeneratedMessage {
  factory BytesPrefix({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesPrefix._();

  factory BytesPrefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesPrefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesPrefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesPrefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesPrefix copyWith(void Function(BytesPrefix) updates) =>
      super.copyWith((message) => updates(message as BytesPrefix))
          as BytesPrefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesPrefix create() => BytesPrefix._();
  @$core.override
  BytesPrefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesPrefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesPrefix>(create);
  static BytesPrefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesContains extends $pb.GeneratedMessage {
  factory BytesContains({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesContains._();

  factory BytesContains.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesContains.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesContains',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesContains clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesContains copyWith(void Function(BytesContains) updates) =>
      super.copyWith((message) => updates(message as BytesContains))
          as BytesContains;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesContains create() => BytesContains._();
  @$core.override
  BytesContains createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesContains getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesContains>(create);
  static BytesContains? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesSuffix extends $pb.GeneratedMessage {
  factory BytesSuffix({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesSuffix._();

  factory BytesSuffix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesSuffix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesSuffix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesSuffix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesSuffix copyWith(void Function(BytesSuffix) updates) =>
      super.copyWith((message) => updates(message as BytesSuffix))
          as BytesSuffix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesSuffix create() => BytesSuffix._();
  @$core.override
  BytesSuffix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesSuffix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesSuffix>(create);
  static BytesSuffix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesIP extends $pb.GeneratedMessage {
  factory BytesIP({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesIP._();

  factory BytesIP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesIP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesIP',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIP clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIP copyWith(void Function(BytesIP) updates) =>
      super.copyWith((message) => updates(message as BytesIP)) as BytesIP;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesIP create() => BytesIP._();
  @$core.override
  BytesIP createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesIP getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesIP>(create);
  static BytesIP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesNotIP extends $pb.GeneratedMessage {
  factory BytesNotIP({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNotIP._();

  factory BytesNotIP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNotIP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNotIP',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIP clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIP copyWith(void Function(BytesNotIP) updates) =>
      super.copyWith((message) => updates(message as BytesNotIP)) as BytesNotIP;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNotIP create() => BytesNotIP._();
  @$core.override
  BytesNotIP createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNotIP getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesNotIP>(create);
  static BytesNotIP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesIPv4 extends $pb.GeneratedMessage {
  factory BytesIPv4({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesIPv4._();

  factory BytesIPv4.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesIPv4.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesIPv4',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv4 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv4 copyWith(void Function(BytesIPv4) updates) =>
      super.copyWith((message) => updates(message as BytesIPv4)) as BytesIPv4;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesIPv4 create() => BytesIPv4._();
  @$core.override
  BytesIPv4 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesIPv4 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesIPv4>(create);
  static BytesIPv4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesNotIPv4 extends $pb.GeneratedMessage {
  factory BytesNotIPv4({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNotIPv4._();

  factory BytesNotIPv4.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNotIPv4.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNotIPv4',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIPv4 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIPv4 copyWith(void Function(BytesNotIPv4) updates) =>
      super.copyWith((message) => updates(message as BytesNotIPv4))
          as BytesNotIPv4;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNotIPv4 create() => BytesNotIPv4._();
  @$core.override
  BytesNotIPv4 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNotIPv4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesNotIPv4>(create);
  static BytesNotIPv4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesIPv6 extends $pb.GeneratedMessage {
  factory BytesIPv6({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesIPv6._();

  factory BytesIPv6.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesIPv6.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesIPv6',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv6 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv6 copyWith(void Function(BytesIPv6) updates) =>
      super.copyWith((message) => updates(message as BytesIPv6)) as BytesIPv6;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesIPv6 create() => BytesIPv6._();
  @$core.override
  BytesIPv6 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesIPv6 getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesIPv6>(create);
  static BytesIPv6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesNotIPv6 extends $pb.GeneratedMessage {
  factory BytesNotIPv6({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNotIPv6._();

  factory BytesNotIPv6.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNotIPv6.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNotIPv6',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIPv6 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotIPv6 copyWith(void Function(BytesNotIPv6) updates) =>
      super.copyWith((message) => updates(message as BytesNotIPv6))
          as BytesNotIPv6;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNotIPv6 create() => BytesNotIPv6._();
  @$core.override
  BytesNotIPv6 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNotIPv6 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesNotIPv6>(create);
  static BytesNotIPv6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesIPv6Ignore extends $pb.GeneratedMessage {
  factory BytesIPv6Ignore({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesIPv6Ignore._();

  factory BytesIPv6Ignore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesIPv6Ignore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesIPv6Ignore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv6Ignore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesIPv6Ignore copyWith(void Function(BytesIPv6Ignore) updates) =>
      super.copyWith((message) => updates(message as BytesIPv6Ignore))
          as BytesIPv6Ignore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesIPv6Ignore create() => BytesIPv6Ignore._();
  @$core.override
  BytesIPv6Ignore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesIPv6Ignore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesIPv6Ignore>(create);
  static BytesIPv6Ignore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesUUID extends $pb.GeneratedMessage {
  factory BytesUUID({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesUUID._();

  factory BytesUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesUUID copyWith(void Function(BytesUUID) updates) =>
      super.copyWith((message) => updates(message as BytesUUID)) as BytesUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesUUID create() => BytesUUID._();
  @$core.override
  BytesUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesUUID getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BytesUUID>(create);
  static BytesUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesNotUUID extends $pb.GeneratedMessage {
  factory BytesNotUUID({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesNotUUID._();

  factory BytesNotUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesNotUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesNotUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesNotUUID copyWith(void Function(BytesNotUUID) updates) =>
      super.copyWith((message) => updates(message as BytesNotUUID))
          as BytesNotUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesNotUUID create() => BytesNotUUID._();
  @$core.override
  BytesNotUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesNotUUID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesNotUUID>(create);
  static BytesNotUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesUUIDIgnore extends $pb.GeneratedMessage {
  factory BytesUUIDIgnore({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesUUIDIgnore._();

  factory BytesUUIDIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesUUIDIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesUUIDIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesUUIDIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesUUIDIgnore copyWith(void Function(BytesUUIDIgnore) updates) =>
      super.copyWith((message) => updates(message as BytesUUIDIgnore))
          as BytesUUIDIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesUUIDIgnore create() => BytesUUIDIgnore._();
  @$core.override
  BytesUUIDIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesUUIDIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesUUIDIgnore>(create);
  static BytesUUIDIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class BytesExample extends $pb.GeneratedMessage {
  factory BytesExample({
    $core.List<$core.int>? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  BytesExample._();

  factory BytesExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesExample copyWith(void Function(BytesExample) updates) =>
      super.copyWith((message) => updates(message as BytesExample))
          as BytesExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesExample create() => BytesExample._();
  @$core.override
  BytesExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesExample>(create);
  static BytesExample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
