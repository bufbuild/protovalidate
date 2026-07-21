// This is a generated file - do not edit.
//
// Generated from buf/validate/conformance/cases/library.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use isHostnameDescriptor instead')
const IsHostname$json = {
  '1': 'IsHostname',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
  ],
  '7': {},
};

/// Descriptor for `IsHostname`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isHostnameDescriptor = $convert.base64Decode(
    'CgpJc0hvc3RuYW1lEhAKA3ZhbBgBIAEoCVIDdmFsOjG6SC4aLAoTbGlicmFyeS5pc19ob3N0bm'
    'FtZRoVdGhpcy52YWwuaXNIb3N0bmFtZSgp');

@$core.Deprecated('Use isHostAndPortDescriptor instead')
const IsHostAndPort$json = {
  '1': 'IsHostAndPort',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
    {'1': 'port_required', '3': 2, '4': 1, '5': 8, '10': 'portRequired'},
  ],
  '7': {},
};

/// Descriptor for `IsHostAndPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isHostAndPortDescriptor = $convert.base64Decode(
    'Cg1Jc0hvc3RBbmRQb3J0EhAKA3ZhbBgBIAEoCVIDdmFsEiMKDXBvcnRfcmVxdWlyZWQYAiABKA'
    'hSDHBvcnRSZXF1aXJlZDpLukhIGkYKGGxpYnJhcnkuaXNfaG9zdF9hbmRfcG9ydBoqdGhpcy52'
    'YWwuaXNIb3N0QW5kUG9ydCh0aGlzLnBvcnRfcmVxdWlyZWQp');

@$core.Deprecated('Use isIpPrefixDescriptor instead')
const IsIpPrefix$json = {
  '1': 'IsIpPrefix',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
    {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'version',
      '17': true
    },
    {'1': 'strict', '3': 3, '4': 1, '5': 8, '9': 1, '10': 'strict', '17': true},
  ],
  '7': {},
  '8': [
    {'1': '_version'},
    {'1': '_strict'},
  ],
};

/// Descriptor for `IsIpPrefix`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isIpPrefixDescriptor = $convert.base64Decode(
    'CgpJc0lwUHJlZml4EhAKA3ZhbBgBIAEoCVIDdmFsEh0KB3ZlcnNpb24YAiABKAVIAFIHdmVyc2'
    'lvbogBARIbCgZzdHJpY3QYAyABKAhIAVIGc3RyaWN0iAEBOvwBukj4ARr1AQoUbGlicmFyeS5p'
    'c19pcF9wcmVmaXga3AFoYXModGhpcy52ZXJzaW9uKSAmJiBoYXModGhpcy5zdHJpY3QpID8gdG'
    'hpcy52YWwuaXNJcFByZWZpeCh0aGlzLnZlcnNpb24sIHRoaXMuc3RyaWN0KSA6IGhhcyh0aGlz'
    'LnZlcnNpb24pID8gdGhpcy52YWwuaXNJcFByZWZpeCh0aGlzLnZlcnNpb24pIDogaGFzKHRoaX'
    'Muc3RyaWN0KSA/IHRoaXMudmFsLmlzSXBQcmVmaXgodGhpcy5zdHJpY3QpIDogdGhpcy52YWwu'
    'aXNJcFByZWZpeCgpQgoKCF92ZXJzaW9uQgkKB19zdHJpY3Q=');

@$core.Deprecated('Use isIpDescriptor instead')
const IsIp$json = {
  '1': 'IsIp',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
    {
      '1': 'version',
      '3': 2,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'version',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_version'},
  ],
};

/// Descriptor for `IsIp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isIpDescriptor = $convert.base64Decode(
    'CgRJc0lwEhAKA3ZhbBgBIAEoCVIDdmFsEh0KB3ZlcnNpb24YAiABKAVIAFIHdmVyc2lvbogBAT'
    'pXukhUGlIKDWxpYnJhcnkuaXNfaXAaQWhhcyh0aGlzLnZlcnNpb24pID8gdGhpcy52YWwuaXNJ'
    'cCh0aGlzLnZlcnNpb24pIDogdGhpcy52YWwuaXNJcCgpQgoKCF92ZXJzaW9u');

@$core.Deprecated('Use isEmailDescriptor instead')
const IsEmail$json = {
  '1': 'IsEmail',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
  ],
  '7': {},
};

/// Descriptor for `IsEmail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isEmailDescriptor = $convert.base64Decode(
    'CgdJc0VtYWlsEhAKA3ZhbBgBIAEoCVIDdmFsOiu6SCgaJgoQbGlicmFyeS5pc19lbWFpbBoSdG'
    'hpcy52YWwuaXNFbWFpbCgp');

@$core.Deprecated('Use isUriDescriptor instead')
const IsUri$json = {
  '1': 'IsUri',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
  ],
  '7': {},
};

/// Descriptor for `IsUri`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isUriDescriptor = $convert.base64Decode(
    'CgVJc1VyaRIQCgN2YWwYASABKAlSA3ZhbDonukgkGiIKDmxpYnJhcnkuaXNfdXJpGhB0aGlzLn'
    'ZhbC5pc1VyaSgp');

@$core.Deprecated('Use isUriRefDescriptor instead')
const IsUriRef$json = {
  '1': 'IsUriRef',
  '2': [
    {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
  ],
  '7': {},
};

/// Descriptor for `IsUriRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isUriRefDescriptor = $convert.base64Decode(
    'CghJc1VyaVJlZhIQCgN2YWwYASABKAlSA3ZhbDouukgrGikKEmxpYnJhcnkuaXNfdXJpX3JlZh'
    'oTdGhpcy52YWwuaXNVcmlSZWYoKQ==');
