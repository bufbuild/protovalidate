// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/enums.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'enums.pbenum.dart';
import 'other_package/embed.pbenum.dart' as $0;
import 'yet_another_package/embed2.pbenum.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'enums.pbenum.dart';

class EnumNone extends $pb.GeneratedMessage {
  factory EnumNone({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumNone._();

  factory EnumNone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumNone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumNone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumNone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumNone copyWith(void Function(EnumNone) updates) =>
      super.copyWith((message) => updates(message as EnumNone)) as EnumNone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumNone create() => EnumNone._();
  @$core.override
  EnumNone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumNone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnumNone>(create);
  static EnumNone? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumConst extends $pb.GeneratedMessage {
  factory EnumConst({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumConst._();

  factory EnumConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumConst copyWith(void Function(EnumConst) updates) =>
      super.copyWith((message) => updates(message as EnumConst)) as EnumConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumConst create() => EnumConst._();
  @$core.override
  EnumConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumConst getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnumConst>(create);
  static EnumConst? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumAliasConst extends $pb.GeneratedMessage {
  factory EnumAliasConst({
    TestEnumAlias? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumAliasConst._();

  factory EnumAliasConst.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumAliasConst.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumAliasConst',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnumAlias>(1, _omitFieldNames ? '' : 'val',
        enumValues: TestEnumAlias.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasConst clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasConst copyWith(void Function(EnumAliasConst) updates) =>
      super.copyWith((message) => updates(message as EnumAliasConst))
          as EnumAliasConst;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumAliasConst create() => EnumAliasConst._();
  @$core.override
  EnumAliasConst createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumAliasConst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumAliasConst>(create);
  static EnumAliasConst? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnumAlias get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnumAlias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumDefined extends $pb.GeneratedMessage {
  factory EnumDefined({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumDefined._();

  factory EnumDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumDefined copyWith(void Function(EnumDefined) updates) =>
      super.copyWith((message) => updates(message as EnumDefined))
          as EnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumDefined create() => EnumDefined._();
  @$core.override
  EnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumDefined>(create);
  static EnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumAliasDefined extends $pb.GeneratedMessage {
  factory EnumAliasDefined({
    TestEnumAlias? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumAliasDefined._();

  factory EnumAliasDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumAliasDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumAliasDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnumAlias>(1, _omitFieldNames ? '' : 'val',
        enumValues: TestEnumAlias.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasDefined copyWith(void Function(EnumAliasDefined) updates) =>
      super.copyWith((message) => updates(message as EnumAliasDefined))
          as EnumAliasDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumAliasDefined create() => EnumAliasDefined._();
  @$core.override
  EnumAliasDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumAliasDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumAliasDefined>(create);
  static EnumAliasDefined? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnumAlias get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnumAlias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumIn extends $pb.GeneratedMessage {
  factory EnumIn({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumIn._();

  factory EnumIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumIn copyWith(void Function(EnumIn) updates) =>
      super.copyWith((message) => updates(message as EnumIn)) as EnumIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumIn create() => EnumIn._();
  @$core.override
  EnumIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnumIn>(create);
  static EnumIn? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumAliasIn extends $pb.GeneratedMessage {
  factory EnumAliasIn({
    TestEnumAlias? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumAliasIn._();

  factory EnumAliasIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumAliasIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumAliasIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnumAlias>(1, _omitFieldNames ? '' : 'val',
        enumValues: TestEnumAlias.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasIn copyWith(void Function(EnumAliasIn) updates) =>
      super.copyWith((message) => updates(message as EnumAliasIn))
          as EnumAliasIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumAliasIn create() => EnumAliasIn._();
  @$core.override
  EnumAliasIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumAliasIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumAliasIn>(create);
  static EnumAliasIn? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnumAlias get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnumAlias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumNotIn extends $pb.GeneratedMessage {
  factory EnumNotIn({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumNotIn._();

  factory EnumNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumNotIn copyWith(void Function(EnumNotIn) updates) =>
      super.copyWith((message) => updates(message as EnumNotIn)) as EnumNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumNotIn create() => EnumNotIn._();
  @$core.override
  EnumNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumNotIn getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnumNotIn>(create);
  static EnumNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumAliasNotIn extends $pb.GeneratedMessage {
  factory EnumAliasNotIn({
    TestEnumAlias? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumAliasNotIn._();

  factory EnumAliasNotIn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumAliasNotIn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumAliasNotIn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnumAlias>(1, _omitFieldNames ? '' : 'val',
        enumValues: TestEnumAlias.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasNotIn clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumAliasNotIn copyWith(void Function(EnumAliasNotIn) updates) =>
      super.copyWith((message) => updates(message as EnumAliasNotIn))
          as EnumAliasNotIn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumAliasNotIn create() => EnumAliasNotIn._();
  @$core.override
  EnumAliasNotIn createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumAliasNotIn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumAliasNotIn>(create);
  static EnumAliasNotIn? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnumAlias get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnumAlias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumExternal extends $pb.GeneratedMessage {
  factory EnumExternal({
    $0.Embed_Enumerated? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumExternal._();

  factory EnumExternal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumExternal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumExternal',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<$0.Embed_Enumerated>(1, _omitFieldNames ? '' : 'val',
        enumValues: $0.Embed_Enumerated.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExternal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExternal copyWith(void Function(EnumExternal) updates) =>
      super.copyWith((message) => updates(message as EnumExternal))
          as EnumExternal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumExternal create() => EnumExternal._();
  @$core.override
  EnumExternal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumExternal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumExternal>(create);
  static EnumExternal? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Embed_Enumerated get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Embed_Enumerated value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class EnumExternal2 extends $pb.GeneratedMessage {
  factory EnumExternal2({
    $0.Embed_DoubleEmbed_DoubleEnumerated? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumExternal2._();

  factory EnumExternal2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumExternal2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumExternal2',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<$0.Embed_DoubleEmbed_DoubleEnumerated>(1, _omitFieldNames ? '' : 'val',
        enumValues: $0.Embed_DoubleEmbed_DoubleEnumerated.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExternal2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExternal2 copyWith(void Function(EnumExternal2) updates) =>
      super.copyWith((message) => updates(message as EnumExternal2))
          as EnumExternal2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumExternal2 create() => EnumExternal2._();
  @$core.override
  EnumExternal2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumExternal2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumExternal2>(create);
  static EnumExternal2? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Embed_DoubleEmbed_DoubleEnumerated get val => $_getN(0);
  @$pb.TagNumber(1)
  set val($0.Embed_DoubleEmbed_DoubleEnumerated value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

class RepeatedEnumDefined extends $pb.GeneratedMessage {
  factory RepeatedEnumDefined({
    $core.Iterable<TestEnum>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedEnumDefined._();

  factory RepeatedEnumDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedEnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedEnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<TestEnum>(1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: TestEnum.valueOf,
        enumValues: TestEnum.values,
        defaultEnumValue: TestEnum.TEST_ENUM_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedEnumDefined copyWith(void Function(RepeatedEnumDefined) updates) =>
      super.copyWith((message) => updates(message as RepeatedEnumDefined))
          as RepeatedEnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedEnumDefined create() => RepeatedEnumDefined._();
  @$core.override
  RepeatedEnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedEnumDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedEnumDefined>(create);
  static RepeatedEnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TestEnum> get val => $_getList(0);
}

class RepeatedExternalEnumDefined extends $pb.GeneratedMessage {
  factory RepeatedExternalEnumDefined({
    $core.Iterable<$0.Embed_Enumerated>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedExternalEnumDefined._();

  factory RepeatedExternalEnumDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedExternalEnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedExternalEnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<$0.Embed_Enumerated>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: $0.Embed_Enumerated.valueOf,
        enumValues: $0.Embed_Enumerated.values,
        defaultEnumValue: $0.Embed_Enumerated.ENUMERATED_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExternalEnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedExternalEnumDefined copyWith(
          void Function(RepeatedExternalEnumDefined) updates) =>
      super.copyWith(
              (message) => updates(message as RepeatedExternalEnumDefined))
          as RepeatedExternalEnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedExternalEnumDefined create() =>
      RepeatedExternalEnumDefined._();
  @$core.override
  RepeatedExternalEnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedExternalEnumDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedExternalEnumDefined>(create);
  static RepeatedExternalEnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Embed_Enumerated> get val => $_getList(0);
}

class RepeatedYetAnotherExternalEnumDefined extends $pb.GeneratedMessage {
  factory RepeatedYetAnotherExternalEnumDefined({
    $core.Iterable<$1.Embed_Enumerated>? val,
  }) {
    final result = create();
    if (val != null) result.val.addAll(val);
    return result;
  }

  RepeatedYetAnotherExternalEnumDefined._();

  factory RepeatedYetAnotherExternalEnumDefined.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedYetAnotherExternalEnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedYetAnotherExternalEnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..pc<$1.Embed_Enumerated>(
        1, _omitFieldNames ? '' : 'val', $pb.PbFieldType.KE,
        valueOf: $1.Embed_Enumerated.valueOf,
        enumValues: $1.Embed_Enumerated.values,
        defaultEnumValue: $1.Embed_Enumerated.ENUMERATED_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedYetAnotherExternalEnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedYetAnotherExternalEnumDefined copyWith(
          void Function(RepeatedYetAnotherExternalEnumDefined) updates) =>
      super.copyWith((message) =>
              updates(message as RepeatedYetAnotherExternalEnumDefined))
          as RepeatedYetAnotherExternalEnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedYetAnotherExternalEnumDefined create() =>
      RepeatedYetAnotherExternalEnumDefined._();
  @$core.override
  RepeatedYetAnotherExternalEnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedYetAnotherExternalEnumDefined getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RepeatedYetAnotherExternalEnumDefined>(create);
  static RepeatedYetAnotherExternalEnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Embed_Enumerated> get val => $_getList(0);
}

class MapEnumDefined extends $pb.GeneratedMessage {
  factory MapEnumDefined({
    $core.Iterable<$core.MapEntry<$core.String, TestEnum>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapEnumDefined._();

  factory MapEnumDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapEnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapEnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, TestEnum>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapEnumDefined.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OE,
        valueOf: TestEnum.valueOf,
        enumValues: TestEnum.values,
        valueDefaultOrMaker: TestEnum.TEST_ENUM_UNSPECIFIED,
        defaultEnumValue: TestEnum.TEST_ENUM_UNSPECIFIED,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapEnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapEnumDefined copyWith(void Function(MapEnumDefined) updates) =>
      super.copyWith((message) => updates(message as MapEnumDefined))
          as MapEnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapEnumDefined create() => MapEnumDefined._();
  @$core.override
  MapEnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapEnumDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapEnumDefined>(create);
  static MapEnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, TestEnum> get val => $_getMap(0);
}

class MapExternalEnumDefined extends $pb.GeneratedMessage {
  factory MapExternalEnumDefined({
    $core.Iterable<$core.MapEntry<$core.String, $0.Embed_Enumerated>>? val,
  }) {
    final result = create();
    if (val != null) result.val.addEntries(val);
    return result;
  }

  MapExternalEnumDefined._();

  factory MapExternalEnumDefined.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapExternalEnumDefined.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapExternalEnumDefined',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..m<$core.String, $0.Embed_Enumerated>(1, _omitFieldNames ? '' : 'val',
        entryClassName: 'MapExternalEnumDefined.ValEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OE,
        valueOf: $0.Embed_Enumerated.valueOf,
        enumValues: $0.Embed_Enumerated.values,
        valueDefaultOrMaker: $0.Embed_Enumerated.ENUMERATED_UNSPECIFIED,
        defaultEnumValue: $0.Embed_Enumerated.ENUMERATED_UNSPECIFIED,
        packageName: const $pb.PackageName('buf.validate.conformance.cases'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExternalEnumDefined clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapExternalEnumDefined copyWith(
          void Function(MapExternalEnumDefined) updates) =>
      super.copyWith((message) => updates(message as MapExternalEnumDefined))
          as MapExternalEnumDefined;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapExternalEnumDefined create() => MapExternalEnumDefined._();
  @$core.override
  MapExternalEnumDefined createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapExternalEnumDefined getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapExternalEnumDefined>(create);
  static MapExternalEnumDefined? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $0.Embed_Enumerated> get val => $_getMap(0);
}

enum EnumInsideOneof_Foo { val, notSet }

enum EnumInsideOneof_Bar { val2, notSet }

class EnumInsideOneof extends $pb.GeneratedMessage {
  factory EnumInsideOneof({
    TestEnum? val,
    TestEnum? val2,
  }) {
    final result = create();
    if (val != null) result.val = val;
    if (val2 != null) result.val2 = val2;
    return result;
  }

  EnumInsideOneof._();

  factory EnumInsideOneof.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumInsideOneof.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EnumInsideOneof_Foo>
      _EnumInsideOneof_FooByTag = {
    1: EnumInsideOneof_Foo.val,
    0: EnumInsideOneof_Foo.notSet
  };
  static const $core.Map<$core.int, EnumInsideOneof_Bar>
      _EnumInsideOneof_BarByTag = {
    2: EnumInsideOneof_Bar.val2,
    0: EnumInsideOneof_Bar.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumInsideOneof',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..oo(1, [2])
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..aE<TestEnum>(2, _omitFieldNames ? '' : 'val2',
        enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumInsideOneof clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumInsideOneof copyWith(void Function(EnumInsideOneof) updates) =>
      super.copyWith((message) => updates(message as EnumInsideOneof))
          as EnumInsideOneof;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumInsideOneof create() => EnumInsideOneof._();
  @$core.override
  EnumInsideOneof createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumInsideOneof getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumInsideOneof>(create);
  static EnumInsideOneof? _defaultInstance;

  @$pb.TagNumber(1)
  EnumInsideOneof_Foo whichFoo() => _EnumInsideOneof_FooByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearFoo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  EnumInsideOneof_Bar whichBar() => _EnumInsideOneof_BarByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(2)
  void clearBar() => $_clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);

  @$pb.TagNumber(2)
  TestEnum get val2 => $_getN(1);
  @$pb.TagNumber(2)
  set val2(TestEnum value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVal2() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal2() => $_clearField(2);
}

class EnumExample extends $pb.GeneratedMessage {
  factory EnumExample({
    TestEnum? val,
  }) {
    final result = create();
    if (val != null) result.val = val;
    return result;
  }

  EnumExample._();

  factory EnumExample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumExample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumExample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'buf.validate.conformance.cases'),
      createEmptyInstance: create)
    ..aE<TestEnum>(1, _omitFieldNames ? '' : 'val', enumValues: TestEnum.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumExample copyWith(void Function(EnumExample) updates) =>
      super.copyWith((message) => updates(message as EnumExample))
          as EnumExample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumExample create() => EnumExample._();
  @$core.override
  EnumExample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumExample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnumExample>(create);
  static EnumExample? _defaultInstance;

  @$pb.TagNumber(1)
  TestEnum get val => $_getN(0);
  @$pb.TagNumber(1)
  set val(TestEnum value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
