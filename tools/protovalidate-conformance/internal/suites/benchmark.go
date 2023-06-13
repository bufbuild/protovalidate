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
	"time"
)

type Benchmark struct {
	suite    Suites
	n        int
	timerOn  bool
	start    time.Time
	duration time.Duration
	runs     map[int]time.Duration
}

func NewBenchmark(n int, sink Suites) *Benchmark {
	return &Benchmark{
		n:     n,
		suite: sink,
		runs:  make(map[int]time.Duration, n),
	}
}

func (b *Benchmark) Run(filter *regexp.Regexp, fn func(suiteName string, suite Suite) error) error {
	for i := 0; i < b.n; i++ {
		b.resetTimer()
		b.startTimer()
		if err := b.suite.Range(filter, fn); err != nil {
			return err
		}
		b.stopTimer(i)
	}
	b.results().prettyPrint()
	return nil
}

func (b *Benchmark) startTimer() {
	if !b.timerOn {
		b.start = time.Now()
		b.timerOn = true
	}
}

func (b *Benchmark) stopTimer(i int) {
	if b.timerOn {
		b.duration += time.Since(b.start)
		b.timerOn = false
		b.runs[i] = b.duration
	}
}

func (b *Benchmark) resetTimer() {
	if b.timerOn {
		b.start = time.Now()
	}
	b.duration = 0
}

type BenchmarkResults struct {
	count   uint64
	total   time.Duration
	average time.Duration
	fastest time.Duration
	slowest time.Duration
}

func (b *Benchmark) results() *BenchmarkResults {
	out := &BenchmarkResults{
		count: uint64(len(b.runs)),
	}
	for _, run := range b.runs {
		if run < out.fastest || out.fastest == 0 {
			out.fastest = run
		}
		if run > out.slowest {
			out.slowest = run
		}
		out.total += run
	}
	out.average = out.total / time.Duration(len(b.runs))
	return out
}

func (r *BenchmarkResults) prettyPrint() {
	print("Benchmark results:\n")
	print(fmt.Sprintf("  Count:   %d\n", r.count))
	print(fmt.Sprintf("  Total:   %s\n", r.total))
	print(fmt.Sprintf("  Average: %s\n", r.average))
	print(fmt.Sprintf("  Fastest: %s\n", r.fastest))
	print(fmt.Sprintf("  Slowest: %s\n", r.slowest))
}
