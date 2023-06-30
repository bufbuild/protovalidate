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

package main

import (
	"fmt"
	"io"
	"log"
	"os"
	"regexp"
	"time"

	"gopkg.in/yaml.v3"

	flag "github.com/spf13/pflag"
)

type config struct {
	suiteFilterPattern string
	suiteFilter        *regexp.Regexp
	caseFilterPattern  string
	caseFilter         *regexp.Regexp
	suiteTimeout       time.Duration
	verbose            bool
	strict             bool
	strictMessage      bool
	strictError        bool
	proto              bool
	json               bool
	print              bool
	dump               bool
	benchmark          int
	cmd                string
	args               []string
	skippedFile        string
	skippedTests       map[string][]string
}

func parseFlags() config {
	cfg := config{
		suiteTimeout: 5 * time.Second,
	}
	log.SetFlags(0)

	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, "Usage: %s [FLAGS ...] CMD [ARGS ...]\n\n", os.Args[0])
		flag.PrintDefaults()
	}
	flag.StringVar(&cfg.suiteFilterPattern, "suite", cfg.suiteFilterPattern, "regex to filter suites")
	flag.StringVar(&cfg.caseFilterPattern, "case", cfg.caseFilterPattern, "regex to filter cases")
	flag.DurationVar(&cfg.suiteTimeout, "timeout", cfg.suiteTimeout, "per-suite timeout")
	flag.BoolVarP(&cfg.verbose, "verbose", "v", cfg.verbose, "verbose output")
	flag.BoolVar(&cfg.strict, "strict", cfg.strict, "strict mode")
	flag.BoolVar(&cfg.strictMessage, "strict_message", cfg.strictMessage, "require that violation messages match the expected message exactly")
	flag.BoolVar(&cfg.strictError, "strict_error", cfg.strictError, "require that compile-time errors are distinguished from runtime errors")
	flag.BoolVar(&cfg.json, "json", cfg.json, "return results as JSON to stdout")
	flag.BoolVar(&cfg.proto, "proto", cfg.proto, "return results as binary serialized proto to stdout")
	flag.BoolVar(&cfg.dump, "dump", cfg.dump, "output the expected results, without a command")
	flag.IntVar(&cfg.benchmark, "benchmark", cfg.benchmark, "run benchmarks")
	flag.StringVar(&cfg.skippedFile, "skipped", cfg.skippedFile, "yaml file containing list of skipped tests")
	flag.Parse()

	cfg.print = !cfg.json && !cfg.proto

	args := flag.Args()
	if len(args) == 0 {
		if !cfg.dump {
			log.Fatal("a command must be specified")
		}
	} else {
		cfg.cmd = args[0]
		cfg.args = args[1:]
	}

	if cfg.suiteFilterPattern != "" {
		filter, err := regexp.Compile(cfg.suiteFilterPattern)
		if err != nil {
			log.Fatal(err)
		}
		cfg.suiteFilter = filter
	}

	if cfg.caseFilterPattern != "" {
		filter, err := regexp.Compile(cfg.caseFilterPattern)
		if err != nil {
			log.Fatal(err)
		}
		cfg.caseFilter = filter
	}

	if cfg.skippedFile != "" {
		file, err := os.Open(cfg.skippedFile)
		if err != nil {
			log.Fatal(err)
		}
		defer file.Close()
		bytes, err := io.ReadAll(file)
		if err != nil {
			log.Fatal(err)
		}

		var out map[string][]string
		if err = yaml.Unmarshal(bytes, &out); err != nil {
			log.Fatal(err)
		}
		cfg.skippedTests = out
	}

	return cfg
}
