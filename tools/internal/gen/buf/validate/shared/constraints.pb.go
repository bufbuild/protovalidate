// Copyright 2023 Buf Technologies, Inc.
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
// 	protoc-gen-go v1.34.2
// 	protoc        (unknown)
// source: buf/validate/shared/constraints.proto

package shared

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	descriptorpb "google.golang.org/protobuf/types/descriptorpb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// FieldConstraints encapsulates the rules for each type of field. Depending on
// the field, the correct set should be used to ensure proper validations.
type FieldConstraints struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// `cel` is a repeated field used to represent a textual expression
	// in the Common Expression Language (CEL) syntax. For more information on
	// CEL, [see our documentation](https://github.com/bufbuild/protovalidate/blob/main/docs/cel.md).
	//
	// ```proto
	//
	//	message MyMessage {
	//	  // The field `value` must be greater than 42.
	//	  optional int32 value = 1 [(buf.validate.shared.field).cel = {
	//	    id: "my_message.value",
	//	    message: "value must be greater than 42",
	//	    expression: "this > 42",
	//	  }];
	//	}
	//
	// ```
	Cel []*Constraint `protobuf:"bytes,1,rep,name=cel,proto3" json:"cel,omitempty"`
}

func (x *FieldConstraints) Reset() {
	*x = FieldConstraints{}
	if protoimpl.UnsafeEnabled {
		mi := &file_buf_validate_shared_constraints_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *FieldConstraints) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*FieldConstraints) ProtoMessage() {}

func (x *FieldConstraints) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_shared_constraints_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use FieldConstraints.ProtoReflect.Descriptor instead.
func (*FieldConstraints) Descriptor() ([]byte, []int) {
	return file_buf_validate_shared_constraints_proto_rawDescGZIP(), []int{0}
}

func (x *FieldConstraints) GetCel() []*Constraint {
	if x != nil {
		return x.Cel
	}
	return nil
}

// `Constraint` represents a validation rule written in the Common Expression
// Language (CEL) syntax. Each Constraint includes a unique identifier, an
// optional error message, and the CEL expression to evaluate. For more
// information on CEL, [see our documentation](https://github.com/bufbuild/protovalidate/blob/main/docs/cel.md).
//
// ```proto
//
//	message Foo {
//	  option (buf.validate.message).cel = {
//	    id: "foo.bar"
//	    message: "bar must be greater than 0"
//	    expression: "this.bar > 0"
//	  };
//	  int32 bar = 1;
//	}
//
// ```
type Constraint struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// `id` is a string that serves as a machine-readable name for this Constraint.
	// It should be unique within its scope, which could be either a message or a field.
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// `message` is an optional field that provides a human-readable error message
	// for this Constraint when the CEL expression evaluates to false. If a
	// non-empty message is provided, any strings resulting from the CEL
	// expression evaluation are ignored.
	Message string `protobuf:"bytes,2,opt,name=message,proto3" json:"message,omitempty"`
	// `expression` is the actual CEL expression that will be evaluated for
	// validation. This string must resolve to either a boolean or a string
	// value. If the expression evaluates to false or a non-empty string, the
	// validation is considered failed, and the message is rejected.
	Expression string `protobuf:"bytes,3,opt,name=expression,proto3" json:"expression,omitempty"`
}

func (x *Constraint) Reset() {
	*x = Constraint{}
	if protoimpl.UnsafeEnabled {
		mi := &file_buf_validate_shared_constraints_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Constraint) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Constraint) ProtoMessage() {}

func (x *Constraint) ProtoReflect() protoreflect.Message {
	mi := &file_buf_validate_shared_constraints_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Constraint.ProtoReflect.Descriptor instead.
func (*Constraint) Descriptor() ([]byte, []int) {
	return file_buf_validate_shared_constraints_proto_rawDescGZIP(), []int{1}
}

func (x *Constraint) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Constraint) GetMessage() string {
	if x != nil {
		return x.Message
	}
	return ""
}

func (x *Constraint) GetExpression() string {
	if x != nil {
		return x.Expression
	}
	return ""
}

var file_buf_validate_shared_constraints_proto_extTypes = []protoimpl.ExtensionInfo{
	{
		ExtendedType:  (*descriptorpb.FieldOptions)(nil),
		ExtensionType: (*FieldConstraints)(nil),
		Field:         1160,
		Name:          "buf.validate.shared.field",
		Tag:           "bytes,1160,opt,name=field",
		Filename:      "buf/validate/shared/constraints.proto",
	},
}

// Extension fields to descriptorpb.FieldOptions.
var (
	// Specifies a shared field constraint rule. This option can be specified on
	// fields that extend protovalidate Rules messages to add additional custom
	// shared rules that can be re-used.
	//
	// optional buf.validate.shared.FieldConstraints field = 1160;
	E_Field = &file_buf_validate_shared_constraints_proto_extTypes[0]
)

var File_buf_validate_shared_constraints_proto protoreflect.FileDescriptor

