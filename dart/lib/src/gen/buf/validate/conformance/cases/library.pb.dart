// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/library.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IsHostname extends $pb.GeneratedMessage {
  factory IsHostname({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IsHostname._();

  factory IsHostname.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsHostname.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsHostname',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsHostname clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsHostname copyWith(void Function(IsHostname) updates) =>
      super.copyWith((message) => updates(message as IsHostname)) as IsHostname;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsHostname create() => IsHostname._();
  @$core.override
  IsHostname createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsHostname getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IsHostname>(create);
  static IsHostname? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IsHostAndPort extends $pb.GeneratedMessage {
  factory IsHostAndPort({
    $core.String? val,
    $core.bool? portRequired,
  }) {
    final result = create();
    if (val != null) result.val = val;
    if (portRequired != null) result.portRequired = portRequired;
    return result;
  }

  IsHostAndPort._();

  factory IsHostAndPort.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsHostAndPort.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsHostAndPort',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..aOB(2, _omitFieldNames ? '' : 'portRequired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsHostAndPort clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsHostAndPort copyWith(void Function(IsHostAndPort) updates) =>
      super.copyWith((message) => updates(message as IsHostAndPort))
          as IsHostAndPort;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsHostAndPort create() => IsHostAndPort._();
  @$core.override
  IsHostAndPort createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsHostAndPort getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IsHostAndPort>(create);
  static IsHostAndPort? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get portRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set portRequired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPortRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearPortRequired() => $_clearField(2);
}

class IsIpPrefix extends $pb.GeneratedMessage {
  factory IsIpPrefix({
    $core.String? val,
    $core.int? version,
    $core.bool? strict,
  }) {
    final result = create();
    if (val != null) result.val = val;
    if (version != null) result.version = version;
    if (strict != null) result.strict = strict;
    return result;
  }

  IsIpPrefix._();

  factory IsIpPrefix.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsIpPrefix.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsIpPrefix',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..aI(2, _omitFieldNames ? '' : 'version')
    ..aOB(3, _omitFieldNames ? '' : 'strict')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsIpPrefix clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsIpPrefix copyWith(void Function(IsIpPrefix) updates) =>
      super.copyWith((message) => updates(message as IsIpPrefix)) as IsIpPrefix;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsIpPrefix create() => IsIpPrefix._();
  @$core.override
  IsIpPrefix createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsIpPrefix getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IsIpPrefix>(create);
  static IsIpPrefix? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get strict => $_getBF(2);
  @$pb.TagNumber(3)
  set strict($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStrict() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrict() => $_clearField(3);
}

class IsIp extends $pb.GeneratedMessage {
  factory IsIp({
    $core.String? val,
    $core.int? version,
  }) {
    final result = create();
    if (val != null) result.val = val;
    if (version != null) result.version = version;
    return result;
  }

  IsIp._();

  factory IsIp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsIp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsIp',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..aI(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsIp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsIp copyWith(void Function(IsIp) updates) =>
      super.copyWith((message) => updates(message as IsIp)) as IsIp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsIp create() => IsIp._();
  @$core.override
  IsIp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsIp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsIp>(create);
  static IsIp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);
}

class IsEmail extends $pb.GeneratedMessage {
  factory IsEmail({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IsEmail._();

  factory IsEmail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsEmail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsEmail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsEmail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsEmail copyWith(void Function(IsEmail) updates) =>
      super.copyWith((message) => updates(message as IsEmail)) as IsEmail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsEmail create() => IsEmail._();
  @$core.override
  IsEmail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsEmail getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsEmail>(create);
  static IsEmail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IsUri extends $pb.GeneratedMessage {
  factory IsUri({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IsUri._();

  factory IsUri.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsUri.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsUri',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsUri clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsUri copyWith(void Function(IsUri) updates) =>
      super.copyWith((message) => updates(message as IsUri)) as IsUri;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsUri create() => IsUri._();
  @$core.override
  IsUri createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsUri getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsUri>(create);
  static IsUri? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class IsUriRef extends $pb.GeneratedMessage {
  factory IsUriRef({
    $core.String? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  IsUriRef._();

  factory IsUriRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IsUriRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IsUriRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'val')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsUriRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IsUriRef copyWith(void Function(IsUriRef) updates) =>
      super.copyWith((message) => updates(message as IsUriRef)) as IsUriRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsUriRef create() => IsUriRef._();
  @$core.override
  IsUriRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IsUriRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsUriRef>(create);
  static IsUriRef? _defaultInstance;

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
