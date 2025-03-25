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

package fieldpath

import (
	"errors"
	"fmt"
	"strconv"
	"strings"

	"github.com/bufbuild/protovalidate/tools/internal/gen/buf/validate"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/reflect/protoregistry"
	"google.golang.org/protobuf/types/descriptorpb"
)

// Marshal takes a FieldPath and encodes it to a string-based dotted field path.
func Marshal(path *validate.FieldPath) string {
	var result strings.Builder
	if path == nil {
		return ""
	}
	for i, element := range path.GetElements() {
		if i > 0 {
			result.WriteByte('.')
		}
		result.WriteString(element.GetFieldName())
		subscript := element.GetSubscript()
		if subscript == nil {
			continue
		}
		result.WriteByte('[')
		switch value := subscript.(type) {
		case *validate.FieldPathElement_Index:
			result.WriteString(strconv.FormatUint(value.Index, 10))
		case *validate.FieldPathElement_BoolKey:
			result.WriteString(strconv.FormatBool(value.BoolKey))
		case *validate.FieldPathElement_IntKey:
			result.WriteString(strconv.FormatInt(value.IntKey, 10))
		case *validate.FieldPathElement_UintKey:
			result.WriteString(strconv.FormatUint(value.UintKey, 10))
		case *validate.FieldPathElement_StringKey:
			result.WriteString(strconv.Quote(value.StringKey))
		}
		result.WriteByte(']')
	}
	return result.String()
}

// Unmarshal parses a string-based dotted field path to a FieldPath.
func Unmarshal(
	message protoreflect.MessageDescriptor,
	path string,
) (*validate.FieldPath, error) {
	var name, subscript string
	var atEnd, isExt bool
	var err error
	result := &validate.FieldPath{}
	for !atEnd {
		name, subscript, path, atEnd, isExt = parsePathElement(path)
		if name == "" {
			return nil, errors.New("empty field name")
		}
		var descriptor protoreflect.FieldDescriptor
		var oneOf protoreflect.OneofDescriptor
		if isExt {
			extension, err := protoregistry.GlobalTypes.FindExtensionByName(protoreflect.FullName(name))
			if err != nil {
				return nil, fmt.Errorf("resolving extension: %w", err)
			}
			descriptor = extension.TypeDescriptor()
		} else {
			descriptor = message.Fields().ByTextName(name)
			oneOf = message.Oneofs().ByName(protoreflect.Name(name))
		}
		var element *validate.FieldPathElement
		switch {
		case descriptor != nil:
			element = &validate.FieldPathElement{
				FieldNumber: proto.Int32(int32(descriptor.Number())),
				FieldName:   proto.String(descriptor.TextName()),
				FieldType:   descriptorpb.FieldDescriptorProto_Type(descriptor.Kind()).Enum(),
			}
		case oneOf != nil:
			element = &validate.FieldPathElement{
				FieldName: proto.String(string(oneOf.Name())),
			}
			result.Elements = append(result.Elements, element)
			continue
		default:
			return nil, fmt.Errorf("field %s not found", name)
		}
		result.Elements = append(result.Elements, element)
		if subscript != "" {
			descriptor, err = parseSubscript(descriptor, subscript, name, element)
			if err != nil {
				return nil, err
			}
		} else if descriptor.IsList() || descriptor.IsMap() {
			if atEnd {
				break
			}
			return nil, fmt.Errorf("missing subscript on field %s", name)
		}
		if descriptor.Message() != nil {
			message = descriptor.Message()
		}
	}
	return result, nil
}

func parseSubscript(
	descriptor protoreflect.FieldDescriptor,
	subscript string,
	name string,
	element *validate.FieldPathElement,
) (protoreflect.FieldDescriptor, error) {
	switch {
	case descriptor.IsList():
		i, err := strconv.Atoi(subscript)
		if err != nil {
			return nil, fmt.Errorf("invalid list index: %s", subscript)
		}
		element.Subscript = &validate.FieldPathElement_Index{Index: uint64(i)}
	case descriptor.IsMap():
		if err := parseMapKey(descriptor, subscript, element); err != nil {
			return nil, err
		}
		element.KeyType = descriptorpb.FieldDescriptorProto_Type(descriptor.MapKey().Kind()).Enum()
		element.ValueType = descriptorpb.FieldDescriptorProto_Type(descriptor.MapValue().Kind()).Enum()
		descriptor = descriptor.MapValue()
	default:
		return nil, fmt.Errorf("unexpected subscript on field %s", name)
	}
	return descriptor, nil
}

