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
	"errors"
	"fmt"
	"io"
	"log"
	"os"
	"regexp"
	"time"

	flag "github.com/spf13/pflag"
	"gopkg.in/yaml.v3"
)

type config struct {
	suiteFilterPattern  string
	suiteFilter         *regexp.Regexp
	caseFilterPattern   string
	caseFilter          *regexp.Regexp
	suiteTimeout        time.Duration
	verbose             bool
	strict              bool
	strictMessage       bool
	strictError         bool
	proto               bool
	json                bool
	print               bool
	dump                bool
	benchmark           int
	cmd                 string
	args                []string
	expectedFailureFile string
	expectedFailures    map[string][]string
}

func parseFlags() (*config, error) {
	const defaultSuiteTimeout = 5 * time.Second
	cfg := &config{
		suiteTimeout: defaultSuiteTimeout,
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
	flag.StringVar(&cfg.expectedFailureFile, "expected_failures", cfg.expectedFailureFile, "yaml file containing list of expected failures")
	flag.Parse()

	cfg.print = !cfg.json && !cfg.proto

	args := flag.Args()
	if len(args) == 0 {
		if !cfg.dump {
			return nil, errors.New("a command must be specified")
		}
	} else {
		cfg.cmd = args[0]
		cfg.args = args[1:]
	}

	if cfg.suiteFilterPattern != "" {
		filter, err := regexp.Compile(cfg.suiteFilterPattern)
		if err != nil {
			return nil, fmt.Errorf("failed to parse suite filter pattern %w", err)
		}
		cfg.suiteFilter = filter
	}

	if cfg.caseFilterPattern != "" {
		filter, err := regexp.Compile(cfg.caseFilterPattern)
		if err != nil {
			return nil, fmt.Errorf("failed to parse case filter pattern %w", err)
		}
		cfg.caseFilter = filter
	}

	if cfg.expectedFailureFile != "" {
		file, err := os.Open(cfg.expectedFailureFile)
		if err != nil {
			return nil, fmt.Errorf("failed to open skipped case file %w", err)
		}
		bytes, err := io.ReadAll(file)
		if err != nil {
			return nil, fmt.Errorf("failed to read contents of skip file %w", err)
		}

		var out map[string][]string
		if err = yaml.Unmarshal(bytes, &out); err != nil {
			return nil, fmt.Errorf("failed to unmarshal contents of skip file %w", err)
		}
		cfg.expectedFailures = out
	}

	return cfg, nil
}
