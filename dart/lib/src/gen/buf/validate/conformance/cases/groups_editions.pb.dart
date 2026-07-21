// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/groups_editions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GroupDelimited_Value extends $pb.GeneratedMessage {
  factory GroupDelimited_Value({
    $core.bool? x,
  }) {
    final result = create();
    if (x != null) result.x = x;
    return result;
  }

  GroupDelimited_Value._();

  factory GroupDelimited_Value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupDelimited_Value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupDelimited.Value',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'x')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupDelimited_Value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupDelimited_Value copyWith(void Function(GroupDelimited_Value) updates) =>
      super.copyWith((message) => updates(message as GroupDelimited_Value))
          as GroupDelimited_Value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupDelimited_Value create() => GroupDelimited_Value._();
  @$core.override
  GroupDelimited_Value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupDelimited_Value getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupDelimited_Value>(create);
  static GroupDelimited_Value? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get x => $_getBF(0);
  @$pb.TagNumber(1)
  set x($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);
}

class GroupDelimited extends $pb.GeneratedMessage {
  factory GroupDelimited({
    GroupDelimited_Value? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  GroupDelimited._();

  factory GroupDelimited.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupDelimited.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupDelimited',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..a<GroupDelimited_Value>(
        1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OG,
        subBuilder: GroupDelimited_Value.create,
        defaultOrMaker: GroupDelimited_Value.getDefault)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupDelimited clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupDelimited copyWith(void Function(GroupDelimited) updates) =>
      super.copyWith((message) => updates(message as GroupDelimited))
          as GroupDelimited;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupDelimited create() => GroupDelimited._();
  @$core.override
  GroupDelimited createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupDelimited getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupDelimited>(create);
  static GroupDelimited? _defaultInstance;

  @$pb.TagNumber(1)
  GroupDelimited_Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GroupDelimited_Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
