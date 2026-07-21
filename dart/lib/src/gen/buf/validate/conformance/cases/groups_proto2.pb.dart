// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/groups_proto2.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GroupOptional_Optional extends $pb.GeneratedMessage {
  factory GroupOptional_Optional({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  GroupOptional_Optional._();

  factory GroupOptional_Optional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupOptional_Optional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupOptional.Optional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupOptional_Optional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupOptional_Optional copyWith(
          void Function(GroupOptional_Optional) updates) =>
      super.copyWith((message) => updates(message as GroupOptional_Optional))
          as GroupOptional_Optional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupOptional_Optional create() => GroupOptional_Optional._();
  @$core.override
  GroupOptional_Optional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupOptional_Optional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupOptional_Optional>(create);
  static GroupOptional_Optional? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class GroupOptional extends $pb.GeneratedMessage {
  factory GroupOptional({
    GroupOptional_Optional? optional,
  }) {
    final result = create();
    if (optional != null) result.optional = optional;
    return result;
  }

  GroupOptional._();

  factory GroupOptional.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupOptional.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupOptional',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<GroupOptional_Optional>(
        1, _omitFieldNames ? '' : 'optional', $pb.PbFieldType.OG,
        subBuilder: GroupOptional_Optional.create,
        defaultOrMaker: GroupOptional_Optional.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupOptional clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupOptional copyWith(void Function(GroupOptional) updates) =>
      super.copyWith((message) => updates(message as GroupOptional))
          as GroupOptional;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupOptional create() => GroupOptional._();
  @$core.override
  GroupOptional createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupOptional getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupOptional>(create);
  static GroupOptional? _defaultInstance;

  @$pb.TagNumber(1)
  GroupOptional_Optional get optional => $_getN(0);
  @$pb.TagNumber(1)
  set optional(GroupOptional_Optional value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOptional() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptional() => $_clearField(1);
}

class GroupRepeated_Repeated extends $pb.GeneratedMessage {
  factory GroupRepeated_Repeated({
    $core.int? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  GroupRepeated_Repeated._();

  factory GroupRepeated_Repeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupRepeated_Repeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupRepeated.Repeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRepeated_Repeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRepeated_Repeated copyWith(
          void Function(GroupRepeated_Repeated) updates) =>
      super.copyWith((message) => updates(message as GroupRepeated_Repeated))
          as GroupRepeated_Repeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupRepeated_Repeated create() => GroupRepeated_Repeated._();
  @$core.override
  GroupRepeated_Repeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupRepeated_Repeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupRepeated_Repeated>(create);
  static GroupRepeated_Repeated? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class GroupRepeated extends $pb.GeneratedMessage {
  factory GroupRepeated({
    $core.Iterable<GroupRepeated_Repeated>? repeated,
  }) {
    final result = create();
    if (repeated != null) result.repeated.addAll(repeated);
    return result;
  }

  GroupRepeated._();

  factory GroupRepeated.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupRepeated.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupRepeated',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<GroupRepeated_Repeated>(
        1, _omitFieldNames ? '' : 'repeated', $pb.PbFieldType.PG,
        subBuilder: GroupRepeated_Repeated.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRepeated clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRepeated copyWith(void Function(GroupRepeated) updates) =>
      super.copyWith((message) => updates(message as GroupRepeated))
          as GroupRepeated;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupRepeated create() => GroupRepeated._();
  @$core.override
  GroupRepeated createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupRepeated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupRepeated>(create);
  static GroupRepeated? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GroupRepeated_Repeated> get repeated => $_getList(0);
}

class GroupRequired_Required extends $pb.GeneratedMessage {
  factory GroupRequired_Required({
    $core.bool? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  GroupRequired_Required._();

  factory GroupRequired_Required.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupRequired_Required.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupRequired.Required',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRequired_Required clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRequired_Required copyWith(
          void Function(GroupRequired_Required) updates) =>
      super.copyWith((message) => updates(message as GroupRequired_Required))
          as GroupRequired_Required;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupRequired_Required create() => GroupRequired_Required._();
  @$core.override
  GroupRequired_Required createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupRequired_Required getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupRequired_Required>(create);
  static GroupRequired_Required? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class GroupRequired extends $pb.GeneratedMessage {
  factory GroupRequired({
    GroupRequired_Required? required,
  }) {
    final result = create();
    if (required != null) result.required = required;
    return result;
  }

  GroupRequired._();

  factory GroupRequired.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupRequired.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupRequired',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<GroupRequired_Required>(
        1, _omitFieldNames ? '' : 'required', $pb.PbFieldType.QG,
        subBuilder: GroupRequired_Required.create,
        defaultOrMaker: GroupRequired_Required.getDefault);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRequired clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupRequired copyWith(void Function(GroupRequired) updates) =>
      super.copyWith((message) => updates(message as GroupRequired))
          as GroupRequired;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupRequired create() => GroupRequired._();
  @$core.override
  GroupRequired createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupRequired getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupRequired>(create);
  static GroupRequired? _defaultInstance;

  @$pb.TagNumber(1)
  GroupRequired_Required get required => $_getN(0);
  @$pb.TagNumber(1)
  set required(GroupRequired_Required value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequired() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequired() => $_clearField(1);
}

class GroupCustom_Custom extends $pb.GeneratedMessage {
  factory GroupCustom_Custom({
    $core.int? value,
    $core.int? div,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (div != null) result.div = div;
    return result;
  }

  GroupCustom_Custom._();

  factory GroupCustom_Custom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupCustom_Custom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupCustom.Custom',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'value')
    ..aI(2, _omitFieldNames ? '' : 'div')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupCustom_Custom clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupCustom_Custom copyWith(void Function(GroupCustom_Custom) updates) =>
      super.copyWith((message) => updates(message as GroupCustom_Custom))
          as GroupCustom_Custom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupCustom_Custom create() => GroupCustom_Custom._();
  @$core.override
  GroupCustom_Custom createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupCustom_Custom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupCustom_Custom>(create);
  static GroupCustom_Custom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get div => $_getIZ(1);
  @$pb.TagNumber(2)
  set div($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiv() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiv() => $_clearField(2);
}

class GroupCustom extends $pb.GeneratedMessage {
  factory GroupCustom({
    GroupCustom_Custom? custom,
  }) {
    final result = create();
    if (custom != null) result.custom = custom;
    return result;
  }

  GroupCustom._();

  factory GroupCustom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupCustom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupCustom',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<GroupCustom_Custom>(
        1, _omitFieldNames ? '' : 'custom', $pb.PbFieldType.OG,
        subBuilder: GroupCustom_Custom.create,
        defaultOrMaker: GroupCustom_Custom.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupCustom clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupCustom copyWith(void Function(GroupCustom) updates) =>
      super.copyWith((message) => updates(message as GroupCustom))
          as GroupCustom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupCustom create() => GroupCustom._();
  @$core.override
  GroupCustom createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupCustom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupCustom>(create);
  static GroupCustom? _defaultInstance;

  @$pb.TagNumber(1)
  GroupCustom_Custom get custom => $_getN(0);
  @$pb.TagNumber(1)
  set custom(GroupCustom_Custom value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCustom() => $_has(0);
  @$pb.TagNumber(1)
  void clearCustom() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
