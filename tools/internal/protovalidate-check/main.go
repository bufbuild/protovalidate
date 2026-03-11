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
	"flag"
	"fmt"
	"os"
	"os/exec"
	"strings"

	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/descriptorpb"
)

func main() {
	flag.Usage = func() {
		fmt.Fprintln(os.Stderr, "protovalidate-check validates validate.proto.")
		fmt.Fprintln(os.Stderr)
		fmt.Fprintln(os.Stderr, "Usage: protovalidate-check <module-root>")
	}
	flag.Parse()
	if flag.NArg() < 1 {
		flag.Usage()
		os.Exit(1)
	}
	fds, err := bufBuild(flag.Arg(0))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	checker, err := NewChecker(fds)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	if !checker.Check() {
		for _, f := range checker.Failures() {
			fmt.Fprintln(os.Stderr, f.String())
		}
		os.Exit(1)
	}
}

// bufBuild runs `buf build` on root and returns a FileDescriptorSet.
func bufBuild(root string) (*descriptorpb.FileDescriptorSet, error) {
	cmd := exec.Command("buf", "build", "--output", "-", "--as-file-descriptor-set")
	cmd.Dir = root
	data, err := cmd.Output()
	if err != nil {
		return nil, fmt.Errorf("buf build failed: %s: %w", strings.Join(cmd.Args, " "), err)
	}
	fds := &descriptorpb.FileDescriptorSet{}
	if err = proto.Unmarshal(data, fds); err != nil {
		return nil, fmt.Errorf("failed to parse file descriptor set: %w", err)
	}
	return fds, nil
}
