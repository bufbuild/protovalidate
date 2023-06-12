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

func (b Benchmark) Run(filter *regexp.Regexp, fn func(suiteName string, suite Suite) error) error {
	for i := 0; i < b.n; i++ {
		b.ResetTimer()
		b.StartTimer()
		if err := b.suite.Range(filter, fn); err != nil {
			return err
		}
		b.StopTimer(i)
	}
	b.Results().prettyPrint()
	return nil
}

func (b *Benchmark) StartTimer() {
	if !b.timerOn {
		b.start = time.Now()
		b.timerOn = true
	}
}

func (b *Benchmark) StopTimer(i int) {
	if b.timerOn {
		b.duration += time.Since(b.start)
		b.timerOn = false
		b.runs[i] = b.duration
	}
}

func (b *Benchmark) ResetTimer() {
	if b.timerOn {
		b.start = time.Now()
	}
	b.duration = 0
}

func (b *Benchmark) time() time.Duration {
	if b.timerOn {
		return time.Since(b.start) + b.duration
	}
	return b.duration
}

type BenchmarkResults struct {
	count   uint64
	total   time.Duration
	average time.Duration
	fastest time.Duration
	slowest time.Duration
}

func (b *Benchmark) Results() *BenchmarkResults {
	out := &BenchmarkResults{
		count: uint64(len(b.runs)),
	}
	for _, v := range b.runs {
		if v < out.fastest || out.fastest == 0 {
			out.fastest = v
		}
		if v > out.slowest {
			out.slowest = v
		}
		out.total += v
	}
	out.average = out.total / time.Duration(len(b.runs))
	return out
}

func (r *BenchmarkResults) prettyPrint() {
	print(fmt.Sprintf("Benchmark Results:\n"))
	print(fmt.Sprintf("  Count:   %d\n", r.count))
	print(fmt.Sprintf("  Total:   %s\n", r.total))
	print(fmt.Sprintf("  Average: %s\n", r.average))
	print(fmt.Sprintf("  Fastest: %s\n", r.fastest))
	print(fmt.Sprintf("  Slowest: %s\n", r.slowest))
}