func parseMapKey(
	mapDescriptor protoreflect.FieldDescriptor,
	subscript string,
	element *validate.FieldPathElement,
) error {
	switch mapDescriptor.MapKey().Kind() {
	case protoreflect.BoolKind:
		if boolValue, err := strconv.ParseBool(subscript); err == nil {
			element.Subscript = &validate.FieldPathElement_BoolKey{BoolKey: boolValue}
			return nil
		}
	case protoreflect.Sint32Kind:
		if intValue, err := strconv.ParseInt(subscript, 10, 32); err == nil {
			element.Subscript = &validate.FieldPathElement_IntKey{IntKey: intValue}
			return nil
		}
	case protoreflect.Sint64Kind:
		if intValue, err := strconv.ParseInt(subscript, 10, 64); err == nil {
			element.Subscript = &validate.FieldPathElement_IntKey{IntKey: intValue}
			return nil
		}
	case protoreflect.Int32Kind, protoreflect.Sfixed32Kind:
		if intValue, err := strconv.ParseInt(subscript, 10, 32); err == nil {
			element.Subscript = &validate.FieldPathElement_IntKey{IntKey: intValue}
			return nil
		}
	case protoreflect.Int64Kind, protoreflect.Sfixed64Kind:
		if intValue, err := strconv.ParseInt(subscript, 10, 64); err == nil {
			element.Subscript = &validate.FieldPathElement_IntKey{IntKey: intValue}
			return nil
		}
	case protoreflect.Uint32Kind, protoreflect.Fixed32Kind:
		if intValue, err := strconv.ParseUint(subscript, 10, 32); err == nil {
			element.Subscript = &validate.FieldPathElement_UintKey{UintKey: intValue}
			return nil
		}
	case protoreflect.Uint64Kind, protoreflect.Fixed64Kind:
		if intValue, err := strconv.ParseUint(subscript, 10, 64); err == nil {
			element.Subscript = &validate.FieldPathElement_UintKey{UintKey: intValue}
			return nil
		}
	case protoreflect.StringKind:
		if stringValue, err := strconv.Unquote(subscript); err == nil {
			element.Subscript = &validate.FieldPathElement_StringKey{StringKey: stringValue}
			return nil
		}
	case protoreflect.EnumKind, protoreflect.FloatKind, protoreflect.DoubleKind,
		protoreflect.BytesKind, protoreflect.MessageKind, protoreflect.GroupKind:
		fallthrough
	default:
		// This should not occur, but it might if the rules are relaxed in the
		// future.
		return fmt.Errorf("unsupported map key type: %s", mapDescriptor.MapKey().Kind())
	}
	return fmt.Errorf("invalid map key: %s", subscript)
}

// parsePathElement parses a single path element.
func parsePathElement(path string) (name, subscript, rest string, atEnd bool, isExt bool) {
	// Scan extension name.
	if len(path) > 0 && path[0] == '[' {
		if i := strings.IndexByte(path, ']'); i >= 0 {
			isExt = true
			name, path = path[1:i], path[i+1:]
		}
	}
	// Scan field name.
	if !isExt {
		if i := strings.IndexAny(path, ".["); i >= 0 {
			name, path = path[:i], path[i:]
		} else {
			name, path = path, ""
		}
	}
	// No subscript: At end of path.
	if len(path) == 0 {
		return name, "", path, true, isExt
	}
	// No subscript: At end of path element.
	if path[0] == '.' {
		return name, "", path[1:], false, isExt
	}
	// Malformed subscript
	if len(path) == 1 || path[1] == '.' {
		name, path = name+path[:1], path[1:]
		return name, "", path, true, isExt
	}
	switch path[1] {
	case ']':
		// Empty subscript
		name, path = name+path[:2], path[2:]
	case '`', '"', '\'':
		// String subscript: must scan string.
		var err error
		subscript, err = strconv.QuotedPrefix(path[1:])
		if err == nil {
			path = path[len(subscript)+2:]
		}
	default:
		// Other subscript; can skip to next ]
		if i := strings.IndexByte(path, ']'); i >= 0 {
			subscript, path = path[1:i], path[i+1:]
		} else {
			// Unterminated subscript
			return name + path, "", "", true, isExt
		}
	}
	// No subscript: At end of path.
	if len(path) == 0 {
		return name, subscript, path, true, isExt
	}
	// No subscript: At end of path element.
	if path[0] == '.' {
		return name, subscript, path[1:], false, isExt
	}
	// Malformed element
	return name, subscript, path, false, isExt
}
