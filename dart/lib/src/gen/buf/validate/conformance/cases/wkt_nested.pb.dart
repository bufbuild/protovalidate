// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/wkt_nested.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class WktLevelOne_WktLevelTwo_WktLevelThree extends $pb.GeneratedMessage {
  factory WktLevelOne_WktLevelTwo_WktLevelThree({
    $core.String? uuid,
  }) {
    final result = create();
    if (uuid != null) result.uuid = uuid;
    return result;
  }

  WktLevelOne_WktLevelTwo_WktLevelThree._();

  factory WktLevelOne_WktLevelTwo_WktLevelThree.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WktLevelOne_WktLevelTwo_WktLevelThree.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WktLevelOne.WktLevelTwo.WktLevelThree',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne_WktLevelTwo_WktLevelThree clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne_WktLevelTwo_WktLevelThree copyWith(
          void Function(WktLevelOne_WktLevelTwo_WktLevelThree) updates) =>
      super.copyWith((message) =>
              updates(message as WktLevelOne_WktLevelTwo_WktLevelThree))
          as WktLevelOne_WktLevelTwo_WktLevelThree;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WktLevelOne_WktLevelTwo_WktLevelThree create() =>
      WktLevelOne_WktLevelTwo_WktLevelThree._();
  @$core.override
  WktLevelOne_WktLevelTwo_WktLevelThree createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WktLevelOne_WktLevelTwo_WktLevelThree getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          WktLevelOne_WktLevelTwo_WktLevelThree>(create);
  static WktLevelOne_WktLevelTwo_WktLevelThree? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => $_clearField(1);
}

class WktLevelOne_WktLevelTwo extends $pb.GeneratedMessage {
  factory WktLevelOne_WktLevelTwo({
    WktLevelOne_WktLevelTwo_WktLevelThree? three,
  }) {
    final result = create();
    if (three != null) result.three = three;
    return result;
  }

  WktLevelOne_WktLevelTwo._();

  factory WktLevelOne_WktLevelTwo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WktLevelOne_WktLevelTwo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WktLevelOne.WktLevelTwo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<WktLevelOne_WktLevelTwo_WktLevelThree>(
        1, _omitFieldNames ? '' : 'three',
        subBuilder: WktLevelOne_WktLevelTwo_WktLevelThree.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne_WktLevelTwo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne_WktLevelTwo copyWith(
          void Function(WktLevelOne_WktLevelTwo) updates) =>
      super.copyWith((message) => updates(message as WktLevelOne_WktLevelTwo))
          as WktLevelOne_WktLevelTwo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WktLevelOne_WktLevelTwo create() => WktLevelOne_WktLevelTwo._();
  @$core.override
  WktLevelOne_WktLevelTwo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WktLevelOne_WktLevelTwo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WktLevelOne_WktLevelTwo>(create);
  static WktLevelOne_WktLevelTwo? _defaultInstance;

  @$pb.TagNumber(1)
  WktLevelOne_WktLevelTwo_WktLevelThree get three => $_getN(0);
  @$pb.TagNumber(1)
  set three(WktLevelOne_WktLevelTwo_WktLevelThree value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasThree() => $_has(0);
  @$pb.TagNumber(1)
  void clearThree() => $_clearField(1);
  @$pb.TagNumber(1)
  WktLevelOne_WktLevelTwo_WktLevelThree ensureThree() => $_ensure(0);
}

class WktLevelOne extends $pb.GeneratedMessage {
  factory WktLevelOne({
    WktLevelOne_WktLevelTwo? two,
  }) {
    final result = create();
    if (two != null) result.two = two;
    return result;
  }

  WktLevelOne._();

  factory WktLevelOne.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WktLevelOne.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WktLevelOne',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aOM<WktLevelOne_WktLevelTwo>(1, _omitFieldNames ? '' : 'two',
        subBuilder: WktLevelOne_WktLevelTwo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WktLevelOne copyWith(void Function(WktLevelOne) updates) =>
      super.copyWith((message) => updates(message as WktLevelOne))
          as WktLevelOne;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WktLevelOne create() => WktLevelOne._();
  @$core.override
  WktLevelOne createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WktLevelOne getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WktLevelOne>(create);
  static WktLevelOne? _defaultInstance;

  @$pb.TagNumber(1)
  WktLevelOne_WktLevelTwo get two => $_getN(0);
  @$pb.TagNumber(1)
  set two(WktLevelOne_WktLevelTwo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTwo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTwo() => $_clearField(1);
  @$pb.TagNumber(1)
  WktLevelOne_WktLevelTwo ensureTwo() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
