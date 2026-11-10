# Renders implementation conformance results as Markdown. Results come from a
# pull request's own workflow run, so they are untrusted: free text is shown
# only in sanitized code spans, numbers are clamped, and codes are mapped from
# fixed lists.
#
# With $mode "summary", . is one target's result and the output is its job
# summary. With $mode "comment", the inputs are $results (all targets),
# $changes (changes.json, or empty if unavailable), $failedJobs, $sha, and
# $runUrl, and the output is an object with the comment body, check title, and
# check conclusion.

def code:
  tostring | gsub("[\\p{Cc}\\p{Cf}]"; "") | .[0:120]
  | gsub("`"; "'") | gsub("\\|"; "\\|") | "`" + . + "`";

def count: if type == "number" and . > 0 then floor else 0 end;

def plural($word): "\(.) \($word)\(if . == 1 then "" else "s" end)";

def list: if type == "array" then . else [] end;

def has_problem: (.status | tostring) != "ok";

def status_text:
  {
    "runner-not-called": "didn't call the harness",
    "base-without-report-json": "the base branch's harness predates `--report_json`, so there's nothing to compare with",
    "calls-differ": "it called the harness a different number of times in each run",
    "error": "no test case ran, because the executor or the harness failed"
  }[tostring] // "unknown status";

def side_text: {"base": " in the base run", "head": " in the head run"}[tostring] // "";

def listed_text:
  if .listed == 0 then "no"
  elif .listed >= .calls then "yes"
  else "\(.listed) of \(.calls) calls"
  end;

# Lists each result's test cases under $key, at most $maxRows of them, with
# the "In expected failures" column if $listed.
def case_table($key; $listed; $maxRows):
  [.[] | . as $result | (.[$key] | list)[]
    | {target: $result.target, suite: .suite, case: .case, calls: (.calls | count), listed: (.listed | count)}] as $rows
  | if ($rows | length) == 0 then empty else
      "| Target | Suite | Test case |\(if $listed then " In expected failures |" else "" end)",
      "|---|---|---|\(if $listed then "---|" else "" end)",
      ($rows[:$maxRows][] | "| \(.target | code) | \(.suite | code) | \(.case | code) |\(
        if $listed then " \(listed_text) |" else "" end)"),
      (if ($rows | length) > $maxRows
        then "", "Only \($maxRows) of \($rows | length) are shown. The job summaries list all of them."
        else empty end)
    end;

def summary_table($title; $key; $listed):
  [[.] | case_table($key; $listed; 500)] as $lines
  | if ($lines | length) == 0 then empty else "", $title, "", $lines[] end;

def list_changes($add; $remove):
  if $add == 0 and $remove == 0 then "no changes"
  else [(if $add > 0 then "add \($add)" else empty end), (if $remove > 0 then "remove \($remove)" else empty end)] | join(", ")
  end;

def summary:
  "#### \(.implementation | code) \(.target | code) at \(.commit | code)",
  "",
  (if has_problem then "**Not tested: \(.status | status_text)\(.statusSide | side_text).**"
    else "Test cases with this pull request's changes: \(.newFailureCount | count) newly failing, \(.newPassCount | count) newly passing." end),
  (if has_problem then empty
    elif .knownFailingList == true then "", "Expected failures list: \(list_changes(.newFailureUnlistedCount | count; .newPassListedCount | count))."
    else "", "This target passes no expected failures list to the harness." end),
  (if (.notRunCount | count) > 0
    then "", "**\(.notRunCount | count | plural("test case")) couldn't run, because the executor failed.**"
    else empty end),
  summary_table("Newly failing test cases:"; "newFailures"; true),
  summary_table("Newly passing test cases:"; "newPasses"; true),
  summary_table("Test cases that couldn't run:"; "notRun"; false),
  "";

# Counts the distinct test cases in the results' $key lists that match f, since
# a test case that changes on several targets is still one test case.
def distinct_cases($key; f): [.[] | .[$key] | list | .[] | select(f) | [.suite, .case] | tojson] | unique | length;

