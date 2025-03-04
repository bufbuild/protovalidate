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
// source: buf/validate/conformance/cases/messages.proto

package cases

import (
	_ "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	other_package "github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate/conformance/cases/other_package"
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

type TestMsg struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Const         string                 `protobuf:"bytes,1,opt,name=const,proto3" json:"const,omitempty"`
	Nested        *TestMsg               `protobuf:"bytes,2,opt,name=nested,proto3" json:"nested,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *TestMsg) Reset() {
	*x = TestMsg{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *TestMsg) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TestMsg) ProtoMessage() {}

func (x *TestMsg) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TestMsg.ProtoReflect.Descriptor instead.
func (*TestMsg) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{0}
}

func (x *TestMsg) GetConst() string {
	if x != nil {
		return x.Const
	}
	return ""
}

func (x *TestMsg) GetNested() *TestMsg {
	if x != nil {
		return x.Nested
	}
	return nil
}

type MessageNone struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *MessageNone_NoneMsg   `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageNone) Reset() {
	*x = MessageNone{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageNone) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageNone) ProtoMessage() {}

func (x *MessageNone) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageNone.ProtoReflect.Descriptor instead.
func (*MessageNone) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{1}
}

func (x *MessageNone) GetVal() *MessageNone_NoneMsg {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageDisabled struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           uint64                 `protobuf:"varint,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageDisabled) Reset() {
	*x = MessageDisabled{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageDisabled) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageDisabled) ProtoMessage() {}

func (x *MessageDisabled) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageDisabled.ProtoReflect.Descriptor instead.
func (*MessageDisabled) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{2}
}

func (x *MessageDisabled) GetVal() uint64 {
	if x != nil {
		return x.Val
	}
	return 0
}

type Message struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *TestMsg               `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *Message) Reset() {
	*x = Message{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *Message) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Message) ProtoMessage() {}

func (x *Message) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Message.ProtoReflect.Descriptor instead.
func (*Message) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{3}
}

func (x *Message) GetVal() *TestMsg {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageCrossPackage struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *other_package.Embed   `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageCrossPackage) Reset() {
	*x = MessageCrossPackage{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageCrossPackage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageCrossPackage) ProtoMessage() {}

func (x *MessageCrossPackage) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageCrossPackage.ProtoReflect.Descriptor instead.
func (*MessageCrossPackage) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{4}
}

func (x *MessageCrossPackage) GetVal() *other_package.Embed {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageSkip struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *TestMsg               `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageSkip) Reset() {
	*x = MessageSkip{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageSkip) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageSkip) ProtoMessage() {}

func (x *MessageSkip) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageSkip.ProtoReflect.Descriptor instead.
func (*MessageSkip) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{5}
}

func (x *MessageSkip) GetVal() *TestMsg {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageRequired struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *TestMsg               `protobuf:"bytes,1,opt,name=val,proto3" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageRequired) Reset() {
	*x = MessageRequired{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageRequired) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageRequired) ProtoMessage() {}

func (x *MessageRequired) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageRequired.ProtoReflect.Descriptor instead.
func (*MessageRequired) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{6}
}

func (x *MessageRequired) GetVal() *TestMsg {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageRequiredButOptional struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	Val           *TestMsg               `protobuf:"bytes,1,opt,name=val,proto3,oneof" json:"val,omitempty"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageRequiredButOptional) Reset() {
	*x = MessageRequiredButOptional{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[7]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageRequiredButOptional) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageRequiredButOptional) ProtoMessage() {}

func (x *MessageRequiredButOptional) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[7]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageRequiredButOptional.ProtoReflect.Descriptor instead.
func (*MessageRequiredButOptional) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{7}
}

func (x *MessageRequiredButOptional) GetVal() *TestMsg {
	if x != nil {
		return x.Val
	}
	return nil
}

