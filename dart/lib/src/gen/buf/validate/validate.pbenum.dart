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

import 'package:protobuf/protobuf.dart' as $pb;

/// Specifies how `FieldRules.ignore` behaves, depending on the field's value, and
/// whether the field tracks presence.
class Ignore extends $pb.ProtobufEnum {
  /// Ignore rules if the field tracks presence and is unset. This is the default
  /// behavior.
  ///
  /// In proto3, only message fields, members of a Protobuf `oneof`, and fields
  /// with the `optional` label track presence. Consequently, the following fields
  /// are always validated, whether a value is set or not:
  ///
  /// ```proto
  /// syntax="proto3";
  ///
  /// message RulesApply {
  ///   string email = 1 [
  ///     (buf.validate.field).string.email = true
  ///   ];
  ///   int32 age = 2 [
  ///     (buf.validate.field).int32.gt = 0
  ///   ];
  ///   repeated string labels = 3 [
  ///     (buf.validate.field).repeated.min_items = 1
  ///   ];
  /// }
  /// ```
  ///
  /// In contrast, the following fields track presence, and are only validated if
  /// a value is set:
  ///
  /// ```proto
  /// syntax="proto3";
  ///
  /// message RulesApplyIfSet {
  ///   optional string email = 1 [
  ///     (buf.validate.field).string.email = true
  ///   ];
  ///   oneof ref {
  ///     string reference = 2 [
  ///       (buf.validate.field).string.uuid = true
  ///     ];
  ///     string name = 3 [
  ///       (buf.validate.field).string.min_len = 4
  ///     ];
  ///   }
  ///   SomeMessage msg = 4 [
  ///     (buf.validate.field).cel = {/* ... */}
  ///   ];
  /// }
  /// ```
  ///
  /// To ensure that such a field is set, add the `required` rule.
  ///
  /// To learn which fields track presence, see the
  /// [Field Presence cheat sheet](https://protobuf.dev/programming-guides/field_presence/#cheat).
  static const Ignore IGNORE_UNSPECIFIED =
      Ignore._(0, _omitEnumNames ? '' : 'IGNORE_UNSPECIFIED');

  /// Ignore rules if the field is unset, or set to the zero value.
  ///
  /// The zero value depends on the field type:
  /// - For strings, the zero value is the empty string.
  /// - For bytes, the zero value is empty bytes.
  /// - For bool, the zero value is false.
  /// - For numeric types, the zero value is zero.
  /// - For enums, the zero value is the first defined enum value.
  /// - For repeated fields, the zero is an empty list.
  /// - For map fields, the zero is an empty map.
  /// - For message fields, absence of the message (typically a null-value) is considered zero value.
  ///
  /// For fields that track presence (e.g. adding the `optional` label in proto3),
  /// this a no-op and behavior is the same as the default `IGNORE_UNSPECIFIED`.
  static const Ignore IGNORE_IF_ZERO_VALUE =
      Ignore._(1, _omitEnumNames ? '' : 'IGNORE_IF_ZERO_VALUE');

  /// Always ignore rules, including the `required` rule.
  ///
  /// This is useful for ignoring the rules of a referenced message, or to
  /// temporarily ignore rules during development.
  ///
  /// ```proto
  /// message MyMessage {
  ///   // The field's rules will always be ignored, including any validations
  ///   // on value's fields.
  ///   MyOtherMessage value = 1 [
  ///     (buf.validate.field).ignore = IGNORE_ALWAYS
  ///   ];
  /// }
  /// ```
  static const Ignore IGNORE_ALWAYS =
      Ignore._(3, _omitEnumNames ? '' : 'IGNORE_ALWAYS');

  static const $core.List<Ignore> values = <Ignore>[
    IGNORE_UNSPECIFIED,
    IGNORE_IF_ZERO_VALUE,
    IGNORE_ALWAYS,
  ];

  static final $core.List<Ignore?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static Ignore? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Ignore._(super.value, super.name);
}

/// KnownRegex contains some well-known patterns.
class KnownRegex extends $pb.ProtobufEnum {
  static const KnownRegex KNOWN_REGEX_UNSPECIFIED =
      KnownRegex._(0, _omitEnumNames ? '' : 'KNOWN_REGEX_UNSPECIFIED');

  /// HTTP header name as defined by [RFC 7230](https://datatracker.ietf.org/doc/html/rfc7230#section-3.2).
  static const KnownRegex KNOWN_REGEX_HTTP_HEADER_NAME =
      KnownRegex._(1, _omitEnumNames ? '' : 'KNOWN_REGEX_HTTP_HEADER_NAME');

  /// HTTP header value as defined by [RFC 7230](https://datatracker.ietf.org/doc/html/rfc7230#section-3.2.4).
  static const KnownRegex KNOWN_REGEX_HTTP_HEADER_VALUE =
      KnownRegex._(2, _omitEnumNames ? '' : 'KNOWN_REGEX_HTTP_HEADER_VALUE');

  static const $core.List<KnownRegex> values = <KnownRegex>[
    KNOWN_REGEX_UNSPECIFIED,
    KNOWN_REGEX_HTTP_HEADER_NAME,
    KNOWN_REGEX_HTTP_HEADER_VALUE,
  ];

  static final $core.List<KnownRegex?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static KnownRegex? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const KnownRegex._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
