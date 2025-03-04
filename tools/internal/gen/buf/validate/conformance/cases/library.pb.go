// Copyright 2023-2025 Buf Technologies, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.36.5
// 	protoc        (unknown)
// source: buf/validate/conformance/cases/library.proto

package cases

import (
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
	unsafe "unsafe"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type IsHostname struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsHostname) Reset() {
	*x = IsHostname{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsHostname) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsHostname) ProtoMessage() {}

func (x *IsHostname) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsHostname.ProtoReflect.Descriptor instead.
func (*IsHostname) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{0}
}

func (x *IsHostname) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsHostAndPort struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	PortRequired  bool                   `protobuf:"varint,2,opt,name=port_required,json=portRequired,proto3" json:"port_required,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsHostAndPort) Reset() {
	*x = IsHostAndPort{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsHostAndPort) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsHostAndPort) ProtoMessage() {}

func (x *IsHostAndPort) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsHostAndPort.ProtoReflect.Descriptor instead.
func (*IsHostAndPort) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{1}
}

func (x *IsHostAndPort) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsHostAndPort) GetPortRequired() bool {
	if x != nil {
		return x.PortRequired
	}
	return false
}

type IsIpPrefix struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	Version       *int32                 `protobuf:"varint,2,opt,name=version,proto3,oneof" json:"version,omitempty"`
	Strict        *bool                  `protobuf:"varint,3,opt,name=strict,proto3,oneof" json:"strict,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsIpPrefix) Reset() {
	*x = IsIpPrefix{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsIpPrefix) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsIpPrefix) ProtoMessage() {}

func (x *IsIpPrefix) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsIpPrefix.ProtoReflect.Descriptor instead.
func (*IsIpPrefix) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{2}
}

func (x *IsIpPrefix) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsIpPrefix) GetVersion() int32 {
	if x != nil && x.Version != nil {
		return *x.Version
	}
	return 0
}

func (x *IsIpPrefix) GetStrict() bool {
	if x != nil && x.Strict != nil {
		return *x.Strict
	}
	return false
}

type IsIp struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	Version       *int32                 `protobuf:"varint,2,opt,name=version,proto3,oneof" json:"version,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsIp) Reset() {
	*x = IsIp{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsIp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsIp) ProtoMessage() {}

func (x *IsIp) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsIp.ProtoReflect.Descriptor instead.
func (*IsIp) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{3}
}

func (x *IsIp) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

func (x *IsIp) GetVersion() int32 {
	if x != nil && x.Version != nil {
		return *x.Version
	}
	return 0
}

type IsEmail struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsEmail) Reset() {
	*x = IsEmail{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsEmail) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsEmail) ProtoMessage() {}

func (x *IsEmail) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsEmail.ProtoReflect.Descriptor instead.
func (*IsEmail) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{4}
}

func (x *IsEmail) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsUri struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsUri) Reset() {
	*x = IsUri{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsUri) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsUri) ProtoMessage() {}

func (x *IsUri) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsUri.ProtoReflect.Descriptor instead.
func (*IsUri) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{5}
}

func (x *IsUri) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

type IsUriRef struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           string                 `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *IsUriRef) Reset() {
	*x = IsUriRef{}
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *IsUriRef) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IsUriRef) ProtoMessage() {}

func (x *IsUriRef) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_library_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IsUriRef.ProtoReflect.Descriptor instead.
func (*IsUriRef) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_library_proto_rawDescGZIP(), []int{6}
}

func (x *IsUriRef) GetVal() string {
	if x != nil {
		return x.Val
	}
	return ""
}

var File_buf_validate_conformance_cases_library_proto protoreflect.FileDescriptor

