// This is a generated file - do not edit.
//
// Generated from buf/validate/validate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/descriptor.pbenum.dart' as $3;
import '../../google/protobuf/duration.pb.dart' as $0;
import '../../google/protobuf/field_mask.pb.dart' as $1;
import '../../google/protobuf/timestamp.pb.dart' as $2;
import 'validate.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'validate.pbenum.dart';

/// `Rule` represents a validation rule written in the Common Expression
/// Language (CEL) syntax. Each Rule includes a unique identifier, an
/// optional error message, and the CEL expression to evaluate. For more
/// information, [see our documentation](https://buf.build/docs/protovalidate/schemas/custom-rules/).
///
/// ```proto
/// message Foo {
///   option (buf.validate.message).cel = {
///     id: "foo.bar"
///     message: "bar must be greater than 0"
///     expression: "this.bar > 0"
///   };
///   int32 bar = 1;
/// }
/// ```
class Rule extends $pb.GeneratedMessage {
  factory Rule({
    $core.String? id,
    $core.String? message,
    $core.String? expression,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (message != null) result.message = message;
    if (expression != null) result.expression = expression;
    return result;
  }

  Rule._();

  factory Rule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'expression')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rule copyWith(void Function(Rule) updates) =>
      super.copyWith((message) => updates(message as Rule)) as Rule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rule create() => Rule._();
  @$core.override
  Rule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rule getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rule>(create);
  static Rule? _defaultInstance;

  /// `id` is a string that serves as a machine-readable name for this Rule.
  /// It should be unique within its scope, which could be either a message or a field.
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// `message` is an optional field that provides a human-readable error message
  /// for this Rule when the CEL expression evaluates to false. If a
  /// non-empty message is provided, any strings resulting from the CEL
  /// expression evaluation are ignored.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  /// `expression` is the actual CEL expression that will be evaluated for
  /// validation. This string must resolve to either a boolean or a string
  /// value. If the expression evaluates to false or a non-empty string, the
  /// validation is considered failed, and the message is rejected.
  @$pb.TagNumber(3)
  $core.String get expression => $_getSZ(2);
  @$pb.TagNumber(3)
  set expression($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpression() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpression() => $_clearField(3);
}

/// MessageRules represents validation rules that are applied to the entire message.
/// It includes disabling options and a list of Rule messages representing Common Expression Language (CEL) validation rules.
class MessageRules extends $pb.GeneratedMessage {
  factory MessageRules({
    $core.Iterable<Rule>? cel,
    $core.Iterable<MessageOneofRule>? oneof,
    $core.Iterable<$core.String>? celExpression,
  }) {
    final result = create();
    if (cel != null) result.cel.addAll(cel);
    if (oneof != null) result.oneof.addAll(oneof);
    if (celExpression != null) result.celExpression.addAll(celExpression);
    return result;
  }

  MessageRules._();

  factory MessageRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPM<Rule>(3, _omitFieldNames ? '' : 'cel', subBuilder: Rule.create)
    ..pPM<MessageOneofRule>(4, _omitFieldNames ? '' : 'oneof',
        subBuilder: MessageOneofRule.create)
    ..pPS(5, _omitFieldNames ? '' : 'celExpression')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageRules copyWith(void Function(MessageRules) updates) =>
      super.copyWith((message) => updates(message as MessageRules))
          as MessageRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRules create() => MessageRules._();
  @$core.override
  MessageRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageRules>(create);
  static MessageRules? _defaultInstance;

  /// `cel` is a repeated field of type Rule. Each Rule specifies a validation rule to be applied to this message.
  /// These rules are written in Common Expression Language (CEL) syntax. For more information,
  /// [see our documentation](https://buf.build/docs/protovalidate/schemas/custom-rules/).
  ///
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field `foo` must be greater than 42.
  ///   option (buf.validate.message).cel = {
  ///     id: "my_message.value",
  ///     message: "must be greater than 42",
  ///     expression: "this.foo > 42",
  ///   };
  ///   optional int32 foo = 1;
  /// }
  /// ```
  @$pb.TagNumber(3)
  $pb.PbList<Rule> get cel => $_getList(0);

  /// `oneof` is a repeated field of type MessageOneofRule that specifies a list of fields
  /// of which at most one can be present. If `required` is also specified, then exactly one
  /// of the specified fields _must_ be present.
  ///
  /// This will enforce oneof-like constraints with a few features not provided by
  /// actual Protobuf oneof declarations:
  ///   1. Repeated and map fields are allowed in this validation. In a Protobuf oneof,
  ///      only scalar fields are allowed.
  ///   2. Fields with implicit presence are allowed. In a Protobuf oneof, all member
  ///      fields have explicit presence. This means that, for the purpose of determining
  ///      how many fields are set, explicitly setting such a field to its zero value is
  ///      effectively the same as not setting it at all.
  ///   3. This will always generate validation errors for a message unmarshalled from
  ///      serialized data that sets more than one field. With a Protobuf oneof, when
  ///      multiple fields are present in the serialized form, earlier values are usually
  ///      silently ignored when unmarshalling, with only the last field being set when
  ///      unmarshalling completes.
  ///
  /// Note that adding a field to a `oneof` will also set the IGNORE_IF_ZERO_VALUE on the fields. This means
  /// only the field that is set will be validated and the unset fields are not validated according to the field rules.
  /// This behavior can be overridden by setting `ignore` against a field.
  ///
  /// ```proto
  /// message MyMessage {
  ///   // Only one of `field1` or `field2` _can_ be present in this message.
  ///   option (buf.validate.message).oneof = { fields: ["field1", "field2"] };
  ///   // Exactly one of `field3` or `field4` _must_ be present in this message.
  ///   option (buf.validate.message).oneof = { fields: ["field3", "field4"], required: true };
  ///   string field1 = 1;
  ///   bytes field2 = 2;
  ///   bool field3 = 3;
  ///   int32 field4 = 4;
  /// }
  /// ```
  @$pb.TagNumber(4)
  $pb.PbList<MessageOneofRule> get oneof => $_getList(1);

  /// `cel_expression` is a repeated field CEL expressions. Each expression specifies a validation
  /// rule to be applied to this message. These rules are written in Common Expression Language (CEL) syntax.
  ///
  /// This is a simplified form of the `cel` Rule field, where only `expression` is set. This allows for
  /// simpler syntax when defining CEL Rules where `id` and `message` derived from the `expression`. `id` will
  /// be same as the `expression`.
  ///
  /// For more information, [see our documentation](https://buf.build/docs/protovalidate/schemas/custom-rules/).
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field `foo` must be greater than 42.
  ///   option (buf.validate.message).cel_expression = "this.foo > 42";
  ///   // The field `foo` must be less than 84.
  ///   option (buf.validate.message).cel_expression = "this.foo < 84";
  ///   optional int32 foo = 1;
  /// }
  /// ```
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get celExpression => $_getList(2);
}

class MessageOneofRule extends $pb.GeneratedMessage {
  factory MessageOneofRule({
    $core.Iterable<$core.String>? fields,
    $core.bool? required,
  }) {
    final result = create();
    if (fields != null) result.fields.addAll(fields);
    if (required != null) result.required = required;
    return result;
  }

  MessageOneofRule._();