def implementations($results):
  $results | group_by(.implementation | tostring) | map({
    name: (.[0].implementation | tostring),
    commits: (map(.commit | tostring) | unique),
    targets: length,
    newFailures: distinct_cases("newFailures"; true),
    failingTargets: (map(select((.newFailureCount | count) > 0)) | length),
    newPasses: distinct_cases("newPasses"; true),
    notRun: distinct_cases("notRun"; true),
    hasList: any(.[]; .knownFailingList == true),
    toAdd: distinct_cases("newFailures"; (.listed | count) < (.calls | count)),
    toRemove: distinct_cases("newPasses"; (.listed | count) > 0),
    problems: [.[] | (select(has_problem) | "\(.target | code): \(.status | status_text)\(.statusSide | side_text)"),
      (select((.notRunCount | count) > 0) | "\(.target | code): \(.notRunCount | count | plural("test case")) couldn't run")],
    results: .
  });

# $key names both an implementation's count and its results' test case lists.
def details($implementations; $key; $listed; $title; $note; $maxRows):
  [$implementations[] | select(.[$key] > 0)] as $selected
  | if ($selected | length) == 0 then empty else
      "<details><summary>\($title)</summary>",
      "",
      $note,
      "",
      ($selected[] | "##### \(.name | code)", "", (.results | case_table($key; $listed; $maxRows)), ""),
      "</details>",
      ""
    end;

def comment:
  $ARGS.named as $args
  | $args.results as $results
  | ($args.changes[0] // null) as $changes
  | $args.failedJobs as $failedJobs
  | $args.sha as $sha
  | $args.runUrl as $runUrl
  | implementations($results) as $implementations
  | ($changes.skipped? | list | map(tostring)) as $skipped
  | ([$implementations[] | select(.newFailures > 0)] | length) as $failingImplementations
  | (([$implementations[].problems[]] | length) + ($failedJobs | length)) as $problems
  | (if $changes == null then "Couldn't determine what changed."
      elif $failingImplementations > 0 then "\($failingImplementations | plural("implementation")) \(if $failingImplementations == 1 then "has" else "have" end) newly failing tests."
      elif ($results | length) == 0 and ($skipped | length) > 0 then "Every implementation was skipped by label."
      elif ($results | length) == 0 then "No implementations ran."
      else "No tests newly fail."
      end
    + (if $problems > 0 then " \($problems | plural("problem")) running tests." else "" end)) as $headline
  | [
      "### Implementation conformance",
      "",
      "**\($headline)**",
      "",
      (if ($implementations | length) == 0 then empty else
        "| Implementation | Newly failing test cases | Newly passing test cases | Expected failures list | Problems |",
        "|---|---|---|---|---|",
        ($implementations[]
          | "| \(.name | code) \(.commits | map(code) | join(" "))"
            + " | \(if .newFailures > 0 then "**\(.newFailures)** in \(.failingTargets) of \(.targets) targets" else "0" end)"
            + " | \(.newPasses)"
            + " | \(if .hasList then list_changes(.toAdd; .toRemove) else "no list" end)"
            + " | \(.problems | join("; ")) |"),
        ""
      end),
      (if ($failedJobs | length) > 0 then "Failed jobs: \($failedJobs | map(code) | join(", ")).", "" else empty end),
      (if ($skipped | length) > 0 then "Skipped by label: \($skipped | .[:20] | map(code) | join(", ")).", "" else empty end),
      (if $changes.protosChanged? == true then
        "This pull request changes `proto/protovalidate`. The implementations use the rules of the protovalidate release they pin, so results for new or changed rules are only an estimate.",
        ""
        else empty end),
      (if ($results | length) > 0
        then "Each implementation ran every suite with the conformance harness from this pull request and from its base branch, at the commit shown. The test cases whose results differed were then checked against the expected failures list each target passes to the harness. "
        else "" end)
      + "Results for \($sha[0:12] | code) from [this workflow run](\($runUrl)).",
      ""
    ] as $header
  | [
      details($implementations; "newFailures"; true; "Newly failing test cases";
        "Test cases that aren't in the expected failures list need an entry there, or a fix."; 50),
      details($implementations; "newPasses"; true; "Newly passing test cases";
        "The harness fails expected failures that pass, so the list has to drop the ones it has."; 20),
      details($implementations; "notRun"; false; "Test cases that couldn't run";
        "The executor failed before these test cases ran, with or without the changes."; 20)
    ] as $details
  | ($header + $details | join("\n")) as $body
  | {
      title: $headline,
      conclusion: (if $failingImplementations == 0 and $problems == 0 and $changes != null
        then "success" else "neutral" end),
      body: (if ($body | length) < 60000 then $body
        else $header + ["The details are too long for a comment. The job summaries in the workflow run list them."] | join("\n") end)
    };

if $ARGS.named.mode == "summary" then summary else comment end
