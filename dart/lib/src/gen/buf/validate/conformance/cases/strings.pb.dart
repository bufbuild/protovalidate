// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/strings.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class StringNone extends $pb.GeneratedMessage {
  factory StringNone({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNone._();

  factory StringNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNone copyWith(void Function(StringNone) updates) =>
      super.copyWith((message) => updates(message as StringNone)) as StringNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNone create() => StringNone._();
  @$core.override
  StringNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNone>(create);
  static StringNone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringConst extends $pb.GeneratedMessage {
  factory StringConst({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringConst._();

  factory StringConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringConst copyWith(void Function(StringConst) updates) =>
      super.copyWith((message) => updates(message as StringConst))
          as StringConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringConst create() => StringConst._();
  @$core.override
  StringConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringConst>(create);
  static StringConst? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIn extends $pb.GeneratedMessage {
  factory StringIn({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIn._();

  factory StringIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIn copyWith(void Function(StringIn) updates) =>
      super.copyWith((message) => updates(message as StringIn)) as StringIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIn create() => StringIn._();
  @$core.override
  StringIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringIn>(create);
  static StringIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIn extends $pb.GeneratedMessage {
  factory StringNotIn({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIn._();

  factory StringNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIn copyWith(void Function(StringNotIn) updates) =>
      super.copyWith((message) => updates(message as StringNotIn))
          as StringNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIn create() => StringNotIn._();
  @$core.override
  StringNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIn>(create);
  static StringNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringLen extends $pb.GeneratedMessage {
  factory StringLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringLen._();

  factory StringLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringLen copyWith(void Function(StringLen) updates) =>
      super.copyWith((message) => updates(message as StringLen)) as StringLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringLen create() => StringLen._();
  @$core.override
  StringLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringLen getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringLen>(create);
  static StringLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMinLen extends $pb.GeneratedMessage {
  factory StringMinLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMinLen._();

  factory StringMinLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMinLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMinLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinLen copyWith(void Function(StringMinLen) updates) =>
      super.copyWith((message) => updates(message as StringMinLen))
          as StringMinLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMinLen create() => StringMinLen._();
  @$core.override
  StringMinLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMinLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMinLen>(create);
  static StringMinLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMaxLen extends $pb.GeneratedMessage {
  factory StringMaxLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMaxLen._();

  factory StringMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMaxLen copyWith(void Function(StringMaxLen) updates) =>
      super.copyWith((message) => updates(message as StringMaxLen))
          as StringMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMaxLen create() => StringMaxLen._();
  @$core.override
  StringMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMaxLen>(create);
  static StringMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMinMaxLen extends $pb.GeneratedMessage {
  factory StringMinMaxLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMinMaxLen._();

  factory StringMinMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMinMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMinMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinMaxLen copyWith(void Function(StringMinMaxLen) updates) =>
      super.copyWith((message) => updates(message as StringMinMaxLen))
          as StringMinMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMinMaxLen create() => StringMinMaxLen._();
  @$core.override
  StringMinMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMinMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMinMaxLen>(create);
  static StringMinMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringEqualMinMaxLen extends $pb.GeneratedMessage {
  factory StringEqualMinMaxLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringEqualMinMaxLen._();

  factory StringEqualMinMaxLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringEqualMinMaxLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringEqualMinMaxLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEqualMinMaxLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEqualMinMaxLen copyWith(void Function(StringEqualMinMaxLen) updates) =>
      super.copyWith((message) => updates(message as StringEqualMinMaxLen))
          as StringEqualMinMaxLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringEqualMinMaxLen create() => StringEqualMinMaxLen._();
  @$core.override
  StringEqualMinMaxLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringEqualMinMaxLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringEqualMinMaxLen>(create);
  static StringEqualMinMaxLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringLenBytes extends $pb.GeneratedMessage {
  factory StringLenBytes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringLenBytes._();

  factory StringLenBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringLenBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringLenBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringLenBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringLenBytes copyWith(void Function(StringLenBytes) updates) =>
      super.copyWith((message) => updates(message as StringLenBytes))
          as StringLenBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringLenBytes create() => StringLenBytes._();
  @$core.override
  StringLenBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringLenBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringLenBytes>(create);
  static StringLenBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMinBytes extends $pb.GeneratedMessage {
  factory StringMinBytes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMinBytes._();

  factory StringMinBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMinBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMinBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinBytes copyWith(void Function(StringMinBytes) updates) =>
      super.copyWith((message) => updates(message as StringMinBytes))
          as StringMinBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMinBytes create() => StringMinBytes._();
  @$core.override
  StringMinBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMinBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMinBytes>(create);
  static StringMinBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMaxBytes extends $pb.GeneratedMessage {
  factory StringMaxBytes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMaxBytes._();

  factory StringMaxBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMaxBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMaxBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMaxBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMaxBytes copyWith(void Function(StringMaxBytes) updates) =>
      super.copyWith((message) => updates(message as StringMaxBytes))
          as StringMaxBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMaxBytes create() => StringMaxBytes._();
  @$core.override
  StringMaxBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMaxBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMaxBytes>(create);
  static StringMaxBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringMinMaxBytes extends $pb.GeneratedMessage {
  factory StringMinMaxBytes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringMinMaxBytes._();

  factory StringMinMaxBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringMinMaxBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringMinMaxBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinMaxBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringMinMaxBytes copyWith(void Function(StringMinMaxBytes) updates) =>
      super.copyWith((message) => updates(message as StringMinMaxBytes))
          as StringMinMaxBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringMinMaxBytes create() => StringMinMaxBytes._();
  @$core.override
  StringMinMaxBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringMinMaxBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringMinMaxBytes>(create);
  static StringMinMaxBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringEqualMinMaxBytes extends $pb.GeneratedMessage {
  factory StringEqualMinMaxBytes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringEqualMinMaxBytes._();

  factory StringEqualMinMaxBytes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringEqualMinMaxBytes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringEqualMinMaxBytes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEqualMinMaxBytes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEqualMinMaxBytes copyWith(
          void Function(StringEqualMinMaxBytes) updates) =>
      super.copyWith((message) => updates(message as StringEqualMinMaxBytes))
          as StringEqualMinMaxBytes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringEqualMinMaxBytes create() => StringEqualMinMaxBytes._();
  @$core.override
  StringEqualMinMaxBytes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringEqualMinMaxBytes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringEqualMinMaxBytes>(create);
  static StringEqualMinMaxBytes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringPattern extends $pb.GeneratedMessage {
  factory StringPattern({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringPattern._();

  factory StringPattern.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringPattern.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringPattern',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPattern clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPattern copyWith(void Function(StringPattern) updates) =>
      super.copyWith((message) => updates(message as StringPattern))
          as StringPattern;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringPattern create() => StringPattern._();
  @$core.override
  StringPattern createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringPattern getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringPattern>(create);
  static StringPattern? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringPatternEscapes extends $pb.GeneratedMessage {
  factory StringPatternEscapes({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringPatternEscapes._();

  factory StringPatternEscapes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringPatternEscapes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringPatternEscapes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPatternEscapes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPatternEscapes copyWith(void Function(StringPatternEscapes) updates) =>
      super.copyWith((message) => updates(message as StringPatternEscapes))
          as StringPatternEscapes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringPatternEscapes create() => StringPatternEscapes._();
  @$core.override
  StringPatternEscapes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringPatternEscapes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringPatternEscapes>(create);
  static StringPatternEscapes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringPrefix extends $pb.GeneratedMessage {
  factory StringPrefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringPrefix._();

  factory StringPrefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringPrefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringPrefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPrefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringPrefix copyWith(void Function(StringPrefix) updates) =>
      super.copyWith((message) => updates(message as StringPrefix))
          as StringPrefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringPrefix create() => StringPrefix._();
  @$core.override
  StringPrefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringPrefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringPrefix>(create);
  static StringPrefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringContains extends $pb.GeneratedMessage {
  factory StringContains({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringContains._();

  factory StringContains.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringContains.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringContains',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringContains clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringContains copyWith(void Function(StringContains) updates) =>
      super.copyWith((message) => updates(message as StringContains))
          as StringContains;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringContains create() => StringContains._();
  @$core.override
  StringContains createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringContains getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringContains>(create);
  static StringContains? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotContains extends $pb.GeneratedMessage {
  factory StringNotContains({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotContains._();

  factory StringNotContains.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotContains.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotContains',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotContains clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotContains copyWith(void Function(StringNotContains) updates) =>
      super.copyWith((message) => updates(message as StringNotContains))
          as StringNotContains;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotContains create() => StringNotContains._();
  @$core.override
  StringNotContains createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotContains getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotContains>(create);
  static StringNotContains? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringSuffix extends $pb.GeneratedMessage {
  factory StringSuffix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringSuffix._();

  factory StringSuffix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringSuffix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringSuffix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringSuffix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringSuffix copyWith(void Function(StringSuffix) updates) =>
      super.copyWith((message) => updates(message as StringSuffix))
          as StringSuffix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringSuffix create() => StringSuffix._();
  @$core.override
  StringSuffix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringSuffix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringSuffix>(create);
  static StringSuffix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringEmail extends $pb.GeneratedMessage {
  factory StringEmail({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringEmail._();

  factory StringEmail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringEmail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringEmail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEmail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringEmail copyWith(void Function(StringEmail) updates) =>
      super.copyWith((message) => updates(message as StringEmail))
          as StringEmail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringEmail create() => StringEmail._();
  @$core.override
  StringEmail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringEmail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringEmail>(create);
  static StringEmail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotEmail extends $pb.GeneratedMessage {
  factory StringNotEmail({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotEmail._();

  factory StringNotEmail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotEmail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotEmail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotEmail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotEmail copyWith(void Function(StringNotEmail) updates) =>
      super.copyWith((message) => updates(message as StringNotEmail))
          as StringNotEmail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotEmail create() => StringNotEmail._();
  @$core.override
  StringNotEmail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotEmail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotEmail>(create);
  static StringNotEmail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringAddress extends $pb.GeneratedMessage {
  factory StringAddress({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringAddress._();

  factory StringAddress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringAddress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringAddress',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringAddress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringAddress copyWith(void Function(StringAddress) updates) =>
      super.copyWith((message) => updates(message as StringAddress))
          as StringAddress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringAddress create() => StringAddress._();
  @$core.override
  StringAddress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringAddress>(create);
  static StringAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotAddress extends $pb.GeneratedMessage {
  factory StringNotAddress({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotAddress._();

  factory StringNotAddress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotAddress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotAddress',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotAddress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotAddress copyWith(void Function(StringNotAddress) updates) =>
      super.copyWith((message) => updates(message as StringNotAddress))
          as StringNotAddress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotAddress create() => StringNotAddress._();
  @$core.override
  StringNotAddress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotAddress>(create);
  static StringNotAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHostname extends $pb.GeneratedMessage {
  factory StringHostname({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHostname._();

  factory StringHostname.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHostname.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHostname',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostname clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostname copyWith(void Function(StringHostname) updates) =>
      super.copyWith((message) => updates(message as StringHostname))
          as StringHostname;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHostname create() => StringHostname._();
  @$core.override
  StringHostname createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHostname getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHostname>(create);
  static StringHostname? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotHostname extends $pb.GeneratedMessage {
  factory StringNotHostname({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotHostname._();

  factory StringNotHostname.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotHostname.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotHostname',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotHostname clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotHostname copyWith(void Function(StringNotHostname) updates) =>
      super.copyWith((message) => updates(message as StringNotHostname))
          as StringNotHostname;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotHostname create() => StringNotHostname._();
  @$core.override
  StringNotHostname createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotHostname getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotHostname>(create);
  static StringNotHostname? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIP extends $pb.GeneratedMessage {
  factory StringIP({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIP._();

  factory StringIP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIP',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIP clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIP copyWith(void Function(StringIP) updates) =>
      super.copyWith((message) => updates(message as StringIP)) as StringIP;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIP create() => StringIP._();
  @$core.override
  StringIP createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIP getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringIP>(create);
  static StringIP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIP extends $pb.GeneratedMessage {
  factory StringNotIP({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIP._();

  factory StringNotIP.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIP.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIP',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIP clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIP copyWith(void Function(StringNotIP) updates) =>
      super.copyWith((message) => updates(message as StringNotIP))
          as StringNotIP;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIP create() => StringNotIP._();
  @$core.override
  StringNotIP createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIP getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIP>(create);
  static StringNotIP? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv4 extends $pb.GeneratedMessage {
  factory StringIPv4({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv4._();

  factory StringIPv4.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv4.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv4',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4 copyWith(void Function(StringIPv4) updates) =>
      super.copyWith((message) => updates(message as StringIPv4)) as StringIPv4;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv4 create() => StringIPv4._();
  @$core.override
  StringIPv4 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv4>(create);
  static StringIPv4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv4 extends $pb.GeneratedMessage {
  factory StringNotIPv4({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv4._();

  factory StringNotIPv4.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv4.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv4',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4 copyWith(void Function(StringNotIPv4) updates) =>
      super.copyWith((message) => updates(message as StringNotIPv4))
          as StringNotIPv4;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv4 create() => StringNotIPv4._();
  @$core.override
  StringNotIPv4 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv4 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv4>(create);
  static StringNotIPv4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv6 extends $pb.GeneratedMessage {
  factory StringIPv6({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv6._();

  factory StringIPv6.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv6.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv6',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6 copyWith(void Function(StringIPv6) updates) =>
      super.copyWith((message) => updates(message as StringIPv6)) as StringIPv6;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv6 create() => StringIPv6._();
  @$core.override
  StringIPv6 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv6 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv6>(create);
  static StringIPv6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv6 extends $pb.GeneratedMessage {
  factory StringNotIPv6({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv6._();

  factory StringNotIPv6.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv6.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv6',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6 copyWith(void Function(StringNotIPv6) updates) =>
      super.copyWith((message) => updates(message as StringNotIPv6))
          as StringNotIPv6;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv6 create() => StringNotIPv6._();
  @$core.override
  StringNotIPv6 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv6 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv6>(create);
  static StringNotIPv6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPWithPrefixLen extends $pb.GeneratedMessage {
  factory StringIPWithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPWithPrefixLen._();

  factory StringIPWithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPWithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPWithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPWithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPWithPrefixLen copyWith(
          void Function(StringIPWithPrefixLen) updates) =>
      super.copyWith((message) => updates(message as StringIPWithPrefixLen))
          as StringIPWithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPWithPrefixLen create() => StringIPWithPrefixLen._();
  @$core.override
  StringIPWithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPWithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPWithPrefixLen>(create);
  static StringIPWithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPWithPrefixLen extends $pb.GeneratedMessage {
  factory StringNotIPWithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPWithPrefixLen._();

  factory StringNotIPWithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPWithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPWithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPWithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPWithPrefixLen copyWith(
          void Function(StringNotIPWithPrefixLen) updates) =>
      super.copyWith((message) => updates(message as StringNotIPWithPrefixLen))
          as StringNotIPWithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPWithPrefixLen create() => StringNotIPWithPrefixLen._();
  @$core.override
  StringNotIPWithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPWithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPWithPrefixLen>(create);
  static StringNotIPWithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv4WithPrefixLen extends $pb.GeneratedMessage {
  factory StringIPv4WithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv4WithPrefixLen._();

  factory StringIPv4WithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv4WithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv4WithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4WithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4WithPrefixLen copyWith(
          void Function(StringIPv4WithPrefixLen) updates) =>
      super.copyWith((message) => updates(message as StringIPv4WithPrefixLen))
          as StringIPv4WithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv4WithPrefixLen create() => StringIPv4WithPrefixLen._();
  @$core.override
  StringIPv4WithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv4WithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv4WithPrefixLen>(create);
  static StringIPv4WithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv4WithPrefixLen extends $pb.GeneratedMessage {
  factory StringNotIPv4WithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv4WithPrefixLen._();

  factory StringNotIPv4WithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv4WithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv4WithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4WithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4WithPrefixLen copyWith(
          void Function(StringNotIPv4WithPrefixLen) updates) =>
      super.copyWith(
              (message) => updates(message as StringNotIPv4WithPrefixLen))
          as StringNotIPv4WithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv4WithPrefixLen create() => StringNotIPv4WithPrefixLen._();
  @$core.override
  StringNotIPv4WithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv4WithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv4WithPrefixLen>(create);
  static StringNotIPv4WithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv6WithPrefixLen extends $pb.GeneratedMessage {
  factory StringIPv6WithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv6WithPrefixLen._();

  factory StringIPv6WithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv6WithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv6WithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6WithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6WithPrefixLen copyWith(
          void Function(StringIPv6WithPrefixLen) updates) =>
      super.copyWith((message) => updates(message as StringIPv6WithPrefixLen))
          as StringIPv6WithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv6WithPrefixLen create() => StringIPv6WithPrefixLen._();
  @$core.override
  StringIPv6WithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv6WithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv6WithPrefixLen>(create);
  static StringIPv6WithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv6WithPrefixLen extends $pb.GeneratedMessage {
  factory StringNotIPv6WithPrefixLen({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv6WithPrefixLen._();

  factory StringNotIPv6WithPrefixLen.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv6WithPrefixLen.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv6WithPrefixLen',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6WithPrefixLen clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6WithPrefixLen copyWith(
          void Function(StringNotIPv6WithPrefixLen) updates) =>
      super.copyWith(
              (message) => updates(message as StringNotIPv6WithPrefixLen))
          as StringNotIPv6WithPrefixLen;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv6WithPrefixLen create() => StringNotIPv6WithPrefixLen._();
  @$core.override
  StringNotIPv6WithPrefixLen createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv6WithPrefixLen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv6WithPrefixLen>(create);
  static StringNotIPv6WithPrefixLen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPPrefix extends $pb.GeneratedMessage {
  factory StringIPPrefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPPrefix._();

  factory StringIPPrefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPPrefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPPrefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPPrefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPPrefix copyWith(void Function(StringIPPrefix) updates) =>
      super.copyWith((message) => updates(message as StringIPPrefix))
          as StringIPPrefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPPrefix create() => StringIPPrefix._();
  @$core.override
  StringIPPrefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPPrefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPPrefix>(create);
  static StringIPPrefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPPrefix extends $pb.GeneratedMessage {
  factory StringNotIPPrefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPPrefix._();

  factory StringNotIPPrefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPPrefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPPrefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPPrefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPPrefix copyWith(void Function(StringNotIPPrefix) updates) =>
      super.copyWith((message) => updates(message as StringNotIPPrefix))
          as StringNotIPPrefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPPrefix create() => StringNotIPPrefix._();
  @$core.override
  StringNotIPPrefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPPrefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPPrefix>(create);
  static StringNotIPPrefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv4Prefix extends $pb.GeneratedMessage {
  factory StringIPv4Prefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv4Prefix._();

  factory StringIPv4Prefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv4Prefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv4Prefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4Prefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv4Prefix copyWith(void Function(StringIPv4Prefix) updates) =>
      super.copyWith((message) => updates(message as StringIPv4Prefix))
          as StringIPv4Prefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv4Prefix create() => StringIPv4Prefix._();
  @$core.override
  StringIPv4Prefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv4Prefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv4Prefix>(create);
  static StringIPv4Prefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv4Prefix extends $pb.GeneratedMessage {
  factory StringNotIPv4Prefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv4Prefix._();

  factory StringNotIPv4Prefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv4Prefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv4Prefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4Prefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv4Prefix copyWith(void Function(StringNotIPv4Prefix) updates) =>
      super.copyWith((message) => updates(message as StringNotIPv4Prefix))
          as StringNotIPv4Prefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv4Prefix create() => StringNotIPv4Prefix._();
  @$core.override
  StringNotIPv4Prefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv4Prefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv4Prefix>(create);
  static StringNotIPv4Prefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringIPv6Prefix extends $pb.GeneratedMessage {
  factory StringIPv6Prefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringIPv6Prefix._();

  factory StringIPv6Prefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringIPv6Prefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringIPv6Prefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6Prefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringIPv6Prefix copyWith(void Function(StringIPv6Prefix) updates) =>
      super.copyWith((message) => updates(message as StringIPv6Prefix))
          as StringIPv6Prefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringIPv6Prefix create() => StringIPv6Prefix._();
  @$core.override
  StringIPv6Prefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringIPv6Prefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringIPv6Prefix>(create);
  static StringIPv6Prefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotIPv6Prefix extends $pb.GeneratedMessage {
  factory StringNotIPv6Prefix({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotIPv6Prefix._();

  factory StringNotIPv6Prefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotIPv6Prefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotIPv6Prefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6Prefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotIPv6Prefix copyWith(void Function(StringNotIPv6Prefix) updates) =>
      super.copyWith((message) => updates(message as StringNotIPv6Prefix))
          as StringNotIPv6Prefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotIPv6Prefix create() => StringNotIPv6Prefix._();
  @$core.override
  StringNotIPv6Prefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotIPv6Prefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotIPv6Prefix>(create);
  static StringNotIPv6Prefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringURI extends $pb.GeneratedMessage {
  factory StringURI({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringURI._();

  factory StringURI.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringURI.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringURI',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringURI clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringURI copyWith(void Function(StringURI) updates) =>
      super.copyWith((message) => updates(message as StringURI)) as StringURI;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringURI create() => StringURI._();
  @$core.override
  StringURI createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringURI getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringURI>(create);
  static StringURI? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotURI extends $pb.GeneratedMessage {
  factory StringNotURI({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotURI._();

  factory StringNotURI.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotURI.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotURI',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotURI clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotURI copyWith(void Function(StringNotURI) updates) =>
      super.copyWith((message) => updates(message as StringNotURI))
          as StringNotURI;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotURI create() => StringNotURI._();
  @$core.override
  StringNotURI createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotURI getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotURI>(create);
  static StringNotURI? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringURIRef extends $pb.GeneratedMessage {
  factory StringURIRef({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringURIRef._();

  factory StringURIRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringURIRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringURIRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringURIRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringURIRef copyWith(void Function(StringURIRef) updates) =>
      super.copyWith((message) => updates(message as StringURIRef))
          as StringURIRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringURIRef create() => StringURIRef._();
  @$core.override
  StringURIRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringURIRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringURIRef>(create);
  static StringURIRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotURIRef extends $pb.GeneratedMessage {
  factory StringNotURIRef({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotURIRef._();

  factory StringNotURIRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotURIRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotURIRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotURIRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotURIRef copyWith(void Function(StringNotURIRef) updates) =>
      super.copyWith((message) => updates(message as StringNotURIRef))
          as StringNotURIRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotURIRef create() => StringNotURIRef._();
  @$core.override
  StringNotURIRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotURIRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotURIRef>(create);
  static StringNotURIRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringUUID extends $pb.GeneratedMessage {
  factory StringUUID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringUUID._();

  factory StringUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringUUID copyWith(void Function(StringUUID) updates) =>
      super.copyWith((message) => updates(message as StringUUID)) as StringUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringUUID create() => StringUUID._();
  @$core.override
  StringUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringUUID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringUUID>(create);
  static StringUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotUUID extends $pb.GeneratedMessage {
  factory StringNotUUID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotUUID._();

  factory StringNotUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotUUID copyWith(void Function(StringNotUUID) updates) =>
      super.copyWith((message) => updates(message as StringNotUUID))
          as StringNotUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotUUID create() => StringNotUUID._();
  @$core.override
  StringNotUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotUUID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotUUID>(create);
  static StringNotUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringTUUID extends $pb.GeneratedMessage {
  factory StringTUUID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringTUUID._();

  factory StringTUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringTUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringTUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringTUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringTUUID copyWith(void Function(StringTUUID) updates) =>
      super.copyWith((message) => updates(message as StringTUUID))
          as StringTUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringTUUID create() => StringTUUID._();
  @$core.override
  StringTUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringTUUID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringTUUID>(create);
  static StringTUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotTUUID extends $pb.GeneratedMessage {
  factory StringNotTUUID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotTUUID._();

  factory StringNotTUUID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotTUUID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotTUUID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotTUUID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotTUUID copyWith(void Function(StringNotTUUID) updates) =>
      super.copyWith((message) => updates(message as StringNotTUUID))
          as StringNotTUUID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotTUUID create() => StringNotTUUID._();
  @$core.override
  StringNotTUUID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotTUUID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotTUUID>(create);
  static StringNotTUUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringULID extends $pb.GeneratedMessage {
  factory StringULID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringULID._();

  factory StringULID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringULID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringULID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringULID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringULID copyWith(void Function(StringULID) updates) =>
      super.copyWith((message) => updates(message as StringULID)) as StringULID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringULID create() => StringULID._();
  @$core.override
  StringULID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringULID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringULID>(create);
  static StringULID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringNotULID extends $pb.GeneratedMessage {
  factory StringNotULID({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringNotULID._();

  factory StringNotULID.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringNotULID.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringNotULID',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotULID clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringNotULID copyWith(void Function(StringNotULID) updates) =>
      super.copyWith((message) => updates(message as StringNotULID))
          as StringNotULID;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringNotULID create() => StringNotULID._();
  @$core.override
  StringNotULID createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringNotULID getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringNotULID>(create);
  static StringNotULID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringULIDIgnore extends $pb.GeneratedMessage {
  factory StringULIDIgnore({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringULIDIgnore._();

  factory StringULIDIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringULIDIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringULIDIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringULIDIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringULIDIgnore copyWith(void Function(StringULIDIgnore) updates) =>
      super.copyWith((message) => updates(message as StringULIDIgnore))
          as StringULIDIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringULIDIgnore create() => StringULIDIgnore._();
  @$core.override
  StringULIDIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringULIDIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringULIDIgnore>(create);
  static StringULIDIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHttpHeaderName extends $pb.GeneratedMessage {
  factory StringHttpHeaderName({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHttpHeaderName._();

  factory StringHttpHeaderName.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHttpHeaderName.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHttpHeaderName',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderName clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderName copyWith(void Function(StringHttpHeaderName) updates) =>
      super.copyWith((message) => updates(message as StringHttpHeaderName))
          as StringHttpHeaderName;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderName create() => StringHttpHeaderName._();
  @$core.override
  StringHttpHeaderName createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderName getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHttpHeaderName>(create);
  static StringHttpHeaderName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHttpHeaderValue extends $pb.GeneratedMessage {
  factory StringHttpHeaderValue({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHttpHeaderValue._();

  factory StringHttpHeaderValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHttpHeaderValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHttpHeaderValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderValue copyWith(
          void Function(StringHttpHeaderValue) updates) =>
      super.copyWith((message) => updates(message as StringHttpHeaderValue))
          as StringHttpHeaderValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderValue create() => StringHttpHeaderValue._();
  @$core.override
  StringHttpHeaderValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHttpHeaderValue>(create);
  static StringHttpHeaderValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHttpHeaderNameLoose extends $pb.GeneratedMessage {
  factory StringHttpHeaderNameLoose({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHttpHeaderNameLoose._();

  factory StringHttpHeaderNameLoose.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHttpHeaderNameLoose.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHttpHeaderNameLoose',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderNameLoose clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderNameLoose copyWith(
          void Function(StringHttpHeaderNameLoose) updates) =>
      super.copyWith((message) => updates(message as StringHttpHeaderNameLoose))
          as StringHttpHeaderNameLoose;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderNameLoose create() => StringHttpHeaderNameLoose._();
  @$core.override
  StringHttpHeaderNameLoose createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderNameLoose getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHttpHeaderNameLoose>(create);
  static StringHttpHeaderNameLoose? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHttpHeaderValueLoose extends $pb.GeneratedMessage {
  factory StringHttpHeaderValueLoose({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHttpHeaderValueLoose._();

  factory StringHttpHeaderValueLoose.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHttpHeaderValueLoose.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHttpHeaderValueLoose',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderValueLoose clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHttpHeaderValueLoose copyWith(
          void Function(StringHttpHeaderValueLoose) updates) =>
      super.copyWith(
              (message) => updates(message as StringHttpHeaderValueLoose))
          as StringHttpHeaderValueLoose;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderValueLoose create() => StringHttpHeaderValueLoose._();
  @$core.override
  StringHttpHeaderValueLoose createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHttpHeaderValueLoose getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHttpHeaderValueLoose>(create);
  static StringHttpHeaderValueLoose? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringUUIDIgnore extends $pb.GeneratedMessage {
  factory StringUUIDIgnore({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringUUIDIgnore._();

  factory StringUUIDIgnore.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringUUIDIgnore.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringUUIDIgnore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringUUIDIgnore clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringUUIDIgnore copyWith(void Function(StringUUIDIgnore) updates) =>
      super.copyWith((message) => updates(message as StringUUIDIgnore))
          as StringUUIDIgnore;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringUUIDIgnore create() => StringUUIDIgnore._();
  @$core.override
  StringUUIDIgnore createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringUUIDIgnore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringUUIDIgnore>(create);
  static StringUUIDIgnore? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

enum StringInOneof_Foo { bar, notSet }

class StringInOneof extends $pb.GeneratedMessage {
  factory StringInOneof({
    $core.String? bar,
  }) {
    final result = create();
    if (bar != null) result.bar = bar;
    return result;
  }

  StringInOneof._();

  factory StringInOneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringInOneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StringInOneof_Foo> _StringInOneof_FooByTag =
      {1: StringInOneof_Foo.bar, 0: StringInOneof_Foo.notSet};
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringInOneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'bar')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringInOneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringInOneof copyWith(void Function(StringInOneof) updates) =>
      super.copyWith((message) => updates(message as StringInOneof))
          as StringInOneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringInOneof create() => StringInOneof._();
  @$core.override
  StringInOneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringInOneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringInOneof>(create);
  static StringInOneof? _defaultInstance;

  @$pb.TagNumber(1)
  StringInOneof_Foo whichFoo() => _StringInOneof_FooByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearFoo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get bar => $_getSZ(0);
  @$pb.TagNumber(1)
  set bar($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBar() => $_has(0);
  @$pb.TagNumber(1)
  void clearBar() => $_clearField(1);
}

class StringHostAndPort extends $pb.GeneratedMessage {
  factory StringHostAndPort({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHostAndPort._();

  factory StringHostAndPort.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHostAndPort.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHostAndPort',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostAndPort clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostAndPort copyWith(void Function(StringHostAndPort) updates) =>
      super.copyWith((message) => updates(message as StringHostAndPort))
          as StringHostAndPort;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHostAndPort create() => StringHostAndPort._();
  @$core.override
  StringHostAndPort createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHostAndPort getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHostAndPort>(create);
  static StringHostAndPort? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringHostAndOptionalPort extends $pb.GeneratedMessage {
  factory StringHostAndOptionalPort({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringHostAndOptionalPort._();

  factory StringHostAndOptionalPort.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringHostAndOptionalPort.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringHostAndOptionalPort',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostAndOptionalPort clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringHostAndOptionalPort copyWith(
          void Function(StringHostAndOptionalPort) updates) =>
      super.copyWith((message) => updates(message as StringHostAndOptionalPort))
          as StringHostAndOptionalPort;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringHostAndOptionalPort create() => StringHostAndOptionalPort._();
  @$core.override
  StringHostAndOptionalPort createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringHostAndOptionalPort getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringHostAndOptionalPort>(create);
  static StringHostAndOptionalPort? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringProtobufFQN extends $pb.GeneratedMessage {
  factory StringProtobufFQN({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringProtobufFQN._();

  factory StringProtobufFQN.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringProtobufFQN.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringProtobufFQN',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringProtobufFQN clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringProtobufFQN copyWith(void Function(StringProtobufFQN) updates) =>
      super.copyWith((message) => updates(message as StringProtobufFQN))
          as StringProtobufFQN;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringProtobufFQN create() => StringProtobufFQN._();
  @$core.override
  StringProtobufFQN createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringProtobufFQN getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringProtobufFQN>(create);
  static StringProtobufFQN? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringProtobufDotFQN extends $pb.GeneratedMessage {
  factory StringProtobufDotFQN({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringProtobufDotFQN._();

  factory StringProtobufDotFQN.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringProtobufDotFQN.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringProtobufDotFQN',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringProtobufDotFQN clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringProtobufDotFQN copyWith(void Function(StringProtobufDotFQN) updates) =>
      super.copyWith((message) => updates(message as StringProtobufDotFQN))
          as StringProtobufDotFQN;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringProtobufDotFQN create() => StringProtobufDotFQN._();
  @$core.override
  StringProtobufDotFQN createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringProtobufDotFQN getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringProtobufDotFQN>(create);
  static StringProtobufDotFQN? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class StringExample extends $pb.GeneratedMessage {
  factory StringExample({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  StringExample._();

  factory StringExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringExample copyWith(void Function(StringExample) updates) =>
      super.copyWith((message) => updates(message as StringExample))
          as StringExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringExample create() => StringExample._();
  @$core.override
  StringExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringExample>(create);
  static StringExample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