var file_buf_validate_conformance_cases_library_proto_rawDesc = string([]byte{
	0x0a, 0x2c, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63,
	0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73,
	0x2f, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x1e,
	0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e,
	0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x1a, 0x1b,
	0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x76, 0x61, 0x6c,
	0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x51, 0x0a, 0x0a, 0x49,
	0x73, 0x48, 0x6f, 0x73, 0x74, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x3a, 0x31, 0xba, 0x48, 0x2e,
	0x1a, 0x2c, 0x0a, 0x13, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x68,
	0x6f, 0x73, 0x74, 0x6e, 0x61, 0x6d, 0x65, 0x1a, 0x15, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x61,
	0x6c, 0x2e, 0x69, 0x73, 0x48, 0x6f, 0x73, 0x74, 0x6e, 0x61, 0x6d, 0x65, 0x28, 0x29, 0x22, 0x93,
	0x01, 0x0a, 0x0d, 0x49, 0x73, 0x48, 0x6f, 0x73, 0x74, 0x41, 0x6e, 0x64, 0x50, 0x6f, 0x72, 0x74,
	0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x76,
	0x61, 0x6c, 0x12, 0x23, 0x0a, 0x0d, 0x70, 0x6f, 0x72, 0x74, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x69,
	0x72, 0x65, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0c, 0x70, 0x6f, 0x72, 0x74, 0x52,
	0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x3a, 0x4b, 0xba, 0x48, 0x48, 0x1a, 0x46, 0x0a, 0x18,
	0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x68, 0x6f, 0x73, 0x74, 0x5f,
	0x61, 0x6e, 0x64, 0x5f, 0x70, 0x6f, 0x72, 0x74, 0x1a, 0x2a, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76,
	0x61, 0x6c, 0x2e, 0x69, 0x73, 0x48, 0x6f, 0x73, 0x74, 0x41, 0x6e, 0x64, 0x50, 0x6f, 0x72, 0x74,
	0x28, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x70, 0x6f, 0x72, 0x74, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x69,
	0x72, 0x65, 0x64, 0x29, 0x22, 0xf0, 0x02, 0x0a, 0x0a, 0x49, 0x73, 0x49, 0x70, 0x50, 0x72, 0x65,
	0x66, 0x69, 0x78, 0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x03, 0x76, 0x61, 0x6c, 0x12, 0x1d, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x88, 0x01, 0x01, 0x12, 0x1b, 0x0a, 0x06, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x08, 0x48, 0x01, 0x52, 0x06, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x88, 0x01,
	0x01, 0x3a, 0xfc, 0x01, 0xba, 0x48, 0xf8, 0x01, 0x1a, 0xf5, 0x01, 0x0a, 0x14, 0x6c, 0x69, 0x62,
	0x72, 0x61, 0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x69, 0x70, 0x5f, 0x70, 0x72, 0x65, 0x66, 0x69,
	0x78, 0x1a, 0xdc, 0x01, 0x68, 0x61, 0x73, 0x28, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x29, 0x20, 0x26, 0x26, 0x20, 0x68, 0x61, 0x73, 0x28, 0x74, 0x68, 0x69,
	0x73, 0x2e, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x29, 0x20, 0x3f, 0x20, 0x74, 0x68, 0x69, 0x73,
	0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x49, 0x70, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x28,
	0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x2c, 0x20, 0x74, 0x68,
	0x69, 0x73, 0x2e, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x29, 0x20, 0x3a, 0x20, 0x68, 0x61, 0x73,
	0x28, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x29, 0x20, 0x3f,
	0x20, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x49, 0x70, 0x50, 0x72,
	0x65, 0x66, 0x69, 0x78, 0x28, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x29, 0x20, 0x3a, 0x20, 0x68, 0x61, 0x73, 0x28, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x73, 0x74,
	0x72, 0x69, 0x63, 0x74, 0x29, 0x20, 0x3f, 0x20, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x61, 0x6c,
	0x2e, 0x69, 0x73, 0x49, 0x70, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x28, 0x74, 0x68, 0x69, 0x73,
	0x2e, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x29, 0x20, 0x3a, 0x20, 0x74, 0x68, 0x69, 0x73, 0x2e,
	0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x49, 0x70, 0x50, 0x72, 0x65, 0x66, 0x69, 0x78, 0x28, 0x29,
	0x42, 0x0a, 0x0a, 0x08, 0x5f, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x42, 0x09, 0x0a, 0x07,
	0x5f, 0x73, 0x74, 0x72, 0x69, 0x63, 0x74, 0x22, 0x9c, 0x01, 0x0a, 0x04, 0x49, 0x73, 0x49, 0x70,
	0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x76,
	0x61, 0x6c, 0x12, 0x1d, 0x0a, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x05, 0x48, 0x00, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x88, 0x01,
	0x01, 0x3a, 0x57, 0xba, 0x48, 0x54, 0x1a, 0x52, 0x0a, 0x0d, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72,
	0x79, 0x2e, 0x69, 0x73, 0x5f, 0x69, 0x70, 0x1a, 0x41, 0x68, 0x61, 0x73, 0x28, 0x74, 0x68, 0x69,
	0x73, 0x2e, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x29, 0x20, 0x3f, 0x20, 0x74, 0x68, 0x69,
	0x73, 0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x49, 0x70, 0x28, 0x74, 0x68, 0x69, 0x73, 0x2e,
	0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x29, 0x20, 0x3a, 0x20, 0x74, 0x68, 0x69, 0x73, 0x2e,
	0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x49, 0x70, 0x28, 0x29, 0x42, 0x0a, 0x0a, 0x08, 0x5f, 0x76,
	0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x22, 0x48, 0x0a, 0x07, 0x49, 0x73, 0x45, 0x6d, 0x61, 0x69,
	0x6c, 0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03,
	0x76, 0x61, 0x6c, 0x3a, 0x2b, 0xba, 0x48, 0x28, 0x1a, 0x26, 0x0a, 0x10, 0x6c, 0x69, 0x62, 0x72,
	0x61, 0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x65, 0x6d, 0x61, 0x69, 0x6c, 0x1a, 0x12, 0x74, 0x68,
	0x69, 0x73, 0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x45, 0x6d, 0x61, 0x69, 0x6c, 0x28, 0x29,
	0x22, 0x42, 0x0a, 0x05, 0x49, 0x73, 0x55, 0x72, 0x69, 0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x3a, 0x27, 0xba, 0x48, 0x24,
	0x1a, 0x22, 0x0a, 0x0e, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x75,
	0x72, 0x69, 0x1a, 0x10, 0x74, 0x68, 0x69, 0x73, 0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x55,
	0x72, 0x69, 0x28, 0x29, 0x22, 0x4c, 0x0a, 0x08, 0x49, 0x73, 0x55, 0x72, 0x69, 0x52, 0x65, 0x66,
	0x12, 0x10, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x76,
	0x61, 0x6c, 0x3a, 0x2e, 0xba, 0x48, 0x2b, 0x1a, 0x29, 0x0a, 0x12, 0x6c, 0x69, 0x62, 0x72, 0x61,
	0x72, 0x79, 0x2e, 0x69, 0x73, 0x5f, 0x75, 0x72, 0x69, 0x5f, 0x72, 0x65, 0x66, 0x1a, 0x13, 0x74,
	0x68, 0x69, 0x73, 0x2e, 0x76, 0x61, 0x6c, 0x2e, 0x69, 0x73, 0x55, 0x72, 0x69, 0x52, 0x65, 0x66,
	0x28, 0x29, 0x42, 0xa3, 0x02, 0x0a, 0x22, 0x63, 0x6f, 0x6d, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76,
	0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61,
	0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x42, 0x0c, 0x4c, 0x69, 0x62, 0x72, 0x61,
	0x72, 0x79, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x53, 0x67, 0x69, 0x74, 0x68, 0x75,
	0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x62, 0x75, 0x66, 0x62, 0x75, 0x69, 0x6c, 0x64, 0x2f, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x74, 0x6f, 0x6f,
	0x6c, 0x73, 0x2f, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c, 0x2f, 0x67, 0x65, 0x6e, 0x2f,
	0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63, 0x6f, 0x6e,
	0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73, 0xa2, 0x02,
	0x04, 0x42, 0x56, 0x43, 0x43, 0xaa, 0x02, 0x1e, 0x42, 0x75, 0x66, 0x2e, 0x56, 0x61, 0x6c, 0x69,
	0x64, 0x61, 0x74, 0x65, 0x2e, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65,
	0x2e, 0x43, 0x61, 0x73, 0x65, 0x73, 0xca, 0x02, 0x1e, 0x42, 0x75, 0x66, 0x5c, 0x56, 0x61, 0x6c,
	0x69, 0x64, 0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63,
	0x65, 0x5c, 0x43, 0x61, 0x73, 0x65, 0x73, 0xe2, 0x02, 0x2a, 0x42, 0x75, 0x66, 0x5c, 0x56, 0x61,
	0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e,
	0x63, 0x65, 0x5c, 0x43, 0x61, 0x73, 0x65, 0x73, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61,
	0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x21, 0x42, 0x75, 0x66, 0x3a, 0x3a, 0x56, 0x61, 0x6c, 0x69,
	0x64, 0x61, 0x74, 0x65, 0x3a, 0x3a, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63,
	0x65, 0x3a, 0x3a, 0x43, 0x61, 0x73, 0x65, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
})

