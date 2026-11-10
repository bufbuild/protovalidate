# Compares one target's test results with and without a pull request's
# changes.
#
# Inputs: $head and $base (slurped arrays of report tests, each with the index
# of the harness call that ran it), $knownFailingList (whether the target
# passed --expected_failures), and the target's $implementation, $target,
# $commit, $status, and $statusSide.

def failed: . == "failed" or . == "failed-as-expected";

def passed: . == "passed" or . == "passed-unexpectedly";

# The harness reports whether an expected failure passed or failed, so the
# outcome says whether the expected failures list has the test.
def listed: . == "failed-as-expected" or . == "passed-unexpectedly";

def key: [.call, .suite, .case] | tojson;

def by_key: map({key: key, value: .outcome}) | from_entries;

# Classifies a head test against the base outcome of the same test, which is
# null for tests added by the pull request.
def classify($base):
  if .outcome == "not-run" or $base == "not-run" then "notRun"
  elif (.outcome | failed) and ($base == null or ($base | passed)) then "newFailures"
  elif (.outcome | passed) and $base != null and ($base | failed) then "newPasses"
  else empty
  end;

# Lists each test case once, with the number of harness calls it changed in
# and how many of those the expected failures list has it in.
def group_cases:
  group_by([.suite, .case])
  | map({suite: .[0].suite, case: .[0].case, calls: length, listed: map(select(.outcome | listed)) | length});

($base[0] | by_key) as $baseOutcomes
| ($head[0] | map(. + {kind: classify($baseOutcomes[key])})) as $classified
| ((["newFailures", "newPasses", "notRun"] | map({key: ., value: []}) | from_entries)
  + ($classified | group_by(.kind) | map({key: .[0].kind, value: group_cases}) | from_entries)) as $kinds
| {
    implementation: $implementation,
    target: $target,
    commit: $commit,
    status: $status,
    statusSide: $statusSide,
    knownFailingList: $knownFailingList,
    newFailureCount: ($kinds.newFailures | length),
    newPassCount: ($kinds.newPasses | length),
    # Test cases whose new failures the list doesn't all have, and test cases
    # with new passes it has. Either way, the list has to change.
    newFailureUnlistedCount: ($kinds.newFailures | map(select(.listed < .calls)) | length),
    newPassListedCount: ($kinds.newPasses | map(select(.listed > 0)) | length),
    notRunCount: ($kinds.notRun | length),
    newFailures: $kinds.newFailures,
    newPasses: $kinds.newPasses,
    notRun: $kinds.notRun
  }
