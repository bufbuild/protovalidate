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

import 'package:protobuf/protobuf.dart';

import '../field_path.dart';
import 'context.dart';

const _minPairs = 1;
const _maxPairs = 2;

/// Applies the map-level `MapRules` (`min_pairs`, `max_pairs`) to [map]. Key and
/// value rules (`keys`, `values`) are applied by the evaluator.
void applyMapRules(GeneratedMessage rules, Map<dynamic, dynamic> map, RuleContext ctx) {
  if (rules.hasField(_minPairs)) {
    final min = (rules.getField(_minPairs) as dynamic).toInt() as int;
    if (map.length < min) {
      ctx.violate('min_pairs',
          [pathElement(_minPairs, 'min_pairs', PType.TYPE_UINT64)],
          'map must contain at least $min pairs');
    }
  }
  if (rules.hasField(_maxPairs)) {
    final max = (rules.getField(_maxPairs) as dynamic).toInt() as int;
    if (map.length > max) {
      ctx.violate('max_pairs',
          [pathElement(_maxPairs, 'max_pairs', PType.TYPE_UINT64)],
          'map must contain at most $max pairs');
    }
  }
}
