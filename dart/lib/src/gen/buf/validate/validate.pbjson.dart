// This is a generated file - do not edit.
//
// Generated from buf/validate/validate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ignoreDescriptor instead')
const Ignore$json = {
  '1': 'Ignore',
  '2': [
    {'1': 'IGNORE_UNSPECIFIED', '2': 0},
    {'1': 'IGNORE_IF_ZERO_VALUE', '2': 1},
    {'1': 'IGNORE_ALWAYS', '2': 3},
  ],
  '4': [
    {'1': 2, '2': 2},
  ],
  '5': [
    'IGNORE_EMPTY',
    'IGNORE_DEFAULT',
    'IGNORE_IF_DEFAULT_VALUE',
    'IGNORE_IF_UNPOPULATED'
  ],
};

/// Descriptor for `Ignore`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ignoreDescriptor = $convert.base64Decode(
    'CgZJZ25vcmUSFgoSSUdOT1JFX1VOU1BFQ0lGSUVEEAASGAoUSUdOT1JFX0lGX1pFUk9fVkFMVU'
    'UQARIRCg1JR05PUkVfQUxXQVlTEAMiBAgCEAIqDElHTk9SRV9FTVBUWSoOSUdOT1JFX0RFRkFV'
    'TFQqF0lHTk9SRV9JRl9ERUZBVUxUX1ZBTFVFKhVJR05PUkVfSUZfVU5QT1BVTEFURUQ=');

@$core.Deprecated('Use knownRegexDescriptor instead')
const KnownRegex$json = {
  '1': 'KnownRegex',
  '2': [
    {'1': 'KNOWN_REGEX_UNSPECIFIED', '2': 0},
    {'1': 'KNOWN_REGEX_HTTP_HEADER_NAME', '2': 1},
    {'1': 'KNOWN_REGEX_HTTP_HEADER_VALUE', '2': 2},
  ],
};

/// Descriptor for `KnownRegex`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List knownRegexDescriptor = $convert.base64Decode(
    'CgpLbm93blJlZ2V4EhsKF0tOT1dOX1JFR0VYX1VOU1BFQ0lGSUVEEAASIAocS05PV05fUkVHRV'
    'hfSFRUUF9IRUFERVJfTkFNRRABEiEKHUtOT1dOX1JFR0VYX0hUVFBfSEVBREVSX1ZBTFVFEAI=');

@$core.Deprecated('Use ruleDescriptor instead')
const Rule$json = {
  '1': 'Rule',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'expression', '3': 3, '4': 1, '5': 9, '10': 'expression'},
  ],
};

/// Descriptor for `Rule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleDescriptor = $convert.base64Decode(
    'CgRSdWxlEg4KAmlkGAEgASgJUgJpZBIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEh4KCmV4cH'
    'Jlc3Npb24YAyABKAlSCmV4cHJlc3Npb24=');

@$core.Deprecated('Use messageRulesDescriptor instead')
const MessageRules$json = {
  '1': 'MessageRules',
  '2': [
    {'1': 'cel_expression', '3': 5, '4': 3, '5': 9, '10': 'celExpression'},
    {
      '1': 'cel',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.Rule',
      '10': 'cel'
    },
    {
      '1': 'oneof',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.MessageOneofRule',
      '10': 'oneof'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['disabled'],
};

/// Descriptor for `MessageRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRulesDescriptor = $convert.base64Decode(
    'CgxNZXNzYWdlUnVsZXMSJQoOY2VsX2V4cHJlc3Npb24YBSADKAlSDWNlbEV4cHJlc3Npb24SJA'
    'oDY2VsGAMgAygLMhIuYnVmLnZhbGlkYXRlLlJ1bGVSA2NlbBI0CgVvbmVvZhgEIAMoCzIeLmJ1'
    'Zi52YWxpZGF0ZS5NZXNzYWdlT25lb2ZSdWxlUgVvbmVvZkoECAEQAlIIZGlzYWJsZWQ=');

@$core.Deprecated('Use messageOneofRuleDescriptor instead')
const MessageOneofRule$json = {
  '1': 'MessageOneofRule',
  '2': [
    {'1': 'fields', '3': 1, '4': 3, '5': 9, '10': 'fields'},
    {'1': 'required', '3': 2, '4': 1, '5': 8, '10': 'required'},
  ],
};

/// Descriptor for `MessageOneofRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageOneofRuleDescriptor = $convert.base64Decode(
    'ChBNZXNzYWdlT25lb2ZSdWxlEhYKBmZpZWxkcxgBIAMoCVIGZmllbGRzEhoKCHJlcXVpcmVkGA'
    'IgASgIUghyZXF1aXJlZA==');

@$core.Deprecated('Use oneofRulesDescriptor instead')
const OneofRules$json = {
  '1': 'OneofRules',
  '2': [
    {'1': 'required', '3': 1, '4': 1, '5': 8, '10': 'required'},
  ],
};

/// Descriptor for `OneofRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofRulesDescriptor = $convert
    .base64Decode('CgpPbmVvZlJ1bGVzEhoKCHJlcXVpcmVkGAEgASgIUghyZXF1aXJlZA==');

@$core.Deprecated('Use fieldRulesDescriptor instead')
const FieldRules$json = {
  '1': 'FieldRules',
  '2': [
    {'1': 'cel_expression', '3': 29, '4': 3, '5': 9, '10': 'celExpression'},
    {
      '1': 'cel',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.Rule',
      '10': 'cel'
    },
    {'1': 'required', '3': 25, '4': 1, '5': 8, '10': 'required'},
    {
      '1': 'ignore',
      '3': 27,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.Ignore',
      '10': 'ignore'
    },
    {
      '1': 'float',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FloatRules',
      '9': 0,
      '10': 'float'
    },
    {
      '1': 'double',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.DoubleRules',
      '9': 0,
      '10': 'double'
    },
    {
      '1': 'int32',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.Int32Rules',
      '9': 0,
      '10': 'int32'
    },
    {
      '1': 'int64',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.Int64Rules',
      '9': 0,
      '10': 'int64'
    },
    {
      '1': 'uint32',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.UInt32Rules',
      '9': 0,
      '10': 'uint32'
    },
    {
      '1': 'uint64',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.UInt64Rules',
      '9': 0,
      '10': 'uint64'
    },
    {
      '1': 'sint32',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.SInt32Rules',
      '9': 0,
      '10': 'sint32'
    },
    {
      '1': 'sint64',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.SInt64Rules',
      '9': 0,
      '10': 'sint64'
    },
    {
      '1': 'fixed32',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.Fixed32Rules',
      '9': 0,
      '10': 'fixed32'
    },
    {
      '1': 'fixed64',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.Fixed64Rules',
      '9': 0,
      '10': 'fixed64'
    },
    {
      '1': 'sfixed32',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.SFixed32Rules',
      '9': 0,
      '10': 'sfixed32'
    },
    {
      '1': 'sfixed64',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.SFixed64Rules',
      '9': 0,
      '10': 'sfixed64'
    },
    {
      '1': 'bool',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.BoolRules',
      '9': 0,
      '10': 'bool'
    },
    {
      '1': 'string',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.StringRules',
      '9': 0,
      '10': 'string'
    },
    {
      '1': 'bytes',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.BytesRules',
      '9': 0,
      '10': 'bytes'
    },
    {
      '1': 'enum',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.EnumRules',
      '9': 0,
      '10': 'enum'
    },
    {
      '1': 'repeated',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.RepeatedRules',
      '9': 0,
      '10': 'repeated'
    },
    {
      '1': 'map',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.MapRules',
      '9': 0,
      '10': 'map'
    },
    {
      '1': 'any',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.AnyRules',
      '9': 0,
      '10': 'any'
    },
    {
      '1': 'duration',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.DurationRules',
      '9': 0,
      '10': 'duration'
    },
    {
      '1': 'field_mask',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldMaskRules',
      '9': 0,
      '10': 'fieldMask'
    },
    {
      '1': 'timestamp',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.TimestampRules',
      '9': 0,
      '10': 'timestamp'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
  '9': [
    {'1': 24, '2': 25},
    {'1': 26, '2': 27},
  ],
  '10': ['skipped', 'ignore_empty'],
};

/// Descriptor for `FieldRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldRulesDescriptor = $convert.base64Decode(
    'CgpGaWVsZFJ1bGVzEiUKDmNlbF9leHByZXNzaW9uGB0gAygJUg1jZWxFeHByZXNzaW9uEiQKA2'
    'NlbBgXIAMoCzISLmJ1Zi52YWxpZGF0ZS5SdWxlUgNjZWwSGgoIcmVxdWlyZWQYGSABKAhSCHJl'
    'cXVpcmVkEiwKBmlnbm9yZRgbIAEoDjIULmJ1Zi52YWxpZGF0ZS5JZ25vcmVSBmlnbm9yZRIwCg'
    'VmbG9hdBgBIAEoCzIYLmJ1Zi52YWxpZGF0ZS5GbG9hdFJ1bGVzSABSBWZsb2F0EjMKBmRvdWJs'
    'ZRgCIAEoCzIZLmJ1Zi52YWxpZGF0ZS5Eb3VibGVSdWxlc0gAUgZkb3VibGUSMAoFaW50MzIYAy'
    'ABKAsyGC5idWYudmFsaWRhdGUuSW50MzJSdWxlc0gAUgVpbnQzMhIwCgVpbnQ2NBgEIAEoCzIY'
    'LmJ1Zi52YWxpZGF0ZS5JbnQ2NFJ1bGVzSABSBWludDY0EjMKBnVpbnQzMhgFIAEoCzIZLmJ1Zi'
    '52YWxpZGF0ZS5VSW50MzJSdWxlc0gAUgZ1aW50MzISMwoGdWludDY0GAYgASgLMhkuYnVmLnZh'
    'bGlkYXRlLlVJbnQ2NFJ1bGVzSABSBnVpbnQ2NBIzCgZzaW50MzIYByABKAsyGS5idWYudmFsaW'
    'RhdGUuU0ludDMyUnVsZXNIAFIGc2ludDMyEjMKBnNpbnQ2NBgIIAEoCzIZLmJ1Zi52YWxpZGF0'
    'ZS5TSW50NjRSdWxlc0gAUgZzaW50NjQSNgoHZml4ZWQzMhgJIAEoCzIaLmJ1Zi52YWxpZGF0ZS'
    '5GaXhlZDMyUnVsZXNIAFIHZml4ZWQzMhI2CgdmaXhlZDY0GAogASgLMhouYnVmLnZhbGlkYXRl'
    'LkZpeGVkNjRSdWxlc0gAUgdmaXhlZDY0EjkKCHNmaXhlZDMyGAsgASgLMhsuYnVmLnZhbGlkYX'
    'RlLlNGaXhlZDMyUnVsZXNIAFIIc2ZpeGVkMzISOQoIc2ZpeGVkNjQYDCABKAsyGy5idWYudmFs'
    'aWRhdGUuU0ZpeGVkNjRSdWxlc0gAUghzZml4ZWQ2NBItCgRib29sGA0gASgLMhcuYnVmLnZhbG'
    'lkYXRlLkJvb2xSdWxlc0gAUgRib29sEjMKBnN0cmluZxgOIAEoCzIZLmJ1Zi52YWxpZGF0ZS5T'
    'dHJpbmdSdWxlc0gAUgZzdHJpbmcSMAoFYnl0ZXMYDyABKAsyGC5idWYudmFsaWRhdGUuQnl0ZX'
    'NSdWxlc0gAUgVieXRlcxItCgRlbnVtGBAgASgLMhcuYnVmLnZhbGlkYXRlLkVudW1SdWxlc0gA'
    'UgRlbnVtEjkKCHJlcGVhdGVkGBIgASgLMhsuYnVmLnZhbGlkYXRlLlJlcGVhdGVkUnVsZXNIAF'
    'IIcmVwZWF0ZWQSKgoDbWFwGBMgASgLMhYuYnVmLnZhbGlkYXRlLk1hcFJ1bGVzSABSA21hcBIq'
    'CgNhbnkYFCABKAsyFi5idWYudmFsaWRhdGUuQW55UnVsZXNIAFIDYW55EjkKCGR1cmF0aW9uGB'
    'UgASgLMhsuYnVmLnZhbGlkYXRlLkR1cmF0aW9uUnVsZXNIAFIIZHVyYXRpb24SPQoKZmllbGRf'
    'bWFzaxgcIAEoCzIcLmJ1Zi52YWxpZGF0ZS5GaWVsZE1hc2tSdWxlc0gAUglmaWVsZE1hc2sSPA'
    'oJdGltZXN0YW1wGBYgASgLMhwuYnVmLnZhbGlkYXRlLlRpbWVzdGFtcFJ1bGVzSABSCXRpbWVz'
    'dGFtcEIGCgR0eXBlSgQIGBAZSgQIGhAbUgdza2lwcGVkUgxpZ25vcmVfZW1wdHk=');

@$core.Deprecated('Use predefinedRulesDescriptor instead')
const PredefinedRules$json = {
  '1': 'PredefinedRules',
  '2': [
    {
      '1': 'cel',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.Rule',
      '10': 'cel'
    },
  ],
  '9': [
    {'1': 24, '2': 25},
    {'1': 26, '2': 27},
  ],
  '10': ['skipped', 'ignore_empty'],
};

/// Descriptor for `PredefinedRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List predefinedRulesDescriptor = $convert.base64Decode(
    'Cg9QcmVkZWZpbmVkUnVsZXMSJAoDY2VsGAEgAygLMhIuYnVmLnZhbGlkYXRlLlJ1bGVSA2NlbE'
    'oECBgQGUoECBoQG1IHc2tpcHBlZFIMaWdub3JlX2VtcHR5');