var file_buf_validate_shared_constraints_proto_rawDesc = []byte{
	0x0a, 0x25, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x73,
	0x68, 0x61, 0x72, 0x65, 0x64, 0x2f, 0x63, 0x6f, 0x6e, 0x73, 0x74, 0x72, 0x61, 0x69, 0x6e, 0x74,
	0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x13, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c,
	0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0x1a, 0x20, 0x67, 0x6f,
	0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x64, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x45,
	0x0a, 0x10, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x43, 0x6f, 0x6e, 0x73, 0x74, 0x72, 0x61, 0x69, 0x6e,
	0x74, 0x73, 0x12, 0x31, 0x0a, 0x03, 0x63, 0x65, 0x6c, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x1f, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x73,
	0x68, 0x61, 0x72, 0x65, 0x64, 0x2e, 0x43, 0x6f, 0x6e, 0x73, 0x74, 0x72, 0x61, 0x69, 0x6e, 0x74,
	0x52, 0x03, 0x63, 0x65, 0x6c, 0x22, 0x56, 0x0a, 0x0a, 0x43, 0x6f, 0x6e, 0x73, 0x74, 0x72, 0x61,
	0x69, 0x6e, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x02, 0x69, 0x64, 0x12, 0x18, 0x0a, 0x07, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x12, 0x1e, 0x0a,
	0x0a, 0x65, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0a, 0x65, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x3a, 0x5e, 0x0a,
	0x05, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x12, 0x1d, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x4f, 0x70,
	0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18, 0x88, 0x09, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x25, 0x2e, 0x62,
	0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x73, 0x68, 0x61, 0x72,
	0x65, 0x64, 0x2e, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x43, 0x6f, 0x6e, 0x73, 0x74, 0x72, 0x61, 0x69,
	0x6e, 0x74, 0x73, 0x52, 0x05, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x88, 0x01, 0x01, 0x42, 0xe3, 0x01,
	0x0a, 0x17, 0x63, 0x6f, 0x6d, 0x2e, 0x62, 0x75, 0x66, 0x2e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61,
	0x74, 0x65, 0x2e, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0x42, 0x10, 0x43, 0x6f, 0x6e, 0x73, 0x74,
	0x72, 0x61, 0x69, 0x6e, 0x74, 0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x48, 0x67,
	0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x62, 0x75, 0x66, 0x62, 0x75, 0x69,
	0x6c, 0x64, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65,
	0x2f, 0x74, 0x6f, 0x6f, 0x6c, 0x73, 0x2f, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c, 0x2f,
	0x67, 0x65, 0x6e, 0x2f, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65,
	0x2f, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0xa2, 0x02, 0x03, 0x42, 0x56, 0x53, 0xaa, 0x02, 0x13,
	0x42, 0x75, 0x66, 0x2e, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x53, 0x68, 0x61,
	0x72, 0x65, 0x64, 0xca, 0x02, 0x13, 0x42, 0x75, 0x66, 0x5c, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61,
	0x74, 0x65, 0x5c, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64, 0xe2, 0x02, 0x1f, 0x42, 0x75, 0x66, 0x5c,
	0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x5c, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64, 0x5c,
	0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x15, 0x42, 0x75,
	0x66, 0x3a, 0x3a, 0x56, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x3a, 0x3a, 0x53, 0x68, 0x61,
	0x72, 0x65, 0x64, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_buf_validate_shared_constraints_proto_rawDescOnce sync.Once
	file_buf_validate_shared_constraints_proto_rawDescData = file_buf_validate_shared_constraints_proto_rawDesc
)

func file_buf_validate_shared_constraints_proto_rawDescGZIP() []byte {
	file_buf_validate_shared_constraints_proto_rawDescOnce.Do(func() {
		file_buf_validate_shared_constraints_proto_rawDescData = protoimpl.X.CompressGZIP(file_buf_validate_shared_constraints_proto_rawDescData)
	})
	return file_buf_validate_shared_constraints_proto_rawDescData
}

var file_buf_validate_shared_constraints_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_buf_validate_shared_constraints_proto_goTypes = []any{
	(*FieldConstraints)(nil),          // 0: buf.validate.shared.FieldConstraints
	(*Constraint)(nil),                // 1: buf.validate.shared.Constraint
	(*descriptorpb.FieldOptions)(nil), // 2: google.protobuf.FieldOptions
}
var file_buf_validate_shared_constraints_proto_depIdxs = []int32{
	1, // 0: buf.validate.shared.FieldConstraints.cel:type_name -> buf.validate.shared.Constraint
	2, // 1: buf.validate.shared.field:extendee -> google.protobuf.FieldOptions
	0, // 2: buf.validate.shared.field:type_name -> buf.validate.shared.FieldConstraints
	3, // [3:3] is the sub-list for method output_type
	3, // [3:3] is the sub-list for method input_type
	2, // [2:3] is the sub-list for extension type_name
	1, // [1:2] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_buf_validate_shared_constraints_proto_init() }
func file_buf_validate_shared_constraints_proto_init() {
	if File_buf_validate_shared_constraints_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_buf_validate_shared_constraints_proto_msgTypes[0].Exporter = func(v any, i int) any {
			switch v := v.(*FieldConstraints); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_buf_validate_shared_constraints_proto_msgTypes[1].Exporter = func(v any, i int) any {
			switch v := v.(*Constraint); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_buf_validate_shared_constraints_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 1,
			NumServices:   0,
		},
		GoTypes:           file_buf_validate_shared_constraints_proto_goTypes,
		DependencyIndexes: file_buf_validate_shared_constraints_proto_depIdxs,
		MessageInfos:      file_buf_validate_shared_constraints_proto_msgTypes,
		ExtensionInfos:    file_buf_validate_shared_constraints_proto_extTypes,
	}.Build()
	File_buf_validate_shared_constraints_proto = out.File
	file_buf_validate_shared_constraints_proto_rawDesc = nil
	file_buf_validate_shared_constraints_proto_goTypes = nil
	file_buf_validate_shared_constraints_proto_depIdxs = nil
}