#!/usr/bin/env bash

# Renders implementation conformance results and reports them on the pull
# request that produced them.
#
# Results come from workflows that run a pull request's code, possibly from a
# fork, so every input is untrusted. report.jq sanitizes what it renders, and
# the pull request number is used only if that pull request's head is the
# tested commit.
#
# Usage:
#   report.sh summary <result.json>
#     Prints one target's result as Markdown, for the job summary.
#   report.sh post <artifacts dir>
#     Creates or updates the results comment on the pull request and creates
#     a check run on the tested commit. Requires GH_TOKEN, GITHUB_REPOSITORY,
#     HEAD_SHA (the tested commit), RUN_ID, and RUN_URL.

set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd "$(dirname "${0}")" && pwd)"
CHECK_NAME="Implementation conformance results"
COMMENT_MARKER="<!-- impl-conformance-report -->"

find_comment() {
  local pr_number="${1}"
  gh api --paginate "repos/${GITHUB_REPOSITORY}/issues/${pr_number}/comments" \
    --jq ".[] | select(.user.login == \"github-actions[bot]\" and (.body | startswith(\"${COMMENT_MARKER}\"))) | .id" |
    head -n 1
}

# Prints the pull request number from the artifact, but only if that pull
# request's head is the tested commit, so a fork can't target other PRs.
# Returns 1 when there's nothing to report and 2 when the number is invalid.
verified_pr_number() {
  local pr_file="${1}"
  local pr_number
  local pr_head_sha
  if [ ! -f "${pr_file}" ]; then
    echo "::notice::No pull request number was uploaded; nothing to report." >&2
    return 1
  fi
  pr_number="$(head -c 20 "${pr_file}" | tr -d '[:space:]')"
  if ! [[ "${pr_number}" =~ ^[0-9]+$ ]]; then
    echo "::error::Invalid pull request number in artifact." >&2
    return 2
  fi
  pr_head_sha="$(gh api "repos/${GITHUB_REPOSITORY}/pulls/${pr_number}" --jq '.head.sha')"
  if [ "${pr_head_sha}" != "${HEAD_SHA}" ]; then
    echo "::notice::Pull request #${pr_number} head is ${pr_head_sha}, not the tested commit ${HEAD_SHA}; skipping." >&2
    return 1
  fi
  echo "${pr_number}"
}

# Creates the results comment, or updates it if one exists.
upsert_comment() {
  local pr_number="${1}"
  local body_file="${2}"
  local comment_id
  comment_id="$(find_comment "${pr_number}")"
  if [ -n "${comment_id}" ]; then
    jq -n --rawfile body "${body_file}" '{body: $body}' |
      gh api --method PATCH "repos/${GITHUB_REPOSITORY}/issues/comments/${comment_id}" --input - >/dev/null
  else
    jq -n --rawfile body "${body_file}" '{body: $body}' |
      gh api --method POST "repos/${GITHUB_REPOSITORY}/issues/${pr_number}/comments" --input - >/dev/null
  fi
}

# Prints the JSON objects in the given files, one per line, skipping files
# that aren't JSON objects. jq reads the output with --slurpfile, since results
# can exceed the size limit for a command-line argument.
json_objects() {
  local json_file
  for json_file in "${@}"; do
    if jq -e 'type == "object"' "${json_file}" >/dev/null 2>&1; then
      jq -c '.' "${json_file}"
    else
      echo "::warning::Skipping invalid results file ${json_file}." >&2
    fi
  done
}

post_report() {
  local artifacts_dir="${1}"
  : "${GH_TOKEN:?}" "${GITHUB_REPOSITORY:?}" "${HEAD_SHA:?}" "${RUN_ID:?}" "${RUN_URL:?}"
  local pr_number
  local pr_status=0
  local result_files=()
  local data_dir
  local body_file

  pr_number="$(verified_pr_number "${artifacts_dir}/impl-conformance-pr/pr-number")" || pr_status="${?}"
  case "${pr_status}" in
    0) ;;
    1) return ;;
    *) exit 1 ;;
  esac

  mapfile -t result_files < <(find "${artifacts_dir}" -type f -path '*/impl-conformance-results-*/*.json' | sort)
  data_dir="$(mktemp -d)"
  json_objects "${result_files[@]}" >"${data_dir}/results.json"
  json_objects "${artifacts_dir}/impl-conformance-changes/changes.json" >"${data_dir}/changes.json"
  gh api --paginate "repos/${GITHUB_REPOSITORY}/actions/runs/${RUN_ID}/jobs" \
    --jq '.jobs[] | select(.conclusion == "failure" or .conclusion == "cancelled" or .conclusion == "timed_out") | .name' |
    jq -R 'select(. != "")' >"${data_dir}/failed-jobs.json"

  body_file="$(mktemp)"
  echo "${COMMENT_MARKER}" >"${body_file}"
  jq -n \
    --arg mode comment \
    --slurpfile results "${data_dir}/results.json" \
    --slurpfile changes "${data_dir}/changes.json" \
    --slurpfile failedJobs "${data_dir}/failed-jobs.json" \
    --arg sha "${HEAD_SHA}" \
    --arg runUrl "${RUN_URL}" \
    -f "${SCRIPT_DIR}/report.jq" >"${data_dir}/report.json"
  jq -r '.body' "${data_dir}/report.json" >>"${body_file}"
  upsert_comment "${pr_number}" "${body_file}"

  jq -n \
    --arg name "${CHECK_NAME}" \
    --arg head_sha "${HEAD_SHA}" \
    --arg details_url "${RUN_URL}" \
    --slurpfile report "${data_dir}/report.json" \
    --rawfile summary "${body_file}" \
    '{name: $name, head_sha: $head_sha, status: "completed", conclusion: $report[0].conclusion,
      details_url: $details_url, output: {title: $report[0].title, summary: $summary}}' |
    gh api --method POST "repos/${GITHUB_REPOSITORY}/check-runs" --input - >/dev/null
}

case "${1:-}" in
  summary)
    shift
    jq -r --arg mode summary -f "${SCRIPT_DIR}/report.jq" "${@}"
    ;;
  post)
    shift
    post_report "${@}"
    ;;
  *)
    echo "usage: ${0} summary <result.json> | post <artifacts dir>" >&2
    exit 2
    ;;
esac