@$core.Deprecated('Use floatRulesDescriptor instead')
const FloatRules$json = {
  '1': 'FloatRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 2, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 2, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 2, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 2, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 2, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 2, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 2, '8': {}, '10': 'notIn'},
    {'1': 'finite', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'finite'},
    {'1': 'example', '3': 9, '4': 3, '5': 2, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `FloatRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatRulesDescriptor = $convert.base64Decode(
    'CgpGbG9hdFJ1bGVzEoQBCgVjb25zdBgBIAEoAkJuwkhrCmkKC2Zsb2F0LmNvbnN0Glp0aGlzIC'
    'E9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3JtYXQoW2dl'
    'dEZpZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0Ep0BCgJsdBgCIAEoAkKKAcJIhg'
    'EKgwEKCGZsb2F0Lmx0GnchaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgKHRo'
    'aXMuaXNOYW4oKSB8fCB0aGlzID49IHJ1bGVzLmx0KT8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy'
    '5mb3JtYXQoW3J1bGVzLmx0XSkgOiAnJ0gAUgJsdBKuAQoDbHRlGAMgASgCQpkBwkiVAQqSAQoJ'
    'ZmxvYXQubHRlGoQBIWhhcyhydWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmICh0aGlzLm'
    'lzTmFuKCkgfHwgdGhpcyA+IHJ1bGVzLmx0ZSk/ICdtdXN0IGJlIGxlc3MgdGhhbiBvciBlcXVh'
    'bCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABSA2x0ZRLUBwoCZ3QYBCABKAJCwQ'
    'fCSL0HCoYBCghmbG9hdC5ndBp6IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYm'
    'ICh0aGlzLmlzTmFuKCkgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdG'
    'hhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKvQEKC2Zsb2F0Lmd0X2x0Gq0BaGFzKHJ1'
    'bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcy5pc05hbigpIHx8IHRoaX'
    'MgPj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJy'
    'cKxwEKFWZsb2F0Lmd0X2x0X2V4Y2x1c2l2ZRqtAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQg'
    'PCBydWxlcy5ndCAmJiAodGhpcy5pc05hbigpIHx8IChydWxlcy5sdCA8PSB0aGlzICYmIHRoaX'
    'MgPD0gcnVsZXMuZ3QpKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAl'
    'cycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRdKSA6ICcnCs0BCgxmbG9hdC5ndF9sdGUavA'
    'FoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMuaXNOYW4o'
    'KSB8fCB0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBiZSBncm'
    'VhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxl'
    'cy5ndCwgcnVsZXMubHRlXSkgOiAnJwrXAQoWZmxvYXQuZ3RfbHRlX2V4Y2x1c2l2ZRq8AWhhcy'
    'hydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ICYmICh0aGlzLmlzTmFuKCkgfHwg'
    'KHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCkpPyAnbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0'
    'LCBydWxlcy5sdGVdKSA6ICcnSAFSAmd0EqEICgNndGUYBSABKAJCjAjCSIgICpUBCglmbG9hdC'
    '5ndGUahwEhaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgKHRoaXMuaXNOYW4o'
    'KSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIH'
    'RvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDogJycKzAEKDGZsb2F0Lmd0ZV9sdBq7AWhhcyhy'
    'dWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKCkgfHwgdG'
    'hpcyA+PSBydWxlcy5sdCB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0'
    'aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLC'
    'BydWxlcy5sdF0pIDogJycK1gEKFmZsb2F0Lmd0ZV9sdF9leGNsdXNpdmUauwFoYXMocnVsZXMu'
    'bHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKCkgfHwgKHJ1bGVzLm'
    'x0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSkpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4g'
    'b3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZX'
    'MubHRdKSA6ICcnCtwBCg1mbG9hdC5ndGVfbHRlGsoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMu'
    'bHRlID49IHJ1bGVzLmd0ZSAmJiAodGhpcy5pc05hbigpIHx8IHRoaXMgPiBydWxlcy5sdGUgfH'
    'wgdGhpcyA8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cyBhbmQgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZX'
    'MubHRlXSkgOiAnJwrmAQoXZmxvYXQuZ3RlX2x0ZV9leGNsdXNpdmUaygFoYXMocnVsZXMubHRl'
    'KSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndGUgJiYgKHRoaXMuaXNOYW4oKSB8fCAocnVsZXMubH'
    'RlIDwgdGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBv'
    'ciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZX'
    'MuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ9CgJpbhgGIAMoAkJtwkhqCmgKCGZsb2F0'
    'LmluGlwhKHRoaXMgaW4gZ2V0RmllbGQocnVsZXMsICdpbicpKSA/ICdtdXN0IGJlIGluIGxpc3'
    'QgJXMnLmZvcm1hdChbZ2V0RmllbGQocnVsZXMsICdpbicpXSkgOiAnJ1ICaW4SdwoGbm90X2lu'
    'GAcgAygCQmDCSF0KWwoMZmxvYXQubm90X2luGkt0aGlzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdX'
    'N0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdElu'
    'EncKBmZpbml0ZRgIIAEoCEJfwkhcCloKDGZsb2F0LmZpbml0ZRpKcnVsZXMuZmluaXRlID8gKH'
    'RoaXMuaXNOYW4oKSB8fCB0aGlzLmlzSW5mKCkgPyAnbXVzdCBiZSBmaW5pdGUnIDogJycpIDog'
    'JydSBmZpbml0ZRI0CgdleGFtcGxlGAkgAygCQhrCSBcKFQoNZmxvYXQuZXhhbXBsZRoEdHJ1ZV'
    'IHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW4=');

@$core.Deprecated('Use doubleRulesDescriptor instead')
const DoubleRules$json = {
  '1': 'DoubleRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 1, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 1, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 1, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 1, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 1, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 1, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 1, '8': {}, '10': 'notIn'},
    {'1': 'finite', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'finite'},
    {'1': 'example', '3': 9, '4': 3, '5': 1, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `DoubleRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleRulesDescriptor = $convert.base64Decode(
    'CgtEb3VibGVSdWxlcxKFAQoFY29uc3QYASABKAFCb8JIbApqCgxkb3VibGUuY29uc3QaWnRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgJXMnLmZvcm1hdChb'
    'Z2V0RmllbGQocnVsZXMsICdjb25zdCcpXSkgOiAnJ1IFY29uc3QSngEKAmx0GAIgASgBQosBwk'
    'iHAQqEAQoJZG91YmxlLmx0GnchaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYg'
    'KHRoaXMuaXNOYW4oKSB8fCB0aGlzID49IHJ1bGVzLmx0KT8gJ211c3QgYmUgbGVzcyB0aGFuIC'
    'VzJy5mb3JtYXQoW3J1bGVzLmx0XSkgOiAnJ0gAUgJsdBKvAQoDbHRlGAMgASgBQpoBwkiWAQqT'
    'AQoKZG91YmxlLmx0ZRqEASFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiAodG'
    'hpcy5pc05hbigpIHx8IHRoaXMgPiBydWxlcy5sdGUpPyAnbXVzdCBiZSBsZXNzIHRoYW4gb3Ig'
    'ZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUS2QcKAmd0GAQgAS'
    'gBQsYHwkjCBwqHAQoJZG91YmxlLmd0GnohaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0'
    'ZSkgJiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3JlYX'
    'RlciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq+AQoMZG91YmxlLmd0X2x0Gq0B'
    'aGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcy5pc05hbigpIH'
    'x8IHRoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF'
    '0pIDogJycKyAEKFmRvdWJsZS5ndF9sdF9leGNsdXNpdmUarQFoYXMocnVsZXMubHQpICYmIHJ1'
    'bGVzLmx0IDwgcnVsZXMuZ3QgJiYgKHRoaXMuaXNOYW4oKSB8fCAocnVsZXMubHQgPD0gdGhpcy'
    'AmJiB0aGlzIDw9IHJ1bGVzLmd0KSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNz'
    'IHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwrOAQoNZG91YmxlLm'
    'd0X2x0ZRq8AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5ndCAmJiAodGhp'
    'cy5pc05hbigpIHx8IHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdX'
    'N0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3Jt'
    'YXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnCtgBChdkb3VibGUuZ3RfbHRlX2V4Y2x1c2'
    'l2ZRq8AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ICYmICh0aGlzLmlz'
    'TmFuKCkgfHwgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCkpPyAnbXVzdC'
    'BiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQo'
    'W3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnSAFSAmd0EqYICgNndGUYBSABKAFCkQjCSI0ICp'
    'YBCgpkb3VibGUuZ3RlGocBIWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmICh0'
    'aGlzLmlzTmFuKCkgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'BvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCs0BCg1kb3VibGUuZ3Rl'
    'X2x0GrsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMuaX'
    'NOYW4oKSB8fCB0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KF'
    'tydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrXAQoXZG91YmxlLmd0ZV9sdF9leGNsdXNpdmUa'
    'uwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKC'
    'kgfHwgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSkpPyAnbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bG'
    'VzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCt0BCg5kb3VibGUuZ3RlX2x0ZRrKAWhhcyhydWxlcy5s'
    'dGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzID'
    '4gcnVsZXMubHRlIHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4g'
    'b3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydW'
    'xlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJycK5wEKGGRvdWJsZS5ndGVfbHRlX2V4Y2x1c2l2ZRrK'
    'AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAodGhpcy5pc05hbi'
    'gpIHx8IChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpKT8gJ211c3QgYmUg'
    'Z3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEn4KAmluGAYgAygB'
    'Qm7CSGsKaQoJZG91YmxlLmluGlwhKHRoaXMgaW4gZ2V0RmllbGQocnVsZXMsICdpbicpKSA/IC'
    'dtdXN0IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbZ2V0RmllbGQocnVsZXMsICdpbicpXSkgOiAn'
    'J1ICaW4SeAoGbm90X2luGAcgAygBQmHCSF4KXAoNZG91YmxlLm5vdF9pbhpLdGhpcyBpbiBydW'
    'xlcy5ub3RfaW4gPyAnbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3Rf'
    'aW5dKSA6ICcnUgVub3RJbhJ4CgZmaW5pdGUYCCABKAhCYMJIXQpbCg1kb3VibGUuZmluaXRlGk'
    'pydWxlcy5maW5pdGUgPyAodGhpcy5pc05hbigpIHx8IHRoaXMuaXNJbmYoKSA/ICdtdXN0IGJl'
    'IGZpbml0ZScgOiAnJykgOiAnJ1IGZmluaXRlEjUKB2V4YW1wbGUYCSADKAFCG8JIGAoWCg5kb3'
    'VibGUuZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxn'
    'cmVhdGVyX3RoYW4=');

@$core.Deprecated('Use int32RulesDescriptor instead')
const Int32Rules$json = {
  '1': 'Int32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 5, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 5, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 5, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 5, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 5, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `Int32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32RulesDescriptor = $convert.base64Decode(
    'CgpJbnQzMlJ1bGVzEoQBCgVjb25zdBgBIAEoBUJuwkhrCmkKC2ludDMyLmNvbnN0Glp0aGlzIC'
    'E9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3JtYXQoW2dl'
    'dEZpZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0EogBCgJsdBgCIAEoBUJ2wkhzCn'
    'EKCGludDMyLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+'
    'PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XSkgOi'
    'AnJ0gAUgJsdBKaAQoDbHRlGAMgASgFQoUBwkiBAQp/CglpbnQzMi5sdGUaciFoYXMocnVsZXMu'
    'Z3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAnbXVzdCBiZSBsZX'
    'NzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUS'
    '/QYKAmd0GAQgASgFQuoGwkjmBgp0CghpbnQzMi5ndBpoIWhhcyhydWxlcy5sdCkgJiYgIWhhcy'
    'hydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAl'
    'cycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrQEKC2ludDMyLmd0X2x0Gp0BaGFzKHJ1bGVzLm'
    'x0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5sdCB8fCB0aGlz'
    'IDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gJX'
    'MnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq1AQoVaW50MzIuZ3RfbHRfZXhj'
    'bHVzaXZlGpsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bGVzLmd0ICYmIChydWxlcy'
    '5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4g'
    'JXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKvQ'
    'EKDGludDMyLmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5n'
    'dCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3'
    'JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVs'
    'ZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxQEKFmludDMyLmd0X2x0ZV9leGNsdXNpdmUaqgFoYX'
    'MocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhp'
    'cyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3'
    'MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAn'
    'J0gBUgJndBLKBwoDZ3RlGAUgASgFQrUHwkixBwqCAQoJaW50MzIuZ3RlGnUhaGFzKHJ1bGVzLm'
    'x0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1bGVzLmd0ZT8gJ211c3QgYmUgZ3Jl'
    'YXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDogJycKvAEKDG'
    'ludDMyLmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYm'
    'ICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5n'
    'dGUsIHJ1bGVzLmx0XSkgOiAnJwrEAQoWaW50MzIuZ3RlX2x0X2V4Y2x1c2l2ZRqpAWhhcyhydW'
    'xlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYg'
    'dGhpcyA8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcy'
    'BvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKzAEK'
    'DWludDMyLmd0ZV9sdGUaugFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3'
    'RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJycK1AEKF2ludDMyLmd0ZV9sdGVf'
    'ZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIC'
    'hydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVy'
    'IHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYX'
    'QoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfQoCaW4YBiADKAVCbcJIagpo'
    'CghpbnQzMi5pbhpcISh0aGlzIGluIGdldEZpZWxkKHJ1bGVzLCAnaW4nKSkgPyAnbXVzdCBiZS'
    'BpbiBsaXN0ICVzJy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnaW4nKV0pIDogJydSAmluEncK'
    'Bm5vdF9pbhgHIAMoBUJgwkhdClsKDGludDMyLm5vdF9pbhpLdGhpcyBpbiBydWxlcy5ub3RfaW'
    '4gPyAnbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcn'
    'UgVub3RJbhI0CgdleGFtcGxlGAggAygFQhrCSBcKFQoNaW50MzIuZXhhbXBsZRoEdHJ1ZVIHZX'
    'hhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW4=');

@$core.Deprecated('Use int64RulesDescriptor instead')
const Int64Rules$json = {
  '1': 'Int64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 3, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 3, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 3, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 3, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 9, '4': 3, '5': 3, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `Int64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64RulesDescriptor = $convert.base64Decode(
    'CgpJbnQ2NFJ1bGVzEoQBCgVjb25zdBgBIAEoA0JuwkhrCmkKC2ludDY0LmNvbnN0Glp0aGlzIC'
    'E9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3JtYXQoW2dl'
    'dEZpZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0EogBCgJsdBgCIAEoA0J2wkhzCn'
    'EKCGludDY0Lmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+'
    'PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XSkgOi'
    'AnJ0gAUgJsdBKaAQoDbHRlGAMgASgDQoUBwkiBAQp/CglpbnQ2NC5sdGUaciFoYXMocnVsZXMu'
    'Z3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAnbXVzdCBiZSBsZX'
    'NzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUS'
    '/QYKAmd0GAQgASgDQuoGwkjmBgp0CghpbnQ2NC5ndBpoIWhhcyhydWxlcy5sdCkgJiYgIWhhcy'
    'hydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAl'
    'cycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrQEKC2ludDY0Lmd0X2x0Gp0BaGFzKHJ1bGVzLm'
    'x0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5sdCB8fCB0aGlz'
    'IDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gJX'
    'MnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq1AQoVaW50NjQuZ3RfbHRfZXhj'
    'bHVzaXZlGpsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bGVzLmd0ICYmIChydWxlcy'
    '5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4g'
    'JXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKvQ'
    'EKDGludDY0Lmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5n'
    'dCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3'
    'JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVs'
    'ZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxQEKFmludDY0Lmd0X2x0ZV9leGNsdXNpdmUaqgFoYX'
    'MocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhp'
    'cyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3'
    'MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAn'
    'J0gBUgJndBLKBwoDZ3RlGAUgASgDQrUHwkixBwqCAQoJaW50NjQuZ3RlGnUhaGFzKHJ1bGVzLm'
    'x0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1bGVzLmd0ZT8gJ211c3QgYmUgZ3Jl'
    'YXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDogJycKvAEKDG'
    'ludDY0Lmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYm'
    'ICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5n'
    'dGUsIHJ1bGVzLmx0XSkgOiAnJwrEAQoWaW50NjQuZ3RlX2x0X2V4Y2x1c2l2ZRqpAWhhcyhydW'
    'xlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYg'
    'dGhpcyA8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcy'
    'BvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKzAEK'
    'DWludDY0Lmd0ZV9sdGUaugFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3'
    'RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJycK1AEKF2ludDY0Lmd0ZV9sdGVf'
    'ZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIC'
    'hydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVy'
    'IHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYX'
    'QoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfQoCaW4YBiADKANCbcJIagpo'
    'CghpbnQ2NC5pbhpcISh0aGlzIGluIGdldEZpZWxkKHJ1bGVzLCAnaW4nKSkgPyAnbXVzdCBiZS'
    'BpbiBsaXN0ICVzJy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnaW4nKV0pIDogJydSAmluEncK'
    'Bm5vdF9pbhgHIAMoA0JgwkhdClsKDGludDY0Lm5vdF9pbhpLdGhpcyBpbiBydWxlcy5ub3RfaW'
    '4gPyAnbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcn'
    'UgVub3RJbhI0CgdleGFtcGxlGAkgAygDQhrCSBcKFQoNaW50NjQuZXhhbXBsZRoEdHJ1ZVIHZX'
    'hhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW4=');

@$core.Deprecated('Use uInt32RulesDescriptor instead')
const UInt32Rules$json = {
  '1': 'UInt32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 13, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 13, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 13, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 13, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 13, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 13, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 13, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `UInt32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt32RulesDescriptor = $convert.base64Decode(
    'CgtVSW50MzJSdWxlcxKFAQoFY29uc3QYASABKA1Cb8JIbApqCgx1aW50MzIuY29uc3QaWnRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgJXMnLmZvcm1hdChb'
    'Z2V0RmllbGQocnVsZXMsICdjb25zdCcpXSkgOiAnJ1IFY29uc3QSiQEKAmx0GAIgASgNQnfCSH'
    'QKcgoJdWludDMyLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhp'
    'cyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XS'
    'kgOiAnJ0gAUgJsdBKcAQoDbHRlGAMgASgNQocBwkiDAQqAAQoKdWludDMyLmx0ZRpyIWhhcyhy'
    'dWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICdtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKCBwoCZ3QYBCABKA1C7wbCSOsGCnUKCXVpbnQzMi5ndBpoIWhhcyhydWxlcy5sdCkgJi'
    'YgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIg'
    'dGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrgEKDHVpbnQzMi5ndF9sdBqdAWhhcy'
    'hydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVsZXMubHQg'
    'fHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcy'
    'B0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtgEKFnVpbnQzMi5n'
    'dF9sdF9leGNsdXNpdmUamwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3QgJi'
    'YgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XS'
    'kgOiAnJwq+AQoNdWludDMyLmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+'
    'PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ2'
    '11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZv'
    'cm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxgEKF3VpbnQzMi5ndF9sdGVfZXhjbH'
    'VzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3QgJiYgKHJ1bGVz'
    'Lmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVz'
    'Lmx0ZV0pIDogJydIAVICZ3QSzwcKA2d0ZRgFIAEoDUK6B8JItgcKgwEKCnVpbnQzMi5ndGUadS'
    'FoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXS'
    'kgOiAnJwq9AQoNdWludDMyLmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0g'
    'cnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbX'
    'VzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrFAQoXdWludDMyLmd0ZV9sdF9leGNsdX'
    'NpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5s'
    'dCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMu'
    'bHRdKSA6ICcnCs0BCg51aW50MzIuZ3RlX2x0ZRq6AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLm'
    'x0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLmd0'
    'ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIG'
    '9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJwrVAQoY'
    'dWludDMyLmd0ZV9sdGVfZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID'
    'wgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdW'
    'FsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfgoC'
    'aW4YBiADKA1CbsJIawppCgl1aW50MzIuaW4aXCEodGhpcyBpbiBnZXRGaWVsZChydWxlcywgJ2'
    'luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRGaWVsZChydWxlcywgJ2lu'
    'JyldKSA6ICcnUgJpbhJ4CgZub3RfaW4YByADKA1CYcJIXgpcCg11aW50MzIubm90X2luGkt0aG'
    'lzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1'
    'bGVzLm5vdF9pbl0pIDogJydSBW5vdEluEjUKB2V4YW1wbGUYCCADKA1CG8JIGAoWCg51aW50Mz'
    'IuZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVh'
    'dGVyX3RoYW4=');

@$core.Deprecated('Use uInt64RulesDescriptor instead')
const UInt64Rules$json = {
  '1': 'UInt64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 4, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 4, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 4, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 4, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `UInt64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt64RulesDescriptor = $convert.base64Decode(
    'CgtVSW50NjRSdWxlcxKFAQoFY29uc3QYASABKARCb8JIbApqCgx1aW50NjQuY29uc3QaWnRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgJXMnLmZvcm1hdChb'
    'Z2V0RmllbGQocnVsZXMsICdjb25zdCcpXSkgOiAnJ1IFY29uc3QSiQEKAmx0GAIgASgEQnfCSH'
    'QKcgoJdWludDY0Lmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhp'
    'cyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XS'
    'kgOiAnJ0gAUgJsdBKcAQoDbHRlGAMgASgEQocBwkiDAQqAAQoKdWludDY0Lmx0ZRpyIWhhcyhy'
    'dWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICdtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKCBwoCZ3QYBCABKARC7wbCSOsGCnUKCXVpbnQ2NC5ndBpoIWhhcyhydWxlcy5sdCkgJi'
    'YgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIg'
    'dGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrgEKDHVpbnQ2NC5ndF9sdBqdAWhhcy'
    'hydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVsZXMubHQg'
    'fHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcy'
    'B0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtgEKFnVpbnQ2NC5n'
    'dF9sdF9leGNsdXNpdmUamwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3QgJi'
    'YgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XS'
    'kgOiAnJwq+AQoNdWludDY0Lmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+'
    'PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ2'
    '11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZv'
    'cm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxgEKF3VpbnQ2NC5ndF9sdGVfZXhjbH'
    'VzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3QgJiYgKHJ1bGVz'
    'Lmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVz'
    'Lmx0ZV0pIDogJydIAVICZ3QSzwcKA2d0ZRgFIAEoBEK6B8JItgcKgwEKCnVpbnQ2NC5ndGUadS'
    'FoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXS'
    'kgOiAnJwq9AQoNdWludDY0Lmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0g'
    'cnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbX'
    'VzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrFAQoXdWludDY0Lmd0ZV9sdF9leGNsdX'
    'NpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5s'
    'dCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMu'
    'bHRdKSA6ICcnCs0BCg51aW50NjQuZ3RlX2x0ZRq6AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLm'
    'x0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLmd0'
    'ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIG'
    '9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJwrVAQoY'
    'dWludDY0Lmd0ZV9sdGVfZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID'
    'wgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdW'
    'FsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfgoC'
    'aW4YBiADKARCbsJIawppCgl1aW50NjQuaW4aXCEodGhpcyBpbiBnZXRGaWVsZChydWxlcywgJ2'
    'luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRGaWVsZChydWxlcywgJ2lu'
    'JyldKSA6ICcnUgJpbhJ4CgZub3RfaW4YByADKARCYcJIXgpcCg11aW50NjQubm90X2luGkt0aG'
    'lzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1'
    'bGVzLm5vdF9pbl0pIDogJydSBW5vdEluEjUKB2V4YW1wbGUYCCADKARCG8JIGAoWCg51aW50Nj'
    'QuZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVh'
    'dGVyX3RoYW4=');

@$core.Deprecated('Use sInt32RulesDescriptor instead')
const SInt32Rules$json = {
  '1': 'SInt32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 17, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 17, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 17, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 17, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 17, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 17, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 17, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 17, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `SInt32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sInt32RulesDescriptor = $convert.base64Decode(
    'CgtTSW50MzJSdWxlcxKFAQoFY29uc3QYASABKBFCb8JIbApqCgxzaW50MzIuY29uc3QaWnRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgJXMnLmZvcm1hdChb'
    'Z2V0RmllbGQocnVsZXMsICdjb25zdCcpXSkgOiAnJ1IFY29uc3QSiQEKAmx0GAIgASgRQnfCSH'
    'QKcgoJc2ludDMyLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhp'
    'cyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XS'
    'kgOiAnJ0gAUgJsdBKcAQoDbHRlGAMgASgRQocBwkiDAQqAAQoKc2ludDMyLmx0ZRpyIWhhcyhy'
    'dWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICdtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKCBwoCZ3QYBCABKBFC7wbCSOsGCnUKCXNpbnQzMi5ndBpoIWhhcyhydWxlcy5sdCkgJi'
    'YgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIg'
    'dGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrgEKDHNpbnQzMi5ndF9sdBqdAWhhcy'
    'hydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVsZXMubHQg'
    'fHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcy'
    'B0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtgEKFnNpbnQzMi5n'
    'dF9sdF9leGNsdXNpdmUamwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3QgJi'
    'YgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XS'
    'kgOiAnJwq+AQoNc2ludDMyLmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+'
    'PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ2'
    '11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZv'
    'cm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxgEKF3NpbnQzMi5ndF9sdGVfZXhjbH'
    'VzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3QgJiYgKHJ1bGVz'
    'Lmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVz'
    'Lmx0ZV0pIDogJydIAVICZ3QSzwcKA2d0ZRgFIAEoEUK6B8JItgcKgwEKCnNpbnQzMi5ndGUadS'
    'FoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXS'
    'kgOiAnJwq9AQoNc2ludDMyLmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0g'
    'cnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbX'
    'VzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrFAQoXc2ludDMyLmd0ZV9sdF9leGNsdX'
    'NpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5s'
    'dCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMu'
    'bHRdKSA6ICcnCs0BCg5zaW50MzIuZ3RlX2x0ZRq6AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLm'
    'x0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLmd0'
    'ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIG'
    '9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJwrVAQoY'
    'c2ludDMyLmd0ZV9sdGVfZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID'
    'wgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdW'
    'FsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfgoC'
    'aW4YBiADKBFCbsJIawppCglzaW50MzIuaW4aXCEodGhpcyBpbiBnZXRGaWVsZChydWxlcywgJ2'
    'luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRGaWVsZChydWxlcywgJ2lu'
    'JyldKSA6ICcnUgJpbhJ4CgZub3RfaW4YByADKBFCYcJIXgpcCg1zaW50MzIubm90X2luGkt0aG'
    'lzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1'
    'bGVzLm5vdF9pbl0pIDogJydSBW5vdEluEjUKB2V4YW1wbGUYCCADKBFCG8JIGAoWCg5zaW50Mz'
    'IuZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVh'
    'dGVyX3RoYW4=');

@$core.Deprecated('Use sInt64RulesDescriptor instead')
const SInt64Rules$json = {
  '1': 'SInt64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 18, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 18, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 18, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 18, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 18, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 18, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 18, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 18, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `SInt64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sInt64RulesDescriptor = $convert.base64Decode(
    'CgtTSW50NjRSdWxlcxKFAQoFY29uc3QYASABKBJCb8JIbApqCgxzaW50NjQuY29uc3QaWnRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgJXMnLmZvcm1hdChb'
    'Z2V0RmllbGQocnVsZXMsICdjb25zdCcpXSkgOiAnJ1IFY29uc3QSiQEKAmx0GAIgASgSQnfCSH'
    'QKcgoJc2ludDY0Lmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhp'
    'cyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XS'
    'kgOiAnJ0gAUgJsdBKcAQoDbHRlGAMgASgSQocBwkiDAQqAAQoKc2ludDY0Lmx0ZRpyIWhhcyhy'
    'dWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICdtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKCBwoCZ3QYBCABKBJC7wbCSOsGCnUKCXNpbnQ2NC5ndBpoIWhhcyhydWxlcy5sdCkgJi'
    'YgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICdtdXN0IGJlIGdyZWF0ZXIg'
    'dGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKrgEKDHNpbnQ2NC5ndF9sdBqdAWhhcy'
    'hydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVsZXMubHQg'
    'fHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcy'
    'B0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtgEKFnNpbnQ2NC5n'
    'dF9sdF9leGNsdXNpdmUamwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3QgJi'
    'YgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XS'
    'kgOiAnJwq+AQoNc2ludDY0Lmd0X2x0ZRqsAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+'
    'PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ2'
    '11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZv'
    'cm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKxgEKF3NpbnQ2NC5ndF9sdGVfZXhjbH'
    'VzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3QgJiYgKHJ1bGVz'
    'Lmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVz'
    'Lmx0ZV0pIDogJydIAVICZ3QSzwcKA2d0ZRgFIAEoEkK6B8JItgcKgwEKCnNpbnQ2NC5ndGUadS'
    'FoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXS'
    'kgOiAnJwq9AQoNc2ludDY0Lmd0ZV9sdBqrAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0g'
    'cnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAnbX'
    'VzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrFAQoXc2ludDY0Lmd0ZV9sdF9leGNsdX'
    'NpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5s'
    'dCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMu'
    'bHRdKSA6ICcnCs0BCg5zaW50NjQuZ3RlX2x0ZRq6AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLm'
    'x0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLmd0'
    'ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIG'
    '9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJwrVAQoY'
    'c2ludDY0Lmd0ZV9sdGVfZXhjbHVzaXZlGrgBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID'
    'wgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdW'
    'FsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfgoC'
    'aW4YBiADKBJCbsJIawppCglzaW50NjQuaW4aXCEodGhpcyBpbiBnZXRGaWVsZChydWxlcywgJ2'
    'luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRGaWVsZChydWxlcywgJ2lu'
    'JyldKSA6ICcnUgJpbhJ4CgZub3RfaW4YByADKBJCYcJIXgpcCg1zaW50NjQubm90X2luGkt0aG'
    'lzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1'
    'bGVzLm5vdF9pbl0pIDogJydSBW5vdEluEjUKB2V4YW1wbGUYCCADKBJCG8JIGAoWCg5zaW50Nj'
    'QuZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVh'
    'dGVyX3RoYW4=');

@$core.Deprecated('Use fixed32RulesDescriptor instead')
const Fixed32Rules$json = {
  '1': 'Fixed32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 7, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 7, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 7, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 7, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 7, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 7, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 7, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 7, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `Fixed32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixed32RulesDescriptor = $convert.base64Decode(
    'CgxGaXhlZDMyUnVsZXMShgEKBWNvbnN0GAEgASgHQnDCSG0KawoNZml4ZWQzMi5jb25zdBpadG'
    'hpcyAhPSBnZXRGaWVsZChydWxlcywgJ2NvbnN0JykgPyAnbXVzdCBlcXVhbCAlcycuZm9ybWF0'
    'KFtnZXRGaWVsZChydWxlcywgJ2NvbnN0JyldKSA6ICcnUgVjb25zdBKKAQoCbHQYAiABKAdCeM'
    'JIdQpzCgpmaXhlZDMyLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYg'
    'dGhpcyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLm'
    'x0XSkgOiAnJ0gAUgJsdBKdAQoDbHRlGAMgASgHQogBwkiEAQqBAQoLZml4ZWQzMi5sdGUaciFo'
    'YXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAnbX'
    'VzdCBiZSBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAn'
    'J0gAUgNsdGUShwcKAmd0GAQgASgHQvQGwkjwBgp2CgpmaXhlZDMyLmd0GmghaGFzKHJ1bGVzLm'
    'x0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ211c3QgYmUgZ3Jl'
    'YXRlciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwqvAQoNZml4ZWQzMi5ndF9sdB'
    'qdAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVs'
    'ZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbm'
    'QgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtwEKF2Zp'
    'eGVkMzIuZ3RfbHRfZXhjbHVzaXZlGpsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bG'
    'VzLmd0ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydW'
    'xlcy5sdF0pIDogJycKvwEKDmZpeGVkMzIuZ3RfbHRlGqwBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVs'
    'ZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD0gcnVsZX'
    'MuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0'
    'byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrHAQoYZml4ZWQzMi5ndF'
    '9sdGVfZXhjbHVzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3Qg'
    'JiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZW'
    'F0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMu'
    'Z3QsIHJ1bGVzLmx0ZV0pIDogJydIAVICZ3QS1AcKA2d0ZRgFIAEoB0K/B8JIuwcKhAEKC2ZpeG'
    'VkMzIuZ3RlGnUhaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1'
    'bGVzLmd0ZT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3'
    'J1bGVzLmd0ZV0pIDogJycKvgEKDmZpeGVkMzIuZ3RlX2x0GqsBaGFzKHJ1bGVzLmx0KSAmJiBy'
    'dWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8IHJ1bG'
    'VzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0'
    'aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCsYBChhmaXhlZDMyLm'
    'd0ZV9sdF9leGNsdXNpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3Rl'
    'ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncm'
    'VhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVz'
    'Lmd0ZSwgcnVsZXMubHRdKSA6ICcnCs4BCg9maXhlZDMyLmd0ZV9sdGUaugFoYXMocnVsZXMubH'
    'RlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRo'
    'aXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW'
    '5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0'
    'ZV0pIDogJycK1gEKGWZpeGVkMzIuZ3RlX2x0ZV9leGNsdXNpdmUauAFoYXMocnVsZXMubHRlKS'
    'AmJiBydWxlcy5sdGUgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8'
    'IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZX'
    'NzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6'
    'ICcnSAFSA2d0ZRJ/CgJpbhgGIAMoB0JvwkhsCmoKCmZpeGVkMzIuaW4aXCEodGhpcyBpbiBnZX'
    'RGaWVsZChydWxlcywgJ2luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRG'
    'aWVsZChydWxlcywgJ2luJyldKSA6ICcnUgJpbhJ5CgZub3RfaW4YByADKAdCYsJIXwpdCg5maX'
    'hlZDMyLm5vdF9pbhpLdGhpcyBpbiBydWxlcy5ub3RfaW4gPyAnbXVzdCBub3QgYmUgaW4gbGlz'
    'dCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbhI2CgdleGFtcGxlGAggAy'
    'gHQhzCSBkKFwoPZml4ZWQzMi5leGFtcGxlGgR0cnVlUgdleGFtcGxlKgkI6AcQgICAgAJCCwoJ'
    'bGVzc190aGFuQg4KDGdyZWF0ZXJfdGhhbg==');

@$core.Deprecated('Use fixed64RulesDescriptor instead')
const Fixed64Rules$json = {
  '1': 'Fixed64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 6, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 6, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 6, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 6, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 6, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 6, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 6, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 6, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `Fixed64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixed64RulesDescriptor = $convert.base64Decode(
    'CgxGaXhlZDY0UnVsZXMShgEKBWNvbnN0GAEgASgGQnDCSG0KawoNZml4ZWQ2NC5jb25zdBpadG'
    'hpcyAhPSBnZXRGaWVsZChydWxlcywgJ2NvbnN0JykgPyAnbXVzdCBlcXVhbCAlcycuZm9ybWF0'
    'KFtnZXRGaWVsZChydWxlcywgJ2NvbnN0JyldKSA6ICcnUgVjb25zdBKKAQoCbHQYAiABKAZCeM'
    'JIdQpzCgpmaXhlZDY0Lmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYg'
    'dGhpcyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLm'
    'x0XSkgOiAnJ0gAUgJsdBKdAQoDbHRlGAMgASgGQogBwkiEAQqBAQoLZml4ZWQ2NC5sdGUaciFo'
    'YXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAnbX'
    'VzdCBiZSBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAn'
    'J0gAUgNsdGUShwcKAmd0GAQgASgGQvQGwkjwBgp2CgpmaXhlZDY0Lmd0GmghaGFzKHJ1bGVzLm'
    'x0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ211c3QgYmUgZ3Jl'
    'YXRlciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwqvAQoNZml4ZWQ2NC5ndF9sdB'
    'qdAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0gcnVs'
    'ZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbm'
    'QgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKtwEKF2Zp'
    'eGVkNjQuZ3RfbHRfZXhjbHVzaXZlGpsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bG'
    'VzLmd0ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydW'
    'xlcy5sdF0pIDogJycKvwEKDmZpeGVkNjQuZ3RfbHRlGqwBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVs'
    'ZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD0gcnVsZX'
    'MuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0'
    'byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrHAQoYZml4ZWQ2NC5ndF'
    '9sdGVfZXhjbHVzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3Qg'
    'JiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZW'
    'F0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMu'
    'Z3QsIHJ1bGVzLmx0ZV0pIDogJydIAVICZ3QS1AcKA2d0ZRgFIAEoBkK/B8JIuwcKhAEKC2ZpeG'
    'VkNjQuZ3RlGnUhaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1'
    'bGVzLmd0ZT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3'
    'J1bGVzLmd0ZV0pIDogJycKvgEKDmZpeGVkNjQuZ3RlX2x0GqsBaGFzKHJ1bGVzLmx0KSAmJiBy'
    'dWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8IHJ1bG'
    'VzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0'
    'aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCsYBChhmaXhlZDY0Lm'
    'd0ZV9sdF9leGNsdXNpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3Rl'
    'ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncm'
    'VhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVz'
    'Lmd0ZSwgcnVsZXMubHRdKSA6ICcnCs4BCg9maXhlZDY0Lmd0ZV9sdGUaugFoYXMocnVsZXMubH'
    'RlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRo'
    'aXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW'
    '5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0'
    'ZV0pIDogJycK1gEKGWZpeGVkNjQuZ3RlX2x0ZV9leGNsdXNpdmUauAFoYXMocnVsZXMubHRlKS'
    'AmJiBydWxlcy5sdGUgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8'
    'IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZX'
    'NzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6'
    'ICcnSAFSA2d0ZRJ/CgJpbhgGIAMoBkJvwkhsCmoKCmZpeGVkNjQuaW4aXCEodGhpcyBpbiBnZX'
    'RGaWVsZChydWxlcywgJ2luJykpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRG'
    'aWVsZChydWxlcywgJ2luJyldKSA6ICcnUgJpbhJ5CgZub3RfaW4YByADKAZCYsJIXwpdCg5maX'
    'hlZDY0Lm5vdF9pbhpLdGhpcyBpbiBydWxlcy5ub3RfaW4gPyAnbXVzdCBub3QgYmUgaW4gbGlz'
    'dCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbhI2CgdleGFtcGxlGAggAy'
    'gGQhzCSBkKFwoPZml4ZWQ2NC5leGFtcGxlGgR0cnVlUgdleGFtcGxlKgkI6AcQgICAgAJCCwoJ'
    'bGVzc190aGFuQg4KDGdyZWF0ZXJfdGhhbg==');

@$core.Deprecated('Use sFixed32RulesDescriptor instead')
const SFixed32Rules$json = {
  '1': 'SFixed32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 15, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 15, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 15, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 15, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 15, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 15, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 15, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 15, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `SFixed32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sFixed32RulesDescriptor = $convert.base64Decode(
    'Cg1TRml4ZWQzMlJ1bGVzEocBCgVjb25zdBgBIAEoD0JxwkhuCmwKDnNmaXhlZDMyLmNvbnN0Gl'
    'p0aGlzICE9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3Jt'
    'YXQoW2dldEZpZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0EosBCgJsdBgCIAEoD0'
    'J5wkh2CnQKC3NmaXhlZDMyLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkg'
    'JiYgdGhpcyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bG'
    'VzLmx0XSkgOiAnJ0gAUgJsdBKeAQoDbHRlGAMgASgPQokBwkiFAQqCAQoMc2ZpeGVkMzIubHRl'
    'GnIhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT'
    '8gJ211c3QgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0p'
    'IDogJydIAFIDbHRlEowHCgJndBgEIAEoD0L5BsJI9QYKdwoLc2ZpeGVkMzIuZ3QaaCFoYXMocn'
    'VsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAnbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrABCg5zZml4ZWQzMi'
    '5ndF9sdBqdAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMg'
    'Pj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycK'
    'uAEKGHNmaXhlZDMyLmd0X2x0X2V4Y2x1c2l2ZRqbAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubH'
    'QgPCBydWxlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8g'
    'J211c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsABCg9zZml4ZWQzMi5ndF9sdGUarAFoYXMocnVsZXMubHRl'
    'KSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcy'
    'A8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuIG9y'
    'IGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnCsgBChlzZm'
    'l4ZWQzMi5ndF9sdGVfZXhjbHVzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwg'
    'cnVsZXMuZ3QgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdX'
    'N0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1h'
    'dChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJydIAVICZ3QS2QcKA2d0ZRgFIAEoD0LEB8JIwA'
    'cKhQEKDHNmaXhlZDMyLmd0ZRp1IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYm'
    'IHRoaXMgPCBydWxlcy5ndGU/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCr8BCg9zZml4ZWQzMi5ndGVfbHQaqwFoYXMocnVs'
    'ZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+PSBydWxlcy5sdCB8fC'
    'B0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVz'
    'IGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKxw'
    'EKGXNmaXhlZDMyLmd0ZV9sdF9leGNsdXNpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0'
    'IDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPy'
    'AnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5m'
    'b3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCs8BChBzZml4ZWQzMi5ndGVfbHRlGr'
    'oBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+IHJ1'
    'bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIG'
    'VxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMu'
    'Z3RlLCBydWxlcy5sdGVdKSA6ICcnCtcBChpzZml4ZWQzMi5ndGVfbHRlX2V4Y2x1c2l2ZRq4AW'
    'hhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAocnVsZXMubHRlIDwg'
    'dGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdW'
    'FsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUs'
    'IHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEoABCgJpbhgGIAMoD0JwwkhtCmsKC3NmaXhlZDMyLm'
    'luGlwhKHRoaXMgaW4gZ2V0RmllbGQocnVsZXMsICdpbicpKSA/ICdtdXN0IGJlIGluIGxpc3Qg'
    'JXMnLmZvcm1hdChbZ2V0RmllbGQocnVsZXMsICdpbicpXSkgOiAnJ1ICaW4SegoGbm90X2luGA'
    'cgAygPQmPCSGAKXgoPc2ZpeGVkMzIubm90X2luGkt0aGlzIGluIHJ1bGVzLm5vdF9pbiA/ICdt'
    'dXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdE'
    'luEjcKB2V4YW1wbGUYCCADKA9CHcJIGgoYChBzZml4ZWQzMi5leGFtcGxlGgR0cnVlUgdleGFt'
    'cGxlKgkI6AcQgICAgAJCCwoJbGVzc190aGFuQg4KDGdyZWF0ZXJfdGhhbg==');

@$core.Deprecated('Use sFixed64RulesDescriptor instead')
const SFixed64Rules$json = {
  '1': 'SFixed64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 16, '8': {}, '10': 'const'},
    {'1': 'lt', '3': 2, '4': 1, '5': 16, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 16, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 16, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 16, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 16, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 16, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 8, '4': 3, '5': 16, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `SFixed64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sFixed64RulesDescriptor = $convert.base64Decode(
    'Cg1TRml4ZWQ2NFJ1bGVzEocBCgVjb25zdBgBIAEoEEJxwkhuCmwKDnNmaXhlZDY0LmNvbnN0Gl'
    'p0aGlzICE9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3Jt'
    'YXQoW2dldEZpZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0EosBCgJsdBgCIAEoEE'
    'J5wkh2CnQKC3NmaXhlZDY0Lmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkg'
    'JiYgdGhpcyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bG'
    'VzLmx0XSkgOiAnJ0gAUgJsdBKeAQoDbHRlGAMgASgQQokBwkiFAQqCAQoMc2ZpeGVkNjQubHRl'
    'GnIhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT'
    '8gJ211c3QgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0p'
    'IDogJydIAFIDbHRlEowHCgJndBgEIAEoEEL5BsJI9QYKdwoLc2ZpeGVkNjQuZ3QaaCFoYXMocn'
    'VsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAnbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrABCg5zZml4ZWQ2NC'
    '5ndF9sdBqdAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMg'
    'Pj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'AlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycK'
    'uAEKGHNmaXhlZDY0Lmd0X2x0X2V4Y2x1c2l2ZRqbAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubH'
    'QgPCBydWxlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8g'
    'J211c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsABCg9zZml4ZWQ2NC5ndF9sdGUarAFoYXMocnVsZXMubHRl'
    'KSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcy'
    'A8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuIG9y'
    'IGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnCsgBChlzZm'
    'l4ZWQ2NC5ndF9sdGVfZXhjbHVzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwg'
    'cnVsZXMuZ3QgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdX'
    'N0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1h'
    'dChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJydIAVICZ3QS2QcKA2d0ZRgFIAEoEELEB8JIwA'
    'cKhQEKDHNmaXhlZDY0Lmd0ZRp1IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYm'
    'IHRoaXMgPCBydWxlcy5ndGU/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCr8BCg9zZml4ZWQ2NC5ndGVfbHQaqwFoYXMocnVs'
    'ZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+PSBydWxlcy5sdCB8fC'
    'B0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVz'
    'IGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKxw'
    'EKGXNmaXhlZDY0Lmd0ZV9sdF9leGNsdXNpdmUaqQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0'
    'IDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPy'
    'AnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5m'
    'b3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCs8BChBzZml4ZWQ2NC5ndGVfbHRlGr'
    'oBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+IHJ1'
    'bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIG'
    'VxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMu'
    'Z3RlLCBydWxlcy5sdGVdKSA6ICcnCtcBChpzZml4ZWQ2NC5ndGVfbHRlX2V4Y2x1c2l2ZRq4AW'
    'hhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAocnVsZXMubHRlIDwg'
    'dGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdW'
    'FsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUs'
    'IHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEoABCgJpbhgGIAMoEEJwwkhtCmsKC3NmaXhlZDY0Lm'
    'luGlwhKHRoaXMgaW4gZ2V0RmllbGQocnVsZXMsICdpbicpKSA/ICdtdXN0IGJlIGluIGxpc3Qg'
    'JXMnLmZvcm1hdChbZ2V0RmllbGQocnVsZXMsICdpbicpXSkgOiAnJ1ICaW4SegoGbm90X2luGA'
    'cgAygQQmPCSGAKXgoPc2ZpeGVkNjQubm90X2luGkt0aGlzIGluIHJ1bGVzLm5vdF9pbiA/ICdt'
    'dXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdE'
    'luEjcKB2V4YW1wbGUYCCADKBBCHcJIGgoYChBzZml4ZWQ2NC5leGFtcGxlGgR0cnVlUgdleGFt'
    'cGxlKgkI6AcQgICAgAJCCwoJbGVzc190aGFuQg4KDGdyZWF0ZXJfdGhhbg==');

@$core.Deprecated('Use boolRulesDescriptor instead')
const BoolRules$json = {
  '1': 'BoolRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'const'},
    {'1': 'example', '3': 2, '4': 3, '5': 8, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
};

/// Descriptor for `BoolRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolRulesDescriptor = $convert.base64Decode(
    'CglCb29sUnVsZXMSgwEKBWNvbnN0GAEgASgIQm3CSGoKaAoKYm9vbC5jb25zdBpadGhpcyAhPS'
    'BnZXRGaWVsZChydWxlcywgJ2NvbnN0JykgPyAnbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtnZXRG'
    'aWVsZChydWxlcywgJ2NvbnN0JyldKSA6ICcnUgVjb25zdBIzCgdleGFtcGxlGAIgAygIQhnCSB'
    'YKFAoMYm9vbC5leGFtcGxlGgR0cnVlUgdleGFtcGxlKgkI6AcQgICAgAI=');

@$core.Deprecated('Use stringRulesDescriptor instead')
const StringRules$json = {
  '1': 'StringRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'const'},
    {'1': 'len', '3': 19, '4': 1, '5': 4, '8': {}, '10': 'len'},
    {'1': 'min_len', '3': 2, '4': 1, '5': 4, '8': {}, '10': 'minLen'},
    {'1': 'max_len', '3': 3, '4': 1, '5': 4, '8': {}, '10': 'maxLen'},
    {'1': 'len_bytes', '3': 20, '4': 1, '5': 4, '8': {}, '10': 'lenBytes'},
    {'1': 'min_bytes', '3': 4, '4': 1, '5': 4, '8': {}, '10': 'minBytes'},
    {'1': 'max_bytes', '3': 5, '4': 1, '5': 4, '8': {}, '10': 'maxBytes'},
    {'1': 'pattern', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'pattern'},
    {'1': 'prefix', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'prefix'},
    {'1': 'suffix', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'suffix'},
    {'1': 'contains', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'contains'},
    {
      '1': 'not_contains',
      '3': 23,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'notContains'
    },
    {'1': 'in', '3': 10, '4': 3, '5': 9, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 11, '4': 3, '5': 9, '8': {}, '10': 'notIn'},
    {'1': 'email', '3': 12, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'email'},
    {
      '1': 'hostname',
      '3': 13,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'hostname'
    },
    {'1': 'ip', '3': 14, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ip'},
    {'1': 'ipv4', '3': 15, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4'},
    {'1': 'ipv6', '3': 16, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6'},
    {'1': 'uri', '3': 17, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uri'},
    {'1': 'uri_ref', '3': 18, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uriRef'},
    {'1': 'address', '3': 21, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'address'},
    {'1': 'uuid', '3': 22, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uuid'},
    {'1': 'tuuid', '3': 33, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'tuuid'},
    {
      '1': 'ip_with_prefixlen',
      '3': 26,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipWithPrefixlen'
    },
    {
      '1': 'ipv4_with_prefixlen',
      '3': 27,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipv4WithPrefixlen'
    },
    {
      '1': 'ipv6_with_prefixlen',
      '3': 28,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipv6WithPrefixlen'
    },
    {
      '1': 'ip_prefix',
      '3': 29,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipPrefix'
    },
    {
      '1': 'ipv4_prefix',
      '3': 30,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipv4Prefix'
    },
    {
      '1': 'ipv6_prefix',
      '3': 31,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'ipv6Prefix'
    },
    {
      '1': 'host_and_port',
      '3': 32,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'hostAndPort'
    },
    {'1': 'ulid', '3': 35, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ulid'},
    {
      '1': 'protobuf_fqn',
      '3': 37,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'protobufFqn'
    },
    {
      '1': 'protobuf_dot_fqn',
      '3': 38,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'protobufDotFqn'
    },
    {
      '1': 'well_known_regex',
      '3': 24,
      '4': 1,
      '5': 14,
      '6': '.buf.validate.KnownRegex',
      '8': {},
      '9': 0,
      '10': 'wellKnownRegex'
    },
    {'1': 'strict', '3': 25, '4': 1, '5': 8, '10': 'strict'},
    {'1': 'example', '3': 34, '4': 3, '5': 9, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'well_known'},
  ],
};

/// Descriptor for `StringRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringRulesDescriptor = $convert.base64Decode(
    'CgtTdHJpbmdSdWxlcxKHAQoFY29uc3QYASABKAlCccJIbgpsCgxzdHJpbmcuY29uc3QaXHRoaX'
    'MgIT0gZ2V0RmllbGQocnVsZXMsICdjb25zdCcpID8gJ211c3QgZXF1YWwgYCVzYCcuZm9ybWF0'
    'KFtnZXRGaWVsZChydWxlcywgJ2NvbnN0JyldKSA6ICcnUgVjb25zdBJ2CgNsZW4YEyABKARCZM'
    'JIYQpfCgpzdHJpbmcubGVuGlF1aW50KHRoaXMuc2l6ZSgpKSAhPSBydWxlcy5sZW4gPyAnbXVz'
    'dCBiZSAlcyBjaGFyYWN0ZXJzJy5mb3JtYXQoW3J1bGVzLmxlbl0pIDogJydSA2xlbhKRAQoHbW'
    'luX2xlbhgCIAEoBEJ4wkh1CnMKDnN0cmluZy5taW5fbGVuGmF1aW50KHRoaXMuc2l6ZSgpKSA8'
    'IHJ1bGVzLm1pbl9sZW4gPyAnbXVzdCBiZSBhdCBsZWFzdCAlcyBjaGFyYWN0ZXJzJy5mb3JtYX'
    'QoW3J1bGVzLm1pbl9sZW5dKSA6ICcnUgZtaW5MZW4SkAEKB21heF9sZW4YAyABKARCd8JIdApy'
    'Cg5zdHJpbmcubWF4X2xlbhpgdWludCh0aGlzLnNpemUoKSkgPiBydWxlcy5tYXhfbGVuID8gJ2'
    '11c3QgYmUgYXQgbW9zdCAlcyBjaGFyYWN0ZXJzJy5mb3JtYXQoW3J1bGVzLm1heF9sZW5dKSA6'
    'ICcnUgZtYXhMZW4SlQEKCWxlbl9ieXRlcxgUIAEoBEJ4wkh1CnMKEHN0cmluZy5sZW5fYnl0ZX'
    'MaX3VpbnQoYnl0ZXModGhpcykuc2l6ZSgpKSAhPSBydWxlcy5sZW5fYnl0ZXMgPyAnbXVzdCBi'
    'ZSAlcyBieXRlcycuZm9ybWF0KFtydWxlcy5sZW5fYnl0ZXNdKSA6ICcnUghsZW5CeXRlcxKeAQ'
    'oJbWluX2J5dGVzGAQgASgEQoABwkh9CnsKEHN0cmluZy5taW5fYnl0ZXMaZ3VpbnQoYnl0ZXMo'
    'dGhpcykuc2l6ZSgpKSA8IHJ1bGVzLm1pbl9ieXRlcyA/ICdtdXN0IGJlIGF0IGxlYXN0ICVzIG'
    'J5dGVzJy5mb3JtYXQoW3J1bGVzLm1pbl9ieXRlc10pIDogJydSCG1pbkJ5dGVzEpwBCgltYXhf'
    'Ynl0ZXMYBSABKARCf8JIfAp6ChBzdHJpbmcubWF4X2J5dGVzGmZ1aW50KGJ5dGVzKHRoaXMpLn'
    'NpemUoKSkgPiBydWxlcy5tYXhfYnl0ZXMgPyAnbXVzdCBiZSBhdCBtb3N0ICVzIGJ5dGVzJy5m'
    'b3JtYXQoW3J1bGVzLm1heF9ieXRlc10pIDogJydSCG1heEJ5dGVzEpABCgdwYXR0ZXJuGAYgAS'
    'gJQnbCSHMKcQoOc3RyaW5nLnBhdHRlcm4aXyF0aGlzLm1hdGNoZXMocnVsZXMucGF0dGVybikg'
    'PyAnZG9lcyBub3QgbWF0Y2ggcmVnZXggcGF0dGVybiBgJXNgJy5mb3JtYXQoW3J1bGVzLnBhdH'
    'Rlcm5dKSA6ICcnUgdwYXR0ZXJuEoYBCgZwcmVmaXgYByABKAlCbsJIawppCg1zdHJpbmcucHJl'
    'Zml4GlghdGhpcy5zdGFydHNXaXRoKHJ1bGVzLnByZWZpeCkgPyAnZG9lcyBub3QgaGF2ZSBwcm'
    'VmaXggYCVzYCcuZm9ybWF0KFtydWxlcy5wcmVmaXhdKSA6ICcnUgZwcmVmaXgShAEKBnN1ZmZp'
    'eBgIIAEoCUJswkhpCmcKDXN0cmluZy5zdWZmaXgaViF0aGlzLmVuZHNXaXRoKHJ1bGVzLnN1Zm'
    'ZpeCkgPyAnZG9lcyBub3QgaGF2ZSBzdWZmaXggYCVzYCcuZm9ybWF0KFtydWxlcy5zdWZmaXhd'
    'KSA6ICcnUgZzdWZmaXgSlAEKCGNvbnRhaW5zGAkgASgJQnjCSHUKcwoPc3RyaW5nLmNvbnRhaW'
    '5zGmAhdGhpcy5jb250YWlucyhydWxlcy5jb250YWlucykgPyAnZG9lcyBub3QgY29udGFpbiBz'
    'dWJzdHJpbmcgYCVzYCcuZm9ybWF0KFtydWxlcy5jb250YWluc10pIDogJydSCGNvbnRhaW5zEp'
    '4BCgxub3RfY29udGFpbnMYFyABKAlCe8JIeAp2ChNzdHJpbmcubm90X2NvbnRhaW5zGl90aGlz'
    'LmNvbnRhaW5zKHJ1bGVzLm5vdF9jb250YWlucykgPyAnY29udGFpbnMgc3Vic3RyaW5nIGAlc2'
    'AnLmZvcm1hdChbcnVsZXMubm90X2NvbnRhaW5zXSkgOiAnJ1ILbm90Q29udGFpbnMSfgoCaW4Y'
    'CiADKAlCbsJIawppCglzdHJpbmcuaW4aXCEodGhpcyBpbiBnZXRGaWVsZChydWxlcywgJ2luJy'
    'kpID8gJ211c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtnZXRGaWVsZChydWxlcywgJ2luJyld'
    'KSA6ICcnUgJpbhJ4CgZub3RfaW4YCyADKAlCYcJIXgpcCg1zdHJpbmcubm90X2luGkt0aGlzIG'
    'luIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVz'
    'Lm5vdF9pbl0pIDogJydSBW5vdEluEuABCgVlbWFpbBgMIAEoCELHAcJIwwEKWwoMc3RyaW5nLm'
    'VtYWlsEh1tdXN0IGJlIGEgdmFsaWQgZW1haWwgYWRkcmVzcxosIXJ1bGVzLmVtYWlsIHx8IHRo'
    'aXMgPT0gJycgfHwgdGhpcy5pc0VtYWlsKCkKZAoSc3RyaW5nLmVtYWlsX2VtcHR5EjJ2YWx1ZS'
    'BpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgZW1haWwgYWRkcmVzcxoaIXJ1bGVzLmVt'
    'YWlsIHx8IHRoaXMgIT0gJydIAFIFZW1haWwS6wEKCGhvc3RuYW1lGA0gASgIQswBwkjIAQpfCg'
    '9zdHJpbmcuaG9zdG5hbWUSGG11c3QgYmUgYSB2YWxpZCBob3N0bmFtZRoyIXJ1bGVzLmhvc3Ru'
    'YW1lIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0hvc3RuYW1lKCkKZQoVc3RyaW5nLmhvc3RuYW'
    '1lX2VtcHR5Ei12YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgaG9zdG5hbWUa'
    'HSFydWxlcy5ob3N0bmFtZSB8fCB0aGlzICE9ICcnSABSCGhvc3RuYW1lEsUBCgJpcBgOIAEoCE'
    'KyAcJIrgEKTwoJc3RyaW5nLmlwEhptdXN0IGJlIGEgdmFsaWQgSVAgYWRkcmVzcxomIXJ1bGVz'
    'LmlwIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0lwKCkKWwoPc3RyaW5nLmlwX2VtcHR5Ei92YW'
    'x1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVAgYWRkcmVzcxoXIXJ1bGVzLmlw'
    'IHx8IHRoaXMgIT0gJydIAFICaXAS1gEKBGlwdjQYDyABKAhCvwHCSLsBClYKC3N0cmluZy5pcH'
    'Y0EhxtdXN0IGJlIGEgdmFsaWQgSVB2NCBhZGRyZXNzGikhcnVsZXMuaXB2NCB8fCB0aGlzID09'
    'ICcnIHx8IHRoaXMuaXNJcCg0KQphChFzdHJpbmcuaXB2NF9lbXB0eRIxdmFsdWUgaXMgZW1wdH'
    'ksIHdoaWNoIGlzIG5vdCBhIHZhbGlkIElQdjQgYWRkcmVzcxoZIXJ1bGVzLmlwdjQgfHwgdGhp'
    'cyAhPSAnJ0gAUgRpcHY0EtYBCgRpcHY2GBAgASgIQr8Bwki7AQpWCgtzdHJpbmcuaXB2NhIcbX'
    'VzdCBiZSBhIHZhbGlkIElQdjYgYWRkcmVzcxopIXJ1bGVzLmlwdjYgfHwgdGhpcyA9PSAnJyB8'
    'fCB0aGlzLmlzSXAoNikKYQoRc3RyaW5nLmlwdjZfZW1wdHkSMXZhbHVlIGlzIGVtcHR5LCB3aG'
    'ljaCBpcyBub3QgYSB2YWxpZCBJUHY2IGFkZHJlc3MaGSFydWxlcy5pcHY2IHx8IHRoaXMgIT0g'
    'JydIAFIEaXB2NhK+AQoDdXJpGBEgASgIQqkBwkilAQpLCgpzdHJpbmcudXJpEhNtdXN0IGJlIG'
    'EgdmFsaWQgVVJJGighcnVsZXMudXJpIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc1VyaSgpClYK'
    'EHN0cmluZy51cmlfZW1wdHkSKHZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZC'
    'BVUkkaGCFydWxlcy51cmkgfHwgdGhpcyAhPSAnJ0gAUgN1cmkScgoHdXJpX3JlZhgSIAEoCEJX'
    'wkhUClIKDnN0cmluZy51cmlfcmVmEh1tdXN0IGJlIGEgdmFsaWQgVVJJIFJlZmVyZW5jZRohIX'
    'J1bGVzLnVyaV9yZWYgfHwgdGhpcy5pc1VyaVJlZigpSABSBnVyaVJlZhKSAgoHYWRkcmVzcxgV'
    'IAEoCEL1AcJI8QEKewoOc3RyaW5nLmFkZHJlc3MSJ211c3QgYmUgYSB2YWxpZCBob3N0bmFtZS'
    'wgb3IgaXAgYWRkcmVzcxpAIXJ1bGVzLmFkZHJlc3MgfHwgdGhpcyA9PSAnJyB8fCB0aGlzLmlz'
    'SG9zdG5hbWUoKSB8fCB0aGlzLmlzSXAoKQpyChRzdHJpbmcuYWRkcmVzc19lbXB0eRI8dmFsdW'
    'UgaXMgZW1wdHksIHdoaWNoIGlzIG5vdCBhIHZhbGlkIGhvc3RuYW1lLCBvciBpcCBhZGRyZXNz'
    'GhwhcnVsZXMuYWRkcmVzcyB8fCB0aGlzICE9ICcnSABSB2FkZHJlc3MSmAIKBHV1aWQYFiABKA'
    'hCgQLCSP0BCp8BCgtzdHJpbmcudXVpZBIUbXVzdCBiZSBhIHZhbGlkIFVVSUQaeiFydWxlcy51'
    'dWlkIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5tYXRjaGVzKCdeWzAtOWEtZkEtRl17OH0tWzAtOW'
    'EtZkEtRl17NH0tWzAtOWEtZkEtRl17NH0tWzAtOWEtZkEtRl17NH0tWzAtOWEtZkEtRl17MTJ9'
    'JCcpClkKEXN0cmluZy51dWlkX2VtcHR5Eil2YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IG'
    'EgdmFsaWQgVVVJRBoZIXJ1bGVzLnV1aWQgfHwgdGhpcyAhPSAnJ0gAUgR1dWlkEvEBCgV0dXVp'
    'ZBghIAEoCELYAcJI1AEKbQoMc3RyaW5nLnR1dWlkEhxtdXN0IGJlIGEgdmFsaWQgdHJpbW1lZC'
    'BVVUlEGj8hcnVsZXMudHV1aWQgfHwgdGhpcyA9PSAnJyB8fCB0aGlzLm1hdGNoZXMoJ15bMC05'
    'YS1mQS1GXXszMn0kJykKYwoSc3RyaW5nLnR1dWlkX2VtcHR5EjF2YWx1ZSBpcyBlbXB0eSwgd2'
    'hpY2ggaXMgbm90IGEgdmFsaWQgdHJpbW1lZCBVVUlEGhohcnVsZXMudHV1aWQgfHwgdGhpcyAh'
    'PSAnJ0gAUgV0dXVpZBKhAgoRaXBfd2l0aF9wcmVmaXhsZW4YGiABKAhC8gHCSO4BCnIKGHN0cm'
    'luZy5pcF93aXRoX3ByZWZpeGxlbhIZbXVzdCBiZSBhIHZhbGlkIElQIHByZWZpeBo7IXJ1bGVz'
    'LmlwX3dpdGhfcHJlZml4bGVuIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZml4KCkKeA'
    'oec3RyaW5nLmlwX3dpdGhfcHJlZml4bGVuX2VtcHR5Ei52YWx1ZSBpcyBlbXB0eSwgd2hpY2gg'
    'aXMgbm90IGEgdmFsaWQgSVAgcHJlZml4GiYhcnVsZXMuaXBfd2l0aF9wcmVmaXhsZW4gfHwgdG'
    'hpcyAhPSAnJ0gAUg9pcFdpdGhQcmVmaXhsZW4S3AIKE2lwdjRfd2l0aF9wcmVmaXhsZW4YGyAB'
    'KAhCqQLCSKUCCo0BChpzdHJpbmcuaXB2NF93aXRoX3ByZWZpeGxlbhIvbXVzdCBiZSBhIHZhbG'
    'lkIElQdjQgYWRkcmVzcyB3aXRoIHByZWZpeCBsZW5ndGgaPiFydWxlcy5pcHY0X3dpdGhfcHJl'
    'Zml4bGVuIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZml4KDQpCpIBCiBzdHJpbmcuaX'
    'B2NF93aXRoX3ByZWZpeGxlbl9lbXB0eRJEdmFsdWUgaXMgZW1wdHksIHdoaWNoIGlzIG5vdCBh'
    'IHZhbGlkIElQdjQgYWRkcmVzcyB3aXRoIHByZWZpeCBsZW5ndGgaKCFydWxlcy5pcHY0X3dpdG'
    'hfcHJlZml4bGVuIHx8IHRoaXMgIT0gJydIAFIRaXB2NFdpdGhQcmVmaXhsZW4S3AIKE2lwdjZf'
    'd2l0aF9wcmVmaXhsZW4YHCABKAhCqQLCSKUCCo0BChpzdHJpbmcuaXB2Nl93aXRoX3ByZWZpeG'
    'xlbhIvbXVzdCBiZSBhIHZhbGlkIElQdjYgYWRkcmVzcyB3aXRoIHByZWZpeCBsZW5ndGgaPiFy'
    'dWxlcy5pcHY2X3dpdGhfcHJlZml4bGVuIHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZm'
    'l4KDYpCpIBCiBzdHJpbmcuaXB2Nl93aXRoX3ByZWZpeGxlbl9lbXB0eRJEdmFsdWUgaXMgZW1w'
    'dHksIHdoaWNoIGlzIG5vdCBhIHZhbGlkIElQdjYgYWRkcmVzcyB3aXRoIHByZWZpeCBsZW5ndG'
    'gaKCFydWxlcy5pcHY2X3dpdGhfcHJlZml4bGVuIHx8IHRoaXMgIT0gJydIAFIRaXB2NldpdGhQ'
    'cmVmaXhsZW4S9gEKCWlwX3ByZWZpeBgdIAEoCELWAcJI0gEKZgoQc3RyaW5nLmlwX3ByZWZpeB'
    'IZbXVzdCBiZSBhIHZhbGlkIElQIHByZWZpeBo3IXJ1bGVzLmlwX3ByZWZpeCB8fCB0aGlzID09'
    'ICcnIHx8IHRoaXMuaXNJcFByZWZpeCh0cnVlKQpoChZzdHJpbmcuaXBfcHJlZml4X2VtcHR5Ei'
    '52YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVAgcHJlZml4Gh4hcnVsZXMu'
    'aXBfcHJlZml4IHx8IHRoaXMgIT0gJydIAFIIaXBQcmVmaXgSiQIKC2lwdjRfcHJlZml4GB4gAS'
    'gIQuUBwkjhAQpvChJzdHJpbmcuaXB2NF9wcmVmaXgSG211c3QgYmUgYSB2YWxpZCBJUHY0IHBy'
    'ZWZpeBo8IXJ1bGVzLmlwdjRfcHJlZml4IHx8IHRoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZm'
    'l4KDQsIHRydWUpCm4KGHN0cmluZy5pcHY0X3ByZWZpeF9lbXB0eRIwdmFsdWUgaXMgZW1wdHks'
    'IHdoaWNoIGlzIG5vdCBhIHZhbGlkIElQdjQgcHJlZml4GiAhcnVsZXMuaXB2NF9wcmVmaXggfH'
    'wgdGhpcyAhPSAnJ0gAUgppcHY0UHJlZml4EokCCgtpcHY2X3ByZWZpeBgfIAEoCELlAcJI4QEK'
    'bwoSc3RyaW5nLmlwdjZfcHJlZml4EhttdXN0IGJlIGEgdmFsaWQgSVB2NiBwcmVmaXgaPCFydW'
    'xlcy5pcHY2X3ByZWZpeCB8fCB0aGlzID09ICcnIHx8IHRoaXMuaXNJcFByZWZpeCg2LCB0cnVl'
    'KQpuChhzdHJpbmcuaXB2Nl9wcmVmaXhfZW1wdHkSMHZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcy'
    'Bub3QgYSB2YWxpZCBJUHY2IHByZWZpeBogIXJ1bGVzLmlwdjZfcHJlZml4IHx8IHRoaXMgIT0g'
    'JydIAFIKaXB2NlByZWZpeBK8AgoNaG9zdF9hbmRfcG9ydBggIAEoCEKVAsJIkQIKkwEKFHN0cm'
    'luZy5ob3N0X2FuZF9wb3J0EjttdXN0IGJlIGEgdmFsaWQgaG9zdCAoaG9zdG5hbWUgb3IgSVAg'
    'YWRkcmVzcykgYW5kIHBvcnQgcGFpcho+IXJ1bGVzLmhvc3RfYW5kX3BvcnQgfHwgdGhpcyA9PS'
    'AnJyB8fCB0aGlzLmlzSG9zdEFuZFBvcnQodHJ1ZSkKeQoac3RyaW5nLmhvc3RfYW5kX3BvcnRf'
    'ZW1wdHkSN3ZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBob3N0IGFuZCBwb3'
    'J0IHBhaXIaIiFydWxlcy5ob3N0X2FuZF9wb3J0IHx8IHRoaXMgIT0gJydIAFILaG9zdEFuZFBv'
    'cnQS9AEKBHVsaWQYIyABKAhC3QHCSNkBCnwKC3N0cmluZy51bGlkEhRtdXN0IGJlIGEgdmFsaW'
    'QgVUxJRBpXIXJ1bGVzLnVsaWQgfHwgdGhpcyA9PSAnJyB8fCB0aGlzLm1hdGNoZXMoJ15bMC03'
    'XVswLTlBLUhKS01OUC1UVi1aYS1oamttbnAtdHYtel17MjV9JCcpClkKEXN0cmluZy51bGlkX2'
    'VtcHR5Eil2YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgVUxJRBoZIXJ1bGVz'
    'LnVsaWQgfHwgdGhpcyAhPSAnJ0gAUgR1bGlkEuECCgxwcm90b2J1Zl9mcW4YJSABKAhCuwLCSL'
    'cCCq8BChNzdHJpbmcucHJvdG9idWZfZnFuEi1tdXN0IGJlIGEgdmFsaWQgZnVsbHktcXVhbGlm'
    'aWVkIFByb3RvYnVmIG5hbWUaaSFydWxlcy5wcm90b2J1Zl9mcW4gfHwgdGhpcyA9PSAnJyB8fC'
    'B0aGlzLm1hdGNoZXMoJ15bQS1aYS16X11bQS1aYS16XzAtOV0qKFxcLltBLVphLXpfXVtBLVph'
    'LXpfMC05XSopKiQnKQqCAQoZc3RyaW5nLnByb3RvYnVmX2Zxbl9lbXB0eRJCdmFsdWUgaXMgZW'
    '1wdHksIHdoaWNoIGlzIG5vdCBhIHZhbGlkIGZ1bGx5LXF1YWxpZmllZCBQcm90b2J1ZiBuYW1l'
    'GiEhcnVsZXMucHJvdG9idWZfZnFuIHx8IHRoaXMgIT0gJydIAFILcHJvdG9idWZGcW4SoQMKEH'
    'Byb3RvYnVmX2RvdF9mcW4YJiABKAhC9ALCSPACCs0BChdzdHJpbmcucHJvdG9idWZfZG90X2Zx'
    'bhJAbXVzdCBiZSBhIHZhbGlkIGZ1bGx5LXF1YWxpZmllZCBQcm90b2J1ZiBuYW1lIHdpdGggYS'
    'BsZWFkaW5nIGRvdBpwIXJ1bGVzLnByb3RvYnVmX2RvdF9mcW4gfHwgdGhpcyA9PSAnJyB8fCB0'
    'aGlzLm1hdGNoZXMoJ15cXC5bQS1aYS16X11bQS1aYS16XzAtOV0qKFxcLltBLVphLXpfXVtBLV'
    'phLXpfMC05XSopKiQnKQqdAQodc3RyaW5nLnByb3RvYnVmX2RvdF9mcW5fZW1wdHkSVXZhbHVl'
    'IGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBmdWxseS1xdWFsaWZpZWQgUHJvdG9idW'
    'YgbmFtZSB3aXRoIGEgbGVhZGluZyBkb3QaJSFydWxlcy5wcm90b2J1Zl9kb3RfZnFuIHx8IHRo'
    'aXMgIT0gJydIAFIOcHJvdG9idWZEb3RGcW4SrAUKEHdlbGxfa25vd25fcmVnZXgYGCABKA4yGC'
    '5idWYudmFsaWRhdGUuS25vd25SZWdleELlBMJI4QQK6gEKI3N0cmluZy53ZWxsX2tub3duX3Jl'
    'Z2V4LmhlYWRlcl9uYW1lEiBtdXN0IGJlIGEgdmFsaWQgSFRUUCBoZWFkZXIgbmFtZRqgAXJ1bG'
    'VzLndlbGxfa25vd25fcmVnZXggIT0gMSB8fCB0aGlzID09ICcnIHx8IHRoaXMubWF0Y2hlcygh'
    'aGFzKHJ1bGVzLnN0cmljdCkgfHwgcnVsZXMuc3RyaWN0ID8nXjo/WzAtOWEtekEtWiEjJCUmXC'
    'cqKy0uXl98flx4NjBdKyQnIDonXlteXHUwMDAwXHUwMDBBXHUwMDBEXSskJykKjQEKKXN0cmlu'
    'Zy53ZWxsX2tub3duX3JlZ2V4LmhlYWRlcl9uYW1lX2VtcHR5EjV2YWx1ZSBpcyBlbXB0eSwgd2'
    'hpY2ggaXMgbm90IGEgdmFsaWQgSFRUUCBoZWFkZXIgbmFtZRopcnVsZXMud2VsbF9rbm93bl9y'
    'ZWdleCAhPSAxIHx8IHRoaXMgIT0gJycK4QEKJHN0cmluZy53ZWxsX2tub3duX3JlZ2V4LmhlYW'
    'Rlcl92YWx1ZRIhbXVzdCBiZSBhIHZhbGlkIEhUVFAgaGVhZGVyIHZhbHVlGpUBcnVsZXMud2Vs'
    'bF9rbm93bl9yZWdleCAhPSAyIHx8IHRoaXMubWF0Y2hlcyghaGFzKHJ1bGVzLnN0cmljdCkgfH'
    'wgcnVsZXMuc3RyaWN0ID8nXlteXHUwMDAwLVx1MDAwOFx1MDAwQS1cdTAwMUZcdTAwN0ZdKiQn'
    'IDonXlteXHUwMDAwXHUwMDBBXHUwMDBEXSokJylIAFIOd2VsbEtub3duUmVnZXgSFgoGc3RyaW'
    'N0GBkgASgIUgZzdHJpY3QSNQoHZXhhbXBsZRgiIAMoCUIbwkgYChYKDnN0cmluZy5leGFtcGxl'
    'GgR0cnVlUgdleGFtcGxlKgkI6AcQgICAgAJCDAoKd2VsbF9rbm93bg==');

@$core.Deprecated('Use bytesRulesDescriptor instead')
const BytesRules$json = {
  '1': 'BytesRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 12, '8': {}, '10': 'const'},
    {'1': 'len', '3': 13, '4': 1, '5': 4, '8': {}, '10': 'len'},
    {'1': 'min_len', '3': 2, '4': 1, '5': 4, '8': {}, '10': 'minLen'},
    {'1': 'max_len', '3': 3, '4': 1, '5': 4, '8': {}, '10': 'maxLen'},
    {'1': 'pattern', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'pattern'},
    {'1': 'prefix', '3': 5, '4': 1, '5': 12, '8': {}, '10': 'prefix'},
    {'1': 'suffix', '3': 6, '4': 1, '5': 12, '8': {}, '10': 'suffix'},
    {'1': 'contains', '3': 7, '4': 1, '5': 12, '8': {}, '10': 'contains'},
    {'1': 'in', '3': 8, '4': 3, '5': 12, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 9, '4': 3, '5': 12, '8': {}, '10': 'notIn'},
    {'1': 'ip', '3': 10, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ip'},
    {'1': 'ipv4', '3': 11, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4'},
    {'1': 'ipv6', '3': 12, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6'},
    {'1': 'uuid', '3': 15, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uuid'},
    {'1': 'example', '3': 14, '4': 3, '5': 12, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'well_known'},
  ],
};

/// Descriptor for `BytesRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bytesRulesDescriptor = $convert.base64Decode(
    'CgpCeXRlc1J1bGVzEoEBCgVjb25zdBgBIAEoDEJrwkhoCmYKC2J5dGVzLmNvbnN0Gld0aGlzIC'
    'E9IGdldEZpZWxkKHJ1bGVzLCAnY29uc3QnKSA/ICdtdXN0IGJlICV4Jy5mb3JtYXQoW2dldEZp'
    'ZWxkKHJ1bGVzLCAnY29uc3QnKV0pIDogJydSBWNvbnN0EnAKA2xlbhgNIAEoBEJewkhbClkKCW'
    'J5dGVzLmxlbhpMdWludCh0aGlzLnNpemUoKSkgIT0gcnVsZXMubGVuID8gJ211c3QgYmUgJXMg'
    'Ynl0ZXMnLmZvcm1hdChbcnVsZXMubGVuXSkgOiAnJ1IDbGVuEosBCgdtaW5fbGVuGAIgASgEQn'
    'LCSG8KbQoNYnl0ZXMubWluX2xlbhpcdWludCh0aGlzLnNpemUoKSkgPCBydWxlcy5taW5fbGVu'
    'ID8gJ211c3QgYmUgYXQgbGVhc3QgJXMgYnl0ZXMnLmZvcm1hdChbcnVsZXMubWluX2xlbl0pID'
    'ogJydSBm1pbkxlbhKKAQoHbWF4X2xlbhgDIAEoBEJxwkhuCmwKDWJ5dGVzLm1heF9sZW4aW3Vp'
    'bnQodGhpcy5zaXplKCkpID4gcnVsZXMubWF4X2xlbiA/ICdtdXN0IGJlIGF0IG1vc3QgJXMgYn'
    'l0ZXMnLmZvcm1hdChbcnVsZXMubWF4X2xlbl0pIDogJydSBm1heExlbhKTAQoHcGF0dGVybhgE'
    'IAEoCUJ5wkh2CnQKDWJ5dGVzLnBhdHRlcm4aYyFzdHJpbmcodGhpcykubWF0Y2hlcyhydWxlcy'
    '5wYXR0ZXJuKSA/ICdtdXN0IG1hdGNoIHJlZ2V4IHBhdHRlcm4gYCVzYCcuZm9ybWF0KFtydWxl'
    'cy5wYXR0ZXJuXSkgOiAnJ1IHcGF0dGVybhKDAQoGcHJlZml4GAUgASgMQmvCSGgKZgoMYnl0ZX'
    'MucHJlZml4GlYhdGhpcy5zdGFydHNXaXRoKHJ1bGVzLnByZWZpeCkgPyAnZG9lcyBub3QgaGF2'
    'ZSBwcmVmaXggJXgnLmZvcm1hdChbcnVsZXMucHJlZml4XSkgOiAnJ1IGcHJlZml4EoEBCgZzdW'
    'ZmaXgYBiABKAxCacJIZgpkCgxieXRlcy5zdWZmaXgaVCF0aGlzLmVuZHNXaXRoKHJ1bGVzLnN1'
    'ZmZpeCkgPyAnZG9lcyBub3QgaGF2ZSBzdWZmaXggJXgnLmZvcm1hdChbcnVsZXMuc3VmZml4XS'
    'kgOiAnJ1IGc3VmZml4EocBCghjb250YWlucxgHIAEoDEJrwkhoCmYKDmJ5dGVzLmNvbnRhaW5z'
    'GlQhdGhpcy5jb250YWlucyhydWxlcy5jb250YWlucykgPyAnZG9lcyBub3QgY29udGFpbiAleC'
    'cuZm9ybWF0KFtydWxlcy5jb250YWluc10pIDogJydSCGNvbnRhaW5zEqUBCgJpbhgIIAMoDEKU'
    'AcJIkAEKjQEKCGJ5dGVzLmluGoABZ2V0RmllbGQocnVsZXMsICdpbicpLnNpemUoKSA+IDAgJi'
    'YgISh0aGlzIGluIGdldEZpZWxkKHJ1bGVzLCAnaW4nKSkgPyAnbXVzdCBiZSBpbiBsaXN0ICVz'
    'Jy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnaW4nKV0pIDogJydSAmluEncKBm5vdF9pbhgJIA'
    'MoDEJgwkhdClsKDGJ5dGVzLm5vdF9pbhpLdGhpcyBpbiBydWxlcy5ub3RfaW4gPyAnbXVzdCBu'
    'b3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbhLpAQ'
    'oCaXAYCiABKAhC1gHCSNIBCm4KCGJ5dGVzLmlwEhptdXN0IGJlIGEgdmFsaWQgSVAgYWRkcmVz'
    'cxpGIXJ1bGVzLmlwIHx8IHRoaXMuc2l6ZSgpID09IDAgfHwgdGhpcy5zaXplKCkgPT0gNCB8fC'
    'B0aGlzLnNpemUoKSA9PSAxNgpgCg5ieXRlcy5pcF9lbXB0eRIvdmFsdWUgaXMgZW1wdHksIHdo'
    'aWNoIGlzIG5vdCBhIHZhbGlkIElQIGFkZHJlc3MaHSFydWxlcy5pcCB8fCB0aGlzLnNpemUoKS'
    'AhPSAwSABSAmlwEuQBCgRpcHY0GAsgASgIQs0BwkjJAQpfCgpieXRlcy5pcHY0EhxtdXN0IGJl'
    'IGEgdmFsaWQgSVB2NCBhZGRyZXNzGjMhcnVsZXMuaXB2NCB8fCB0aGlzLnNpemUoKSA9PSAwIH'
    'x8IHRoaXMuc2l6ZSgpID09IDQKZgoQYnl0ZXMuaXB2NF9lbXB0eRIxdmFsdWUgaXMgZW1wdHks'
    'IHdoaWNoIGlzIG5vdCBhIHZhbGlkIElQdjQgYWRkcmVzcxofIXJ1bGVzLmlwdjQgfHwgdGhpcy'
    '5zaXplKCkgIT0gMEgAUgRpcHY0EuUBCgRpcHY2GAwgASgIQs4BwkjKAQpgCgpieXRlcy5pcHY2'
    'EhxtdXN0IGJlIGEgdmFsaWQgSVB2NiBhZGRyZXNzGjQhcnVsZXMuaXB2NiB8fCB0aGlzLnNpem'
    'UoKSA9PSAwIHx8IHRoaXMuc2l6ZSgpID09IDE2CmYKEGJ5dGVzLmlwdjZfZW1wdHkSMXZhbHVl'
    'IGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBJUHY2IGFkZHJlc3MaHyFydWxlcy5pcH'
    'Y2IHx8IHRoaXMuc2l6ZSgpICE9IDBIAFIEaXB2NhLVAQoEdXVpZBgPIAEoCEK+AcJIugEKWAoK'
    'Ynl0ZXMudXVpZBIUbXVzdCBiZSBhIHZhbGlkIFVVSUQaNCFydWxlcy51dWlkIHx8IHRoaXMuc2'
    'l6ZSgpID09IDAgfHwgdGhpcy5zaXplKCkgPT0gMTYKXgoQYnl0ZXMudXVpZF9lbXB0eRIpdmFs'
    'dWUgaXMgZW1wdHksIHdoaWNoIGlzIG5vdCBhIHZhbGlkIFVVSUQaHyFydWxlcy51dWlkIHx8IH'
    'RoaXMuc2l6ZSgpICE9IDBIAFIEdXVpZBI0CgdleGFtcGxlGA4gAygMQhrCSBcKFQoNYnl0ZXMu'
    'ZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIACQgwKCndlbGxfa25vd24=');

@$core.Deprecated('Use enumRulesDescriptor instead')
const EnumRules$json = {
  '1': 'EnumRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'const'},
    {'1': 'defined_only', '3': 2, '4': 1, '5': 8, '10': 'definedOnly'},
    {'1': 'in', '3': 3, '4': 3, '5': 5, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 4, '4': 3, '5': 5, '8': {}, '10': 'notIn'},
    {'1': 'example', '3': 5, '4': 3, '5': 5, '8': {}, '10': 'example'},
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
};

/// Descriptor for `EnumRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumRulesDescriptor = $convert.base64Decode(
    'CglFbnVtUnVsZXMSgwEKBWNvbnN0GAEgASgFQm3CSGoKaAoKZW51bS5jb25zdBpadGhpcyAhPS'
    'BnZXRGaWVsZChydWxlcywgJ2NvbnN0JykgPyAnbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtnZXRG'
    'aWVsZChydWxlcywgJ2NvbnN0JyldKSA6ICcnUgVjb25zdBIhCgxkZWZpbmVkX29ubHkYAiABKA'
    'hSC2RlZmluZWRPbmx5EnwKAmluGAMgAygFQmzCSGkKZwoHZW51bS5pbhpcISh0aGlzIGluIGdl'
    'dEZpZWxkKHJ1bGVzLCAnaW4nKSkgPyAnbXVzdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW2dldE'
    'ZpZWxkKHJ1bGVzLCAnaW4nKV0pIDogJydSAmluEnYKBm5vdF9pbhgEIAMoBUJfwkhcCloKC2Vu'
    'dW0ubm90X2luGkt0aGlzIGluIHJ1bGVzLm5vdF9pbiA/ICdtdXN0IG5vdCBiZSBpbiBsaXN0IC'
    'VzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdEluEjMKB2V4YW1wbGUYBSADKAVC'
    'GcJIFgoUCgxlbnVtLmV4YW1wbGUaBHRydWVSB2V4YW1wbGUqCQjoBxCAgICAAg==');

@$core.Deprecated('Use repeatedRulesDescriptor instead')
const RepeatedRules$json = {
  '1': 'RepeatedRules',
  '2': [
    {'1': 'min_items', '3': 1, '4': 1, '5': 4, '8': {}, '10': 'minItems'},
    {'1': 'max_items', '3': 2, '4': 1, '5': 4, '8': {}, '10': 'maxItems'},
    {'1': 'unique', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'unique'},
    {
      '1': 'items',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldRules',
      '10': 'items'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
};

/// Descriptor for `RepeatedRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedRulesDescriptor = $convert.base64Decode(
    'Cg1SZXBlYXRlZFJ1bGVzEqABCgltaW5faXRlbXMYASABKARCggHCSH8KfQoScmVwZWF0ZWQubW'
    'luX2l0ZW1zGmd1aW50KHRoaXMuc2l6ZSgpKSA8IHJ1bGVzLm1pbl9pdGVtcyA/ICdtdXN0IGNv'
    'bnRhaW4gYXQgbGVhc3QgJWQgaXRlbShzKScuZm9ybWF0KFtydWxlcy5taW5faXRlbXNdKSA6IC'
    'cnUghtaW5JdGVtcxKmAQoJbWF4X2l0ZW1zGAIgASgEQogBwkiEAQqBAQoScmVwZWF0ZWQubWF4'
    'X2l0ZW1zGmt1aW50KHRoaXMuc2l6ZSgpKSA+IHJ1bGVzLm1heF9pdGVtcyA/ICdtdXN0IGNvbn'
    'RhaW4gbm8gbW9yZSB0aGFuICVzIGl0ZW0ocyknLmZvcm1hdChbcnVsZXMubWF4X2l0ZW1zXSkg'
    'OiAnJ1IIbWF4SXRlbXMSeAoGdW5pcXVlGAMgASgIQmDCSF0KWwoPcmVwZWF0ZWQudW5pcXVlEi'
    'hyZXBlYXRlZCB2YWx1ZSBtdXN0IGNvbnRhaW4gdW5pcXVlIGl0ZW1zGh4hcnVsZXMudW5pcXVl'
    'IHx8IHRoaXMudW5pcXVlKClSBnVuaXF1ZRIuCgVpdGVtcxgEIAEoCzIYLmJ1Zi52YWxpZGF0ZS'
    '5GaWVsZFJ1bGVzUgVpdGVtcyoJCOgHEICAgIAC');

@$core.Deprecated('Use mapRulesDescriptor instead')
const MapRules$json = {
  '1': 'MapRules',
  '2': [
    {'1': 'min_pairs', '3': 1, '4': 1, '5': 4, '8': {}, '10': 'minPairs'},
    {'1': 'max_pairs', '3': 2, '4': 1, '5': 4, '8': {}, '10': 'maxPairs'},
    {
      '1': 'keys',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldRules',
      '10': 'keys'
    },
    {
      '1': 'values',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldRules',
      '10': 'values'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
};

/// Descriptor for `MapRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapRulesDescriptor = $convert.base64Decode(
    'CghNYXBSdWxlcxKZAQoJbWluX3BhaXJzGAEgASgEQnzCSHkKdwoNbWFwLm1pbl9wYWlycxpmdW'
    'ludCh0aGlzLnNpemUoKSkgPCBydWxlcy5taW5fcGFpcnMgPyAnbWFwIG11c3QgYmUgYXQgbGVh'
    'c3QgJWQgZW50cmllcycuZm9ybWF0KFtydWxlcy5taW5fcGFpcnNdKSA6ICcnUghtaW5QYWlycx'
    'KYAQoJbWF4X3BhaXJzGAIgASgEQnvCSHgKdgoNbWFwLm1heF9wYWlycxpldWludCh0aGlzLnNp'
    'emUoKSkgPiBydWxlcy5tYXhfcGFpcnMgPyAnbWFwIG11c3QgYmUgYXQgbW9zdCAlZCBlbnRyaW'
    'VzJy5mb3JtYXQoW3J1bGVzLm1heF9wYWlyc10pIDogJydSCG1heFBhaXJzEiwKBGtleXMYBCAB'
    'KAsyGC5idWYudmFsaWRhdGUuRmllbGRSdWxlc1IEa2V5cxIwCgZ2YWx1ZXMYBSABKAsyGC5idW'
    'YudmFsaWRhdGUuRmllbGRSdWxlc1IGdmFsdWVzKgkI6AcQgICAgAI=');

@$core.Deprecated('Use anyRulesDescriptor instead')
const AnyRules$json = {
  '1': 'AnyRules',
  '2': [
    {'1': 'in', '3': 2, '4': 3, '5': 9, '10': 'in'},
    {'1': 'not_in', '3': 3, '4': 3, '5': 9, '10': 'notIn'},
  ],
};

/// Descriptor for `AnyRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anyRulesDescriptor = $convert.base64Decode(
    'CghBbnlSdWxlcxIOCgJpbhgCIAMoCVICaW4SFQoGbm90X2luGAMgAygJUgVub3RJbg==');

@$core.Deprecated('Use durationRulesDescriptor instead')
const DurationRules$json = {
  '1': 'DurationRules',
  '2': [
    {
      '1': 'const',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'const'
    },
    {
      '1': 'lt',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '9': 0,
      '10': 'lt'
    },
    {
      '1': 'lte',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '9': 0,
      '10': 'lte'
    },
    {
      '1': 'gt',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '9': 1,
      '10': 'gt'
    },
    {
      '1': 'gte',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '9': 1,
      '10': 'gte'
    },
    {
      '1': 'in',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'in'
    },
    {
      '1': 'not_in',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'notIn'
    },
    {
      '1': 'example',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'example'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `DurationRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List durationRulesDescriptor = $convert.base64Decode(
    'Cg1EdXJhdGlvblJ1bGVzEqIBCgVjb25zdBgCIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdG'
    'lvbkJxwkhuCmwKDmR1cmF0aW9uLmNvbnN0Glp0aGlzICE9IGdldEZpZWxkKHJ1bGVzLCAnY29u'
    'c3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnY29uc3QnKV'
    '0pIDogJydSBWNvbnN0EqYBCgJsdBgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkJ5'
    'wkh2CnQKC2R1cmF0aW9uLmx0GmUhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJi'
    'YgdGhpcyA+PSBydWxlcy5sdD8gJ211c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVz'
    'Lmx0XSkgOiAnJ0gAUgJsdBK5AQoDbHRlGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW'
    '9uQokBwkiFAQqCAQoMZHVyYXRpb24ubHRlGnIhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxl'
    'cy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT8gJ211c3QgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIH'
    'RvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRlEqcHCgJndBgFIAEoCzIZLmdv'
    'b2dsZS5wcm90b2J1Zi5EdXJhdGlvbkL5BsJI9QYKdwoLZHVyYXRpb24uZ3QaaCFoYXMocnVsZX'
    'MubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAnbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrABCg5kdXJhdGlvbi5ndF'
    '9sdBqdAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPj0g'
    'cnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcy'
    'BhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKuAEK'
    'GGR1cmF0aW9uLmd0X2x0X2V4Y2x1c2l2ZRqbAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPC'
    'BydWxlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ211'
    'c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndC'
    'wgcnVsZXMubHRdKSA6ICcnCsABCg9kdXJhdGlvbi5ndF9sdGUarAFoYXMocnVsZXMubHRlKSAm'
    'JiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8PS'
    'BydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuIG9yIGVx'
    'dWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnCsgBChlkdXJhdG'
    'lvbi5ndF9sdGVfZXhjbHVzaXZlGqoBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVs'
    'ZXMuZ3QgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IG'
    'JlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChb'
    'cnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJydIAVICZ3QS9AcKA2d0ZRgGIAEoCzIZLmdvb2dsZS'
    '5wcm90b2J1Zi5EdXJhdGlvbkLEB8JIwAcKhQEKDGR1cmF0aW9uLmd0ZRp1IWhhcyhydWxlcy5s'
    'dCkgJiYgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPCBydWxlcy5ndGU/ICdtdXN0IGJlIGdyZW'
    'F0ZXIgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCr8BCg9k'
    'dXJhdGlvbi5ndGVfbHQaqwFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZS'
    'AmJiAodGhpcyA+PSBydWxlcy5sdCB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3Jl'
    'YXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZX'
    'MuZ3RlLCBydWxlcy5sdF0pIDogJycKxwEKGWR1cmF0aW9uLmd0ZV9sdF9leGNsdXNpdmUaqQFo'
    'YXMocnVsZXMubHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdCA8PSB0aG'
    'lzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6IC'
    'cnCs8BChBkdXJhdGlvbi5ndGVfbHRlGroBaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49'
    'IHJ1bGVzLmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ2'
    '11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCtcBChpkdXJhdG'
    'lvbi5ndGVfbHRlX2V4Y2x1c2l2ZRq4AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1'
    'bGVzLmd0ZSAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKT8gJ211c3'
    'QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0'
    'byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEpsBCgJpbh'
    'gHIAMoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkJwwkhtCmsKC2R1cmF0aW9uLmluGlwh'
    'KHRoaXMgaW4gZ2V0RmllbGQocnVsZXMsICdpbicpKSA/ICdtdXN0IGJlIGluIGxpc3QgJXMnLm'
    'Zvcm1hdChbZ2V0RmllbGQocnVsZXMsICdpbicpXSkgOiAnJ1ICaW4SlQEKBm5vdF9pbhgIIAMo'
    'CzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkJjwkhgCl4KD2R1cmF0aW9uLm5vdF9pbhpLdG'
    'hpcyBpbiBydWxlcy5ub3RfaW4gPyAnbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFty'
    'dWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbhJSCgdleGFtcGxlGAkgAygLMhkuZ29vZ2xlLnByb3'
    'RvYnVmLkR1cmF0aW9uQh3CSBoKGAoQZHVyYXRpb24uZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJ'
    'COgHEICAgIACQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW4=');

@$core.Deprecated('Use fieldMaskRulesDescriptor instead')
const FieldMaskRules$json = {
  '1': 'FieldMaskRules',
  '2': [
    {
      '1': 'const',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '8': {},
      '10': 'const'
    },
    {'1': 'in', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 3, '4': 3, '5': 9, '8': {}, '10': 'notIn'},
    {
      '1': 'example',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.FieldMask',
      '8': {},
      '10': 'example'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
};

/// Descriptor for `FieldMaskRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldMaskRulesDescriptor = $convert.base64Decode(
    'Cg5GaWVsZE1hc2tSdWxlcxLAAQoFY29uc3QYASABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbG'
    'RNYXNrQo0BwkiJAQqGAQoQZmllbGRfbWFzay5jb25zdBpydGhpcy5wYXRocyAhPSBnZXRGaWVs'
    'ZChydWxlcywgJ2NvbnN0JykucGF0aHMgPyAnbXVzdCBlcXVhbCBwYXRocyAlcycuZm9ybWF0KF'
    'tnZXRGaWVsZChydWxlcywgJ2NvbnN0JykucGF0aHNdKSA6ICcnUgVjb25zdBLXAQoCaW4YAiAD'
    'KAlCxgHCSMIBCr8BCg1maWVsZF9tYXNrLmluGq0BIXRoaXMucGF0aHMuYWxsKHAsIHAgaW4gZ2'
    'V0RmllbGQocnVsZXMsICdpbicpIHx8IGdldEZpZWxkKHJ1bGVzLCAnaW4nKS5leGlzdHMoZiwg'
    'cC5zdGFydHNXaXRoKGYrJy4nKSkpID8gJ211c3Qgb25seSBjb250YWluIHBhdGhzIGluICVzJy'
    '5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnaW4nKV0pIDogJydSAmluEvQBCgZub3RfaW4YAyAD'
    'KAlC3AHCSNgBCtUBChFmaWVsZF9tYXNrLm5vdF9pbhq/ASF0aGlzLnBhdGhzLmFsbChwLCAhKH'
    'AgaW4gZ2V0RmllbGQocnVsZXMsICdub3RfaW4nKSB8fCBnZXRGaWVsZChydWxlcywgJ25vdF9p'
    'bicpLmV4aXN0cyhmLCBwLnN0YXJ0c1dpdGgoZisnLicpKSkpID8gJ211c3Qgbm90IGNvbnRhaW'
    '4gYW55IHBhdGhzIGluICVzJy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnbm90X2luJyldKSA6'
    'ICcnUgVub3RJbhJVCgdleGFtcGxlGAQgAygLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza0'
    'IfwkgcChoKEmZpZWxkX21hc2suZXhhbXBsZRoEdHJ1ZVIHZXhhbXBsZSoJCOgHEICAgIAC');

@$core.Deprecated('Use timestampRulesDescriptor instead')
const TimestampRules$json = {
  '1': 'TimestampRules',
  '2': [
    {
      '1': 'const',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'const'
    },
    {
      '1': 'lt',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '9': 0,
      '10': 'lt'
    },
    {
      '1': 'lte',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '9': 0,
      '10': 'lte'
    },
    {'1': 'lt_now', '3': 7, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ltNow'},
    {
      '1': 'gt',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '9': 1,
      '10': 'gt'
    },
    {
      '1': 'gte',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '9': 1,
      '10': 'gte'
    },
    {'1': 'gt_now', '3': 8, '4': 1, '5': 8, '8': {}, '9': 1, '10': 'gtNow'},
    {
      '1': 'within',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '8': {},
      '10': 'within'
    },
    {
      '1': 'example',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': {},
      '10': 'example'
    },
  ],
  '5': [
    {'1': 1000, '2': 536870912},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
  ],
};

/// Descriptor for `TimestampRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampRulesDescriptor = $convert.base64Decode(
    'Cg5UaW1lc3RhbXBSdWxlcxKkAQoFY29uc3QYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wQnLCSG8KbQoPdGltZXN0YW1wLmNvbnN0Glp0aGlzICE9IGdldEZpZWxkKHJ1bGVzLCAn'
    'Y29uc3QnKSA/ICdtdXN0IGVxdWFsICVzJy5mb3JtYXQoW2dldEZpZWxkKHJ1bGVzLCAnY29uc3'
    'QnKV0pIDogJydSBWNvbnN0EqgBCgJsdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBCesJIdwp1Cgx0aW1lc3RhbXAubHQaZSFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLm'
    'd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAnbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChb'
    'cnVsZXMubHRdKSA6ICcnSABSAmx0ErsBCgNsdGUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVG'
    'ltZXN0YW1wQooBwkiGAQqDAQoNdGltZXN0YW1wLmx0ZRpyIWhhcyhydWxlcy5ndGUpICYmICFo'
    'YXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICdtdXN0IGJlIGxlc3MgdGhhbiBvci'
    'BlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABSA2x0ZRJtCgZsdF9ub3cY'
    'ByABKAhCVMJIUQpPChB0aW1lc3RhbXAubHRfbm93GjsocnVsZXMubHRfbm93ICYmIHRoaXMgPi'
    'Bub3cpID8gJ211c3QgYmUgbGVzcyB0aGFuIG5vdycgOiAnJ0gAUgVsdE5vdxKtBwoCZ3QYBSAB'
    'KAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQv4Gwkj6Bgp4Cgx0aW1lc3RhbXAuZ3QaaC'
    'FoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAn'
    'bXVzdCBiZSBncmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrEBCg90aW'
    '1lc3RhbXAuZ3RfbHQanQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ICYm'
    'ICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPD0gcnVsZXMuZ3QpPyAnbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRd'
    'KSA6ICcnCrkBChl0aW1lc3RhbXAuZ3RfbHRfZXhjbHVzaXZlGpsBaGFzKHJ1bGVzLmx0KSAmJi'
    'BydWxlcy5sdCA8IHJ1bGVzLmd0ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVs'
    'ZXMuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYX'
    'QoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKwQEKEHRpbWVzdGFtcC5ndF9sdGUarAFoYXMo'
    'cnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdG'
    'UgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVz'
    'cyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6IC'
    'cnCskBChp0aW1lc3RhbXAuZ3RfbHRlX2V4Y2x1c2l2ZRqqAWhhcyhydWxlcy5sdGUpICYmIHJ1'
    'bGVzLmx0ZSA8IHJ1bGVzLmd0ICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPD0gcnVsZX'
    'MuZ3QpPyAnbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRv'
    'ICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnSAFSAmd0EvoHCgNndGUYBi'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQskHwkjFBwqGAQoNdGltZXN0YW1wLmd0'
    'ZRp1IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPCBydWxlcy5ndG'
    'U/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5n'
    'dGVdKSA6ICcnCsABChB0aW1lc3RhbXAuZ3RlX2x0GqsBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy'
    '5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8IHJ1bGVzLmd0'
    'ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIC'
    'VzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCsgBChp0aW1lc3RhbXAuZ3Rl'
    'X2x0X2V4Y2x1c2l2ZRqpAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJi'
    'YgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0'
    'ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3'
    'RlLCBydWxlcy5sdF0pIDogJycK0AEKEXRpbWVzdGFtcC5ndGVfbHRlGroBaGFzKHJ1bGVzLmx0'
    'ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aG'
    'lzIDwgcnVsZXMuZ3RlKT8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFu'
    'ZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdG'
    'VdKSA6ICcnCtgBCht0aW1lc3RhbXAuZ3RlX2x0ZV9leGNsdXNpdmUauAFoYXMocnVsZXMubHRl'
    'KSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcy'
    'A8IHJ1bGVzLmd0ZSk/ICdtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBs'
    'ZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKS'
    'A6ICcnSAFSA2d0ZRJwCgZndF9ub3cYCCABKAhCV8JIVApSChB0aW1lc3RhbXAuZ3Rfbm93Gj4o'
    'cnVsZXMuZ3Rfbm93ICYmIHRoaXMgPCBub3cpID8gJ211c3QgYmUgZ3JlYXRlciB0aGFuIG5vdy'
    'cgOiAnJ0gBUgVndE5vdxK5AQoGd2l0aGluGAkgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0'
    'aW9uQoUBwkiBAQp/ChB0aW1lc3RhbXAud2l0aGluGmt0aGlzIDwgbm93LXJ1bGVzLndpdGhpbi'
    'B8fCB0aGlzID4gbm93K3J1bGVzLndpdGhpbiA/ICdtdXN0IGJlIHdpdGhpbiAlcyBvZiBub3cn'
    'LmZvcm1hdChbcnVsZXMud2l0aGluXSkgOiAnJ1IGd2l0aGluElQKB2V4YW1wbGUYCiADKAsyGi'
    '5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQh7CSBsKGQoRdGltZXN0YW1wLmV4YW1wbGUaBHRy'
    'dWVSB2V4YW1wbGUqCQjoBxCAgICAAkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu');

@$core.Deprecated('Use violationsDescriptor instead')
const Violations$json = {
  '1': 'Violations',
  '2': [
    {
      '1': 'violations',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.Violation',
      '10': 'violations'
    },
  ],
};

/// Descriptor for `Violations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List violationsDescriptor = $convert.base64Decode(
    'CgpWaW9sYXRpb25zEjcKCnZpb2xhdGlvbnMYASADKAsyFy5idWYudmFsaWRhdGUuVmlvbGF0aW'
    '9uUgp2aW9sYXRpb25z');

@$core.Deprecated('Use violationDescriptor instead')
const Violation$json = {
  '1': 'Violation',
  '2': [
    {
      '1': 'field',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldPath',
      '10': 'field'
    },
    {
      '1': 'rule',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.buf.validate.FieldPath',
      '10': 'rule'
    },
    {'1': 'rule_id', '3': 2, '4': 1, '5': 9, '10': 'ruleId'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'for_key', '3': 4, '4': 1, '5': 8, '10': 'forKey'},
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['field_path'],
};

/// Descriptor for `Violation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List violationDescriptor = $convert.base64Decode(
    'CglWaW9sYXRpb24SLQoFZmllbGQYBSABKAsyFy5idWYudmFsaWRhdGUuRmllbGRQYXRoUgVmaW'
    'VsZBIrCgRydWxlGAYgASgLMhcuYnVmLnZhbGlkYXRlLkZpZWxkUGF0aFIEcnVsZRIXCgdydWxl'
    'X2lkGAIgASgJUgZydWxlSWQSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZRIXCgdmb3Jfa2V5GA'
    'QgASgIUgZmb3JLZXlKBAgBEAJSCmZpZWxkX3BhdGg=');

@$core.Deprecated('Use fieldPathDescriptor instead')
const FieldPath$json = {
  '1': 'FieldPath',
  '2': [
    {
      '1': 'elements',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.buf.validate.FieldPathElement',
      '10': 'elements'
    },
  ],
};

/// Descriptor for `FieldPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldPathDescriptor = $convert.base64Decode(
    'CglGaWVsZFBhdGgSOgoIZWxlbWVudHMYASADKAsyHi5idWYudmFsaWRhdGUuRmllbGRQYXRoRW'
    'xlbWVudFIIZWxlbWVudHM=');

@$core.Deprecated('Use fieldPathElementDescriptor instead')
const FieldPathElement$json = {
  '1': 'FieldPathElement',
  '2': [
    {'1': 'field_number', '3': 1, '4': 1, '5': 5, '10': 'fieldNumber'},
    {'1': 'field_name', '3': 2, '4': 1, '5': 9, '10': 'fieldName'},
    {
      '1': 'field_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.FieldDescriptorProto.Type',
      '10': 'fieldType'
    },
    {
      '1': 'key_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.FieldDescriptorProto.Type',
      '10': 'keyType'
    },
    {
      '1': 'value_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.FieldDescriptorProto.Type',
      '10': 'valueType'
    },
    {'1': 'index', '3': 6, '4': 1, '5': 4, '9': 0, '10': 'index'},
    {'1': 'bool_key', '3': 7, '4': 1, '5': 8, '9': 0, '10': 'boolKey'},
    {'1': 'int_key', '3': 8, '4': 1, '5': 3, '9': 0, '10': 'intKey'},
    {'1': 'uint_key', '3': 9, '4': 1, '5': 4, '9': 0, '10': 'uintKey'},
    {'1': 'string_key', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'stringKey'},
  ],
  '8': [
    {'1': 'subscript'},
  ],
};

/// Descriptor for `FieldPathElement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldPathElementDescriptor = $convert.base64Decode(
    'ChBGaWVsZFBhdGhFbGVtZW50EiEKDGZpZWxkX251bWJlchgBIAEoBVILZmllbGROdW1iZXISHQ'
    'oKZmllbGRfbmFtZRgCIAEoCVIJZmllbGROYW1lEkkKCmZpZWxkX3R5cGUYAyABKA4yKi5nb29n'
    'bGUucHJvdG9idWYuRmllbGREZXNjcmlwdG9yUHJvdG8uVHlwZVIJZmllbGRUeXBlEkUKCGtleV'
    '90eXBlGAQgASgOMiouZ29vZ2xlLnByb3RvYnVmLkZpZWxkRGVzY3JpcHRvclByb3RvLlR5cGVS'
    'B2tleVR5cGUSSQoKdmFsdWVfdHlwZRgFIAEoDjIqLmdvb2dsZS5wcm90b2J1Zi5GaWVsZERlc2'
    'NyaXB0b3JQcm90by5UeXBlUgl2YWx1ZVR5cGUSFgoFaW5kZXgYBiABKARIAFIFaW5kZXgSGwoI'
    'Ym9vbF9rZXkYByABKAhIAFIHYm9vbEtleRIZCgdpbnRfa2V5GAggASgDSABSBmludEtleRIbCg'
    'h1aW50X2tleRgJIAEoBEgAUgd1aW50S2V5Eh8KCnN0cmluZ19rZXkYCiABKAlIAFIJc3RyaW5n'
    'S2V5QgsKCXN1YnNjcmlwdA==');
