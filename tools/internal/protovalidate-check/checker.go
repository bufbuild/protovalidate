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
	"fmt"

	"github.com/google/cel-go/cel"
	"google.golang.org/protobuf/reflect/protoreflect"
	"google.golang.org/protobuf/types/descriptorpb"
)

type Checker struct {
	schema   *resolvedSchema
	failures []Failure
}

func NewChecker(fds *descriptorpb.FileDescriptorSet) (*Checker, error) {
	schema, err := resolveSchema(fds)
	if err != nil {
		return nil, err
	}
	// Fail fast: verify that the CEL environment can be constructed.
	_, err = celEnv(schema.files, cel.DynType, cel.DynType, cel.DynType)
	if err != nil {
		return nil, err
	}
	return &Checker{schema: schema}, nil
}

type Failure struct {
	Path    string
	Line    int
	Message string
}

func (f Failure) String() string {
	return fmt.Sprintf("%s:%d: %s", f.Path, f.Line, f.Message)
}

func (c *Checker) Failures() []Failure {
	return c.failures
}

func (c *Checker) fail(desc protoreflect.Descriptor, message string) {
	line := c.schema.file.SourceLocations().ByDescriptor(desc).StartLine
	c.failures = append(c.failures, Failure{
		Path:    c.schema.file.Path(),
		Line:    line + 1,
		Message: message,
	})
}

func (c *Checker) Check() bool {
	c.failures = nil
	c.checkFieldRuleNamesMatch()
	c.checkRuleMessagesExtensionRange()
	c.checkExampleFields()
	c.checkRules()
	return len(c.failures) == 0
}
