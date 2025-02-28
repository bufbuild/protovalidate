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

package main

import (
	"log"

	migrator2 "github.com/bufbuild/protovalidate/tools/protovalidate-migrate/internal/migrator"
)

func main() {
	cfg := migrator2.ParseFlags()
	if err := migrator2.NewMigrator(cfg).Migrate(cfg.Paths...); err != nil {
		log.Fatal(err)
	}
}
