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

package suites

import (
	"fmt"
	"regexp"
	"sort"
	"time"
)

type Benchmark struct {
	suites   Suites
	n        int
	timerOn  bool
	start    time.Time
	duration time.Duration
	runs     map[string]map[int]time.Duration
}

func NewBenchmark(n int, ss Suites) *Benchmark {
	return &Benchmark{
		n:      n,
		suites: ss,
		runs:   make(map[string]map[int]time.Duration),
	}
}

func (b *Benchmark) Range(filter *regexp.Regexp, exec func(suiteName string, suite Suite) error) error {
	for suiteName, suite := range b.suites {
		if filter != nil && !filter.MatchString(suiteName) {
			continue
		}
		for i := range b.n {
			b.resetTimer()
			b.startTimer()
			if err := exec(suiteName, suite); err != nil {
				return err
			}
			b.stopTimer(suiteName, i)
		}
	}
	b.results()
	return nil
}

func (b *Benchmark) startTimer() {
	if !b.timerOn {
		b.start = time.Now()
		b.timerOn = true
	}
}

func (b *Benchmark) stopTimer(name string, i int) {
	if b.timerOn {
		b.duration += time.Since(b.start)
		b.timerOn = false
		b.record(name, i)
	}
}

func (b *Benchmark) record(name string, i int) {
	if _, ok := b.runs[name]; !ok {
		b.runs[name] = make(map[int]time.Duration)
	}
	b.runs[name][i] = b.duration
}

func (b *Benchmark) resetTimer() {
	if b.timerOn {
		b.start = time.Now()
	}
	b.duration = 0
}

type suiteResults struct {
	name    string
	count   uint64
	total   time.Duration
	average time.Duration
	fastest time.Duration
	slowest time.Duration
}

type BenchmarkResults struct {
	suiteResults
	results map[string]*suiteResults
}

func (b *Benchmark) results() *BenchmarkResults {
	out := &BenchmarkResults{
		results: make(map[string]*suiteResults),
	}
	sorted := make([]string, 0, len(b.runs))
	for name := range b.runs {
		sorted = append(sorted, name)
	}
	sort.StringSlice(sorted).Sort()
	var totalCount uint64
	for _, name := range sorted {
		suite := b.runs[name]
		run := calculateRun(suite)
		run.name = name
		run.prettyPrint()
		out.total += run.total
		out.count += run.count
		totalCount += run.count
		if run.fastest < out.fastest || out.fastest == 0 {
			out.fastest = run.fastest
		}
		if run.slowest > out.slowest {
			out.slowest = run.slowest
		}
		out.results[name] = run
	}
	out.average = out.total / time.Duration(totalCount)
	out.name = "Total"
	out.prettyPrint()
	return out
}

func calculateRun(runs map[int]time.Duration) *suiteResults {
	out := &suiteResults{
		count: uint64(len(runs)),
	}
	for _, run := range runs {
		out.total += run
		if run < out.fastest || out.fastest == 0 {
			out.fastest = run
		}
		if run > out.slowest {
			out.slowest = run
		}
	}
	out.average = out.total / time.Duration(out.count)
	return out
}

func (r *suiteResults) prettyPrint() {
	print(fmt.Sprintf("Benchmark results: %s\n", r.name))
	print(fmt.Sprintf("  Count:   %d\n", r.count))
	print(fmt.Sprintf("  Total:   %s\n", r.total))
	print(fmt.Sprintf("  Average: %s\n", r.average))
	print(fmt.Sprintf("  Fastest: %s\n", r.fastest))
	print(fmt.Sprintf("  Slowest: %s\n", r.slowest))
}