type MessageRequiredOneof struct {
	state protoimpl.MessageState `protogen:"open.v1"`
	// Types that are valid to be assigned to One:
	//
	//	*MessageRequiredOneof_Val
	One           isMessageRequiredOneof_One `protobuf_oneof:"one"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageRequiredOneof) Reset() {
	*x = MessageRequiredOneof{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[8]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageRequiredOneof) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageRequiredOneof) ProtoMessage() {}

func (x *MessageRequiredOneof) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[8]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageRequiredOneof.ProtoReflect.Descriptor instead.
func (*MessageRequiredOneof) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{8}
}

func (x *MessageRequiredOneof) GetOne() isMessageRequiredOneof_One {
	if x != nil {
		return x.One
	}
	return nil
}

func (x *MessageRequiredOneof) GetVal() *TestMsg {
	if x != nil {
		if x, ok := x.One.(*MessageRequiredOneof_Val); ok {
			return x.Val
		}
	}
	return nil
}

type isMessageRequiredOneof_One interface {
	isMessageRequiredOneof_One()
}

type MessageRequiredOneof_Val struct {
	Val *TestMsg `protobuf:"bytes,1,opt,name=val,proto3,oneof"`
}

func (*MessageRequiredOneof_Val) isMessageRequiredOneof_One() {}

type MessageWith3DInside struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageWith3DInside) Reset() {
	*x = MessageWith3DInside{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[9]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageWith3DInside) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageWith3DInside) ProtoMessage() {}

func (x *MessageWith3DInside) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[9]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageWith3DInside.ProtoReflect.Descriptor instead.
func (*MessageWith3DInside) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{9}
}

type MessageNone_NoneMsg struct {
	state         protoimpl.MessageState `protogen:"open.v1"`
	unknownFields protoimpl.UnknownFields
	sizeCache     protoimpl.SizeCache
}

func (x *MessageNone_NoneMsg) Reset() {
	*x = MessageNone_NoneMsg{}
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[10]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *MessageNone_NoneMsg) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MessageNone_NoneMsg) ProtoMessage() {}

func (x *MessageNone_NoneMsg) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_conformance_cases_messages_proto_msgTypes[10]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MessageNone_NoneMsg.ProtoReflect.Descriptor instead.
func (*MessageNone_NoneMsg) Descriptor() ([]byte, []int) {
	return file_buf_validate_conformance_cases_messages_proto_rawDescGZIP(), []int{1, 0}
}

var File_buf_validate_conformance_cases_messages_proto protoreflect.FileDescriptor

var file_buf_validate_conformance_cases_messages_proto_rawDesc = string([]byte{
	0x0a, 0x2d, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63,
	0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73,
	0x2f, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12,
	0x1e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f,
	0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x1a,
	0x38, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x63, 0x6f,
	0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61, 0x73, 0x65, 0x73, 0x2f,
	0x6f, 0x74, 0x68, 0x65, 0x72, 0x5f, 0x70, 0x61, 0x63, 0x6b, 0x61, 0x67, 0x65, 0x2f, 0x65, 0x6d,
	0x62, 0x65, 0x64, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1b, 0x62, 0x75, 0x66, 0x2f, 0x76,
	0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x6c, 0x0a, 0x07, 0x54, 0x65, 0x73, 0x74, 0x4d, 0x73,
	0x67, 0x12, 0x20, 0x0a, 0x05, 0x63, 0x6f, 0x6e, 0x73, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x42, 0x0a, 0xba, 0x48, 0x07, 0x72, 0x05, 0x0a, 0x03, 0x66, 0x6f, 0x6f, 0x52, 0x05, 0x63, 0x6f,
	0x6e, 0x73, 0x74, 0x12, 0x3f, 0x0a, 0x06, 0x6e, 0x65, 0x73, 0x74, 0x65, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x27, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61,
	0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63,
	0x61, 0x73, 0x65, 0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4d, 0x73, 0x67, 0x52, 0x06, 0x6e, 0x65,
	0x73, 0x74, 0x65, 0x64, 0x22, 0x5f, 0x0a, 0x0b, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x4e,
	0x6f, 0x6e, 0x65, 0x12, 0x45, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x33, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e,
	0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65,
	0x73, 0x2e, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x4e, 0x6f, 0x6e, 0x65, 0x2e, 0x4e, 0x6f,
	0x6e, 0x65, 0x4d, 0x73, 0x67, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x1a, 0x09, 0x0a, 0x07, 0x4e, 0x6f,
	0x6e, 0x65, 0x4d, 0x73, 0x67, 0x22, 0x33, 0x0a, 0x0f, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x44, 0x69, 0x73, 0x61, 0x62, 0x6c, 0x65, 0x64, 0x12, 0x19, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x04, 0x42, 0x07, 0xba, 0x48, 0x04, 0x32, 0x02, 0x20, 0x7b, 0x52, 0x03,
	0x76, 0x61, 0x6c, 0x3a, 0x05, 0xba, 0x48, 0x02, 0x08, 0x01, 0x22, 0x44, 0x0a, 0x07, 0x4d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x12, 0x39, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x27, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74,
	0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61,
	0x73, 0x65, 0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4d, 0x73, 0x67, 0x52, 0x03, 0x76, 0x61, 0x6c,
	0x22, 0x5c, 0x0a, 0x13, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x43, 0x72, 0x6f, 0x73, 0x73,
	0x50, 0x61, 0x63, 0x6b, 0x61, 0x67, 0x65, 0x12, 0x45, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x33, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64,
	0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e,
	0x63, 0x61, 0x73, 0x65, 0x73, 0x2e, 0x6f, 0x74, 0x68, 0x65, 0x72, 0x5f, 0x70, 0x61, 0x63, 0x6b,
	0x61, 0x67, 0x65, 0x2e, 0x45, 0x6d, 0x62, 0x65, 0x64, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x22, 0x50,
	0x0a, 0x0b, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x53, 0x6b, 0x69, 0x70, 0x12, 0x41, 0x0a,
	0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x27, 0x2e, 0x62, 0x75, 0x66,
	0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72,
	0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x2e, 0x54, 0x65, 0x73, 0x74,
	0x4d, 0x73, 0x67, 0x42, 0x06, 0xba, 0x48, 0x03, 0xd8, 0x01, 0x03, 0x52, 0x03, 0x76, 0x61, 0x6c,
	0x22, 0x54, 0x0a, 0x0f, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52, 0x65, 0x71, 0x75, 0x69,
	0x72, 0x65, 0x64, 0x12, 0x41, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x27, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e,
	0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65,
	0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4d, 0x73, 0x67, 0x42, 0x06, 0xba, 0x48, 0x03, 0xc8, 0x01,
	0x01, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x22, 0x6c, 0x0a, 0x1a, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x42, 0x75, 0x74, 0x4f, 0x70, 0x74, 0x69,
	0x6f, 0x6e, 0x61, 0x6c, 0x12, 0x46, 0x0a, 0x03, 0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x27, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65,
	0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73,
	0x65, 0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4d, 0x73, 0x67, 0x42, 0x06, 0xba, 0x48, 0x03, 0xc8,
	0x01, 0x01, 0x48, 0x00, 0x52, 0x03, 0x76, 0x61, 0x6c, 0x88, 0x01, 0x01, 0x42, 0x06, 0x0a, 0x04,
	0x5f, 0x76, 0x61, 0x6c, 0x22, 0x69, 0x0a, 0x14, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52,
	0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x4f, 0x6e, 0x65, 0x6f, 0x66, 0x12, 0x43, 0x0a, 0x03,
	0x76, 0x61, 0x6c, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x27, 0x2e, 0x62, 0x75, 0x66, 0x2e,
	0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d,
	0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x2e, 0x54, 0x65, 0x73, 0x74, 0x4d,
	0x73, 0x67, 0x42, 0x06, 0xba, 0x48, 0x03, 0xc8, 0x01, 0x01, 0x48, 0x00, 0x52, 0x03, 0x76, 0x61,
	0x6c, 0x42, 0x0c, 0x0a, 0x03, 0x6f, 0x6e, 0x65, 0x12, 0x05, 0xba, 0x48, 0x02, 0x08, 0x01, 0x22,
	0x15, 0x0a, 0x13, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x57, 0x69, 0x74, 0x68, 0x33, 0x64,
	0x49, 0x6e, 0x73, 0x69, 0x64, 0x65, 0x42, 0xa4, 0x02, 0x0a, 0x22, 0x63, 0x6f, 0x6d, 0x2e, 0x62,
	0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x63, 0x6f, 0x6e, 0x66,
	0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x63, 0x61, 0x73, 0x65, 0x73, 0x42, 0x0d, 0x4d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x53,
	0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x62, 0x75, 0x66, 0x62, 0x75,
	0x69, 0x6c, 0x64, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74,
	0x65, 0x2f, 0x74, 0x6f, 0x6f, 0x6c, 0x73, 0x2f, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c,
	0x2f, 0x67, 0x65, 0x6e, 0x2f, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74,
	0x65, 0x2f, 0x63, 0x6f, 0x6e, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x63, 0x61,
	0x73, 0x65, 0x73, 0xa2, 0x02, 0x04, 0x42, 0x56, 0x43, 0x43, 0xaa, 0x02, 0x1e, 0x42, 0x75, 0x66,
	0x2e, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x43, 0x6f, 0x6e, 0x66, 0x6f, 0x72,
	0x6d, 0x61, 0x6e, 0x63, 0x65, 0x2e, 0x43, 0x61, 0x73, 0x65, 0x73, 0xca, 0x02, 0x1e, 0x42, 0x75,
	0x66, 0x5c, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66, 0x6f,
	0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x5c, 0x43, 0x61, 0x73, 0x65, 0x73, 0xe2, 0x02, 0x2a, 0x42,
	0x75, 0x66, 0x5c, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x5c, 0x43, 0x6f, 0x6e, 0x66,
	0x6f, 0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x5c, 0x43, 0x61, 0x73, 0x65, 0x73, 0x5c, 0x47, 0x50,
	0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x21, 0x42, 0x75, 0x66, 0x3a,
	0x3a, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x3a, 0x3a, 0x43, 0x6f, 0x6e, 0x66, 0x6f,
	0x72, 0x6d, 0x61, 0x6e, 0x63, 0x65, 0x3a, 0x3a, 0x43, 0x61, 0x73, 0x65, 0x73, 0x62, 0x06, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x33,
})

var (
	file_buf_validate_conformance_cases_messages_proto_rawDescOnce sync.Once
	file_buf_validate_conformance_cases_messages_proto_rawDescData []byte
)

func file_buf_validate_conformance_cases_messages_proto_rawDescGZIP() []byte {
	file_buf_validate_conformance_cases_messages_proto_rawDescOnce.Do(func() {
		file_buf_validate_conformance_cases_messages_proto_rawDescData = protoimpl.X.CompressGZIP(unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_messages_proto_rawDesc), len(file_buf_validate_conformance_cases_messages_proto_rawDesc)))
	})
	return file_buf_validate_conformance_cases_messages_proto_rawDescData
}

var file_buf_validate_conformance_cases_messages_proto_msgTypes = make([]protoimpl.MessageInfo, 11)
var file_buf_validate_conformance_cases_messages_proto_goTypes = []any{
	(*TestMsg)(nil),                    // 0: buf.validate.conformance.cases.TestMsg
	(*MessageNone)(nil),                // 1: buf.validate.conformance.cases.MessageNone
	(*MessageDisabled)(nil),            // 2: buf.validate.conformance.cases.MessageDisabled
	(*Message)(nil),                    // 3: buf.validate.conformance.cases.Message
	(*MessageCrossPackage)(nil),        // 4: buf.validate.conformance.cases.MessageCrossPackage
	(*MessageSkip)(nil),                // 5: buf.validate.conformance.cases.MessageSkip
	(*MessageRequired)(nil),            // 6: buf.validate.conformance.cases.MessageRequired
	(*MessageRequiredButOptional)(nil), // 7: buf.validate.conformance.cases.MessageRequiredButOptional
	(*MessageRequiredOneof)(nil),       // 8: buf.validate.conformance.cases.MessageRequiredOneof
	(*MessageWith3DInside)(nil),        // 9: buf.validate.conformance.cases.MessageWith3dInside
	(*MessageNone_NoneMsg)(nil),        // 10: buf.validate.conformance.cases.MessageNone.NoneMsg
	(*other_package.Embed)(nil),        // 11: buf.validate.conformance.cases.other_package.Embed
}
var file_buf_validate_conformance_cases_messages_proto_depIdxs = []int32{
	0,  // 0: buf.validate.conformance.cases.TestMsg.nested:type_name -> buf.validate.conformance.cases.TestMsg
	10, // 1: buf.validate.conformance.cases.MessageNone.val:type_name -> buf.validate.conformance.cases.MessageNone.NoneMsg
	0,  // 2: buf.validate.conformance.cases.Message.val:type_name -> buf.validate.conformance.cases.TestMsg
	11, // 3: buf.validate.conformance.cases.MessageCrossPackage.val:type_name -> buf.validate.conformance.cases.other_package.Embed
	0,  // 4: buf.validate.conformance.cases.MessageSkip.val:type_name -> buf.validate.conformance.cases.TestMsg
	0,  // 5: buf.validate.conformance.cases.MessageRequired.val:type_name -> buf.validate.conformance.cases.TestMsg
	0,  // 6: buf.validate.conformance.cases.MessageRequiredButOptional.val:type_name -> buf.validate.conformance.cases.TestMsg
	0,  // 7: buf.validate.conformance.cases.MessageRequiredOneof.val:type_name -> buf.validate.conformance.cases.TestMsg
	8,  // [8:8] is the sub-list for method output_type
	8,  // [8:8] is the sub-list for method input_type
	8,  // [8:8] is the sub-list for extension type_name
	8,  // [8:8] is the sub-list for extension extendee
	0,  // [0:8] is the sub-list for field type_name
}

func init() { file_buf_validate_conformance_cases_messages_proto_init() }
func file_buf_validate_conformance_cases_messages_proto_init() {
	if File_buf_validate_conformance_cases_messages_proto != nil {
		return
	}
	file_buf_validate_conformance_cases_messages_proto_msgTypes[7].OneofWrappers = []any{}
	file_buf_validate_conformance_cases_messages_proto_msgTypes[8].OneofWrappers = []any{
		(*MessageRequiredOneof_Val)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: unsafe.Slice(unsafe.StringData(file_buf_validate_conformance_cases_messages_proto_rawDesc), len(file_buf_validate_conformance_cases_messages_proto_rawDesc)),
			NumEnums:      0,
			NumMessages:   11,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_conformance_cases_messages_proto_goTypes,
		DependencyIndexes: file_buf_validate_conformance_cases_messages_proto_depIdxs,
		MessageInfos:      file_buf_validate_conformance_cases_messages_proto_msgTypes,
	}.Build()
	File_buf_validate_conformance_cases_messages_proto = out.File
	file_buf_validate_conformance_cases_messages_proto_goTypes = nil
	file_buf_validate_conformance_cases_messages_proto_depIdxs = nil
}
