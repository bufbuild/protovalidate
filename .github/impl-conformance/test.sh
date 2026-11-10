#!/usr/bin/env bash

# Tests how compare.jq classifies one test case's outcomes, given one outcome
# per harness call, in order, in each of the head and base runs, and checks
# that report.jq renders the results.

set -euo pipefail

DIR="$(CDPATH= cd "$(dirname "${0}")" && pwd)"
cd "${DIR}"

# name|head|base|expected kinds (failure, pass, not-run, or none), each with
# the number of calls the expected failures list has the test case in. "-" is
# a test case missing from a call's report.
CASES=(
  "new failure|failed|passed|failure:0"
  "new failure in an added test case|failed|-|failure:0"
  "new failure the list has|failed-as-expected|passed|failure:1"
  "new failure the list has in one of two calls|failed failed-as-expected|passed passed|failure:1"
  "new failure in one of several calls|passed failed|passed passed|failure:0"
  "failure at head and base|failed|failed|none"
  "expected failure at head and base|failed-as-expected|failed-as-expected|none"
  "expected failure that failed unexpectedly at base|failed-as-expected|failed|none"
  "new pass|passed|failed|pass:0"
  "new pass the list has|passed-unexpectedly|failed-as-expected|pass:1"
  "pass at head and base|passed|passed|none"
  "pass in an added test case|passed|-|none"
  "couldn't run at head|not-run|passed|not-run:0"
  "couldn't run at base|failed|not-run|not-run:0"
  "failure in one call and not run in another|failed not-run|passed passed|failure:0,not-run:0"
)

# Prints a report's tests for a test case with the given outcomes, one for
# each call.
tests_json() {
  local outcomes="${1}"
  jq -cn --arg outcomes "${outcomes}" \
    '$outcomes | split(" ") | map(select(. != "")) | to_entries
    | map(select(.value != "-") | {suite: "suite", case: "case", outcome: .value, call: .key})'
}

compare() {
  local head="${1}"
  local base="${2}"
  jq -n \
    --arg implementation impl --arg target target --arg commit commit \
    --arg status ok --arg statusSide "" --argjson knownFailingList true \
    --argjson head "[$(tests_json "${head}")]" \
    --argjson base "[$(tests_json "${base}")]" \
    -f compare.jq
}

kinds() {
  jq -r '[
      (.newFailures[] | "failure:\(.listed)"), (.newPasses[] | "pass:\(.listed)"),
      (.notRun[] | "not-run:\(.listed)")
    ] | if length == 0 then "none" else join(",") end'
}

failures=0
results=()
for test_case in "${CASES[@]}"; do
  IFS="|" read -r name head base expected <<<"${test_case}"
  result="$(compare "${head}" "${base}")"
  results+=("${result}")
  actual="$(kinds <<<"${result}")"
  if [ "${actual}" != "${expected}" ]; then
    echo "FAIL: ${name}: got ${actual}, want ${expected}" >&2
    failures=$((failures + 1))
  fi
done

# Every result renders as a job summary and, together, as a comment.
for result in "${results[@]}"; do
  jq -r --arg mode summary -f report.jq <<<"${result}" >/dev/null
done
if ! printf '%s\n' "${results[@]}" | jq -n --arg mode comment --slurpfile results /dev/stdin \
  --argjson changes '[{"protosChanged": true, "skipped": []}]' --argjson failedJobs '[]' \
  --arg sha 0123456789abcdef --arg runUrl https://example.com -f report.jq |
  jq -e '.conclusion == "neutral" and (.body | contains("**1 implementation has newly failing tests."))' >/dev/null; then
  echo "FAIL: comment doesn't report the new failures" >&2
  failures=$((failures + 1))
fi
if [ "${failures}" -gt 0 ]; then
  exit 1
fi
echo "All ${#CASES[@]} cases passed."
