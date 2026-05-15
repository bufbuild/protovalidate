// Copyright 2023-2026 Buf Technologies, Inc.
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

package celenv

import (
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// KindToType maps a protobuf kind and optional full name to a CEL type.
// A zero kind returns cel.DynType.
func KindToType(kind protoreflect.Kind, fullName protoreflect.FullName) *cel.Type {
	switch kind {
	case protoreflect.FloatKind, protoreflect.DoubleKind:
		return cel.DoubleType
	case protoreflect.Int32Kind, protoreflect.Int64Kind,
		protoreflect.Sint32Kind, protoreflect.Sint64Kind,
		protoreflect.Sfixed32Kind, protoreflect.Sfixed64Kind,
		protoreflect.EnumKind:
		return cel.IntType
	case protoreflect.Uint32Kind, protoreflect.Uint64Kind,
		protoreflect.Fixed32Kind, protoreflect.Fixed64Kind:
		return cel.UintType
	case protoreflect.BoolKind:
		return cel.BoolType
	case protoreflect.StringKind:
		return cel.StringType
	case protoreflect.BytesKind:
		return cel.BytesType
	case protoreflect.MessageKind, protoreflect.GroupKind:
		switch fullName {
		case "google.protobuf.Any":
			return cel.AnyType
		case "google.protobuf.Duration":
			return cel.DurationType
		case "google.protobuf.Timestamp":
			return cel.TimestampType
		case "":
			return cel.DynType
		default:
			return cel.ObjectType(string(fullName))
		}
	default:
		return cel.DynType
	}
}

// TypeForField returns the CEL type for binding a value of fieldDesc's
// type. Map and list inner element types come from the descriptor; nothing
// is collapsed to DynType.
func TypeForField(fieldDesc protoreflect.FieldDescriptor) *cel.Type {
	if fieldDesc.IsMap() {
		return cel.MapType(
			KindToType(fieldDesc.MapKey().Kind(), ""),
			KindToType(fieldDesc.MapValue().Kind(), MessageOrEnumName(fieldDesc.MapValue())),
		)
	}
	if fieldDesc.IsList() {
		return cel.ListType(KindToType(fieldDesc.Kind(), MessageOrEnumName(fieldDesc)))
	}
	return KindToType(fieldDesc.Kind(), MessageOrEnumName(fieldDesc))
}

// MessageOrEnumName returns the full name of a message, group, or enum
// field's type, or "" for scalar fields.
func MessageOrEnumName(fieldDesc protoreflect.FieldDescriptor) protoreflect.FullName {
	switch fieldDesc.Kind() { //nolint:exhaustive
	case protoreflect.MessageKind, protoreflect.GroupKind:
		return fieldDesc.Message().FullName()
	case protoreflect.EnumKind:
		return fieldDesc.Enum().FullName()
	default:
		return ""
	}
}
