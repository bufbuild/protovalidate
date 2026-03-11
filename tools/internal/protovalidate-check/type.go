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

package main

import (
	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/reflect/protoreflect"
)

// protoType represents a protobuf (field) type.
type protoType interface {
	isType()
	kind() protoreflect.Kind
	fullName() protoreflect.FullName
	celType() *cel.Type
}

// singularType represents a singular scalar, enum, or message field.
// A zero singularKind means the type is unspecified.
type singularType struct {
	singularKind     protoreflect.Kind
	singularFullName protoreflect.FullName
}

// listType represents a repeated field. A zero itemKind means the
// element type is unspecified.
type listType struct {
	itemKind     protoreflect.Kind
	itemFullName protoreflect.FullName
}

// mapType represents a map field. A zero keyKind or valueKind means
// the respective type is unspecified.
type mapType struct {
	keyKind       protoreflect.Kind
	valueKind     protoreflect.Kind
	valueFullName protoreflect.FullName
}

func (s singularType) isType()                         {}
func (s singularType) kind() protoreflect.Kind         { return s.singularKind }
func (s singularType) fullName() protoreflect.FullName { return s.singularFullName }
func (s singularType) celType() *cel.Type              { return celTypeForKind(s.singularKind, s.singularFullName) }

func (l listType) isType()                         {}
func (l listType) kind() protoreflect.Kind         { return l.itemKind }
func (l listType) fullName() protoreflect.FullName { return l.itemFullName }
func (l listType) celType() *cel.Type {
	return cel.ListType(celTypeForKind(l.itemKind, l.itemFullName))
}

func (m mapType) isType()                         {}
func (m mapType) kind() protoreflect.Kind         { return m.valueKind }
func (m mapType) fullName() protoreflect.FullName { return m.valueFullName }
func (m mapType) celType() *cel.Type {
	return cel.MapType(
		celTypeForKind(m.keyKind, ""),
		celTypeForKind(m.valueKind, m.valueFullName),
	)
}

// celTypeForKind maps a protobuf kind and optional full name to a CEL type.
// A zero kind returns cel.DynType.
func celTypeForKind(kind protoreflect.Kind, fullName protoreflect.FullName) *cel.Type {
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

// typeForField returns the protoType for a protobuf field descriptor.
func typeForField(fieldDesc protoreflect.FieldDescriptor) protoType {
	if fieldDesc.IsMap() {
		return mapType{
			keyKind:       fieldDesc.MapKey().Kind(),
			valueKind:     fieldDesc.MapValue().Kind(),
			valueFullName: messageOrEnumFullName(fieldDesc.MapValue()),
		}
	}
	if fieldDesc.IsList() {
		return listType{
			itemKind:     fieldDesc.Kind(),
			itemFullName: messageOrEnumFullName(fieldDesc),
		}
	}
	return singularType{
		singularKind:     fieldDesc.Kind(),
		singularFullName: messageOrEnumFullName(fieldDesc),
	}
}

func messageOrEnumFullName(fieldDesc protoreflect.FieldDescriptor) protoreflect.FullName {
	switch fieldDesc.Kind() { //nolint:exhaustive
	case protoreflect.MessageKind, protoreflect.GroupKind:
		return fieldDesc.Message().FullName()
	case protoreflect.EnumKind:
		return fieldDesc.Enum().FullName()
	default:
		return ""
	}
}