var (
	file_buf_validate_conformance_cases_library_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_cases_library_proto_rawDescData []byte
)

func file_buf_validate_conformance_cases_library_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_cases_library_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_cases_library_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_library_proto_rawDesc), len(file_buf_validate_conformance_cases_library_proto_rawDesc)))
	})
	return file_buf_validate_conformance_cases_library_proto_rawDescData
}

var file_buf_validate_conformance_cases_library_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_buf_validate_conformance_cases_library_proto_goTypes = []any{
	(*IsHostname)(nil),    // 0: buf.validate.conformance.cases.IsHostname
	(*IsHostAndPort)(nil), // 1: buf.validate.conformance.cases.IsHostAndPort
	(*IsIpPrefix)(nil),    // 2: buf.validate.conformance.cases.IsIpPrefix
	(*IsIp)(nil),          // 3: buf.validate.conformance.cases.IsIp
	(*IsEmail)(nil),       // 4: buf.validate.conformance.cases.IsEmail
	(*IsUri)(nil),         // 5: buf.validate.conformance.cases.IsUri
	(*IsUriRef)(nil),      // 6: buf.validate.conformance.cases.IsUriRef
}
var file_buf_validate_conformance_cases_library_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_library_proto_init() }
func file_buf_validate_conformance_cases_library_proto_init() {
	if File_buf_validate_conformance_cases_library_proto != nil {
		return
	}
	file_buf_validate_conformance_cases_library_proto_msgTypes[2].OneofWrappers = []any{}
	file_buf_validate_conformance_cases_library_proto_msgTypes[3].OneofWrappers = []any{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_library_proto_rawDesc), len(file_buf_validate_conformance_cases_library_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_library_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_library_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_cases_library_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_cases_library_proto = out.File
	file_buf_validate_conformance_cases_library_proto_goTypes = nil
	file_buf_validate_conformance_cases_library_proto_depIdxs = nil
}