  factory MessageOneofRule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MessageOneofRule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageOneofRule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'fields')
    ..aOB(2, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofRule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MessageOneofRule copyWith(void Function(MessageOneofRule) updates) =>
      super.copyWith((message) => updates(message as MessageOneofRule))
          as MessageOneofRule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageOneofRule create() => MessageOneofRule._();
  @$core.override
  MessageOneofRule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MessageOneofRule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageOneofRule>(create);
  static MessageOneofRule? _defaultInstance;

  /// A list of field names to include in the oneof. All field names must be
  /// defined in the message. At least one field must be specified, and
  /// duplicates are not permitted.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get fields => $_getList(0);

  /// If true, one of the fields specified _must_ be set.
  @$pb.TagNumber(2)
  $core.bool get required => $_getBF(1);
  @$pb.TagNumber(2)
  set required($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequired() => $_clearField(2);
}

/// The `OneofRules` message type enables you to manage rules for
/// oneof fields in your protobuf messages.
class OneofRules extends $pb.GeneratedMessage {
  factory OneofRules({
    $core.bool? required,
  }) {
    final result = create();
    if (required != null) result.required = required;
    return result;
  }

  OneofRules._();

  factory OneofRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OneofRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OneofRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OneofRules copyWith(void Function(OneofRules) updates) =>
      super.copyWith((message) => updates(message as OneofRules)) as OneofRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OneofRules create() => OneofRules._();
  @$core.override
  OneofRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OneofRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OneofRules>(create);
  static OneofRules? _defaultInstance;

  /// If `required` is true, exactly one field of the oneof must be set. A
  /// validation error is returned if no fields in the oneof are set. Further rules
  /// should be placed on the fields themselves to ensure they are valid values,
  /// such as `min_len` or `gt`.
  ///
  /// ```proto
  /// message MyMessage {
  ///   oneof value {
  ///     // Either `a` or `b` must be set. If `a` is set, it must also be
  ///     // non-empty; whereas if `b` is set, it can still be an empty string.
  ///     option (buf.validate.oneof).required = true;
  ///     string a = 1 [(buf.validate.field).string.min_len = 1];
  ///     string b = 2;
  ///   }
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.bool get required => $_getBF(0);
  @$pb.TagNumber(1)
  set required($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequired() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequired() => $_clearField(1);
}

enum FieldRules_Type {
  float,
  double_2,
  int32,
  int64,
  uint32,
  uint64,
  sint32,
  sint64,
  fixed32,
  fixed64,
  sfixed32,
  sfixed64,
  bool_13,
  string,
  bytes,
  enum_16,
  repeated,
  map,
  any,
  duration,
  timestamp,
  fieldMask,
  notSet
}

/// FieldRules encapsulates the rules for each type of field. Depending on
/// the field, the correct set should be used to ensure proper validations.
class FieldRules extends $pb.GeneratedMessage {
  factory FieldRules({
    FloatRules? float,
    DoubleRules? double_2,
    Int32Rules? int32,
    Int64Rules? int64,
    UInt32Rules? uint32,
    UInt64Rules? uint64,
    SInt32Rules? sint32,
    SInt64Rules? sint64,
    Fixed32Rules? fixed32,
    Fixed64Rules? fixed64,
    SFixed32Rules? sfixed32,
    SFixed64Rules? sfixed64,
    BoolRules? bool_13,
    StringRules? string,
    BytesRules? bytes,
    EnumRules? enum_16,
    RepeatedRules? repeated,
    MapRules? map,
    AnyRules? any,
    DurationRules? duration,
    TimestampRules? timestamp,
    $core.Iterable<Rule>? cel,
    $core.bool? required,
    Ignore? ignore,
    FieldMaskRules? fieldMask,
    $core.Iterable<$core.String>? celExpression,
  }) {
    final result = create();
    if (float != null) result.float = float;
    if (double_2 != null) result.double_2 = double_2;
    if (int32 != null) result.int32 = int32;
    if (int64 != null) result.int64 = int64;
    if (uint32 != null) result.uint32 = uint32;
    if (uint64 != null) result.uint64 = uint64;
    if (sint32 != null) result.sint32 = sint32;
    if (sint64 != null) result.sint64 = sint64;
    if (fixed32 != null) result.fixed32 = fixed32;
    if (fixed64 != null) result.fixed64 = fixed64;
    if (sfixed32 != null) result.sfixed32 = sfixed32;
    if (sfixed64 != null) result.sfixed64 = sfixed64;
    if (bool_13 != null) result.bool_13 = bool_13;
    if (string != null) result.string = string;
    if (bytes != null) result.bytes = bytes;
    if (enum_16 != null) result.enum_16 = enum_16;
    if (repeated != null) result.repeated = repeated;
    if (map != null) result.map = map;
    if (any != null) result.any = any;
    if (duration != null) result.duration = duration;
    if (timestamp != null) result.timestamp = timestamp;
    if (cel != null) result.cel.addAll(cel);
    if (required != null) result.required = required;
    if (ignore != null) result.ignore = ignore;
    if (fieldMask != null) result.fieldMask = fieldMask;
    if (celExpression != null) result.celExpression.addAll(celExpression);
    return result;
  }

  FieldRules._();

  factory FieldRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, FieldRules_Type> _FieldRules_TypeByTag = {
    1: FieldRules_Type.float,
    2: FieldRules_Type.double_2,
    3: FieldRules_Type.int32,
    4: FieldRules_Type.int64,
    5: FieldRules_Type.uint32,
    6: FieldRules_Type.uint64,
    7: FieldRules_Type.sint32,
    8: FieldRules_Type.sint64,
    9: FieldRules_Type.fixed32,
    10: FieldRules_Type.fixed64,
    11: FieldRules_Type.sfixed32,
    12: FieldRules_Type.sfixed64,
    13: FieldRules_Type.bool_13,
    14: FieldRules_Type.string,
    15: FieldRules_Type.bytes,
    16: FieldRules_Type.enum_16,
    18: FieldRules_Type.repeated,
    19: FieldRules_Type.map,
    20: FieldRules_Type.any,
    21: FieldRules_Type.duration,
    22: FieldRules_Type.timestamp,
    28: FieldRules_Type.fieldMask,
    0: FieldRules_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      18,
      19,
      20,
      21,
      22,
      28
    ])
    ..aOM<FloatRules>(1, _omitFieldNames ? '' : 'float',
        subBuilder: FloatRules.create)
    ..aOM<DoubleRules>(2, _omitFieldNames ? '' : 'double',
        subBuilder: DoubleRules.create)
    ..aOM<Int32Rules>(3, _omitFieldNames ? '' : 'int32',
        subBuilder: Int32Rules.create)
    ..aOM<Int64Rules>(4, _omitFieldNames ? '' : 'int64',
        subBuilder: Int64Rules.create)
    ..aOM<UInt32Rules>(5, _omitFieldNames ? '' : 'uint32',
        subBuilder: UInt32Rules.create)
    ..aOM<UInt64Rules>(6, _omitFieldNames ? '' : 'uint64',
        subBuilder: UInt64Rules.create)
    ..aOM<SInt32Rules>(7, _omitFieldNames ? '' : 'sint32',
        subBuilder: SInt32Rules.create)
    ..aOM<SInt64Rules>(8, _omitFieldNames ? '' : 'sint64',
        subBuilder: SInt64Rules.create)
    ..aOM<Fixed32Rules>(9, _omitFieldNames ? '' : 'fixed32',
        subBuilder: Fixed32Rules.create)
    ..aOM<Fixed64Rules>(10, _omitFieldNames ? '' : 'fixed64',
        subBuilder: Fixed64Rules.create)
    ..aOM<SFixed32Rules>(11, _omitFieldNames ? '' : 'sfixed32',
        subBuilder: SFixed32Rules.create)
    ..aOM<SFixed64Rules>(12, _omitFieldNames ? '' : 'sfixed64',
        subBuilder: SFixed64Rules.create)
    ..aOM<BoolRules>(13, _omitFieldNames ? '' : 'bool',
        subBuilder: BoolRules.create)
    ..aOM<StringRules>(14, _omitFieldNames ? '' : 'string',
        subBuilder: StringRules.create)
    ..aOM<BytesRules>(15, _omitFieldNames ? '' : 'bytes',
        subBuilder: BytesRules.create)
    ..aOM<EnumRules>(16, _omitFieldNames ? '' : 'enum',
        subBuilder: EnumRules.create)
    ..aOM<RepeatedRules>(18, _omitFieldNames ? '' : 'repeated',
        subBuilder: RepeatedRules.create)
    ..aOM<MapRules>(19, _omitFieldNames ? '' : 'map',
        subBuilder: MapRules.create)
    ..aOM<AnyRules>(20, _omitFieldNames ? '' : 'any',
        subBuilder: AnyRules.create)
    ..aOM<DurationRules>(21, _omitFieldNames ? '' : 'duration',
        subBuilder: DurationRules.create)
    ..aOM<TimestampRules>(22, _omitFieldNames ? '' : 'timestamp',
        subBuilder: TimestampRules.create)
    ..pPM<Rule>(23, _omitFieldNames ? '' : 'cel', subBuilder: Rule.create)
    ..aOB(25, _omitFieldNames ? '' : 'required')
    ..aE<Ignore>(27, _omitFieldNames ? '' : 'ignore', enumValues: Ignore.values)
    ..aOM<FieldMaskRules>(28, _omitFieldNames ? '' : 'fieldMask',
        subBuilder: FieldMaskRules.create)
    ..pPS(29, _omitFieldNames ? '' : 'celExpression');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldRules copyWith(void Function(FieldRules) updates) =>
      super.copyWith((message) => updates(message as FieldRules)) as FieldRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldRules create() => FieldRules._();
  @$core.override
  FieldRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldRules>(create);
  static FieldRules? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(28)
  FieldRules_Type whichType() => _FieldRules_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(28)
  void clearType() => $_clearField($_whichOneof(0));

  /// Scalar Field Types
  @$pb.TagNumber(1)
  FloatRules get float => $_getN(0);
  @$pb.TagNumber(1)
  set float(FloatRules value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFloat() => $_has(0);
  @$pb.TagNumber(1)
  void clearFloat() => $_clearField(1);
  @$pb.TagNumber(1)
  FloatRules ensureFloat() => $_ensure(0);

  @$pb.TagNumber(2)
  DoubleRules get double_2 => $_getN(1);
  @$pb.TagNumber(2)
  set double_2(DoubleRules value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDouble_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDouble_2() => $_clearField(2);
  @$pb.TagNumber(2)
  DoubleRules ensureDouble_2() => $_ensure(1);

  @$pb.TagNumber(3)
  Int32Rules get int32 => $_getN(2);
  @$pb.TagNumber(3)
  set int32(Int32Rules value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInt32() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt32() => $_clearField(3);
  @$pb.TagNumber(3)
  Int32Rules ensureInt32() => $_ensure(2);

  @$pb.TagNumber(4)
  Int64Rules get int64 => $_getN(3);
  @$pb.TagNumber(4)
  set int64(Int64Rules value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasInt64() => $_has(3);
  @$pb.TagNumber(4)
  void clearInt64() => $_clearField(4);
  @$pb.TagNumber(4)
  Int64Rules ensureInt64() => $_ensure(3);

  @$pb.TagNumber(5)
  UInt32Rules get uint32 => $_getN(4);
  @$pb.TagNumber(5)
  set uint32(UInt32Rules value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUint32() => $_has(4);
  @$pb.TagNumber(5)
  void clearUint32() => $_clearField(5);
  @$pb.TagNumber(5)
  UInt32Rules ensureUint32() => $_ensure(4);

  @$pb.TagNumber(6)
  UInt64Rules get uint64 => $_getN(5);
  @$pb.TagNumber(6)
  set uint64(UInt64Rules value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasUint64() => $_has(5);
  @$pb.TagNumber(6)
  void clearUint64() => $_clearField(6);
  @$pb.TagNumber(6)
  UInt64Rules ensureUint64() => $_ensure(5);

  @$pb.TagNumber(7)
  SInt32Rules get sint32 => $_getN(6);
  @$pb.TagNumber(7)
  set sint32(SInt32Rules value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSint32() => $_has(6);
  @$pb.TagNumber(7)
  void clearSint32() => $_clearField(7);
  @$pb.TagNumber(7)
  SInt32Rules ensureSint32() => $_ensure(6);

  @$pb.TagNumber(8)
  SInt64Rules get sint64 => $_getN(7);
  @$pb.TagNumber(8)
  set sint64(SInt64Rules value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSint64() => $_has(7);
  @$pb.TagNumber(8)
  void clearSint64() => $_clearField(8);
  @$pb.TagNumber(8)
  SInt64Rules ensureSint64() => $_ensure(7);

  @$pb.TagNumber(9)
  Fixed32Rules get fixed32 => $_getN(8);
  @$pb.TagNumber(9)
  set fixed32(Fixed32Rules value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFixed32() => $_has(8);
  @$pb.TagNumber(9)
  void clearFixed32() => $_clearField(9);
  @$pb.TagNumber(9)
  Fixed32Rules ensureFixed32() => $_ensure(8);

  @$pb.TagNumber(10)
  Fixed64Rules get fixed64 => $_getN(9);
  @$pb.TagNumber(10)
  set fixed64(Fixed64Rules value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFixed64() => $_has(9);
  @$pb.TagNumber(10)
  void clearFixed64() => $_clearField(10);
  @$pb.TagNumber(10)
  Fixed64Rules ensureFixed64() => $_ensure(9);

  @$pb.TagNumber(11)
  SFixed32Rules get sfixed32 => $_getN(10);
  @$pb.TagNumber(11)
  set sfixed32(SFixed32Rules value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSfixed32() => $_has(10);
  @$pb.TagNumber(11)
  void clearSfixed32() => $_clearField(11);
  @$pb.TagNumber(11)
  SFixed32Rules ensureSfixed32() => $_ensure(10);

  @$pb.TagNumber(12)
  SFixed64Rules get sfixed64 => $_getN(11);
  @$pb.TagNumber(12)
  set sfixed64(SFixed64Rules value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSfixed64() => $_has(11);
  @$pb.TagNumber(12)
  void clearSfixed64() => $_clearField(12);
  @$pb.TagNumber(12)
  SFixed64Rules ensureSfixed64() => $_ensure(11);

  @$pb.TagNumber(13)
  BoolRules get bool_13 => $_getN(12);
  @$pb.TagNumber(13)
  set bool_13(BoolRules value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasBool_13() => $_has(12);
  @$pb.TagNumber(13)
  void clearBool_13() => $_clearField(13);
  @$pb.TagNumber(13)
  BoolRules ensureBool_13() => $_ensure(12);

  @$pb.TagNumber(14)
  StringRules get string => $_getN(13);
  @$pb.TagNumber(14)
  set string(StringRules value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasString() => $_has(13);
  @$pb.TagNumber(14)
  void clearString() => $_clearField(14);
  @$pb.TagNumber(14)
  StringRules ensureString() => $_ensure(13);

  @$pb.TagNumber(15)
  BytesRules get bytes => $_getN(14);
  @$pb.TagNumber(15)
  set bytes(BytesRules value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasBytes() => $_has(14);
  @$pb.TagNumber(15)
  void clearBytes() => $_clearField(15);
  @$pb.TagNumber(15)
  BytesRules ensureBytes() => $_ensure(14);

  /// Complex Field Types
  @$pb.TagNumber(16)
  EnumRules get enum_16 => $_getN(15);
  @$pb.TagNumber(16)
  set enum_16(EnumRules value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasEnum_16() => $_has(15);
  @$pb.TagNumber(16)
  void clearEnum_16() => $_clearField(16);
  @$pb.TagNumber(16)
  EnumRules ensureEnum_16() => $_ensure(15);

  @$pb.TagNumber(18)
  RepeatedRules get repeated => $_getN(16);
  @$pb.TagNumber(18)
  set repeated(RepeatedRules value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasRepeated() => $_has(16);
  @$pb.TagNumber(18)
  void clearRepeated() => $_clearField(18);
  @$pb.TagNumber(18)
  RepeatedRules ensureRepeated() => $_ensure(16);

  @$pb.TagNumber(19)
  MapRules get map => $_getN(17);
  @$pb.TagNumber(19)
  set map(MapRules value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasMap() => $_has(17);
  @$pb.TagNumber(19)
  void clearMap() => $_clearField(19);
  @$pb.TagNumber(19)
  MapRules ensureMap() => $_ensure(17);

  /// Well-Known Field Types
  @$pb.TagNumber(20)
  AnyRules get any => $_getN(18);
  @$pb.TagNumber(20)
  set any(AnyRules value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasAny() => $_has(18);
  @$pb.TagNumber(20)
  void clearAny() => $_clearField(20);
  @$pb.TagNumber(20)
  AnyRules ensureAny() => $_ensure(18);

  @$pb.TagNumber(21)
  DurationRules get duration => $_getN(19);
  @$pb.TagNumber(21)
  set duration(DurationRules value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasDuration() => $_has(19);
  @$pb.TagNumber(21)
  void clearDuration() => $_clearField(21);
  @$pb.TagNumber(21)
  DurationRules ensureDuration() => $_ensure(19);

  @$pb.TagNumber(22)
  TimestampRules get timestamp => $_getN(20);
  @$pb.TagNumber(22)
  set timestamp(TimestampRules value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasTimestamp() => $_has(20);
  @$pb.TagNumber(22)
  void clearTimestamp() => $_clearField(22);
  @$pb.TagNumber(22)
  TimestampRules ensureTimestamp() => $_ensure(20);

  /// `cel` is a repeated field used to represent a textual expression
  /// in the Common Expression Language (CEL) syntax. For more information,
  /// [see our documentation](https://buf.build/docs/protovalidate/schemas/custom-rules/).
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field `value` must be greater than 42.
  ///   optional int32 value = 1 [(buf.validate.field).cel = {
  ///     id: "my_message.value",
  ///     message: "must be greater than 42",
  ///     expression: "this > 42",
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(23)
  $pb.PbList<Rule> get cel => $_getList(21);

  /// If `required` is true, the field must be set. A validation error is returned
  /// if the field is not set.
  ///
  /// ```proto
  /// syntax="proto3";
  ///
  /// message FieldsWithPresence {
  ///   // Requires any string to be set, including the empty string.
  ///   optional string link = 1 [
  ///     (buf.validate.field).required = true
  ///   ];
  ///   // Requires true or false to be set.
  ///   optional bool disabled = 2 [
  ///     (buf.validate.field).required = true
  ///   ];
  ///   // Requires a message to be set, including the empty message.
  ///   SomeMessage msg = 4 [
  ///     (buf.validate.field).required = true
  ///   ];
  /// }
  /// ```
  ///
  /// All fields in the example above track presence. By default, Protovalidate
  /// ignores rules on those fields if no value is set. `required` ensures that
  /// the fields are set and valid.
  ///
  /// Fields that don't track presence are always validated by Protovalidate,
  /// whether they are set or not. It is not necessary to add `required`. It
  /// can be added to indicate that the field cannot be the zero value.
  ///
  /// ```proto
  /// syntax="proto3";
  ///
  /// message FieldsWithoutPresence {
  ///   // `string.email` always applies, even to an empty string.
  ///   string link = 1 [
  ///     (buf.validate.field).string.email = true
  ///   ];
  ///   // `repeated.min_items` always applies, even to an empty list.
  ///   repeated string labels = 2 [
  ///     (buf.validate.field).repeated.min_items = 1
  ///   ];
  ///   // `required`, for fields that don't track presence, indicates
  ///   // the value of the field can't be the zero value.
  ///   int32 zero_value_not_allowed = 3 [
  ///     (buf.validate.field).required = true
  ///   ];
  /// }
  /// ```
  ///
  /// To learn which fields track presence, see the
  /// [Field Presence cheat sheet](https://protobuf.dev/programming-guides/field_presence/#cheat).
  ///
  /// Note: While field rules can be applied to repeated items, map keys, and map
  /// values, the elements are always considered to be set. Consequently,
  /// specifying `repeated.items.required` is redundant.
  @$pb.TagNumber(25)
  $core.bool get required => $_getBF(22);
  @$pb.TagNumber(25)
  set required($core.bool value) => $_setBool(22, value);
  @$pb.TagNumber(25)
  $core.bool hasRequired() => $_has(22);
  @$pb.TagNumber(25)
  void clearRequired() => $_clearField(25);

  /// Ignore validation rules on the field if its value matches the specified
  /// criteria. See the `Ignore` enum for details.
  ///
  /// ```proto
  /// message UpdateRequest {
  ///   // The uri rule only applies if the field is not an empty string.
  ///   string url = 1 [
  ///     (buf.validate.field).ignore = IGNORE_IF_ZERO_VALUE,
  ///     (buf.validate.field).string.uri = true
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(27)
  Ignore get ignore => $_getN(23);
  @$pb.TagNumber(27)
  set ignore(Ignore value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasIgnore() => $_has(23);
  @$pb.TagNumber(27)
  void clearIgnore() => $_clearField(27);

  @$pb.TagNumber(28)
  FieldMaskRules get fieldMask => $_getN(24);
  @$pb.TagNumber(28)
  set fieldMask(FieldMaskRules value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasFieldMask() => $_has(24);
  @$pb.TagNumber(28)
  void clearFieldMask() => $_clearField(28);
  @$pb.TagNumber(28)
  FieldMaskRules ensureFieldMask() => $_ensure(24);

  /// `cel_expression` is a repeated field CEL expressions. Each expression specifies a validation
  /// rule to be applied to this message. These rules are written in Common Expression Language (CEL) syntax.
  ///
  /// This is a simplified form of the `cel` Rule field, where only `expression` is set. This allows for
  /// simpler syntax when defining CEL Rules where `id` and `message` derived from the `expression`. `id` will
  /// be same as the `expression`.
  ///
  /// For more information, [see our documentation](https://buf.build/docs/protovalidate/schemas/custom-rules/).
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field `value` must be greater than 42.
  ///   optional int32 value = 1 [(buf.validate.field).cel_expression = "this > 42"];
  /// }
  /// ```
  @$pb.TagNumber(29)
  $pb.PbList<$core.String> get celExpression => $_getList(25);
}

/// PredefinedRules are custom rules that can be re-used with
/// multiple fields.
class PredefinedRules extends $pb.GeneratedMessage {
  factory PredefinedRules({
    $core.Iterable<Rule>? cel,
  }) {
    final result = create();
    if (cel != null) result.cel.addAll(cel);
    return result;
  }

  PredefinedRules._();

  factory PredefinedRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PredefinedRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PredefinedRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPM<Rule>(1, _omitFieldNames ? '' : 'cel', subBuilder: Rule.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PredefinedRules copyWith(void Function(PredefinedRules) updates) =>
      super.copyWith((message) => updates(message as PredefinedRules))
          as PredefinedRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PredefinedRules create() => PredefinedRules._();
  @$core.override
  PredefinedRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PredefinedRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PredefinedRules>(create);
  static PredefinedRules? _defaultInstance;

  /// `cel` is a repeated field used to represent a textual expression
  /// in the Common Expression Language (CEL) syntax. For more information,
  /// [see our documentation](https://buf.build/docs/protovalidate/schemas/predefined-rules/).
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field `value` must be greater than 42.
  ///   optional int32 value = 1 [(buf.validate.predefined).cel = {
  ///     id: "my_message.value",
  ///     message: "must be greater than 42",
  ///     expression: "this > 42",
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $pb.PbList<Rule> get cel => $_getList(0);
}

enum FloatRules_LessThan { lt, lte, notSet }

enum FloatRules_GreaterThan { gt, gte, notSet }

/// FloatRules describes the rules applied to `float` values. These
/// rules may also be applied to the `google.protobuf.FloatValue` Well-Known-Type.
class FloatRules extends $pb.GeneratedMessage {
  factory FloatRules({
    $core.double? const_1,
    $core.double? lt,
    $core.double? lte,
    $core.double? gt,
    $core.double? gte,
    $core.Iterable<$core.double>? in_6,
    $core.Iterable<$core.double>? notIn,
    $core.bool? finite,
    $core.Iterable<$core.double>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (finite != null) result.finite = finite;
    if (example != null) result.example.addAll(example);
    return result;
  }

  FloatRules._();

  factory FloatRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, FloatRules_LessThan>
      _FloatRules_LessThanByTag = {
    2: FloatRules_LessThan.lt,
    3: FloatRules_LessThan.lte,
    0: FloatRules_LessThan.notSet
  };
  static const $core.Map<$core.int, FloatRules_GreaterThan>
      _FloatRules_GreaterThanByTag = {
    4: FloatRules_GreaterThan.gt,
    5: FloatRules_GreaterThan.gte,
    0: FloatRules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aD(1, _omitFieldNames ? '' : 'const', fieldType: $pb.PbFieldType.OF)
    ..aD(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OF)
    ..aD(3, _omitFieldNames ? '' : 'lte', fieldType: $pb.PbFieldType.OF)
    ..aD(4, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OF)
    ..aD(5, _omitFieldNames ? '' : 'gte', fieldType: $pb.PbFieldType.OF)
    ..p<$core.double>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PF)
    ..p<$core.double>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PF)
    ..aOB(8, _omitFieldNames ? '' : 'finite')
    ..p<$core.double>(9, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PF)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatRules copyWith(void Function(FloatRules) updates) =>
      super.copyWith((message) => updates(message as FloatRules)) as FloatRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatRules create() => FloatRules._();
  @$core.override
  FloatRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatRules>(create);
  static FloatRules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  FloatRules_LessThan whichLessThan() =>
      _FloatRules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  FloatRules_GreaterThan whichGreaterThan() =>
      _FloatRules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // value must equal 42.0
  ///   float value = 1 [(buf.validate.field).float.const = 42.0];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.double get const_1 => $_getN(0);
  @$pb.TagNumber(1)
  set const_1($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // must be less than 10.0
  ///   float value = 1 [(buf.validate.field).float.lt = 10.0];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.double get lt => $_getN(1);
  @$pb.TagNumber(2)
  set lt($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // must be less than or equal to 10.0
  ///   float value = 1 [(buf.validate.field).float.lte = 10.0];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.double get lte => $_getN(2);
  @$pb.TagNumber(3)
  set lte($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // must be greater than 5.0 [float.gt]
  ///   float value = 1 [(buf.validate.field).float.gt = 5.0];
  ///
  ///   // must be greater than 5 and less than 10.0 [float.gt_lt]
  ///   float other_value = 2 [(buf.validate.field).float = { gt: 5.0, lt: 10.0 }];
  ///
  ///   // must be greater than 10 or less than 5.0 [float.gt_lt_exclusive]
  ///   float another_value = 3 [(buf.validate.field).float = { gt: 10.0, lt: 5.0 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.double get gt => $_getN(3);
  @$pb.TagNumber(4)
  set gt($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // must be greater than or equal to 5.0 [float.gte]
  ///   float value = 1 [(buf.validate.field).float.gte = 5.0];
  ///
  ///   // must be greater than or equal to 5.0 and less than 10.0 [float.gte_lt]
  ///   float other_value = 2 [(buf.validate.field).float = { gte: 5.0, lt: 10.0 }];
  ///
  ///   // must be greater than or equal to 10.0 or less than 5.0 [float.gte_lt_exclusive]
  ///   float another_value = 3 [(buf.validate.field).float = { gte: 10.0, lt: 5.0 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.double get gte => $_getN(4);
  @$pb.TagNumber(5)
  set gte($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message
  /// is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // must be in list [1.0, 2.0, 3.0]
  ///   float value = 1 [(buf.validate.field).float = { in: [1.0, 2.0, 3.0] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.double> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyFloat {
  ///   // value must not be in list [1.0, 2.0, 3.0]
  ///   float value = 1 [(buf.validate.field).float = { not_in: [1.0, 2.0, 3.0] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get notIn => $_getList(6);

  /// `finite` requires the field value to be finite. If the field value is
  /// infinite or NaN, an error message is generated.
  @$pb.TagNumber(8)
  $core.bool get finite => $_getBF(7);
  @$pb.TagNumber(8)
  set finite($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFinite() => $_has(7);
  @$pb.TagNumber(8)
  void clearFinite() => $_clearField(8);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyFloat {
  ///   float value = 1 [
  ///     (buf.validate.field).float.example = 1.0,
  ///     (buf.validate.field).float.example = inf
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $pb.PbList<$core.double> get example => $_getList(8);
}

enum DoubleRules_LessThan { lt, lte, notSet }

enum DoubleRules_GreaterThan { gt, gte, notSet }

/// DoubleRules describes the rules applied to `double` values. These
/// rules may also be applied to the `google.protobuf.DoubleValue` Well-Known-Type.
class DoubleRules extends $pb.GeneratedMessage {
  factory DoubleRules({
    $core.double? const_1,
    $core.double? lt,
    $core.double? lte,
    $core.double? gt,
    $core.double? gte,
    $core.Iterable<$core.double>? in_6,
    $core.Iterable<$core.double>? notIn,
    $core.bool? finite,
    $core.Iterable<$core.double>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (finite != null) result.finite = finite;
    if (example != null) result.example.addAll(example);
    return result;
  }

  DoubleRules._();

  factory DoubleRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoubleRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DoubleRules_LessThan>
      _DoubleRules_LessThanByTag = {
    2: DoubleRules_LessThan.lt,
    3: DoubleRules_LessThan.lte,
    0: DoubleRules_LessThan.notSet
  };
  static const $core.Map<$core.int, DoubleRules_GreaterThan>
      _DoubleRules_GreaterThanByTag = {
    4: DoubleRules_GreaterThan.gt,
    5: DoubleRules_GreaterThan.gte,
    0: DoubleRules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoubleRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aD(1, _omitFieldNames ? '' : 'const')
    ..aD(2, _omitFieldNames ? '' : 'lt')
    ..aD(3, _omitFieldNames ? '' : 'lte')
    ..aD(4, _omitFieldNames ? '' : 'gt')
    ..aD(5, _omitFieldNames ? '' : 'gte')
    ..p<$core.double>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PD)
    ..p<$core.double>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PD)
    ..aOB(8, _omitFieldNames ? '' : 'finite')
    ..p<$core.double>(9, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PD)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoubleRules copyWith(void Function(DoubleRules) updates) =>
      super.copyWith((message) => updates(message as DoubleRules))
          as DoubleRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoubleRules create() => DoubleRules._();
  @$core.override
  DoubleRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DoubleRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoubleRules>(create);
  static DoubleRules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  DoubleRules_LessThan whichLessThan() =>
      _DoubleRules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  DoubleRules_GreaterThan whichGreaterThan() =>
      _DoubleRules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // value must equal 42.0
  ///   double value = 1 [(buf.validate.field).double.const = 42.0];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.double get const_1 => $_getN(0);
  @$pb.TagNumber(1)
  set const_1($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // must be less than 10.0
  ///   double value = 1 [(buf.validate.field).double.lt = 10.0];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.double get lt => $_getN(1);
  @$pb.TagNumber(2)
  set lt($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified value
  /// (field <= value). If the field value is greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // must be less than or equal to 10.0
  ///   double value = 1 [(buf.validate.field).double.lte = 10.0];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.double get lte => $_getN(2);
  @$pb.TagNumber(3)
  set lte($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or `lte`,
  /// the range is reversed, and the field value must be outside the specified
  /// range. If the field value doesn't meet the required conditions, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // must be greater than 5.0 [double.gt]
  ///   double value = 1 [(buf.validate.field).double.gt = 5.0];
  ///
  ///   // must be greater than 5 and less than 10.0 [double.gt_lt]
  ///   double other_value = 2 [(buf.validate.field).double = { gt: 5.0, lt: 10.0 }];
  ///
  ///   // must be greater than 10 or less than 5.0 [double.gt_lt_exclusive]
  ///   double another_value = 3 [(buf.validate.field).double = { gt: 10.0, lt: 5.0 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.double get gt => $_getN(3);
  @$pb.TagNumber(4)
  set gt($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // must be greater than or equal to 5.0 [double.gte]
  ///   double value = 1 [(buf.validate.field).double.gte = 5.0];
  ///
  ///   // must be greater than or equal to 5.0 and less than 10.0 [double.gte_lt]
  ///   double other_value = 2 [(buf.validate.field).double = { gte: 5.0, lt: 10.0 }];
  ///
  ///   // must be greater than or equal to 10.0 or less than 5.0 [double.gte_lt_exclusive]
  ///   double another_value = 3 [(buf.validate.field).double = { gte: 10.0, lt: 5.0 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.double get gte => $_getN(4);
  @$pb.TagNumber(5)
  set gte($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // must be in list [1.0, 2.0, 3.0]
  ///   double value = 1 [(buf.validate.field).double = { in: [1.0, 2.0, 3.0] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.double> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyDouble {
  ///   // value must not be in list [1.0, 2.0, 3.0]
  ///   double value = 1 [(buf.validate.field).double = { not_in: [1.0, 2.0, 3.0] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get notIn => $_getList(6);

  /// `finite` requires the field value to be finite. If the field value is
  /// infinite or NaN, an error message is generated.
  @$pb.TagNumber(8)
  $core.bool get finite => $_getBF(7);
  @$pb.TagNumber(8)
  set finite($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFinite() => $_has(7);
  @$pb.TagNumber(8)
  void clearFinite() => $_clearField(8);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyDouble {
  ///   double value = 1 [
  ///     (buf.validate.field).double.example = 1.0,
  ///     (buf.validate.field).double.example = inf
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $pb.PbList<$core.double> get example => $_getList(8);
}

enum Int32Rules_LessThan { lt, lte, notSet }

enum Int32Rules_GreaterThan { gt, gte, notSet }

/// Int32Rules describes the rules applied to `int32` values. These
/// rules may also be applied to the `google.protobuf.Int32Value` Well-Known-Type.
class Int32Rules extends $pb.GeneratedMessage {
  factory Int32Rules({
    $core.int? const_1,
    $core.int? lt,
    $core.int? lte,
    $core.int? gt,
    $core.int? gte,
    $core.Iterable<$core.int>? in_6,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  Int32Rules._();

  factory Int32Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Int32Rules_LessThan>
      _Int32Rules_LessThanByTag = {
    2: Int32Rules_LessThan.lt,
    3: Int32Rules_LessThan.lte,
    0: Int32Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, Int32Rules_GreaterThan>
      _Int32Rules_GreaterThanByTag = {
    4: Int32Rules_GreaterThan.gt,
    5: Int32Rules_GreaterThan.gte,
    0: Int32Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aI(1, _omitFieldNames ? '' : 'const')
    ..aI(2, _omitFieldNames ? '' : 'lt')
    ..aI(3, _omitFieldNames ? '' : 'lte')
    ..aI(4, _omitFieldNames ? '' : 'gt')
    ..aI(5, _omitFieldNames ? '' : 'gte')
    ..p<$core.int>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.P3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.P3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.P3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Rules copyWith(void Function(Int32Rules) updates) =>
      super.copyWith((message) => updates(message as Int32Rules)) as Int32Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Rules create() => Int32Rules._();
  @$core.override
  Int32Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32Rules>(create);
  static Int32Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Int32Rules_LessThan whichLessThan() =>
      _Int32Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Int32Rules_GreaterThan whichGreaterThan() =>
      _Int32Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // value must equal 42
  ///   int32 value = 1 [(buf.validate.field).int32.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field
  /// < value). If the field value is equal to or greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // must be less than 10
  ///   int32 value = 1 [(buf.validate.field).int32.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // must be less than or equal to 10
  ///   int32 value = 1 [(buf.validate.field).int32.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.int get lte => $_getIZ(2);
  @$pb.TagNumber(3)
  set lte($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // must be greater than 5 [int32.gt]
  ///   int32 value = 1 [(buf.validate.field).int32.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [int32.gt_lt]
  ///   int32 other_value = 2 [(buf.validate.field).int32 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [int32.gt_lt_exclusive]
  ///   int32 another_value = 3 [(buf.validate.field).int32 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.int get gt => $_getIZ(3);
  @$pb.TagNumber(4)
  set gt($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified value
  /// (exclusive). If the value of `gte` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // must be greater than or equal to 5 [int32.gte]
  ///   int32 value = 1 [(buf.validate.field).int32.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [int32.gte_lt]
  ///   int32 other_value = 2 [(buf.validate.field).int32 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [int32.gte_lt_exclusive]
  ///   int32 another_value = 3 [(buf.validate.field).int32 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.int get gte => $_getIZ(4);
  @$pb.TagNumber(5)
  set gte($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // must be in list [1, 2, 3]
  ///   int32 value = 1 [(buf.validate.field).int32 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error message
  /// is generated.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   // value must not be in list [1, 2, 3]
  ///   int32 value = 1 [(buf.validate.field).int32 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyInt32 {
  ///   int32 value = 1 [
  ///     (buf.validate.field).int32.example = 1,
  ///     (buf.validate.field).int32.example = -10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get example => $_getList(7);
}

enum Int64Rules_LessThan { lt, lte, notSet }

enum Int64Rules_GreaterThan { gt, gte, notSet }

/// Int64Rules describes the rules applied to `int64` values. These
/// rules may also be applied to the `google.protobuf.Int64Value` Well-Known-Type.
class Int64Rules extends $pb.GeneratedMessage {
  factory Int64Rules({
    $fixnum.Int64? const_1,
    $fixnum.Int64? lt,
    $fixnum.Int64? lte,
    $fixnum.Int64? gt,
    $fixnum.Int64? gte,
    $core.Iterable<$fixnum.Int64>? in_6,
    $core.Iterable<$fixnum.Int64>? notIn,
    $core.Iterable<$fixnum.Int64>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  Int64Rules._();

  factory Int64Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int64Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Int64Rules_LessThan>
      _Int64Rules_LessThanByTag = {
    2: Int64Rules_LessThan.lt,
    3: Int64Rules_LessThan.lte,
    0: Int64Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, Int64Rules_GreaterThan>
      _Int64Rules_GreaterThanByTag = {
    4: Int64Rules_GreaterThan.gt,
    5: Int64Rules_GreaterThan.gte,
    0: Int64Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int64Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aInt64(1, _omitFieldNames ? '' : 'const')
    ..aInt64(2, _omitFieldNames ? '' : 'lt')
    ..aInt64(3, _omitFieldNames ? '' : 'lte')
    ..aInt64(4, _omitFieldNames ? '' : 'gt')
    ..aInt64(5, _omitFieldNames ? '' : 'gte')
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.P6)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'example', $pb.PbFieldType.P6)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int64Rules copyWith(void Function(Int64Rules) updates) =>
      super.copyWith((message) => updates(message as Int64Rules)) as Int64Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int64Rules create() => Int64Rules._();
  @$core.override
  Int64Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int64Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int64Rules>(create);
  static Int64Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Int64Rules_LessThan whichLessThan() =>
      _Int64Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Int64Rules_GreaterThan whichGreaterThan() =>
      _Int64Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // value must equal 42
  ///   int64 value = 1 [(buf.validate.field).int64.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get const_1 => $_getI64(0);
  @$pb.TagNumber(1)
  set const_1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // must be less than 10
  ///   int64 value = 1 [(buf.validate.field).int64.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get lt => $_getI64(1);
  @$pb.TagNumber(2)
  set lt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // must be less than or equal to 10
  ///   int64 value = 1 [(buf.validate.field).int64.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get lte => $_getI64(2);
  @$pb.TagNumber(3)
  set lte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // must be greater than 5 [int64.gt]
  ///   int64 value = 1 [(buf.validate.field).int64.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [int64.gt_lt]
  ///   int64 other_value = 2 [(buf.validate.field).int64 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [int64.gt_lt_exclusive]
  ///   int64 another_value = 3 [(buf.validate.field).int64 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get gt => $_getI64(3);
  @$pb.TagNumber(4)
  set gt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // must be greater than or equal to 5 [int64.gte]
  ///   int64 value = 1 [(buf.validate.field).int64.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [int64.gte_lt]
  ///   int64 other_value = 2 [(buf.validate.field).int64 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [int64.gte_lt_exclusive]
  ///   int64 another_value = 3 [(buf.validate.field).int64 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get gte => $_getI64(4);
  @$pb.TagNumber(5)
  set gte($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // must be in list [1, 2, 3]
  ///   int64 value = 1 [(buf.validate.field).int64 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   // value must not be in list [1, 2, 3]
  ///   int64 value = 1 [(buf.validate.field).int64 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyInt64 {
  ///   int64 value = 1 [
  ///     (buf.validate.field).int64.example = 1,
  ///     (buf.validate.field).int64.example = -10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get example => $_getList(7);
}

enum UInt32Rules_LessThan { lt, lte, notSet }

enum UInt32Rules_GreaterThan { gt, gte, notSet }

/// UInt32Rules describes the rules applied to `uint32` values. These
/// rules may also be applied to the `google.protobuf.UInt32Value` Well-Known-Type.
class UInt32Rules extends $pb.GeneratedMessage {
  factory UInt32Rules({
    $core.int? const_1,
    $core.int? lt,
    $core.int? lte,
    $core.int? gt,
    $core.int? gte,
    $core.Iterable<$core.int>? in_6,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  UInt32Rules._();

  factory UInt32Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt32Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UInt32Rules_LessThan>
      _UInt32Rules_LessThanByTag = {
    2: UInt32Rules_LessThan.lt,
    3: UInt32Rules_LessThan.lte,
    0: UInt32Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, UInt32Rules_GreaterThan>
      _UInt32Rules_GreaterThanByTag = {
    4: UInt32Rules_GreaterThan.gt,
    5: UInt32Rules_GreaterThan.gte,
    0: UInt32Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt32Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aI(1, _omitFieldNames ? '' : 'const', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'lte', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'gte', fieldType: $pb.PbFieldType.OU3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PU3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PU3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PU3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt32Rules copyWith(void Function(UInt32Rules) updates) =>
      super.copyWith((message) => updates(message as UInt32Rules))
          as UInt32Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt32Rules create() => UInt32Rules._();
  @$core.override
  UInt32Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt32Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt32Rules>(create);
  static UInt32Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  UInt32Rules_LessThan whichLessThan() =>
      _UInt32Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  UInt32Rules_GreaterThan whichGreaterThan() =>
      _UInt32Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // value must equal 42
  ///   uint32 value = 1 [(buf.validate.field).uint32.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // must be less than 10
  ///   uint32 value = 1 [(buf.validate.field).uint32.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // must be less than or equal to 10
  ///   uint32 value = 1 [(buf.validate.field).uint32.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.int get lte => $_getIZ(2);
  @$pb.TagNumber(3)
  set lte($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // must be greater than 5 [uint32.gt]
  ///   uint32 value = 1 [(buf.validate.field).uint32.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [uint32.gt_lt]
  ///   uint32 other_value = 2 [(buf.validate.field).uint32 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [uint32.gt_lt_exclusive]
  ///   uint32 another_value = 3 [(buf.validate.field).uint32 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.int get gt => $_getIZ(3);
  @$pb.TagNumber(4)
  set gt($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // must be greater than or equal to 5 [uint32.gte]
  ///   uint32 value = 1 [(buf.validate.field).uint32.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [uint32.gte_lt]
  ///   uint32 other_value = 2 [(buf.validate.field).uint32 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [uint32.gte_lt_exclusive]
  ///   uint32 another_value = 3 [(buf.validate.field).uint32 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.int get gte => $_getIZ(4);
  @$pb.TagNumber(5)
  set gte($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // must be in list [1, 2, 3]
  ///   uint32 value = 1 [(buf.validate.field).uint32 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   // value must not be in list [1, 2, 3]
  ///   uint32 value = 1 [(buf.validate.field).uint32 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyUInt32 {
  ///   uint32 value = 1 [
  ///     (buf.validate.field).uint32.example = 1,
  ///     (buf.validate.field).uint32.example = 10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get example => $_getList(7);
}

enum UInt64Rules_LessThan { lt, lte, notSet }

enum UInt64Rules_GreaterThan { gt, gte, notSet }

/// UInt64Rules describes the rules applied to `uint64` values. These
/// rules may also be applied to the `google.protobuf.UInt64Value` Well-Known-Type.
class UInt64Rules extends $pb.GeneratedMessage {
  factory UInt64Rules({
    $fixnum.Int64? const_1,
    $fixnum.Int64? lt,
    $fixnum.Int64? lte,
    $fixnum.Int64? gt,
    $fixnum.Int64? gte,
    $core.Iterable<$fixnum.Int64>? in_6,
    $core.Iterable<$fixnum.Int64>? notIn,
    $core.Iterable<$fixnum.Int64>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  UInt64Rules._();

  factory UInt64Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UInt64Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UInt64Rules_LessThan>
      _UInt64Rules_LessThanByTag = {
    2: UInt64Rules_LessThan.lt,
    3: UInt64Rules_LessThan.lte,
    0: UInt64Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, UInt64Rules_GreaterThan>
      _UInt64Rules_GreaterThanByTag = {
    4: UInt64Rules_GreaterThan.gt,
    5: UInt64Rules_GreaterThan.gte,
    0: UInt64Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UInt64Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'const', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'lt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'lte', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'gt', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gte', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PU6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PU6)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PU6)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UInt64Rules copyWith(void Function(UInt64Rules) updates) =>
      super.copyWith((message) => updates(message as UInt64Rules))
          as UInt64Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UInt64Rules create() => UInt64Rules._();
  @$core.override
  UInt64Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UInt64Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UInt64Rules>(create);
  static UInt64Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  UInt64Rules_LessThan whichLessThan() =>
      _UInt64Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  UInt64Rules_GreaterThan whichGreaterThan() =>
      _UInt64Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // value must equal 42
  ///   uint64 value = 1 [(buf.validate.field).uint64.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get const_1 => $_getI64(0);
  @$pb.TagNumber(1)
  set const_1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // must be less than 10
  ///   uint64 value = 1 [(buf.validate.field).uint64.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get lt => $_getI64(1);
  @$pb.TagNumber(2)
  set lt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // must be less than or equal to 10
  ///   uint64 value = 1 [(buf.validate.field).uint64.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get lte => $_getI64(2);
  @$pb.TagNumber(3)
  set lte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // must be greater than 5 [uint64.gt]
  ///   uint64 value = 1 [(buf.validate.field).uint64.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [uint64.gt_lt]
  ///   uint64 other_value = 2 [(buf.validate.field).uint64 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [uint64.gt_lt_exclusive]
  ///   uint64 another_value = 3 [(buf.validate.field).uint64 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get gt => $_getI64(3);
  @$pb.TagNumber(4)
  set gt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // must be greater than or equal to 5 [uint64.gte]
  ///   uint64 value = 1 [(buf.validate.field).uint64.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [uint64.gte_lt]
  ///   uint64 other_value = 2 [(buf.validate.field).uint64 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [uint64.gte_lt_exclusive]
  ///   uint64 another_value = 3 [(buf.validate.field).uint64 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get gte => $_getI64(4);
  @$pb.TagNumber(5)
  set gte($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // must be in list [1, 2, 3]
  ///   uint64 value = 1 [(buf.validate.field).uint64 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   // value must not be in list [1, 2, 3]
  ///   uint64 value = 1 [(buf.validate.field).uint64 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyUInt64 {
  ///   uint64 value = 1 [
  ///     (buf.validate.field).uint64.example = 1,
  ///     (buf.validate.field).uint64.example = 10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get example => $_getList(7);
}

enum SInt32Rules_LessThan { lt, lte, notSet }

enum SInt32Rules_GreaterThan { gt, gte, notSet }

/// SInt32Rules describes the rules applied to `sint32` values.
class SInt32Rules extends $pb.GeneratedMessage {
  factory SInt32Rules({
    $core.int? const_1,
    $core.int? lt,
    $core.int? lte,
    $core.int? gt,
    $core.int? gte,
    $core.Iterable<$core.int>? in_6,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  SInt32Rules._();

  factory SInt32Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt32Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SInt32Rules_LessThan>
      _SInt32Rules_LessThanByTag = {
    2: SInt32Rules_LessThan.lt,
    3: SInt32Rules_LessThan.lte,
    0: SInt32Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, SInt32Rules_GreaterThan>
      _SInt32Rules_GreaterThanByTag = {
    4: SInt32Rules_GreaterThan.gt,
    5: SInt32Rules_GreaterThan.gte,
    0: SInt32Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt32Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aI(1, _omitFieldNames ? '' : 'const', fieldType: $pb.PbFieldType.OS3)
    ..aI(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OS3)
    ..aI(3, _omitFieldNames ? '' : 'lte', fieldType: $pb.PbFieldType.OS3)
    ..aI(4, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OS3)
    ..aI(5, _omitFieldNames ? '' : 'gte', fieldType: $pb.PbFieldType.OS3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PS3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PS3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PS3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt32Rules copyWith(void Function(SInt32Rules) updates) =>
      super.copyWith((message) => updates(message as SInt32Rules))
          as SInt32Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt32Rules create() => SInt32Rules._();
  @$core.override
  SInt32Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt32Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt32Rules>(create);
  static SInt32Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  SInt32Rules_LessThan whichLessThan() =>
      _SInt32Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  SInt32Rules_GreaterThan whichGreaterThan() =>
      _SInt32Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // value must equal 42
  ///   sint32 value = 1 [(buf.validate.field).sint32.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field
  /// < value). If the field value is equal to or greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // must be less than 10
  ///   sint32 value = 1 [(buf.validate.field).sint32.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // must be less than or equal to 10
  ///   sint32 value = 1 [(buf.validate.field).sint32.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.int get lte => $_getIZ(2);
  @$pb.TagNumber(3)
  set lte($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // must be greater than 5 [sint32.gt]
  ///   sint32 value = 1 [(buf.validate.field).sint32.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [sint32.gt_lt]
  ///   sint32 other_value = 2 [(buf.validate.field).sint32 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [sint32.gt_lt_exclusive]
  ///   sint32 another_value = 3 [(buf.validate.field).sint32 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.int get gt => $_getIZ(3);
  @$pb.TagNumber(4)
  set gt($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///  // must be greater than or equal to 5 [sint32.gte]
  ///  sint32 value = 1 [(buf.validate.field).sint32.gte = 5];
  ///
  ///  // must be greater than or equal to 5 and less than 10 [sint32.gte_lt]
  ///  sint32 other_value = 2 [(buf.validate.field).sint32 = { gte: 5, lt: 10 }];
  ///
  ///  // must be greater than or equal to 10 or less than 5 [sint32.gte_lt_exclusive]
  ///  sint32 another_value = 3 [(buf.validate.field).sint32 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.int get gte => $_getIZ(4);
  @$pb.TagNumber(5)
  set gte($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // must be in list [1, 2, 3]
  ///   sint32 value = 1 [(buf.validate.field).sint32 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   // value must not be in list [1, 2, 3]
  ///   sint32 value = 1 [(buf.validate.field).sint32 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MySInt32 {
  ///   sint32 value = 1 [
  ///     (buf.validate.field).sint32.example = 1,
  ///     (buf.validate.field).sint32.example = -10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get example => $_getList(7);
}

enum SInt64Rules_LessThan { lt, lte, notSet }

enum SInt64Rules_GreaterThan { gt, gte, notSet }

/// SInt64Rules describes the rules applied to `sint64` values.
class SInt64Rules extends $pb.GeneratedMessage {
  factory SInt64Rules({
    $fixnum.Int64? const_1,
    $fixnum.Int64? lt,
    $fixnum.Int64? lte,
    $fixnum.Int64? gt,
    $fixnum.Int64? gte,
    $core.Iterable<$fixnum.Int64>? in_6,
    $core.Iterable<$fixnum.Int64>? notIn,
    $core.Iterable<$fixnum.Int64>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  SInt64Rules._();

  factory SInt64Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SInt64Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SInt64Rules_LessThan>
      _SInt64Rules_LessThanByTag = {
    2: SInt64Rules_LessThan.lt,
    3: SInt64Rules_LessThan.lte,
    0: SInt64Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, SInt64Rules_GreaterThan>
      _SInt64Rules_GreaterThanByTag = {
    4: SInt64Rules_GreaterThan.gt,
    5: SInt64Rules_GreaterThan.gte,
    0: SInt64Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SInt64Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'const', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'lt', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'lte', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'gt', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gte', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PS6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PS6)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PS6)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SInt64Rules copyWith(void Function(SInt64Rules) updates) =>
      super.copyWith((message) => updates(message as SInt64Rules))
          as SInt64Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SInt64Rules create() => SInt64Rules._();
  @$core.override
  SInt64Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SInt64Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SInt64Rules>(create);
  static SInt64Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  SInt64Rules_LessThan whichLessThan() =>
      _SInt64Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  SInt64Rules_GreaterThan whichGreaterThan() =>
      _SInt64Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // value must equal 42
  ///   sint64 value = 1 [(buf.validate.field).sint64.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get const_1 => $_getI64(0);
  @$pb.TagNumber(1)
  set const_1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field
  /// < value). If the field value is equal to or greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // must be less than 10
  ///   sint64 value = 1 [(buf.validate.field).sint64.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get lt => $_getI64(1);
  @$pb.TagNumber(2)
  set lt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // must be less than or equal to 10
  ///   sint64 value = 1 [(buf.validate.field).sint64.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get lte => $_getI64(2);
  @$pb.TagNumber(3)
  set lte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // must be greater than 5 [sint64.gt]
  ///   sint64 value = 1 [(buf.validate.field).sint64.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [sint64.gt_lt]
  ///   sint64 other_value = 2 [(buf.validate.field).sint64 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [sint64.gt_lt_exclusive]
  ///   sint64 another_value = 3 [(buf.validate.field).sint64 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get gt => $_getI64(3);
  @$pb.TagNumber(4)
  set gt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // must be greater than or equal to 5 [sint64.gte]
  ///   sint64 value = 1 [(buf.validate.field).sint64.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [sint64.gte_lt]
  ///   sint64 other_value = 2 [(buf.validate.field).sint64 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [sint64.gte_lt_exclusive]
  ///   sint64 another_value = 3 [(buf.validate.field).sint64 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get gte => $_getI64(4);
  @$pb.TagNumber(5)
  set gte($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message
  /// is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // must be in list [1, 2, 3]
  ///   sint64 value = 1 [(buf.validate.field).sint64 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   // value must not be in list [1, 2, 3]
  ///   sint64 value = 1 [(buf.validate.field).sint64 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MySInt64 {
  ///   sint64 value = 1 [
  ///     (buf.validate.field).sint64.example = 1,
  ///     (buf.validate.field).sint64.example = -10
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get example => $_getList(7);
}

enum Fixed32Rules_LessThan { lt, lte, notSet }

enum Fixed32Rules_GreaterThan { gt, gte, notSet }

/// Fixed32Rules describes the rules applied to `fixed32` values.
class Fixed32Rules extends $pb.GeneratedMessage {
  factory Fixed32Rules({
    $core.int? const_1,
    $core.int? lt,
    $core.int? lte,
    $core.int? gt,
    $core.int? gte,
    $core.Iterable<$core.int>? in_6,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  Fixed32Rules._();

  factory Fixed32Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed32Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Fixed32Rules_LessThan>
      _Fixed32Rules_LessThanByTag = {
    2: Fixed32Rules_LessThan.lt,
    3: Fixed32Rules_LessThan.lte,
    0: Fixed32Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, Fixed32Rules_GreaterThan>
      _Fixed32Rules_GreaterThanByTag = {
    4: Fixed32Rules_GreaterThan.gt,
    5: Fixed32Rules_GreaterThan.gte,
    0: Fixed32Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed32Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aI(1, _omitFieldNames ? '' : 'const', fieldType: $pb.PbFieldType.OF3)
    ..aI(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OF3)
    ..aI(3, _omitFieldNames ? '' : 'lte', fieldType: $pb.PbFieldType.OF3)
    ..aI(4, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OF3)
    ..aI(5, _omitFieldNames ? '' : 'gte', fieldType: $pb.PbFieldType.OF3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PF3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PF3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PF3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed32Rules copyWith(void Function(Fixed32Rules) updates) =>
      super.copyWith((message) => updates(message as Fixed32Rules))
          as Fixed32Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed32Rules create() => Fixed32Rules._();
  @$core.override
  Fixed32Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed32Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed32Rules>(create);
  static Fixed32Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Fixed32Rules_LessThan whichLessThan() =>
      _Fixed32Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Fixed32Rules_GreaterThan whichGreaterThan() =>
      _Fixed32Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value.
  /// If the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // value must equal 42
  ///   fixed32 value = 1 [(buf.validate.field).fixed32.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // must be less than 10
  ///   fixed32 value = 1 [(buf.validate.field).fixed32.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // must be less than or equal to 10
  ///   fixed32 value = 1 [(buf.validate.field).fixed32.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.int get lte => $_getIZ(2);
  @$pb.TagNumber(3)
  set lte($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // must be greater than 5 [fixed32.gt]
  ///   fixed32 value = 1 [(buf.validate.field).fixed32.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [fixed32.gt_lt]
  ///   fixed32 other_value = 2 [(buf.validate.field).fixed32 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [fixed32.gt_lt_exclusive]
  ///   fixed32 another_value = 3 [(buf.validate.field).fixed32 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.int get gt => $_getIZ(3);
  @$pb.TagNumber(4)
  set gt($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // must be greater than or equal to 5 [fixed32.gte]
  ///   fixed32 value = 1 [(buf.validate.field).fixed32.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [fixed32.gte_lt]
  ///   fixed32 other_value = 2 [(buf.validate.field).fixed32 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [fixed32.gte_lt_exclusive]
  ///   fixed32 another_value = 3 [(buf.validate.field).fixed32 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.int get gte => $_getIZ(4);
  @$pb.TagNumber(5)
  set gte($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message
  /// is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // must be in list [1, 2, 3]
  ///   fixed32 value = 1 [(buf.validate.field).fixed32 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   // value must not be in list [1, 2, 3]
  ///   fixed32 value = 1 [(buf.validate.field).fixed32 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyFixed32 {
  ///   fixed32 value = 1 [
  ///     (buf.validate.field).fixed32.example = 1,
  ///     (buf.validate.field).fixed32.example = 2
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get example => $_getList(7);
}

enum Fixed64Rules_LessThan { lt, lte, notSet }

enum Fixed64Rules_GreaterThan { gt, gte, notSet }

/// Fixed64Rules describes the rules applied to `fixed64` values.
class Fixed64Rules extends $pb.GeneratedMessage {
  factory Fixed64Rules({
    $fixnum.Int64? const_1,
    $fixnum.Int64? lt,
    $fixnum.Int64? lte,
    $fixnum.Int64? gt,
    $fixnum.Int64? gte,
    $core.Iterable<$fixnum.Int64>? in_6,
    $core.Iterable<$fixnum.Int64>? notIn,
    $core.Iterable<$fixnum.Int64>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  Fixed64Rules._();

  factory Fixed64Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fixed64Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Fixed64Rules_LessThan>
      _Fixed64Rules_LessThanByTag = {
    2: Fixed64Rules_LessThan.lt,
    3: Fixed64Rules_LessThan.lte,
    0: Fixed64Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, Fixed64Rules_GreaterThan>
      _Fixed64Rules_GreaterThanByTag = {
    4: Fixed64Rules_GreaterThan.gt,
    5: Fixed64Rules_GreaterThan.gte,
    0: Fixed64Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fixed64Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'const', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'lt', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'lte', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'gt', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gte', $pb.PbFieldType.OF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PF6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PF6)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PF6)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fixed64Rules copyWith(void Function(Fixed64Rules) updates) =>
      super.copyWith((message) => updates(message as Fixed64Rules))
          as Fixed64Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fixed64Rules create() => Fixed64Rules._();
  @$core.override
  Fixed64Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Fixed64Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Fixed64Rules>(create);
  static Fixed64Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Fixed64Rules_LessThan whichLessThan() =>
      _Fixed64Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Fixed64Rules_GreaterThan whichGreaterThan() =>
      _Fixed64Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // value must equal 42
  ///   fixed64 value = 1 [(buf.validate.field).fixed64.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get const_1 => $_getI64(0);
  @$pb.TagNumber(1)
  set const_1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // must be less than 10
  ///   fixed64 value = 1 [(buf.validate.field).fixed64.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get lt => $_getI64(1);
  @$pb.TagNumber(2)
  set lt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // must be less than or equal to 10
  ///   fixed64 value = 1 [(buf.validate.field).fixed64.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get lte => $_getI64(2);
  @$pb.TagNumber(3)
  set lte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // must be greater than 5 [fixed64.gt]
  ///   fixed64 value = 1 [(buf.validate.field).fixed64.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [fixed64.gt_lt]
  ///   fixed64 other_value = 2 [(buf.validate.field).fixed64 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [fixed64.gt_lt_exclusive]
  ///   fixed64 another_value = 3 [(buf.validate.field).fixed64 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get gt => $_getI64(3);
  @$pb.TagNumber(4)
  set gt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // must be greater than or equal to 5 [fixed64.gte]
  ///   fixed64 value = 1 [(buf.validate.field).fixed64.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [fixed64.gte_lt]
  ///   fixed64 other_value = 2 [(buf.validate.field).fixed64 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [fixed64.gte_lt_exclusive]
  ///   fixed64 another_value = 3 [(buf.validate.field).fixed64 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get gte => $_getI64(4);
  @$pb.TagNumber(5)
  set gte($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // must be in list [1, 2, 3]
  ///   fixed64 value = 1 [(buf.validate.field).fixed64 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   // value must not be in list [1, 2, 3]
  ///   fixed64 value = 1 [(buf.validate.field).fixed64 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyFixed64 {
  ///   fixed64 value = 1 [
  ///     (buf.validate.field).fixed64.example = 1,
  ///     (buf.validate.field).fixed64.example = 2
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get example => $_getList(7);
}

enum SFixed32Rules_LessThan { lt, lte, notSet }

enum SFixed32Rules_GreaterThan { gt, gte, notSet }

/// SFixed32Rules describes the rules applied to `fixed32` values.
class SFixed32Rules extends $pb.GeneratedMessage {
  factory SFixed32Rules({
    $core.int? const_1,
    $core.int? lt,
    $core.int? lte,
    $core.int? gt,
    $core.int? gte,
    $core.Iterable<$core.int>? in_6,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  SFixed32Rules._();

  factory SFixed32Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed32Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SFixed32Rules_LessThan>
      _SFixed32Rules_LessThanByTag = {
    2: SFixed32Rules_LessThan.lt,
    3: SFixed32Rules_LessThan.lte,
    0: SFixed32Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, SFixed32Rules_GreaterThan>
      _SFixed32Rules_GreaterThanByTag = {
    4: SFixed32Rules_GreaterThan.gt,
    5: SFixed32Rules_GreaterThan.gte,
    0: SFixed32Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed32Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..aI(1, _omitFieldNames ? '' : 'const', fieldType: $pb.PbFieldType.OSF3)
    ..aI(2, _omitFieldNames ? '' : 'lt', fieldType: $pb.PbFieldType.OSF3)
    ..aI(3, _omitFieldNames ? '' : 'lte', fieldType: $pb.PbFieldType.OSF3)
    ..aI(4, _omitFieldNames ? '' : 'gt', fieldType: $pb.PbFieldType.OSF3)
    ..aI(5, _omitFieldNames ? '' : 'gte', fieldType: $pb.PbFieldType.OSF3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PSF3)
    ..p<$core.int>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PSF3)
    ..p<$core.int>(8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PSF3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed32Rules copyWith(void Function(SFixed32Rules) updates) =>
      super.copyWith((message) => updates(message as SFixed32Rules))
          as SFixed32Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed32Rules create() => SFixed32Rules._();
  @$core.override
  SFixed32Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed32Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed32Rules>(create);
  static SFixed32Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  SFixed32Rules_LessThan whichLessThan() =>
      _SFixed32Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  SFixed32Rules_GreaterThan whichGreaterThan() =>
      _SFixed32Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // value must equal 42
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // must be less than 10
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.int get lt => $_getIZ(1);
  @$pb.TagNumber(2)
  set lt($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // must be less than or equal to 10
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.int get lte => $_getIZ(2);
  @$pb.TagNumber(3)
  set lte($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // must be greater than 5 [sfixed32.gt]
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [sfixed32.gt_lt]
  ///   sfixed32 other_value = 2 [(buf.validate.field).sfixed32 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [sfixed32.gt_lt_exclusive]
  ///   sfixed32 another_value = 3 [(buf.validate.field).sfixed32 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.int get gt => $_getIZ(3);
  @$pb.TagNumber(4)
  set gt($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // must be greater than or equal to 5 [sfixed32.gte]
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [sfixed32.gte_lt]
  ///   sfixed32 other_value = 2 [(buf.validate.field).sfixed32 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [sfixed32.gte_lt_exclusive]
  ///   sfixed32 another_value = 3 [(buf.validate.field).sfixed32 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.int get gte => $_getIZ(4);
  @$pb.TagNumber(5)
  set gte($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // must be in list [1, 2, 3]
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   // value must not be in list [1, 2, 3]
  ///   sfixed32 value = 1 [(buf.validate.field).sfixed32 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$core.int> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MySFixed32 {
  ///   sfixed32 value = 1 [
  ///     (buf.validate.field).sfixed32.example = 1,
  ///     (buf.validate.field).sfixed32.example = 2
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.int> get example => $_getList(7);
}

enum SFixed64Rules_LessThan { lt, lte, notSet }

enum SFixed64Rules_GreaterThan { gt, gte, notSet }

/// SFixed64Rules describes the rules applied to `fixed64` values.
class SFixed64Rules extends $pb.GeneratedMessage {
  factory SFixed64Rules({
    $fixnum.Int64? const_1,
    $fixnum.Int64? lt,
    $fixnum.Int64? lte,
    $fixnum.Int64? gt,
    $fixnum.Int64? gte,
    $core.Iterable<$fixnum.Int64>? in_6,
    $core.Iterable<$fixnum.Int64>? notIn,
    $core.Iterable<$fixnum.Int64>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_6 != null) result.in_6.addAll(in_6);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  SFixed64Rules._();

  factory SFixed64Rules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SFixed64Rules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SFixed64Rules_LessThan>
      _SFixed64Rules_LessThanByTag = {
    2: SFixed64Rules_LessThan.lt,
    3: SFixed64Rules_LessThan.lte,
    0: SFixed64Rules_LessThan.notSet
  };
  static const $core.Map<$core.int, SFixed64Rules_GreaterThan>
      _SFixed64Rules_GreaterThanByTag = {
    4: SFixed64Rules_GreaterThan.gt,
    5: SFixed64Rules_GreaterThan.gte,
    0: SFixed64Rules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SFixed64Rules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 5])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'const', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'lt', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'lte', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'gt', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'gte', $pb.PbFieldType.OSF6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PSF6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PSF6)
    ..p<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PSF6)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Rules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SFixed64Rules copyWith(void Function(SFixed64Rules) updates) =>
      super.copyWith((message) => updates(message as SFixed64Rules))
          as SFixed64Rules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SFixed64Rules create() => SFixed64Rules._();
  @$core.override
  SFixed64Rules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SFixed64Rules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SFixed64Rules>(create);
  static SFixed64Rules? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  SFixed64Rules_LessThan whichLessThan() =>
      _SFixed64Rules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  SFixed64Rules_GreaterThan whichGreaterThan() =>
      _SFixed64Rules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // value must equal 42
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64.const = 42];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get const_1 => $_getI64(0);
  @$pb.TagNumber(1)
  set const_1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `lt` requires the field value to be less than the specified value (field <
  /// value). If the field value is equal to or greater than the specified value,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // must be less than 10
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64.lt = 10];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get lt => $_getI64(1);
  @$pb.TagNumber(2)
  set lt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(2)
  void clearLt() => $_clearField(2);

  /// `lte` requires the field value to be less than or equal to the specified
  /// value (field <= value). If the field value is greater than the specified
  /// value, an error message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // must be less than or equal to 10
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64.lte = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get lte => $_getI64(2);
  @$pb.TagNumber(3)
  set lte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(3)
  void clearLte() => $_clearField(3);

  /// `gt` requires the field value to be greater than the specified value
  /// (exclusive). If the value of `gt` is larger than a specified `lt` or
  /// `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // must be greater than 5 [sfixed64.gt]
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64.gt = 5];
  ///
  ///   // must be greater than 5 and less than 10 [sfixed64.gt_lt]
  ///   sfixed64 other_value = 2 [(buf.validate.field).sfixed64 = { gt: 5, lt: 10 }];
  ///
  ///   // must be greater than 10 or less than 5 [sfixed64.gt_lt_exclusive]
  ///   sfixed64 another_value = 3 [(buf.validate.field).sfixed64 = { gt: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get gt => $_getI64(3);
  @$pb.TagNumber(4)
  set gt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGt() => $_clearField(4);

  /// `gte` requires the field value to be greater than or equal to the specified
  /// value (exclusive). If the value of `gte` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // must be greater than or equal to 5 [sfixed64.gte]
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64.gte = 5];
  ///
  ///   // must be greater than or equal to 5 and less than 10 [sfixed64.gte_lt]
  ///   sfixed64 other_value = 2 [(buf.validate.field).sfixed64 = { gte: 5, lt: 10 }];
  ///
  ///   // must be greater than or equal to 10 or less than 5 [sfixed64.gte_lt_exclusive]
  ///   sfixed64 another_value = 3 [(buf.validate.field).sfixed64 = { gte: 10, lt: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get gte => $_getI64(4);
  @$pb.TagNumber(5)
  set gte($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(5)
  void clearGte() => $_clearField(5);

  /// `in` requires the field value to be equal to one of the specified values.
  /// If the field value isn't one of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // must be in list [1, 2, 3]
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64 = { in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get in_6 => $_getList(5);

  /// `not_in` requires the field value to not be equal to any of the specified
  /// values. If the field value is one of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   // value must not be in list [1, 2, 3]
  ///   sfixed64 value = 1 [(buf.validate.field).sfixed64 = { not_in: [1, 2, 3] }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MySFixed64 {
  ///   sfixed64 value = 1 [
  ///     (buf.validate.field).sfixed64.example = 1,
  ///     (buf.validate.field).sfixed64.example = 2
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get example => $_getList(7);
}

/// BoolRules describes the rules applied to `bool` values. These rules
/// may also be applied to the `google.protobuf.BoolValue` Well-Known-Type.
class BoolRules extends $pb.GeneratedMessage {
  factory BoolRules({
    $core.bool? const_1,
    $core.Iterable<$core.bool>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (example != null) result.example.addAll(example);
    return result;
  }

  BoolRules._();

  factory BoolRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoolRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoolRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'const')
    ..p<$core.bool>(2, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PB)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoolRules copyWith(void Function(BoolRules) updates) =>
      super.copyWith((message) => updates(message as BoolRules)) as BoolRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolRules create() => BoolRules._();
  @$core.override
  BoolRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoolRules getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolRules>(create);
  static BoolRules? _defaultInstance;

  /// `const` requires the field value to exactly match the specified boolean value.
  /// If the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyBool {
  ///   // value must equal true
  ///   bool value = 1 [(buf.validate.field).bool.const = true];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.bool get const_1 => $_getBF(0);
  @$pb.TagNumber(1)
  set const_1($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyBool {
  ///   bool value = 1 [
  ///     (buf.validate.field).bool.example = true,
  ///     (buf.validate.field).bool.example = false
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $pb.PbList<$core.bool> get example => $_getList(1);
}

enum StringRules_WellKnown {
  email,
  hostname,
  ip,
  ipv4,
  ipv6,
  uri,
  uriRef,
  address,
  uuid,
  wellKnownRegex,
  ipWithPrefixlen,
  ipv4WithPrefixlen,
  ipv6WithPrefixlen,
  ipPrefix,
  ipv4Prefix,
  ipv6Prefix,
  hostAndPort,
  tuuid,
  ulid,
  protobufFqn,
  protobufDotFqn,
  notSet
}

/// StringRules describes the rules applied to `string` values These
/// rules may also be applied to the `google.protobuf.StringValue` Well-Known-Type.
class StringRules extends $pb.GeneratedMessage {
  factory StringRules({
    $core.String? const_1,
    $fixnum.Int64? minLen,
    $fixnum.Int64? maxLen,
    $fixnum.Int64? minBytes,
    $fixnum.Int64? maxBytes,
    $core.String? pattern,
    $core.String? prefix,
    $core.String? suffix,
    $core.String? contains,
    $core.Iterable<$core.String>? in_10,
    $core.Iterable<$core.String>? notIn,
    $core.bool? email,
    $core.bool? hostname,
    $core.bool? ip,
    $core.bool? ipv4,
    $core.bool? ipv6,
    $core.bool? uri,
    $core.bool? uriRef,
    $fixnum.Int64? len,
    $fixnum.Int64? lenBytes,
    $core.bool? address,
    $core.bool? uuid,
    $core.String? notContains,
    KnownRegex? wellKnownRegex,
    $core.bool? strict,
    $core.bool? ipWithPrefixlen,
    $core.bool? ipv4WithPrefixlen,
    $core.bool? ipv6WithPrefixlen,
    $core.bool? ipPrefix,
    $core.bool? ipv4Prefix,
    $core.bool? ipv6Prefix,
    $core.bool? hostAndPort,
    $core.bool? tuuid,
    $core.Iterable<$core.String>? example,
    $core.bool? ulid,
    $core.bool? protobufFqn,
    $core.bool? protobufDotFqn,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (minLen != null) result.minLen = minLen;
    if (maxLen != null) result.maxLen = maxLen;
    if (minBytes != null) result.minBytes = minBytes;
    if (maxBytes != null) result.maxBytes = maxBytes;
    if (pattern != null) result.pattern = pattern;
    if (prefix != null) result.prefix = prefix;
    if (suffix != null) result.suffix = suffix;
    if (contains != null) result.contains = contains;
    if (in_10 != null) result.in_10.addAll(in_10);
    if (notIn != null) result.notIn.addAll(notIn);
    if (email != null) result.email = email;
    if (hostname != null) result.hostname = hostname;
    if (ip != null) result.ip = ip;
    if (ipv4 != null) result.ipv4 = ipv4;
    if (ipv6 != null) result.ipv6 = ipv6;
    if (uri != null) result.uri = uri;
    if (uriRef != null) result.uriRef = uriRef;
    if (len != null) result.len = len;
    if (lenBytes != null) result.lenBytes = lenBytes;
    if (address != null) result.address = address;
    if (uuid != null) result.uuid = uuid;
    if (notContains != null) result.notContains = notContains;
    if (wellKnownRegex != null) result.wellKnownRegex = wellKnownRegex;
    if (strict != null) result.strict = strict;
    if (ipWithPrefixlen != null) result.ipWithPrefixlen = ipWithPrefixlen;
    if (ipv4WithPrefixlen != null) result.ipv4WithPrefixlen = ipv4WithPrefixlen;
    if (ipv6WithPrefixlen != null) result.ipv6WithPrefixlen = ipv6WithPrefixlen;
    if (ipPrefix != null) result.ipPrefix = ipPrefix;
    if (ipv4Prefix != null) result.ipv4Prefix = ipv4Prefix;
    if (ipv6Prefix != null) result.ipv6Prefix = ipv6Prefix;
    if (hostAndPort != null) result.hostAndPort = hostAndPort;
    if (tuuid != null) result.tuuid = tuuid;
    if (example != null) result.example.addAll(example);
    if (ulid != null) result.ulid = ulid;
    if (protobufFqn != null) result.protobufFqn = protobufFqn;
    if (protobufDotFqn != null) result.protobufDotFqn = protobufDotFqn;
    return result;
  }

  StringRules._();

  factory StringRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, StringRules_WellKnown>
      _StringRules_WellKnownByTag = {
    12: StringRules_WellKnown.email,
    13: StringRules_WellKnown.hostname,
    14: StringRules_WellKnown.ip,
    15: StringRules_WellKnown.ipv4,
    16: StringRules_WellKnown.ipv6,
    17: StringRules_WellKnown.uri,
    18: StringRules_WellKnown.uriRef,
    21: StringRules_WellKnown.address,
    22: StringRules_WellKnown.uuid,
    24: StringRules_WellKnown.wellKnownRegex,
    26: StringRules_WellKnown.ipWithPrefixlen,
    27: StringRules_WellKnown.ipv4WithPrefixlen,
    28: StringRules_WellKnown.ipv6WithPrefixlen,
    29: StringRules_WellKnown.ipPrefix,
    30: StringRules_WellKnown.ipv4Prefix,
    31: StringRules_WellKnown.ipv6Prefix,
    32: StringRules_WellKnown.hostAndPort,
    33: StringRules_WellKnown.tuuid,
    35: StringRules_WellKnown.ulid,
    37: StringRules_WellKnown.protobufFqn,
    38: StringRules_WellKnown.protobufDotFqn,
    0: StringRules_WellKnown.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      21,
      22,
      24,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      35,
      37,
      38
    ])
    ..aOS(1, _omitFieldNames ? '' : 'const')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'minLen', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'maxLen', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'minBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'maxBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, _omitFieldNames ? '' : 'pattern')
    ..aOS(7, _omitFieldNames ? '' : 'prefix')
    ..aOS(8, _omitFieldNames ? '' : 'suffix')
    ..aOS(9, _omitFieldNames ? '' : 'contains')
    ..pPS(10, _omitFieldNames ? '' : 'in')
    ..pPS(11, _omitFieldNames ? '' : 'notIn')
    ..aOB(12, _omitFieldNames ? '' : 'email')
    ..aOB(13, _omitFieldNames ? '' : 'hostname')
    ..aOB(14, _omitFieldNames ? '' : 'ip')
    ..aOB(15, _omitFieldNames ? '' : 'ipv4')
    ..aOB(16, _omitFieldNames ? '' : 'ipv6')
    ..aOB(17, _omitFieldNames ? '' : 'uri')
    ..aOB(18, _omitFieldNames ? '' : 'uriRef')
    ..a<$fixnum.Int64>(19, _omitFieldNames ? '' : 'len', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        20, _omitFieldNames ? '' : 'lenBytes', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(21, _omitFieldNames ? '' : 'address')
    ..aOB(22, _omitFieldNames ? '' : 'uuid')
    ..aOS(23, _omitFieldNames ? '' : 'notContains')
    ..aE<KnownRegex>(24, _omitFieldNames ? '' : 'wellKnownRegex',
        enumValues: KnownRegex.values)
    ..aOB(25, _omitFieldNames ? '' : 'strict')
    ..aOB(26, _omitFieldNames ? '' : 'ipWithPrefixlen')
    ..aOB(27, _omitFieldNames ? '' : 'ipv4WithPrefixlen')
    ..aOB(28, _omitFieldNames ? '' : 'ipv6WithPrefixlen')
    ..aOB(29, _omitFieldNames ? '' : 'ipPrefix')
    ..aOB(30, _omitFieldNames ? '' : 'ipv4Prefix')
    ..aOB(31, _omitFieldNames ? '' : 'ipv6Prefix')
    ..aOB(32, _omitFieldNames ? '' : 'hostAndPort')
    ..aOB(33, _omitFieldNames ? '' : 'tuuid')
    ..pPS(34, _omitFieldNames ? '' : 'example')
    ..aOB(35, _omitFieldNames ? '' : 'ulid')
    ..aOB(37, _omitFieldNames ? '' : 'protobufFqn')
    ..aOB(38, _omitFieldNames ? '' : 'protobufDotFqn')
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringRules copyWith(void Function(StringRules) updates) =>
      super.copyWith((message) => updates(message as StringRules))
          as StringRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringRules create() => StringRules._();
  @$core.override
  StringRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringRules>(create);
  static StringRules? _defaultInstance;

  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(24)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(35)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  StringRules_WellKnown whichWellKnown() =>
      _StringRules_WellKnownByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(24)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  @$pb.TagNumber(28)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(35)
  @$pb.TagNumber(37)
  @$pb.TagNumber(38)
  void clearWellKnown() => $_clearField($_whichOneof(0));

  /// `const` requires the field value to exactly match the specified value. If
  /// the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value must equal `hello`
  ///   string value = 1 [(buf.validate.field).string.const = "hello"];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.String get const_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set const_1($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `min_len` specifies that the field value must have at least the specified
  /// number of characters (Unicode code points), which may differ from the number
  /// of bytes in the string. If the field value contains fewer characters, an error
  /// message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be at least 3 characters
  ///   string value = 1 [(buf.validate.field).string.min_len = 3];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get minLen => $_getI64(1);
  @$pb.TagNumber(2)
  set minLen($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinLen() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinLen() => $_clearField(2);

  /// `max_len` specifies that the field value must have no more than the specified
  /// number of characters (Unicode code points), which may differ from the
  /// number of bytes in the string. If the field value contains more characters,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be at most 10 characters
  ///   string value = 1 [(buf.validate.field).string.max_len = 10];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get maxLen => $_getI64(2);
  @$pb.TagNumber(3)
  set maxLen($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxLen() => $_clearField(3);

  /// `min_bytes` specifies that the field value must have at least the specified
  /// number of bytes. If the field value contains fewer bytes, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be at least 4 bytes
  ///   string value = 1 [(buf.validate.field).string.min_bytes = 4];
  /// }
  ///
  /// ```
  @$pb.TagNumber(4)
  $fixnum.Int64 get minBytes => $_getI64(3);
  @$pb.TagNumber(4)
  set minBytes($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMinBytes() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinBytes() => $_clearField(4);

  /// `max_bytes` specifies that the field value must have no more than the
  /// specified number of bytes. If the field value contains more bytes, an
  /// error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be at most 8 bytes
  ///   string value = 1 [(buf.validate.field).string.max_bytes = 8];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $fixnum.Int64 get maxBytes => $_getI64(4);
  @$pb.TagNumber(5)
  set maxBytes($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxBytes() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxBytes() => $_clearField(5);

  /// `pattern` specifies that the field value must match the specified
  /// regular expression (RE2 syntax), with the expression provided without any
  /// delimiters. If the field value doesn't match the regular expression, an
  /// error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value does not match regex pattern `^[a-zA-Z]//$`
  ///   string value = 1 [(buf.validate.field).string.pattern = "^[a-zA-Z]//$"];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $core.String get pattern => $_getSZ(5);
  @$pb.TagNumber(6)
  set pattern($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPattern() => $_has(5);
  @$pb.TagNumber(6)
  void clearPattern() => $_clearField(6);

  /// `prefix` specifies that the field value must have the
  /// specified substring at the beginning of the string. If the field value
  /// doesn't start with the specified prefix, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value does not have prefix `pre`
  ///   string value = 1 [(buf.validate.field).string.prefix = "pre"];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $core.String get prefix => $_getSZ(6);
  @$pb.TagNumber(7)
  set prefix($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPrefix() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrefix() => $_clearField(7);

  /// `suffix` specifies that the field value must have the
  /// specified substring at the end of the string. If the field value doesn't
  /// end with the specified suffix, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value does not have suffix `post`
  ///   string value = 1 [(buf.validate.field).string.suffix = "post"];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $core.String get suffix => $_getSZ(7);
  @$pb.TagNumber(8)
  set suffix($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSuffix() => $_has(7);
  @$pb.TagNumber(8)
  void clearSuffix() => $_clearField(8);

  /// `contains` specifies that the field value must have the
  /// specified substring anywhere in the string. If the field value doesn't
  /// contain the specified substring, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value does not contain substring `inside`.
  ///   string value = 1 [(buf.validate.field).string.contains = "inside"];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $core.String get contains => $_getSZ(8);
  @$pb.TagNumber(9)
  set contains($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasContains() => $_has(8);
  @$pb.TagNumber(9)
  void clearContains() => $_clearField(9);

  /// `in` specifies that the field value must be equal to one of the specified
  /// values. If the field value isn't one of the specified values, an error
  /// message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be in list ["apple", "banana"]
  ///   string value = 1 [(buf.validate.field).string = { in: ["apple", "banana"] }];
  /// }
  /// ```
  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get in_10 => $_getList(9);

  /// `not_in` specifies that the field value cannot be equal to any
  /// of the specified values. If the field value is one of the specified values,
  /// an error message will be generated.
  /// ```proto
  /// message MyString {
  ///   // value must not be in list ["orange", "grape"]
  ///   string value = 1 [(buf.validate.field).string = { not_in: ["orange", "grape"] }];
  /// }
  /// ```
  @$pb.TagNumber(11)
  $pb.PbList<$core.String> get notIn => $_getList(10);

  /// `email` specifies that the field value must be a valid email address, for
  /// example "foo@example.com".
  ///
  /// Conforms to the definition for a valid email address from the [HTML standard](https://html.spec.whatwg.org/multipage/input.html#valid-e-mail-address).
  /// Note that this standard willfully deviates from [RFC 5322](https://datatracker.ietf.org/doc/html/rfc5322),
  /// which allows many unexpected forms of email addresses and will easily match
  /// a typographical error.
  ///
  /// If the field value isn't a valid email address, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid email address
  ///   string value = 1 [(buf.validate.field).string.email = true];
  /// }
  /// ```
  @$pb.TagNumber(12)
  $core.bool get email => $_getBF(11);
  @$pb.TagNumber(12)
  set email($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasEmail() => $_has(11);
  @$pb.TagNumber(12)
  void clearEmail() => $_clearField(12);

  /// `hostname` specifies that the field value must be a valid hostname, for
  /// example "foo.example.com".
  ///
  /// A valid hostname follows the rules below:
  /// - The name consists of one or more labels, separated by a dot (".").
  /// - Each label can be 1 to 63 alphanumeric characters.
  /// - A label can contain hyphens ("-"), but must not start or end with a hyphen.
  /// - The right-most label must not be digits only.
  /// - The name can have a trailing dot—for example, "foo.example.com.".
  /// - The name can be 253 characters at most, excluding the optional trailing dot.
  ///
  /// If the field value isn't a valid hostname, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid hostname
  ///   string value = 1 [(buf.validate.field).string.hostname = true];
  /// }
  /// ```
  @$pb.TagNumber(13)
  $core.bool get hostname => $_getBF(12);
  @$pb.TagNumber(13)
  set hostname($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasHostname() => $_has(12);
  @$pb.TagNumber(13)
  void clearHostname() => $_clearField(13);

  /// `ip` specifies that the field value must be a valid IP (v4 or v6) address.
  ///
  /// IPv4 addresses are expected in the dotted decimal format—for example, "192.168.5.21".
  /// IPv6 addresses are expected in their text representation—for example, "::1",
  /// or "2001:0DB8:ABCD:0012::0".
  ///
  /// Both formats are well-defined in the internet standard [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986).
  /// Zone identifiers for IPv6 addresses (for example, "fe80::a%en1") are supported.
  ///
  /// If the field value isn't a valid IP address, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IP address
  ///   string value = 1 [(buf.validate.field).string.ip = true];
  /// }
  /// ```
  @$pb.TagNumber(14)
  $core.bool get ip => $_getBF(13);
  @$pb.TagNumber(14)
  set ip($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasIp() => $_has(13);
  @$pb.TagNumber(14)
  void clearIp() => $_clearField(14);

  /// `ipv4` specifies that the field value must be a valid IPv4 address—for
  /// example "192.168.5.21". If the field value isn't a valid IPv4 address, an
  /// error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv4 address
  ///   string value = 1 [(buf.validate.field).string.ipv4 = true];
  /// }
  /// ```
  @$pb.TagNumber(15)
  $core.bool get ipv4 => $_getBF(14);
  @$pb.TagNumber(15)
  set ipv4($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIpv4() => $_has(14);
  @$pb.TagNumber(15)
  void clearIpv4() => $_clearField(15);

  /// `ipv6` specifies that the field value must be a valid IPv6 address—for
  /// example "::1", or "d7a:115c:a1e0:ab12:4843:cd96:626b:430b". If the field
  /// value is not a valid IPv6 address, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv6 address
  ///   string value = 1 [(buf.validate.field).string.ipv6 = true];
  /// }
  /// ```
  @$pb.TagNumber(16)
  $core.bool get ipv6 => $_getBF(15);
  @$pb.TagNumber(16)
  set ipv6($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasIpv6() => $_has(15);
  @$pb.TagNumber(16)
  void clearIpv6() => $_clearField(16);

  /// `uri` specifies that the field value must be a valid URI, for example
  /// "https://example.com/foo/bar?baz=quux#frag".
  ///
  /// URI is defined in the internet standard [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986).
  /// Zone Identifiers in IPv6 address literals are supported ([RFC 6874](https://datatracker.ietf.org/doc/html/rfc6874)).
  ///
  /// If the field value isn't a valid URI, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid URI
  ///   string value = 1 [(buf.validate.field).string.uri = true];
  /// }
  /// ```
  @$pb.TagNumber(17)
  $core.bool get uri => $_getBF(16);
  @$pb.TagNumber(17)
  set uri($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasUri() => $_has(16);
  @$pb.TagNumber(17)
  void clearUri() => $_clearField(17);

  /// `uri_ref` specifies that the field value must be a valid URI Reference—either
  /// a URI such as "https://example.com/foo/bar?baz=quux#frag", or a Relative
  /// Reference such as "./foo/bar?query".
  ///
  /// URI, URI Reference, and Relative Reference are defined in the internet
  /// standard [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986). Zone
  /// Identifiers in IPv6 address literals are supported ([RFC 6874](https://datatracker.ietf.org/doc/html/rfc6874)).
  ///
  /// If the field value isn't a valid URI Reference, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid URI Reference
  ///   string value = 1 [(buf.validate.field).string.uri_ref = true];
  /// }
  /// ```
  @$pb.TagNumber(18)
  $core.bool get uriRef => $_getBF(17);
  @$pb.TagNumber(18)
  set uriRef($core.bool value) => $_setBool(17, value);
  @$pb.TagNumber(18)
  $core.bool hasUriRef() => $_has(17);
  @$pb.TagNumber(18)
  void clearUriRef() => $_clearField(18);

  /// `len` dictates that the field value must have the specified
  /// number of characters (Unicode code points), which may differ from the number
  /// of bytes in the string. If the field value does not meet the specified
  /// length, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be 5 characters
  ///   string value = 1 [(buf.validate.field).string.len = 5];
  /// }
  /// ```
  @$pb.TagNumber(19)
  $fixnum.Int64 get len => $_getI64(18);
  @$pb.TagNumber(19)
  set len($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasLen() => $_has(18);
  @$pb.TagNumber(19)
  void clearLen() => $_clearField(19);

  /// `len_bytes` dictates that the field value must have the specified number of
  /// bytes. If the field value does not match the specified length in bytes,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value length must be 6 bytes
  ///   string value = 1 [(buf.validate.field).string.len_bytes = 6];
  /// }
  /// ```
  @$pb.TagNumber(20)
  $fixnum.Int64 get lenBytes => $_getI64(19);
  @$pb.TagNumber(20)
  set lenBytes($fixnum.Int64 value) => $_setInt64(19, value);
  @$pb.TagNumber(20)
  $core.bool hasLenBytes() => $_has(19);
  @$pb.TagNumber(20)
  void clearLenBytes() => $_clearField(20);

  /// `address` specifies that the field value must be either a valid hostname
  /// (for example, "example.com"), or a valid IP (v4 or v6) address (for example,
  /// "192.168.0.1", or "::1"). If the field value isn't a valid hostname or IP,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid hostname, or ip address
  ///   string value = 1 [(buf.validate.field).string.address = true];
  /// }
  /// ```
  @$pb.TagNumber(21)
  $core.bool get address => $_getBF(20);
  @$pb.TagNumber(21)
  set address($core.bool value) => $_setBool(20, value);
  @$pb.TagNumber(21)
  $core.bool hasAddress() => $_has(20);
  @$pb.TagNumber(21)
  void clearAddress() => $_clearField(21);

  /// `uuid` specifies that the field value must be a valid UUID as defined by
  /// [RFC 4122](https://datatracker.ietf.org/doc/html/rfc4122#section-4.1.2). If the
  /// field value isn't a valid UUID, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid UUID
  ///   string value = 1 [(buf.validate.field).string.uuid = true];
  /// }
  /// ```
  @$pb.TagNumber(22)
  $core.bool get uuid => $_getBF(21);
  @$pb.TagNumber(22)
  set uuid($core.bool value) => $_setBool(21, value);
  @$pb.TagNumber(22)
  $core.bool hasUuid() => $_has(21);
  @$pb.TagNumber(22)
  void clearUuid() => $_clearField(22);

  /// `not_contains` specifies that the field value must not have the
  /// specified substring anywhere in the string. If the field value contains
  /// the specified substring, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value contains substring `inside`.
  ///   string value = 1 [(buf.validate.field).string.not_contains = "inside"];
  /// }
  /// ```
  @$pb.TagNumber(23)
  $core.String get notContains => $_getSZ(22);
  @$pb.TagNumber(23)
  set notContains($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasNotContains() => $_has(22);
  @$pb.TagNumber(23)
  void clearNotContains() => $_clearField(23);

  /// `well_known_regex` specifies a common well-known pattern
  /// defined as a regex. If the field value doesn't match the well-known
  /// regex, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid HTTP header value
  ///   string value = 1 [(buf.validate.field).string.well_known_regex = KNOWN_REGEX_HTTP_HEADER_VALUE];
  /// }
  /// ```
  ///
  /// #### KnownRegex
  ///
  /// `well_known_regex` contains some well-known patterns.
  ///
  /// | Name                          | Number | Description                               |
  /// |-------------------------------|--------|-------------------------------------------|
  /// | KNOWN_REGEX_UNSPECIFIED       | 0      |                                           |
  /// | KNOWN_REGEX_HTTP_HEADER_NAME  | 1      | HTTP header name as defined by [RFC 7230](https://datatracker.ietf.org/doc/html/rfc7230#section-3.2)  |
  /// | KNOWN_REGEX_HTTP_HEADER_VALUE | 2      | HTTP header value as defined by [RFC 7230](https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.4) |
  @$pb.TagNumber(24)
  KnownRegex get wellKnownRegex => $_getN(23);
  @$pb.TagNumber(24)
  set wellKnownRegex(KnownRegex value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasWellKnownRegex() => $_has(23);
  @$pb.TagNumber(24)
  void clearWellKnownRegex() => $_clearField(24);

  /// This applies to regexes `HTTP_HEADER_NAME` and `HTTP_HEADER_VALUE` to
  /// enable strict header validation. By default, this is true, and HTTP header
  /// validations are [RFC-compliant](https://datatracker.ietf.org/doc/html/rfc7230#section-3). Setting to false will enable looser
  /// validations that only disallow `\r\n\0` characters, which can be used to
  /// bypass header matching rules.
  ///
  /// ```proto
  /// message MyString {
  ///   // The field `value` must have be a valid HTTP headers, but not enforced with strict rules.
  ///   string value = 1 [(buf.validate.field).string.strict = false];
  /// }
  /// ```
  @$pb.TagNumber(25)
  $core.bool get strict => $_getBF(24);
  @$pb.TagNumber(25)
  set strict($core.bool value) => $_setBool(24, value);
  @$pb.TagNumber(25)
  $core.bool hasStrict() => $_has(24);
  @$pb.TagNumber(25)
  void clearStrict() => $_clearField(25);

  /// `ip_with_prefixlen` specifies that the field value must be a valid IP
  /// (v4 or v6) address with prefix length—for example, "192.168.5.21/16" or
  /// "2001:0DB8:ABCD:0012::F1/64". If the field value isn't a valid IP with
  /// prefix length, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IP with prefix length
  ///    string value = 1 [(buf.validate.field).string.ip_with_prefixlen = true];
  /// }
  /// ```
  @$pb.TagNumber(26)
  $core.bool get ipWithPrefixlen => $_getBF(25);
  @$pb.TagNumber(26)
  set ipWithPrefixlen($core.bool value) => $_setBool(25, value);
  @$pb.TagNumber(26)
  $core.bool hasIpWithPrefixlen() => $_has(25);
  @$pb.TagNumber(26)
  void clearIpWithPrefixlen() => $_clearField(26);

  /// `ipv4_with_prefixlen` specifies that the field value must be a valid
  /// IPv4 address with prefix length—for example, "192.168.5.21/16". If the
  /// field value isn't a valid IPv4 address with prefix length, an error
  /// message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv4 address with prefix length
  ///    string value = 1 [(buf.validate.field).string.ipv4_with_prefixlen = true];
  /// }
  /// ```
  @$pb.TagNumber(27)
  $core.bool get ipv4WithPrefixlen => $_getBF(26);
  @$pb.TagNumber(27)
  set ipv4WithPrefixlen($core.bool value) => $_setBool(26, value);
  @$pb.TagNumber(27)
  $core.bool hasIpv4WithPrefixlen() => $_has(26);
  @$pb.TagNumber(27)
  void clearIpv4WithPrefixlen() => $_clearField(27);

  /// `ipv6_with_prefixlen` specifies that the field value must be a valid
  /// IPv6 address with prefix length—for example, "2001:0DB8:ABCD:0012::F1/64".
  /// If the field value is not a valid IPv6 address with prefix length,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv6 address prefix length
  ///    string value = 1 [(buf.validate.field).string.ipv6_with_prefixlen = true];
  /// }
  /// ```
  @$pb.TagNumber(28)
  $core.bool get ipv6WithPrefixlen => $_getBF(27);
  @$pb.TagNumber(28)
  set ipv6WithPrefixlen($core.bool value) => $_setBool(27, value);
  @$pb.TagNumber(28)
  $core.bool hasIpv6WithPrefixlen() => $_has(27);
  @$pb.TagNumber(28)
  void clearIpv6WithPrefixlen() => $_clearField(28);

  /// `ip_prefix` specifies that the field value must be a valid IP (v4 or v6)
  /// prefix—for example, "192.168.0.0/16" or "2001:0DB8:ABCD:0012::0/64".
  ///
  /// The prefix must have all zeros for the unmasked bits. For example,
  /// "2001:0DB8:ABCD:0012::0/64" designates the left-most 64 bits for the
  /// prefix, and the remaining 64 bits must be zero.
  ///
  /// If the field value isn't a valid IP prefix, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IP prefix
  ///    string value = 1 [(buf.validate.field).string.ip_prefix = true];
  /// }
  /// ```
  @$pb.TagNumber(29)
  $core.bool get ipPrefix => $_getBF(28);
  @$pb.TagNumber(29)
  set ipPrefix($core.bool value) => $_setBool(28, value);
  @$pb.TagNumber(29)
  $core.bool hasIpPrefix() => $_has(28);
  @$pb.TagNumber(29)
  void clearIpPrefix() => $_clearField(29);

  /// `ipv4_prefix` specifies that the field value must be a valid IPv4
  /// prefix, for example "192.168.0.0/16".
  ///
  /// The prefix must have all zeros for the unmasked bits. For example,
  /// "192.168.0.0/16" designates the left-most 16 bits for the prefix,
  /// and the remaining 16 bits must be zero.
  ///
  /// If the field value isn't a valid IPv4 prefix, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv4 prefix
  ///    string value = 1 [(buf.validate.field).string.ipv4_prefix = true];
  /// }
  /// ```
  @$pb.TagNumber(30)
  $core.bool get ipv4Prefix => $_getBF(29);
  @$pb.TagNumber(30)
  set ipv4Prefix($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(30)
  $core.bool hasIpv4Prefix() => $_has(29);
  @$pb.TagNumber(30)
  void clearIpv4Prefix() => $_clearField(30);

  /// `ipv6_prefix` specifies that the field value must be a valid IPv6 prefix—for
  /// example, "2001:0DB8:ABCD:0012::0/64".
  ///
  /// The prefix must have all zeros for the unmasked bits. For example,
  /// "2001:0DB8:ABCD:0012::0/64" designates the left-most 64 bits for the
  /// prefix, and the remaining 64 bits must be zero.
  ///
  /// If the field value is not a valid IPv6 prefix, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid IPv6 prefix
  ///    string value = 1 [(buf.validate.field).string.ipv6_prefix = true];
  /// }
  /// ```
  @$pb.TagNumber(31)
  $core.bool get ipv6Prefix => $_getBF(30);
  @$pb.TagNumber(31)
  set ipv6Prefix($core.bool value) => $_setBool(30, value);
  @$pb.TagNumber(31)
  $core.bool hasIpv6Prefix() => $_has(30);
  @$pb.TagNumber(31)
  void clearIpv6Prefix() => $_clearField(31);

  /// `host_and_port` specifies that the field value must be a valid host/port
  /// pair—for example, "example.com:8080".
  ///
  /// The host can be one of:
  /// - An IPv4 address in dotted decimal format—for example, "192.168.5.21".
  /// - An IPv6 address enclosed in square brackets—for example, "[2001:0DB8:ABCD:0012::F1]".
  /// - A hostname—for example, "example.com".
  ///
  /// The port is separated by a colon. It must be non-empty, with a decimal number
  /// in the range of 0-65535, inclusive.
  @$pb.TagNumber(32)
  $core.bool get hostAndPort => $_getBF(31);
  @$pb.TagNumber(32)
  set hostAndPort($core.bool value) => $_setBool(31, value);
  @$pb.TagNumber(32)
  $core.bool hasHostAndPort() => $_has(31);
  @$pb.TagNumber(32)
  void clearHostAndPort() => $_clearField(32);

  /// `tuuid` (trimmed UUID) specifies that the field value must be a valid UUID as
  /// defined by [RFC 4122](https://datatracker.ietf.org/doc/html/rfc4122#section-4.1.2) with all dashes
  /// omitted. If the field value isn't a valid UUID without dashes, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid trimmed UUID
  ///   string value = 1 [(buf.validate.field).string.tuuid = true];
  /// }
  /// ```
  @$pb.TagNumber(33)
  $core.bool get tuuid => $_getBF(32);
  @$pb.TagNumber(33)
  set tuuid($core.bool value) => $_setBool(32, value);
  @$pb.TagNumber(33)
  $core.bool hasTuuid() => $_has(32);
  @$pb.TagNumber(33)
  void clearTuuid() => $_clearField(33);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyString {
  ///   string value = 1 [
  ///     (buf.validate.field).string.example = "hello",
  ///     (buf.validate.field).string.example = "world"
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(34)
  $pb.PbList<$core.String> get example => $_getList(33);

  /// `ulid` specifies that the field value must be a valid ULID (Universally Unique
  /// Lexicographically Sortable Identifier) as defined by the [ULID specification](https://github.com/ulid/spec).
  /// If the field value isn't a valid ULID, an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // must be a valid ULID
  ///   string value = 1 [(buf.validate.field).string.ulid = true];
  /// }
  /// ```
  @$pb.TagNumber(35)
  $core.bool get ulid => $_getBF(34);
  @$pb.TagNumber(35)
  set ulid($core.bool value) => $_setBool(34, value);
  @$pb.TagNumber(35)
  $core.bool hasUlid() => $_has(34);
  @$pb.TagNumber(35)
  void clearUlid() => $_clearField(35);

  /// `protobuf_fqn` specifies that the field value must be a valid fully-qualified
  /// Protobuf name as defined by the [Protobuf Language Specification](https://protobuf.com/docs/language-spec).
  ///
  /// A fully-qualified Protobuf name is a dot-separated list of Protobuf identifiers,
  /// where each identifier starts with a letter or underscore and is followed by zero or
  /// more letters, underscores, or digits.
  ///
  /// Examples: "buf.validate", "google.protobuf.Timestamp", "my_package.MyMessage".
  ///
  /// Note: historically, fully-qualified Protobuf names were represented with a leading
  /// dot (for example, ".buf.validate.StringRules"). Modern Protobuf does not use the
  /// leading dot, and most fully-qualified names are represented without it. Use
  /// `protobuf_dot_fqn` if a leading dot is required.
  ///
  /// If the field value isn't a valid fully-qualified Protobuf name, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value must be a valid fully-qualified Protobuf name
  ///   string value = 1 [(buf.validate.field).string.protobuf_fqn = true];
  /// }
  /// ```
  @$pb.TagNumber(37)
  $core.bool get protobufFqn => $_getBF(35);
  @$pb.TagNumber(37)
  set protobufFqn($core.bool value) => $_setBool(35, value);
  @$pb.TagNumber(37)
  $core.bool hasProtobufFqn() => $_has(35);
  @$pb.TagNumber(37)
  void clearProtobufFqn() => $_clearField(37);

  /// `protobuf_dot_fqn` specifies that the field value must be a valid fully-qualified
  /// Protobuf name with a leading dot, as defined by the
  /// [Protobuf Language Specification](https://protobuf.com/docs/language-spec).
  ///
  /// A fully-qualified Protobuf name with a leading dot is a dot followed by a
  /// dot-separated list of Protobuf identifiers, where each identifier starts with a
  /// letter or underscore and is followed by zero or more letters, underscores, or
  /// digits.
  ///
  /// Examples: ".buf.validate", ".google.protobuf.Timestamp", ".my_package.MyMessage".
  ///
  /// Note: this is the historical representation of fully-qualified Protobuf names,
  /// where a leading dot denotes an absolute reference. Modern Protobuf does not use
  /// the leading dot, and most fully-qualified names are represented without it. Most
  /// users will want to use `protobuf_fqn` instead.
  ///
  /// If the field value isn't a valid fully-qualified Protobuf name with a leading dot,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyString {
  ///   // value must be a valid fully-qualified Protobuf name with a leading dot
  ///   string value = 1 [(buf.validate.field).string.protobuf_dot_fqn = true];
  /// }
  /// ```
  @$pb.TagNumber(38)
  $core.bool get protobufDotFqn => $_getBF(36);
  @$pb.TagNumber(38)
  set protobufDotFqn($core.bool value) => $_setBool(36, value);
  @$pb.TagNumber(38)
  $core.bool hasProtobufDotFqn() => $_has(36);
  @$pb.TagNumber(38)
  void clearProtobufDotFqn() => $_clearField(38);
}

enum BytesRules_WellKnown { ip, ipv4, ipv6, uuid, notSet }

/// BytesRules describe the rules applied to `bytes` values. These rules
/// may also be applied to the `google.protobuf.BytesValue` Well-Known-Type.
class BytesRules extends $pb.GeneratedMessage {
  factory BytesRules({
    $core.List<$core.int>? const_1,
    $fixnum.Int64? minLen,
    $fixnum.Int64? maxLen,
    $core.String? pattern,
    $core.List<$core.int>? prefix,
    $core.List<$core.int>? suffix,
    $core.List<$core.int>? contains,
    $core.Iterable<$core.List<$core.int>>? in_8,
    $core.Iterable<$core.List<$core.int>>? notIn,
    $core.bool? ip,
    $core.bool? ipv4,
    $core.bool? ipv6,
    $fixnum.Int64? len,
    $core.Iterable<$core.List<$core.int>>? example,
    $core.bool? uuid,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (minLen != null) result.minLen = minLen;
    if (maxLen != null) result.maxLen = maxLen;
    if (pattern != null) result.pattern = pattern;
    if (prefix != null) result.prefix = prefix;
    if (suffix != null) result.suffix = suffix;
    if (contains != null) result.contains = contains;
    if (in_8 != null) result.in_8.addAll(in_8);
    if (notIn != null) result.notIn.addAll(notIn);
    if (ip != null) result.ip = ip;
    if (ipv4 != null) result.ipv4 = ipv4;
    if (ipv6 != null) result.ipv6 = ipv6;
    if (len != null) result.len = len;
    if (example != null) result.example.addAll(example);
    if (uuid != null) result.uuid = uuid;
    return result;
  }

  BytesRules._();

  factory BytesRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BytesRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BytesRules_WellKnown>
      _BytesRules_WellKnownByTag = {
    10: BytesRules_WellKnown.ip,
    11: BytesRules_WellKnown.ipv4,
    12: BytesRules_WellKnown.ipv6,
    15: BytesRules_WellKnown.uuid,
    0: BytesRules_WellKnown.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BytesRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 15])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'const', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'minLen', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'maxLen', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'pattern')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'prefix', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'suffix', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'contains', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'in', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(
        9, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.PY)
    ..aOB(10, _omitFieldNames ? '' : 'ip')
    ..aOB(11, _omitFieldNames ? '' : 'ipv4')
    ..aOB(12, _omitFieldNames ? '' : 'ipv6')
    ..a<$fixnum.Int64>(13, _omitFieldNames ? '' : 'len', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.List<$core.int>>(
        14, _omitFieldNames ? '' : 'example', $pb.PbFieldType.PY)
    ..aOB(15, _omitFieldNames ? '' : 'uuid')
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BytesRules copyWith(void Function(BytesRules) updates) =>
      super.copyWith((message) => updates(message as BytesRules)) as BytesRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BytesRules create() => BytesRules._();
  @$core.override
  BytesRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BytesRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BytesRules>(create);
  static BytesRules? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(15)
  BytesRules_WellKnown whichWellKnown() =>
      _BytesRules_WellKnownByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(15)
  void clearWellKnown() => $_clearField($_whichOneof(0));

  /// `const` requires the field value to exactly match the specified bytes
  /// value. If the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // must be "\x01\x02\x03\x04"
  ///   bytes value = 1 [(buf.validate.field).bytes.const = "\x01\x02\x03\x04"];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.List<$core.int> get const_1 => $_getN(0);
  @$pb.TagNumber(1)
  set const_1($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `min_len` requires the field value to have at least the specified minimum
  /// length in bytes.
  /// If the field value doesn't meet the requirement, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value length must be at least 2 bytes.
  ///   optional bytes value = 1 [(buf.validate.field).bytes.min_len = 2];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get minLen => $_getI64(1);
  @$pb.TagNumber(2)
  set minLen($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinLen() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinLen() => $_clearField(2);

  /// `max_len` requires the field value to have at most the specified maximum
  /// length in bytes.
  /// If the field value exceeds the requirement, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // must be at most 6 bytes.
  ///   optional bytes value = 1 [(buf.validate.field).bytes.max_len = 6];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $fixnum.Int64 get maxLen => $_getI64(2);
  @$pb.TagNumber(3)
  set maxLen($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxLen() => $_clearField(3);

  /// `pattern` requires the field value to match the specified regular
  /// expression ([RE2 syntax](https://github.com/google/re2/wiki/Syntax)).
  /// The value of the field must be valid UTF-8 or validation will fail with a
  /// runtime error.
  /// If the field value doesn't match the pattern, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value must match regex pattern "^[a-zA-Z0-9]+$".
  ///   optional bytes value = 1 [(buf.validate.field).bytes.pattern = "^[a-zA-Z0-9]+$"];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $core.String get pattern => $_getSZ(3);
  @$pb.TagNumber(4)
  set pattern($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPattern() => $_has(3);
  @$pb.TagNumber(4)
  void clearPattern() => $_clearField(4);

  /// `prefix` requires the field value to have the specified bytes at the
  /// beginning of the string.
  /// If the field value doesn't meet the requirement, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value does not have prefix \x01\x02
  ///   optional bytes value = 1 [(buf.validate.field).bytes.prefix = "\x01\x02"];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $core.List<$core.int> get prefix => $_getN(4);
  @$pb.TagNumber(5)
  set prefix($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPrefix() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrefix() => $_clearField(5);

  /// `suffix` requires the field value to have the specified bytes at the end
  /// of the string.
  /// If the field value doesn't meet the requirement, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value does not have suffix \x03\x04
  ///   optional bytes value = 1 [(buf.validate.field).bytes.suffix = "\x03\x04"];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $core.List<$core.int> get suffix => $_getN(5);
  @$pb.TagNumber(6)
  set suffix($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSuffix() => $_has(5);
  @$pb.TagNumber(6)
  void clearSuffix() => $_clearField(6);

  /// `contains` requires the field value to have the specified bytes anywhere in
  /// the string.
  /// If the field value doesn't meet the requirement, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value does not contain \x02\x03
  ///   optional bytes value = 1 [(buf.validate.field).bytes.contains = "\x02\x03"];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $core.List<$core.int> get contains => $_getN(6);
  @$pb.TagNumber(7)
  set contains($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasContains() => $_has(6);
  @$pb.TagNumber(7)
  void clearContains() => $_clearField(7);

  /// `in` requires the field value to be equal to one of the specified
  /// values. If the field value doesn't match any of the specified values, an
  /// error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value must in ["\x01\x02", "\x02\x03", "\x03\x04"]
  ///   optional bytes value = 1 [(buf.validate.field).bytes = { in: ["\x01\x02", "\x02\x03", "\x03\x04"] }];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$core.List<$core.int>> get in_8 => $_getList(7);

  /// `not_in` requires the field value to be not equal to any of the specified
  /// values.
  /// If the field value matches any of the specified values, an error message is
  /// generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value must not in ["\x01\x02", "\x02\x03", "\x03\x04"]
  ///   optional bytes value = 1 [(buf.validate.field).bytes = { not_in: ["\x01\x02", "\x02\x03", "\x03\x04"] }];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $pb.PbList<$core.List<$core.int>> get notIn => $_getList(8);

  /// `ip` ensures that the field `value` is a valid IP address (v4 or v6) in byte format.
  /// If the field value doesn't meet this rule, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // must be a valid IP address
  ///   optional bytes value = 1 [(buf.validate.field).bytes.ip = true];
  /// }
  /// ```
  @$pb.TagNumber(10)
  $core.bool get ip => $_getBF(9);
  @$pb.TagNumber(10)
  set ip($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIp() => $_has(9);
  @$pb.TagNumber(10)
  void clearIp() => $_clearField(10);

  /// `ipv4` ensures that the field `value` is a valid IPv4 address in byte format.
  /// If the field value doesn't meet this rule, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // must be a valid IPv4 address
  ///   optional bytes value = 1 [(buf.validate.field).bytes.ipv4 = true];
  /// }
  /// ```
  @$pb.TagNumber(11)
  $core.bool get ipv4 => $_getBF(10);
  @$pb.TagNumber(11)
  set ipv4($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIpv4() => $_has(10);
  @$pb.TagNumber(11)
  void clearIpv4() => $_clearField(11);

  /// `ipv6` ensures that the field `value` is a valid IPv6 address in byte format.
  /// If the field value doesn't meet this rule, an error message is generated.
  /// ```proto
  /// message MyBytes {
  ///   // must be a valid IPv6 address
  ///   optional bytes value = 1 [(buf.validate.field).bytes.ipv6 = true];
  /// }
  /// ```
  @$pb.TagNumber(12)
  $core.bool get ipv6 => $_getBF(11);
  @$pb.TagNumber(12)
  set ipv6($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIpv6() => $_has(11);
  @$pb.TagNumber(12)
  void clearIpv6() => $_clearField(12);

  /// `len` requires the field value to have the specified length in bytes.
  /// If the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // value length must be 4 bytes.
  ///   optional bytes value = 1 [(buf.validate.field).bytes.len = 4];
  /// }
  /// ```
  @$pb.TagNumber(13)
  $fixnum.Int64 get len => $_getI64(12);
  @$pb.TagNumber(13)
  set len($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasLen() => $_has(12);
  @$pb.TagNumber(13)
  void clearLen() => $_clearField(13);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyBytes {
  ///   bytes value = 1 [
  ///     (buf.validate.field).bytes.example = "\x01\x02",
  ///     (buf.validate.field).bytes.example = "\x02\x03"
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(14)
  $pb.PbList<$core.List<$core.int>> get example => $_getList(13);

  /// `uuid` ensures that the field value encodes 128-bit UUID data as defined
  /// by [RFC 4122](https://datatracker.ietf.org/doc/html/rfc4122#section-4.1.2).
  /// The field must contain exactly 16 bytes representing the UUID. If the
  /// field value isn't a valid UUID, an error message will be generated.
  ///
  /// ```proto
  /// message MyBytes {
  ///   // must be a valid UUID
  ///   optional bytes value = 1 [(buf.validate.field).bytes.uuid = true];
  /// }
  /// ```
  @$pb.TagNumber(15)
  $core.bool get uuid => $_getBF(14);
  @$pb.TagNumber(15)
  set uuid($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasUuid() => $_has(14);
  @$pb.TagNumber(15)
  void clearUuid() => $_clearField(15);
}

/// EnumRules describe the rules applied to `enum` values.
class EnumRules extends $pb.GeneratedMessage {
  factory EnumRules({
    $core.int? const_1,
    $core.bool? definedOnly,
    $core.Iterable<$core.int>? in_3,
    $core.Iterable<$core.int>? notIn,
    $core.Iterable<$core.int>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (definedOnly != null) result.definedOnly = definedOnly;
    if (in_3 != null) result.in_3.addAll(in_3);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  EnumRules._();

  factory EnumRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnumRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnumRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'const')
    ..aOB(2, _omitFieldNames ? '' : 'definedOnly')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'in', $pb.PbFieldType.P3)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'notIn', $pb.PbFieldType.P3)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'example', $pb.PbFieldType.P3)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnumRules copyWith(void Function(EnumRules) updates) =>
      super.copyWith((message) => updates(message as EnumRules)) as EnumRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnumRules create() => EnumRules._();
  @$core.override
  EnumRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EnumRules getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnumRules>(create);
  static EnumRules? _defaultInstance;

  /// `const` requires the field value to exactly match the specified enum value.
  /// If the field value doesn't match, an error message is generated.
  ///
  /// ```proto
  /// enum MyEnum {
  ///   MY_ENUM_UNSPECIFIED = 0;
  ///   MY_ENUM_VALUE1 = 1;
  ///   MY_ENUM_VALUE2 = 2;
  /// }
  ///
  /// message MyMessage {
  ///   // The field `value` must be exactly MY_ENUM_VALUE1.
  ///   MyEnum value = 1 [(buf.validate.field).enum.const = 1];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $core.int get const_1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set const_1($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);

  /// `defined_only` requires the field value to be one of the defined values for
  /// this enum, failing on any undefined value.
  ///
  /// ```proto
  /// enum MyEnum {
  ///   MY_ENUM_UNSPECIFIED = 0;
  ///   MY_ENUM_VALUE1 = 1;
  ///   MY_ENUM_VALUE2 = 2;
  /// }
  ///
  /// message MyMessage {
  ///   // The field `value` must be a defined value of MyEnum.
  ///   MyEnum value = 1 [(buf.validate.field).enum.defined_only = true];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $core.bool get definedOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set definedOnly($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDefinedOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefinedOnly() => $_clearField(2);

  /// `in` requires the field value to be equal to one of the
  /// specified enum values. If the field value doesn't match any of the
  /// specified values, an error message is generated.
  ///
  /// ```proto
  /// enum MyEnum {
  ///   MY_ENUM_UNSPECIFIED = 0;
  ///   MY_ENUM_VALUE1 = 1;
  ///   MY_ENUM_VALUE2 = 2;
  /// }
  ///
  /// message MyMessage {
  ///   // The field `value` must be equal to one of the specified values.
  ///   MyEnum value = 1 [(buf.validate.field).enum = { in: [1, 2]}];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get in_3 => $_getList(2);

  /// `not_in` requires the field value to be not equal to any of the
  /// specified enum values. If the field value matches one of the specified
  /// values, an error message is generated.
  ///
  /// ```proto
  /// enum MyEnum {
  ///   MY_ENUM_UNSPECIFIED = 0;
  ///   MY_ENUM_VALUE1 = 1;
  ///   MY_ENUM_VALUE2 = 2;
  /// }
  ///
  /// message MyMessage {
  ///   // The field `value` must not be equal to any of the specified values.
  ///   MyEnum value = 1 [(buf.validate.field).enum = { not_in: [1, 2]}];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get notIn => $_getList(3);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// enum MyEnum {
  ///   MY_ENUM_UNSPECIFIED = 0;
  ///   MY_ENUM_VALUE1 = 1;
  ///   MY_ENUM_VALUE2 = 2;
  /// }
  ///
  /// message MyMessage {
  ///   MyEnum value = 1 [
  ///     (buf.validate.field).enum.example = 1,
  ///     (buf.validate.field).enum.example = 2
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get example => $_getList(4);
}

/// RepeatedRules describe the rules applied to `repeated` values.
class RepeatedRules extends $pb.GeneratedMessage {
  factory RepeatedRules({
    $fixnum.Int64? minItems,
    $fixnum.Int64? maxItems,
    $core.bool? unique,
    FieldRules? items,
  }) {
    final result = create();
    if (minItems != null) result.minItems = minItems;
    if (maxItems != null) result.maxItems = maxItems;
    if (unique != null) result.unique = unique;
    if (items != null) result.items = items;
    return result;
  }

  RepeatedRules._();

  factory RepeatedRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RepeatedRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RepeatedRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'minItems', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'maxItems', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, _omitFieldNames ? '' : 'unique')
    ..aOM<FieldRules>(4, _omitFieldNames ? '' : 'items',
        subBuilder: FieldRules.create)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepeatedRules copyWith(void Function(RepeatedRules) updates) =>
      super.copyWith((message) => updates(message as RepeatedRules))
          as RepeatedRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepeatedRules create() => RepeatedRules._();
  @$core.override
  RepeatedRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RepeatedRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RepeatedRules>(create);
  static RepeatedRules? _defaultInstance;

  /// `min_items` requires that this field must contain at least the specified
  /// minimum number of items.
  ///
  /// Note that `min_items = 1` is equivalent to setting a field as `required`.
  ///
  /// ```proto
  /// message MyRepeated {
  ///   // value must contain at least  2 items
  ///   repeated string value = 1 [(buf.validate.field).repeated.min_items = 2];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get minItems => $_getI64(0);
  @$pb.TagNumber(1)
  set minItems($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinItems() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinItems() => $_clearField(1);

  /// `max_items` denotes that this field must not exceed a
  /// certain number of items as the upper limit. If the field contains more
  /// items than specified, an error message will be generated, requiring the
  /// field to maintain no more than the specified number of items.
  ///
  /// ```proto
  /// message MyRepeated {
  ///   // value must contain no more than 3 item(s)
  ///   repeated string value = 1 [(buf.validate.field).repeated.max_items = 3];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get maxItems => $_getI64(1);
  @$pb.TagNumber(2)
  set maxItems($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxItems() => $_clearField(2);

  /// `unique` indicates that all elements in this field must
  /// be unique. This rule is strictly applicable to scalar and enum
  /// types, with message types not being supported.
  ///
  /// ```proto
  /// message MyRepeated {
  ///   // repeated value must contain unique items
  ///   repeated string value = 1 [(buf.validate.field).repeated.unique = true];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $core.bool get unique => $_getBF(2);
  @$pb.TagNumber(3)
  set unique($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUnique() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnique() => $_clearField(3);

  /// `items` details the rules to be applied to each item
  /// in the field. Even for repeated message fields, validation is executed
  /// against each item unless `ignore` is specified.
  ///
  /// ```proto
  /// message MyRepeated {
  ///   // The items in the field `value` must follow the specified rules.
  ///   repeated string value = 1 [(buf.validate.field).repeated.items = {
  ///     string: {
  ///       min_len: 3
  ///       max_len: 10
  ///     }
  ///   }];
  /// }
  /// ```
  ///
  /// Note that the `required` rule does not apply. Repeated items
  /// cannot be unset.
  @$pb.TagNumber(4)
  FieldRules get items => $_getN(3);
  @$pb.TagNumber(4)
  set items(FieldRules value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasItems() => $_has(3);
  @$pb.TagNumber(4)
  void clearItems() => $_clearField(4);
  @$pb.TagNumber(4)
  FieldRules ensureItems() => $_ensure(3);
}

/// MapRules describe the rules applied to `map` values.
class MapRules extends $pb.GeneratedMessage {
  factory MapRules({
    $fixnum.Int64? minPairs,
    $fixnum.Int64? maxPairs,
    FieldRules? keys,
    FieldRules? values,
  }) {
    final result = create();
    if (minPairs != null) result.minPairs = minPairs;
    if (maxPairs != null) result.maxPairs = maxPairs;
    if (keys != null) result.keys = keys;
    if (values != null) result.values = values;
    return result;
  }

  MapRules._();

  factory MapRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'minPairs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'maxPairs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<FieldRules>(4, _omitFieldNames ? '' : 'keys',
        subBuilder: FieldRules.create)
    ..aOM<FieldRules>(5, _omitFieldNames ? '' : 'values',
        subBuilder: FieldRules.create)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapRules copyWith(void Function(MapRules) updates) =>
      super.copyWith((message) => updates(message as MapRules)) as MapRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapRules create() => MapRules._();
  @$core.override
  MapRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapRules getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapRules>(create);
  static MapRules? _defaultInstance;

  /// Specifies the minimum number of key-value pairs allowed. If the field has
  /// fewer key-value pairs than specified, an error message is generated.
  ///
  /// ```proto
  /// message MyMap {
  ///   // The field `value` must have at least 2 key-value pairs.
  ///   map<string, string> value = 1 [(buf.validate.field).map.min_pairs = 2];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $fixnum.Int64 get minPairs => $_getI64(0);
  @$pb.TagNumber(1)
  set minPairs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinPairs() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinPairs() => $_clearField(1);

  /// Specifies the maximum number of key-value pairs allowed. If the field has
  /// more key-value pairs than specified, an error message is generated.
  ///
  /// ```proto
  /// message MyMap {
  ///   // The field `value` must have at most 3 key-value pairs.
  ///   map<string, string> value = 1 [(buf.validate.field).map.max_pairs = 3];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $fixnum.Int64 get maxPairs => $_getI64(1);
  @$pb.TagNumber(2)
  set maxPairs($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxPairs() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxPairs() => $_clearField(2);

  /// Specifies the rules to be applied to each key in the field.
  ///
  /// ```proto
  /// message MyMap {
  ///   // The keys in the field `value` must follow the specified rules.
  ///   map<string, string> value = 1 [(buf.validate.field).map.keys = {
  ///     string: {
  ///       min_len: 3
  ///       max_len: 10
  ///     }
  ///   }];
  /// }
  /// ```
  ///
  /// Note that the `required` rule does not apply. Map keys cannot be unset.
  @$pb.TagNumber(4)
  FieldRules get keys => $_getN(2);
  @$pb.TagNumber(4)
  set keys(FieldRules value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKeys() => $_has(2);
  @$pb.TagNumber(4)
  void clearKeys() => $_clearField(4);
  @$pb.TagNumber(4)
  FieldRules ensureKeys() => $_ensure(2);

  /// Specifies the rules to be applied to the value of each key in the
  /// field. Message values will still have their validations evaluated unless
  /// `ignore` is specified.
  ///
  /// ```proto
  /// message MyMap {
  ///   // The values in the field `value` must follow the specified rules.
  ///   map<string, string> value = 1 [(buf.validate.field).map.values = {
  ///     string: {
  ///       min_len: 5
  ///       max_len: 20
  ///     }
  ///   }];
  /// }
  /// ```
  /// Note that the `required` rule does not apply. Map values cannot be unset.
  @$pb.TagNumber(5)
  FieldRules get values => $_getN(3);
  @$pb.TagNumber(5)
  set values(FieldRules value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasValues() => $_has(3);
  @$pb.TagNumber(5)
  void clearValues() => $_clearField(5);
  @$pb.TagNumber(5)
  FieldRules ensureValues() => $_ensure(3);
}

/// AnyRules describe rules applied exclusively to the `google.protobuf.Any` well-known type.
class AnyRules extends $pb.GeneratedMessage {
  factory AnyRules({
    $core.Iterable<$core.String>? in_2,
    $core.Iterable<$core.String>? notIn,
  }) {
    final result = create();
    if (in_2 != null) result.in_2.addAll(in_2);
    if (notIn != null) result.notIn.addAll(notIn);
    return result;
  }

  AnyRules._();

  factory AnyRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnyRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnyRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'in')
    ..pPS(3, _omitFieldNames ? '' : 'notIn')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnyRules copyWith(void Function(AnyRules) updates) =>
      super.copyWith((message) => updates(message as AnyRules)) as AnyRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyRules create() => AnyRules._();
  @$core.override
  AnyRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnyRules getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnyRules>(create);
  static AnyRules? _defaultInstance;

  /// `in` requires the field's `type_url` to be equal to one of the
  /// specified values. If it doesn't match any of the specified values, an error
  /// message is generated.
  ///
  /// ```proto
  /// message MyAny {
  ///   //  The `value` field must have a `type_url` equal to one of the specified values.
  ///   google.protobuf.Any value = 1 [(buf.validate.field).any = {
  ///       in: ["type.googleapis.com/MyType1", "type.googleapis.com/MyType2"]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get in_2 => $_getList(0);

  /// `not_in` requires the field's type_url to be not equal to any of the specified values. If it matches any of the specified values, an error message is generated.
  ///
  /// ```proto
  /// message MyAny {
  ///   //  The `value` field must not have a `type_url` equal to any of the specified values.
  ///   google.protobuf.Any value = 1 [(buf.validate.field).any = {
  ///       not_in: ["type.googleapis.com/ForbiddenType1", "type.googleapis.com/ForbiddenType2"]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get notIn => $_getList(1);
}

enum DurationRules_LessThan { lt, lte, notSet }

enum DurationRules_GreaterThan { gt, gte, notSet }

/// DurationRules describe the rules applied exclusively to the `google.protobuf.Duration` well-known type.
class DurationRules extends $pb.GeneratedMessage {
  factory DurationRules({
    $0.Duration? const_2,
    $0.Duration? lt,
    $0.Duration? lte,
    $0.Duration? gt,
    $0.Duration? gte,
    $core.Iterable<$0.Duration>? in_7,
    $core.Iterable<$0.Duration>? notIn,
    $core.Iterable<$0.Duration>? example,
  }) {
    final result = create();
    if (const_2 != null) result.const_2 = const_2;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (in_7 != null) result.in_7.addAll(in_7);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  DurationRules._();

  factory DurationRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DurationRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DurationRules_LessThan>
      _DurationRules_LessThanByTag = {
    3: DurationRules_LessThan.lt,
    4: DurationRules_LessThan.lte,
    0: DurationRules_LessThan.notSet
  };
  static const $core.Map<$core.int, DurationRules_GreaterThan>
      _DurationRules_GreaterThanByTag = {
    5: DurationRules_GreaterThan.gt,
    6: DurationRules_GreaterThan.gte,
    0: DurationRules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DurationRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..oo(1, [5, 6])
    ..aOM<$0.Duration>(2, _omitFieldNames ? '' : 'const',
        subBuilder: $0.Duration.create)
    ..aOM<$0.Duration>(3, _omitFieldNames ? '' : 'lt',
        subBuilder: $0.Duration.create)
    ..aOM<$0.Duration>(4, _omitFieldNames ? '' : 'lte',
        subBuilder: $0.Duration.create)
    ..aOM<$0.Duration>(5, _omitFieldNames ? '' : 'gt',
        subBuilder: $0.Duration.create)
    ..aOM<$0.Duration>(6, _omitFieldNames ? '' : 'gte',
        subBuilder: $0.Duration.create)
    ..pPM<$0.Duration>(7, _omitFieldNames ? '' : 'in',
        subBuilder: $0.Duration.create)
    ..pPM<$0.Duration>(8, _omitFieldNames ? '' : 'notIn',
        subBuilder: $0.Duration.create)
    ..pPM<$0.Duration>(9, _omitFieldNames ? '' : 'example',
        subBuilder: $0.Duration.create)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DurationRules copyWith(void Function(DurationRules) updates) =>
      super.copyWith((message) => updates(message as DurationRules))
          as DurationRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DurationRules create() => DurationRules._();
  @$core.override
  DurationRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DurationRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DurationRules>(create);
  static DurationRules? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  DurationRules_LessThan whichLessThan() =>
      _DurationRules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  DurationRules_GreaterThan whichGreaterThan() =>
      _DurationRules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` dictates that the field must match the specified value of the `google.protobuf.Duration` type exactly.
  /// If the field's value deviates from the specified value, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // value must equal 5s
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration.const = { seconds: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $0.Duration get const_2 => $_getN(0);
  @$pb.TagNumber(2)
  set const_2($0.Duration value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConst_2() => $_has(0);
  @$pb.TagNumber(2)
  void clearConst_2() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Duration ensureConst_2() => $_ensure(0);

  /// `lt` stipulates that the field must be less than the specified value of the `google.protobuf.Duration` type,
  /// exclusive. If the field's value is greater than or equal to the specified
  /// value, an error message will be generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // must be less than 5s
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration.lt = { seconds: 5 }];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $0.Duration get lt => $_getN(1);
  @$pb.TagNumber(3)
  set lt($0.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(3)
  void clearLt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Duration ensureLt() => $_ensure(1);

  /// `lte` indicates that the field must be less than or equal to the specified
  /// value of the `google.protobuf.Duration` type, inclusive. If the field's value is greater than the specified value,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // must be less than or equal to 10s
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration.lte = { seconds: 10 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $0.Duration get lte => $_getN(2);
  @$pb.TagNumber(4)
  set lte($0.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(4)
  void clearLte() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Duration ensureLte() => $_ensure(2);

  /// `gt` requires the duration field value to be greater than the specified
  /// value (exclusive). If the value of `gt` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // duration must be greater than 5s [duration.gt]
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration.gt = { seconds: 5 }];
  ///
  ///   // duration must be greater than 5s and less than 10s [duration.gt_lt]
  ///   google.protobuf.Duration another_value = 2 [(buf.validate.field).duration = { gt: { seconds: 5 }, lt: { seconds: 10 } }];
  ///
  ///   // duration must be greater than 10s or less than 5s [duration.gt_lt_exclusive]
  ///   google.protobuf.Duration other_value = 3 [(buf.validate.field).duration = { gt: { seconds: 10 }, lt: { seconds: 5 } }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $0.Duration get gt => $_getN(3);
  @$pb.TagNumber(5)
  set gt($0.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(5)
  void clearGt() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Duration ensureGt() => $_ensure(3);

  /// `gte` requires the duration field value to be greater than or equal to the
  /// specified value (exclusive). If the value of `gte` is larger than a
  /// specified `lt` or `lte`, the range is reversed, and the field value must
  /// be outside the specified range. If the field value doesn't meet the
  /// required conditions, an error message is generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///  // duration must be greater than or equal to 5s [duration.gte]
  ///  google.protobuf.Duration value = 1 [(buf.validate.field).duration.gte = { seconds: 5 }];
  ///
  ///  // duration must be greater than or equal to 5s and less than 10s [duration.gte_lt]
  ///  google.protobuf.Duration another_value = 2 [(buf.validate.field).duration = { gte: { seconds: 5 }, lt: { seconds: 10 } }];
  ///
  ///  // duration must be greater than or equal to 10s or less than 5s [duration.gte_lt_exclusive]
  ///  google.protobuf.Duration other_value = 3 [(buf.validate.field).duration = { gte: { seconds: 10 }, lt: { seconds: 5 } }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $0.Duration get gte => $_getN(4);
  @$pb.TagNumber(6)
  set gte($0.Duration value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(6)
  void clearGte() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Duration ensureGte() => $_ensure(4);

  /// `in` asserts that the field must be equal to one of the specified values of the `google.protobuf.Duration` type.
  /// If the field's value doesn't correspond to any of the specified values,
  /// an error message will be generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // must be in list [1s, 2s, 3s]
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration = {
  ///     in: [{ seconds: 1 }, { seconds: 2 }, { seconds: 3 }]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $pb.PbList<$0.Duration> get in_7 => $_getList(5);

  /// `not_in` denotes that the field must not be equal to
  /// any of the specified values of the `google.protobuf.Duration` type.
  /// If the field's value matches any of these values, an error message will be
  /// generated.
  ///
  /// ```proto
  /// message MyDuration {
  ///   // value must not be in list [1s, 2s, 3s]
  ///   google.protobuf.Duration value = 1 [(buf.validate.field).duration = {
  ///     not_in: [{ seconds: 1 }, { seconds: 2 }, { seconds: 3 }]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $pb.PbList<$0.Duration> get notIn => $_getList(6);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyDuration {
  ///   google.protobuf.Duration value = 1 [
  ///     (buf.validate.field).duration.example = { seconds: 1 },
  ///     (buf.validate.field).duration.example = { seconds: 2 }
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $pb.PbList<$0.Duration> get example => $_getList(7);
}

/// FieldMaskRules describe rules applied exclusively to the `google.protobuf.FieldMask` well-known type.
class FieldMaskRules extends $pb.GeneratedMessage {
  factory FieldMaskRules({
    $1.FieldMask? const_1,
    $core.Iterable<$core.String>? in_2,
    $core.Iterable<$core.String>? notIn,
    $core.Iterable<$1.FieldMask>? example,
  }) {
    final result = create();
    if (const_1 != null) result.const_1 = const_1;
    if (in_2 != null) result.in_2.addAll(in_2);
    if (notIn != null) result.notIn.addAll(notIn);
    if (example != null) result.example.addAll(example);
    return result;
  }

  FieldMaskRules._();

  factory FieldMaskRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldMaskRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldMaskRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aOM<$1.FieldMask>(1, _omitFieldNames ? '' : 'const',
        subBuilder: $1.FieldMask.create)
    ..pPS(2, _omitFieldNames ? '' : 'in')
    ..pPS(3, _omitFieldNames ? '' : 'notIn')
    ..pPM<$1.FieldMask>(4, _omitFieldNames ? '' : 'example',
        subBuilder: $1.FieldMask.create)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldMaskRules copyWith(void Function(FieldMaskRules) updates) =>
      super.copyWith((message) => updates(message as FieldMaskRules))
          as FieldMaskRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldMaskRules create() => FieldMaskRules._();
  @$core.override
  FieldMaskRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldMaskRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldMaskRules>(create);
  static FieldMaskRules? _defaultInstance;

  /// `const` dictates that the field must match the specified value of the `google.protobuf.FieldMask` type exactly.
  /// If the field's value deviates from the specified value, an error message
  /// will be generated.
  ///
  /// ```proto
  /// message MyFieldMask {
  ///   // value must equal ["a"]
  ///   google.protobuf.FieldMask value = 1 [(buf.validate.field).field_mask.const = {
  ///       paths: ["a"]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(1)
  $1.FieldMask get const_1 => $_getN(0);
  @$pb.TagNumber(1)
  set const_1($1.FieldMask value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConst_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearConst_1() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.FieldMask ensureConst_1() => $_ensure(0);

  /// `in` requires the field value to only contain paths matching specified
  /// values or their subpaths.
  /// If any of the field value's paths doesn't match the rule,
  /// an error message is generated.
  /// See: https://protobuf.dev/reference/protobuf/google.protobuf/#field-mask
  ///
  /// ```proto
  /// message MyFieldMask {
  ///   //  The `value` FieldMask must only contain paths listed in `in`.
  ///   google.protobuf.FieldMask value = 1 [(buf.validate.field).field_mask = {
  ///       in: ["a", "b", "c.a"]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get in_2 => $_getList(1);

  /// `not_in` requires the field value to not contain paths matching specified
  /// values or their subpaths.
  /// If any of the field value's paths matches the rule,
  /// an error message is generated.
  /// See: https://protobuf.dev/reference/protobuf/google.protobuf/#field-mask
  ///
  /// ```proto
  /// message MyFieldMask {
  ///   //  The `value` FieldMask shall not contain paths listed in `not_in`.
  ///   google.protobuf.FieldMask value = 1 [(buf.validate.field).field_mask = {
  ///       not_in: ["forbidden", "immutable", "c.a"]
  ///   }];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get notIn => $_getList(2);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyFieldMask {
  ///   google.protobuf.FieldMask value = 1 [
  ///     (buf.validate.field).field_mask.example = { paths: ["a", "b"] },
  ///     (buf.validate.field).field_mask.example = { paths: ["c.a", "d"] }
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $pb.PbList<$1.FieldMask> get example => $_getList(3);
}

enum TimestampRules_LessThan { lt, lte, ltNow, notSet }

enum TimestampRules_GreaterThan { gt, gte, gtNow, notSet }

/// TimestampRules describe the rules applied exclusively to the `google.protobuf.Timestamp` well-known type.
class TimestampRules extends $pb.GeneratedMessage {
  factory TimestampRules({
    $2.Timestamp? const_2,
    $2.Timestamp? lt,
    $2.Timestamp? lte,
    $2.Timestamp? gt,
    $2.Timestamp? gte,
    $core.bool? ltNow,
    $core.bool? gtNow,
    $0.Duration? within,
    $core.Iterable<$2.Timestamp>? example,
  }) {
    final result = create();
    if (const_2 != null) result.const_2 = const_2;
    if (lt != null) result.lt = lt;
    if (lte != null) result.lte = lte;
    if (gt != null) result.gt = gt;
    if (gte != null) result.gte = gte;
    if (ltNow != null) result.ltNow = ltNow;
    if (gtNow != null) result.gtNow = gtNow;
    if (within != null) result.within = within;
    if (example != null) result.example.addAll(example);
    return result;
  }

  TimestampRules._();

  factory TimestampRules.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimestampRules.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TimestampRules_LessThan>
      _TimestampRules_LessThanByTag = {
    3: TimestampRules_LessThan.lt,
    4: TimestampRules_LessThan.lte,
    7: TimestampRules_LessThan.ltNow,
    0: TimestampRules_LessThan.notSet
  };
  static const $core.Map<$core.int, TimestampRules_GreaterThan>
      _TimestampRules_GreaterThanByTag = {
    5: TimestampRules_GreaterThan.gt,
    6: TimestampRules_GreaterThan.gte,
    8: TimestampRules_GreaterThan.gtNow,
    0: TimestampRules_GreaterThan.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimestampRules',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 7])
    ..oo(1, [5, 6, 8])
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'const',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'lt',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'lte',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(5, _omitFieldNames ? '' : 'gt',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(6, _omitFieldNames ? '' : 'gte',
        subBuilder: $2.Timestamp.create)
    ..aOB(7, _omitFieldNames ? '' : 'ltNow')
    ..aOB(8, _omitFieldNames ? '' : 'gtNow')
    ..aOM<$0.Duration>(9, _omitFieldNames ? '' : 'within',
        subBuilder: $0.Duration.create)
    ..pPM<$2.Timestamp>(10, _omitFieldNames ? '' : 'example',
        subBuilder: $2.Timestamp.create)
    ..hasExtensions = true;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampRules clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimestampRules copyWith(void Function(TimestampRules) updates) =>
      super.copyWith((message) => updates(message as TimestampRules))
          as TimestampRules;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimestampRules create() => TimestampRules._();
  @$core.override
  TimestampRules createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimestampRules getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimestampRules>(create);
  static TimestampRules? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(7)
  TimestampRules_LessThan whichLessThan() =>
      _TimestampRules_LessThanByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(7)
  void clearLessThan() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(8)
  TimestampRules_GreaterThan whichGreaterThan() =>
      _TimestampRules_GreaterThanByTag[$_whichOneof(1)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(8)
  void clearGreaterThan() => $_clearField($_whichOneof(1));

  /// `const` dictates that this field, of the `google.protobuf.Timestamp` type, must exactly match the specified value. If the field value doesn't correspond to the specified timestamp, an error message will be generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // value must equal 2023-05-03T10:00:00Z
  ///   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.const = {seconds: 1727998800}];
  /// }
  /// ```
  @$pb.TagNumber(2)
  $2.Timestamp get const_2 => $_getN(0);
  @$pb.TagNumber(2)
  set const_2($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConst_2() => $_has(0);
  @$pb.TagNumber(2)
  void clearConst_2() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureConst_2() => $_ensure(0);

  /// `lt` requires the timestamp field value to be less than the specified value (field < value). If the field value doesn't meet the required conditions, an error message is generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // timestamp must be less than '2023-01-01T00:00:00Z' [timestamp.lt]
  ///   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.lt = { seconds: 1672444800 }];
  /// }
  /// ```
  @$pb.TagNumber(3)
  $2.Timestamp get lt => $_getN(1);
  @$pb.TagNumber(3)
  set lt($2.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLt() => $_has(1);
  @$pb.TagNumber(3)
  void clearLt() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureLt() => $_ensure(1);

  /// `lte` requires the timestamp field value to be less than or equal to the specified value (field <= value). If the field value doesn't meet the required conditions, an error message is generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // timestamp must be less than or equal to '2023-05-14T00:00:00Z' [timestamp.lte]
  ///   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.lte = { seconds: 1678867200 }];
  /// }
  /// ```
  @$pb.TagNumber(4)
  $2.Timestamp get lte => $_getN(2);
  @$pb.TagNumber(4)
  set lte($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLte() => $_has(2);
  @$pb.TagNumber(4)
  void clearLte() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureLte() => $_ensure(2);

  /// `gt` requires the timestamp field value to be greater than the specified
  /// value (exclusive). If the value of `gt` is larger than a specified `lt`
  /// or `lte`, the range is reversed, and the field value must be outside the
  /// specified range. If the field value doesn't meet the required conditions,
  /// an error message is generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // timestamp must be greater than '2023-01-01T00:00:00Z' [timestamp.gt]
  ///   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.gt = { seconds: 1672444800 }];
  ///
  ///   // timestamp must be greater than '2023-01-01T00:00:00Z' and less than '2023-01-02T00:00:00Z' [timestamp.gt_lt]
  ///   google.protobuf.Timestamp another_value = 2 [(buf.validate.field).timestamp = { gt: { seconds: 1672444800 }, lt: { seconds: 1672531200 } }];
  ///
  ///   // timestamp must be greater than '2023-01-02T00:00:00Z' or less than '2023-01-01T00:00:00Z' [timestamp.gt_lt_exclusive]
  ///   google.protobuf.Timestamp other_value = 3 [(buf.validate.field).timestamp = { gt: { seconds: 1672531200 }, lt: { seconds: 1672444800 } }];
  /// }
  /// ```
  @$pb.TagNumber(5)
  $2.Timestamp get gt => $_getN(3);
  @$pb.TagNumber(5)
  set gt($2.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGt() => $_has(3);
  @$pb.TagNumber(5)
  void clearGt() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureGt() => $_ensure(3);

  /// `gte` requires the timestamp field value to be greater than or equal to the
  /// specified value (exclusive). If the value of `gte` is larger than a
  /// specified `lt` or `lte`, the range is reversed, and the field value
  /// must be outside the specified range. If the field value doesn't meet
  /// the required conditions, an error message is generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // timestamp must be greater than or equal to '2023-01-01T00:00:00Z' [timestamp.gte]
  ///   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.gte = { seconds: 1672444800 }];
  ///
  ///   // timestamp must be greater than or equal to '2023-01-01T00:00:00Z' and less than '2023-01-02T00:00:00Z' [timestamp.gte_lt]
  ///   google.protobuf.Timestamp another_value = 2 [(buf.validate.field).timestamp = { gte: { seconds: 1672444800 }, lt: { seconds: 1672531200 } }];
  ///
  ///   // timestamp must be greater than or equal to '2023-01-02T00:00:00Z' or less than '2023-01-01T00:00:00Z' [timestamp.gte_lt_exclusive]
  ///   google.protobuf.Timestamp other_value = 3 [(buf.validate.field).timestamp = { gte: { seconds: 1672531200 }, lt: { seconds: 1672444800 } }];
  /// }
  /// ```
  @$pb.TagNumber(6)
  $2.Timestamp get gte => $_getN(4);
  @$pb.TagNumber(6)
  set gte($2.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGte() => $_has(4);
  @$pb.TagNumber(6)
  void clearGte() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureGte() => $_ensure(4);

  /// `lt_now` specifies that this field, of the `google.protobuf.Timestamp` type, must be less than the current time. `lt_now` can only be used with the `within` rule.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///  // must be less than now
  ///   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.lt_now = true];
  /// }
  /// ```
  @$pb.TagNumber(7)
  $core.bool get ltNow => $_getBF(5);
  @$pb.TagNumber(7)
  set ltNow($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(7)
  $core.bool hasLtNow() => $_has(5);
  @$pb.TagNumber(7)
  void clearLtNow() => $_clearField(7);

  /// `gt_now` specifies that this field, of the `google.protobuf.Timestamp` type, must be greater than the current time. `gt_now` can only be used with the `within` rule.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // must be greater than now
  ///   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.gt_now = true];
  /// }
  /// ```
  @$pb.TagNumber(8)
  $core.bool get gtNow => $_getBF(6);
  @$pb.TagNumber(8)
  set gtNow($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(8)
  $core.bool hasGtNow() => $_has(6);
  @$pb.TagNumber(8)
  void clearGtNow() => $_clearField(8);

  /// `within` specifies that this field, of the `google.protobuf.Timestamp` type, must be within the specified duration of the current time. If the field value isn't within the duration, an error message is generated.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   // must be within 1 hour of now
  ///   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.within = {seconds: 3600}];
  /// }
  /// ```
  @$pb.TagNumber(9)
  $0.Duration get within => $_getN(7);
  @$pb.TagNumber(9)
  set within($0.Duration value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWithin() => $_has(7);
  @$pb.TagNumber(9)
  void clearWithin() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.Duration ensureWithin() => $_ensure(7);

  /// `example` specifies values that the field may have. These values SHOULD
  /// conform to other rules. `example` values will not impact validation
  /// but may be used as helpful guidance on how to populate the given field.
  ///
  /// ```proto
  /// message MyTimestamp {
  ///   google.protobuf.Timestamp value = 1 [
  ///     (buf.validate.field).timestamp.example = { seconds: 1672444800 },
  ///     (buf.validate.field).timestamp.example = { seconds: 1672531200 }
  ///   ];
  /// }
  /// ```
  @$pb.TagNumber(10)
  $pb.PbList<$2.Timestamp> get example => $_getList(8);
}

/// `Violations` is a collection of `Violation` messages. This message type is returned by
/// Protovalidate when a proto message fails to meet the requirements set by the `Rule` validation rules.
/// Each individual violation is represented by a `Violation` message.
class Violations extends $pb.GeneratedMessage {
  factory Violations({
    $core.Iterable<Violation>? violations,
  }) {
    final result = create();
    if (violations != null) result.violations.addAll(violations);
    return result;
  }

  Violations._();

  factory Violations.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Violations.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Violations',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPM<Violation>(1, _omitFieldNames ? '' : 'violations',
        subBuilder: Violation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Violations clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Violations copyWith(void Function(Violations) updates) =>
      super.copyWith((message) => updates(message as Violations)) as Violations;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Violations create() => Violations._();
  @$core.override
  Violations createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Violations getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Violations>(create);
  static Violations? _defaultInstance;

  /// `violations` is a repeated field that contains all the `Violation` messages corresponding to the violations detected.
  @$pb.TagNumber(1)
  $pb.PbList<Violation> get violations => $_getList(0);
}

/// `Violation` represents a single instance where a validation rule, expressed
/// as a `Rule`, was not met. It provides information about the field that
/// caused the violation, the specific rule that wasn't fulfilled, and a
/// human-readable error message.
///
/// For example, consider the following message:
///
/// ```proto
/// message User {
///     int32 age = 1 [(buf.validate.field).cel = {
///         id: "user.age",
///         expression: "this < 18 ? 'User must be at least 18 years old' : ''",
///     }];
/// }
/// ```
///
/// It could produce the following violation:
///
/// ```json
/// {
///   "ruleId": "user.age",
///   "message": "User must be at least 18 years old",
///   "field": {
///     "elements": [
///       {
///         "fieldNumber": 1,
///         "fieldName": "age",
///         "fieldType": "TYPE_INT32"
///       }
///     ]
///   },
///   "rule": {
///     "elements": [
///       {
///         "fieldNumber": 23,
///         "fieldName": "cel",
///         "fieldType": "TYPE_MESSAGE",
///         "index": "0"
///       }
///     ]
///   }
/// }
/// ```
class Violation extends $pb.GeneratedMessage {
  factory Violation({
    $core.String? ruleId,
    $core.String? message,
    $core.bool? forKey,
    FieldPath? field_5,
    FieldPath? rule,
  }) {
    final result = create();
    if (ruleId != null) result.ruleId = ruleId;
    if (message != null) result.message = message;
    if (forKey != null) result.forKey = forKey;
    if (field_5 != null) result.field_5 = field_5;
    if (rule != null) result.rule = rule;
    return result;
  }

  Violation._();

  factory Violation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Violation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Violation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'ruleId')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOB(4, _omitFieldNames ? '' : 'forKey')
    ..aOM<FieldPath>(5, _omitFieldNames ? '' : 'field',
        subBuilder: FieldPath.create)
    ..aOM<FieldPath>(6, _omitFieldNames ? '' : 'rule',
        subBuilder: FieldPath.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Violation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Violation copyWith(void Function(Violation) updates) =>
      super.copyWith((message) => updates(message as Violation)) as Violation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Violation create() => Violation._();
  @$core.override
  Violation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Violation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Violation>(create);
  static Violation? _defaultInstance;

  /// `rule_id` is the unique identifier of the `Rule` that was not fulfilled.
  /// This is the same `id` that was specified in the `Rule` message, allowing easy tracing of which rule was violated.
  @$pb.TagNumber(2)
  $core.String get ruleId => $_getSZ(0);
  @$pb.TagNumber(2)
  set ruleId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(2)
  $core.bool hasRuleId() => $_has(0);
  @$pb.TagNumber(2)
  void clearRuleId() => $_clearField(2);

  /// `message` is a human-readable error message that describes the nature of the violation.
  /// This can be the default error message from the violated `Rule`, or it can be a custom message that gives more context about the violation.
  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);

  /// `for_key` indicates whether the violation was caused by a map key, rather than a value.
  @$pb.TagNumber(4)
  $core.bool get forKey => $_getBF(2);
  @$pb.TagNumber(4)
  set forKey($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(4)
  $core.bool hasForKey() => $_has(2);
  @$pb.TagNumber(4)
  void clearForKey() => $_clearField(4);

  /// `field` is a machine-readable path to the field that failed validation.
  /// This could be a nested field, in which case the path will include all the parent fields leading to the actual field that caused the violation.
  ///
  /// For example, consider the following message:
  ///
  /// ```proto
  /// message Message {
  ///   bool a = 1 [(buf.validate.field).required = true];
  /// }
  /// ```
  ///
  /// It could produce the following violation:
  ///
  /// ```textproto
  /// violation {
  ///   field { element { field_number: 1, field_name: "a", field_type: 8 } }
  ///   ...
  /// }
  /// ```
  @$pb.TagNumber(5)
  FieldPath get field_5 => $_getN(3);
  @$pb.TagNumber(5)
  set field_5(FieldPath value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasField_5() => $_has(3);
  @$pb.TagNumber(5)
  void clearField_5() => $_clearField(5);
  @$pb.TagNumber(5)
  FieldPath ensureField_5() => $_ensure(3);

  /// `rule` is a machine-readable path that points to the specific rule that failed validation.
  /// This will be a nested field starting from the FieldRules of the field that failed validation.
  /// For custom rules, this will provide the path of the rule, e.g. `cel[0]`.
  ///
  /// For example, consider the following message:
  ///
  /// ```proto
  /// message Message {
  ///   bool a = 1 [(buf.validate.field).required = true];
  ///   bool b = 2 [(buf.validate.field).cel = {
  ///     id: "custom_rule",
  ///     expression: "!this ? 'b must be true': ''"
  ///   }];
  /// }
  /// ```
  ///
  /// It could produce the following violations:
  ///
  /// ```textproto
  /// violation {
  ///   rule { element { field_number: 25, field_name: "required", field_type: 8 } }
  ///   ...
  /// }
  /// violation {
  ///   rule { element { field_number: 23, field_name: "cel", field_type: 11, index: 0 } }
  ///   ...
  /// }
  /// ```
  @$pb.TagNumber(6)
  FieldPath get rule => $_getN(4);
  @$pb.TagNumber(6)
  set rule(FieldPath value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRule() => $_has(4);
  @$pb.TagNumber(6)
  void clearRule() => $_clearField(6);
  @$pb.TagNumber(6)
  FieldPath ensureRule() => $_ensure(4);
}

/// `FieldPath` provides a path to a nested protobuf field.
///
/// This message provides enough information to render a dotted field path even without protobuf descriptors.
/// It also provides enough information to resolve a nested field through unknown wire data.
class FieldPath extends $pb.GeneratedMessage {
  factory FieldPath({
    $core.Iterable<FieldPathElement>? elements,
  }) {
    final result = create();
    if (elements != null) result.elements.addAll(elements);
    return result;
  }

  FieldPath._();

  factory FieldPath.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldPath.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldPath',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..pPM<FieldPathElement>(1, _omitFieldNames ? '' : 'elements',
        subBuilder: FieldPathElement.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldPath clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldPath copyWith(void Function(FieldPath) updates) =>
      super.copyWith((message) => updates(message as FieldPath)) as FieldPath;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldPath create() => FieldPath._();
  @$core.override
  FieldPath createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldPath getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldPath>(create);
  static FieldPath? _defaultInstance;

  /// `elements` contains each element of the path, starting from the root and recursing downward.
  @$pb.TagNumber(1)
  $pb.PbList<FieldPathElement> get elements => $_getList(0);
}

enum FieldPathElement_Subscript {
  index_,
  boolKey,
  intKey,
  uintKey,
  stringKey,
  notSet
}

/// `FieldPathElement` provides enough information to nest through a single protobuf field.
///
/// If the selected field is a map or repeated field, the `subscript` value selects a specific element from it.
/// A path that refers to a value nested under a map key or repeated field index will have a `subscript` value.
/// The `field_type` field allows unambiguous resolution of a field even if descriptors are not available.
class FieldPathElement extends $pb.GeneratedMessage {
  factory FieldPathElement({
    $core.int? fieldNumber,
    $core.String? fieldName,
    $3.FieldDescriptorProto_Type? fieldType,
    $3.FieldDescriptorProto_Type? keyType,
    $3.FieldDescriptorProto_Type? valueType,
    $fixnum.Int64? index,
    $core.bool? boolKey,
    $fixnum.Int64? intKey,
    $fixnum.Int64? uintKey,
    $core.String? stringKey,
  }) {
    final result = create();
    if (fieldNumber != null) result.fieldNumber = fieldNumber;
    if (fieldName != null) result.fieldName = fieldName;
    if (fieldType != null) result.fieldType = fieldType;
    if (keyType != null) result.keyType = keyType;
    if (valueType != null) result.valueType = valueType;
    if (index != null) result.index = index;
    if (boolKey != null) result.boolKey = boolKey;
    if (intKey != null) result.intKey = intKey;
    if (uintKey != null) result.uintKey = uintKey;
    if (stringKey != null) result.stringKey = stringKey;
    return result;
  }

  FieldPathElement._();

  factory FieldPathElement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FieldPathElement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, FieldPathElement_Subscript>
      _FieldPathElement_SubscriptByTag = {
    6: FieldPathElement_Subscript.index_,
    7: FieldPathElement_Subscript.boolKey,
    8: FieldPathElement_Subscript.intKey,
    9: FieldPathElement_Subscript.uintKey,
    10: FieldPathElement_Subscript.stringKey,
    0: FieldPathElement_Subscript.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FieldPathElement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'buf.validate'),
      createEmptyInstance: create)
    ..oo(0, [6, 7, 8, 9, 10])
    ..aI(1, _omitFieldNames ? '' : 'fieldNumber')
    ..aOS(2, _omitFieldNames ? '' : 'fieldName')
    ..aE<$3.FieldDescriptorProto_Type>(3, _omitFieldNames ? '' : 'fieldType',
        enumValues: $3.FieldDescriptorProto_Type.values)
    ..aE<$3.FieldDescriptorProto_Type>(4, _omitFieldNames ? '' : 'keyType',
        enumValues: $3.FieldDescriptorProto_Type.values)
    ..aE<$3.FieldDescriptorProto_Type>(5, _omitFieldNames ? '' : 'valueType',
        enumValues: $3.FieldDescriptorProto_Type.values)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(7, _omitFieldNames ? '' : 'boolKey')
    ..aInt64(8, _omitFieldNames ? '' : 'intKey')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'uintKey', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'stringKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldPathElement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FieldPathElement copyWith(void Function(FieldPathElement) updates) =>
      super.copyWith((message) => updates(message as FieldPathElement))
          as FieldPathElement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldPathElement create() => FieldPathElement._();
  @$core.override
  FieldPathElement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FieldPathElement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FieldPathElement>(create);
  static FieldPathElement? _defaultInstance;

  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  FieldPathElement_Subscript whichSubscript() =>
      _FieldPathElement_SubscriptByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  void clearSubscript() => $_clearField($_whichOneof(0));

  /// `field_number` is the field number this path element refers to.
  @$pb.TagNumber(1)
  $core.int get fieldNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set fieldNumber($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFieldNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldNumber() => $_clearField(1);

  /// `field_name` contains the field name this path element refers to.
  /// This can be used to display a human-readable path even if the field number is unknown.
  @$pb.TagNumber(2)
  $core.String get fieldName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fieldName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFieldName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldName() => $_clearField(2);

  /// `field_type` specifies the type of this field. When using reflection, this value is not needed.
  ///
  /// This value is provided to make it possible to traverse unknown fields through wire data.
  /// When traversing wire data, be mindful of both packed[1] and delimited[2] encoding schemes.
  ///
  /// [1]: https://protobuf.dev/programming-guides/encoding/#packed
  /// [2]: https://protobuf.dev/programming-guides/encoding/#groups
  ///
  /// N.B.: Although groups are deprecated, the corresponding delimited encoding scheme is not, and
  /// can be explicitly used in Protocol Buffers 2023 Edition.
  @$pb.TagNumber(3)
  $3.FieldDescriptorProto_Type get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($3.FieldDescriptorProto_Type value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFieldType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldType() => $_clearField(3);

  /// `key_type` specifies the map key type of this field. This value is useful when traversing
  /// unknown fields through wire data: specifically, it allows handling the differences between
  /// different integer encodings.
  @$pb.TagNumber(4)
  $3.FieldDescriptorProto_Type get keyType => $_getN(3);
  @$pb.TagNumber(4)
  set keyType($3.FieldDescriptorProto_Type value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKeyType() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyType() => $_clearField(4);

  /// `value_type` specifies map value type of this field. This is useful if you want to display a
  /// value inside unknown fields through wire data.
  @$pb.TagNumber(5)
  $3.FieldDescriptorProto_Type get valueType => $_getN(4);
  @$pb.TagNumber(5)
  set valueType($3.FieldDescriptorProto_Type value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasValueType() => $_has(4);
  @$pb.TagNumber(5)
  void clearValueType() => $_clearField(5);

  /// `index` specifies a 0-based index into a repeated field.
  @$pb.TagNumber(6)
  $fixnum.Int64 get index => $_getI64(5);
  @$pb.TagNumber(6)
  set index($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearIndex() => $_clearField(6);

  /// `bool_key` specifies a map key of type bool.
  @$pb.TagNumber(7)
  $core.bool get boolKey => $_getBF(6);
  @$pb.TagNumber(7)
  set boolKey($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBoolKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoolKey() => $_clearField(7);

  /// `int_key` specifies a map key of type int32, int64, sint32, sint64, sfixed32 or sfixed64.
  @$pb.TagNumber(8)
  $fixnum.Int64 get intKey => $_getI64(7);
  @$pb.TagNumber(8)
  set intKey($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIntKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearIntKey() => $_clearField(8);

  /// `uint_key` specifies a map key of type uint32, uint64, fixed32 or fixed64.
  @$pb.TagNumber(9)
  $fixnum.Int64 get uintKey => $_getI64(8);
  @$pb.TagNumber(9)
  set uintKey($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUintKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearUintKey() => $_clearField(9);

  /// `string_key` specifies a map key of type string.
  @$pb.TagNumber(10)
  $core.String get stringKey => $_getSZ(9);
  @$pb.TagNumber(10)
  set stringKey($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasStringKey() => $_has(9);
  @$pb.TagNumber(10)
  void clearStringKey() => $_clearField(10);
}

class Validate {
  static final message = $pb.Extension<MessageRules>(
      _omitMessageNames ? '' : 'google.protobuf.MessageOptions',
      _omitFieldNames ? '' : 'message',
      1159,
      $pb.PbFieldType.OM,
      defaultOrMaker: MessageRules.getDefault,
      subBuilder: MessageRules.create);
  static final oneof = $pb.Extension<OneofRules>(
      _omitMessageNames ? '' : 'google.protobuf.OneofOptions',
      _omitFieldNames ? '' : 'oneof',
      1159,
      $pb.PbFieldType.OM,
      defaultOrMaker: OneofRules.getDefault,
      subBuilder: OneofRules.create);
  static final field_1159 = $pb.Extension<FieldRules>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'field_1159',
      1159,
      $pb.PbFieldType.OM,
      defaultOrMaker: FieldRules.getDefault,
      subBuilder: FieldRules.create);
  static final predefined = $pb.Extension<PredefinedRules>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'predefined',
      1160,
      $pb.PbFieldType.OM,
      defaultOrMaker: PredefinedRules.getDefault,
      subBuilder: PredefinedRules.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(message);
    registry.add(oneof);
    registry.add(field_1159);
    registry.add(predefined);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
