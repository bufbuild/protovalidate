#!/usr/bin/env bash

# Runs a protovalidate implementation's conformance tests with the conformance
# harness from a pull request and from its base commit, to find the test cases
# that newly fail or newly pass.
#
# Usage:
#   impl-conformance.sh changes <base commit> <output file>
#     Run in the protovalidate repository. Writes whether validate.proto
#     changed between <base commit> and HEAD as JSON.
#   impl-conformance.sh install <path>
#     Installs a protovalidate-conformance wrapper at <path>. Implementations
#     call it in place of the harness version they pin.
#   impl-conformance.sh install-go <path> <wrapper>
#     Installs a go command at <path> that installs <wrapper> for
#     "go install github.com/bufbuild/protovalidate/tools/protovalidate-conformance@<version>",
#     runs it for "go run" of the same package, and runs the go command on
#     PATH for anything else. Every implementation gets the harness one of
#     these ways, so with this go command first on PATH, their own build
#     commands call the wrapper.
#   impl-conformance.sh run <implementation> <target> <command...>
#     Runs <command> with the pull request's harness, then with the base
#     commit's. Writes the test cases that newly fail or newly pass, whether
#     the implementation's expected failures list has them, and the test cases
#     that couldn't run to RESULTS_DIR/<implementation>-<target>.json and the
#     job summary. Fails only if <command> never called the wrapper, since
#     then nothing ran.
#   impl-conformance.sh skipped <labels> <implementation...>
#     Prints the given implementations that the pull request's labels skip, as
#     a JSON array. <labels> is a JSON array of the label names.
#   impl-conformance.sh exec <harness args...>
#     Called by the wrapper. Runs the current harness with the given arguments
#     and writes a JSON report. Always exits 0.
#
# Unlike most scripts, this does not cd to the project root, because <command>
# must run in the implementation's own working directory.

set -euo pipefail

: "${CONFORMANCE_DIR:=${RUNNER_TEMP:-}/conformance}"
: "${RESULTS_DIR:=${RUNNER_TEMP:-}/results}"
: "${GITHUB_STEP_SUMMARY:=/dev/stdout}"

SCRIPT_DIR="$(CDPATH= cd "$(dirname "${0}")" && pwd)"
SCRIPT_PATH="${SCRIPT_DIR}/$(basename "${0}")"
HARNESS_PACKAGE="github.com/bufbuild/protovalidate/tools/protovalidate-conformance"
HARNESS_NAME="protovalidate-conformance"
# Holds "base" or "head", selecting the harness the wrapper runs.
SIDE_FILE="${CONFORMANCE_DIR}/side"
# Each wrapper call appends the path of its report, to prove the
# implementation used the wrapper.
CALLS_FILE="${CONFORMANCE_DIR}/wrapper-calls"
REPORTS_DIR="${CONFORMANCE_DIR}/reports"
# A pull request label that skips every implementation. Followed by a space and
# an implementation's name, it skips that one.
SKIP_LABEL="impl-conformance: skip"

detect_changes() {
  local base_commit="${1}"
  local output_file="${2}"
  local protos_changed="false"
  # git diff exits 1 for changes; treating other failures as changes is safe.
  if ! git diff --quiet "${base_commit}" HEAD -- proto/protovalidate; then
    protos_changed="true"
  fi
  jq -n --argjson protosChanged "${protos_changed}" '{protosChanged: $protosChanged}' >"${output_file}"
  cat "${output_file}"
}

install_wrapper() {
  local wrapper_path="${1}"
  chmod +x "${CONFORMANCE_DIR}/base/${HARNESS_NAME}" "${CONFORMANCE_DIR}/head/${HARNESS_NAME}"
  echo "head" >"${SIDE_FILE}"
  mkdir -p "$(dirname "${wrapper_path}")" "${REPORTS_DIR}"
  # Paths are baked in because build tools like turbo can strip environment
  # variables before running the wrapper.
  cat >"${wrapper_path}" <<EOF
#!/usr/bin/env bash
CONFORMANCE_DIR="${CONFORMANCE_DIR}" exec "${SCRIPT_PATH}" exec "\${@}"
EOF
  chmod +x "${wrapper_path}"
}

install_go() {
  local go_path="${1}"
  local wrapper_path="${2}"
  local real_go
  real_go="$(command -v go)"
  if [ "${real_go}" = "${go_path}" ]; then
    echo "error: ${go_path} is already the first go command on PATH" >&2
    return 1
  fi
  mkdir -p "$(dirname "${go_path}")"
  cat >"${go_path}" <<EOF
#!/usr/bin/env bash
set -euo pipefail
if [ "\${1:-}" = "run" ] && [[ "\${2:-}" == ${HARNESS_PACKAGE}@* ]]; then
  shift 2
  exec "${wrapper_path}" "\${@}"
fi
if [ "\${1:-}" = "install" ] && [ "\${#}" -eq 2 ] && [[ "\${2}" == ${HARNESS_PACKAGE}@* ]]; then
  gobin="\${GOBIN:-}"
  if [ -z "\${gobin}" ]; then
    gobin="\$("${real_go}" env GOBIN)"
  fi
  if [ -z "\${gobin}" ]; then
    gobin="\$("${real_go}" env GOPATH | cut -d: -f1)/bin"
  fi
  mkdir -p "\${gobin}"
  cp "${wrapper_path}" "\${gobin}/${HARNESS_NAME}"
  echo "impl-conformance: installed the wrapper at \${gobin}/${HARNESS_NAME} instead of \${2}" >&2
  exit 0
fi
exec "${real_go}" "\${@}"
EOF
  chmod +x "${go_path}"
}

exec_runner() {
  local side
  local harness_binary
  local report_file
  local args=()
  side="$(cat "${SIDE_FILE}")"
  harness_binary="${CONFORMANCE_DIR}/${side}/${HARNESS_NAME}"
  report_file="$(mktemp "${REPORTS_DIR}/${side}-XXXXXX")"
  # Flags can follow the executor command, so only arguments after "--" are
  # the executor's. The wrapper writes the report, so --report_json is dropped.
  while [ "${#}" -gt 0 ] && [ "${1}" != "--" ]; do
    case "${1}" in
      --expected_failures | --expected_failures=*)
        touch "${report_file}.known-failing"
        ;;
      --report_json)
        shift 2
        continue
        ;;
      --report_json=*)
        shift
        continue
        ;;
    esac
    args+=("${1}")
    shift
  done
  echo "${report_file}" >>"${CALLS_FILE}"
  "${harness_binary}" --report_json "${report_file}" "${args[@]}" "${@}" || true
  # Results come from the reports. A failing exit status would stop
  # implementations that call the harness several times after the first
  # failure.
  exit 0
}

# Reads the reports of the last command run and sets SIDE_STATUS to ok,
# runner-not-called, or error. A report is an error if it isn't valid, or if no
# test case ran, because the executor failed for every suite or the harness
# stopped first.
classify_reports() {
  local report_file
  local report_files=()
  if [ ! -s "${CALLS_FILE}" ]; then
    SIDE_STATUS="runner-not-called"
    return
  fi
  SIDE_STATUS="ok"
  mapfile -t report_files <"${CALLS_FILE}"
  for report_file in "${report_files[@]}"; do
    if ! jq -e '.tests | type == "array"' "${report_file}" >/dev/null 2>&1 ||
      jq -e 'all(.tests[]; .outcome == "not-run") and ((.tests | length) > 0 or (.error // "") != "")' \
        "${report_file}" >/dev/null; then
      SIDE_STATUS="error"
    fi
  done
}

# Runs the command with one side's harness. Sets SIDE_STATUS and
# SIDE_HAS_KNOWN_FAILING, and writes the side's test results, marked with the
# index of the harness call that ran them, and its number of harness calls to
# the work directory, in files starting with <side>.
run_side() {
  local side="${1}"
  local work_dir="${2}"
  local label="${3}"
  shift 3
  local report_file
  local index
  local report_files=()
  echo "[]" >"${work_dir}/${side}-tests.json"
  echo "${side}" >"${SIDE_FILE}"
  SIDE_HAS_KNOWN_FAILING="false"
  rm -rf "${CALLS_FILE}" "${REPORTS_DIR}"
  mkdir -p "${REPORTS_DIR}"
  echo "::group::${label}: ${side} run"
  # Test failures are read from the reports, not the exit status.
  "${@}" </dev/null || true
  echo "::endgroup::"
  classify_reports
  if [ -s "${CALLS_FILE}" ]; then
    mapfile -t report_files <"${CALLS_FILE}"
  fi
  echo "${#report_files[@]}" >"${work_dir}/${side}-calls.txt"
  if [ "${SIDE_STATUS}" = "ok" ]; then
    for index in "${!report_files[@]}"; do
      report_file="${report_files[${index}]}"
      if [ -e "${report_file}.known-failing" ]; then
        SIDE_HAS_KNOWN_FAILING="true"
      fi
      jq --argjson call "${index}" '.tests | map(. + {call: $call})' "${report_file}"
    done >"${work_dir}/${side}-marked-tests.json"
    jq -s 'add // []' "${work_dir}/${side}-marked-tests.json" >"${work_dir}/${side}-tests.json"
  fi
}

# Succeeds if the base harness has --report_json. A base branch from before the
# flag existed can't report results, so there's nothing to compare with.
base_writes_reports() {
  local help_text
  # Captured, not piped to grep -q, whose early exit would fail the pipe.
  help_text="$("${CONFORMANCE_DIR}/base/${HARNESS_NAME}" --help 2>&1 || true)"
  [[ "${help_text}" == *--report_json* ]]
}

skipped_implementations() {
  local labels="${1}"
  shift
  jq -cn --argjson labels "${labels}" --arg skip "${SKIP_LABEL}" \
    '$ARGS.positional | map(select(. as $name | any($labels[]; . == $skip or . == $skip + " " + $name)))' \
    --args "${@}"
}

run_target() {
  local implementation="${1}"
  local target="${2}"
  shift 2
  local label="${implementation} ${target}"
  local result_file="${RESULTS_DIR}/${implementation}-${target}.json"
  local work_dir
  local commit
  local status
  local status_side=""
  local has_known_failing="false"
  work_dir="$(mktemp -d)"
  commit="$(git rev-parse --short HEAD 2>/dev/null || echo "unknown")"
  mkdir -p "${RESULTS_DIR}"
  echo "[]" >"${work_dir}/head-tests.json"
  echo "[]" >"${work_dir}/base-tests.json"

  if ! base_writes_reports; then
    status="base-without-report-json"
  else
    run_side head "${work_dir}" "${label}" "${@}"
    status="${SIDE_STATUS}"
    has_known_failing="${SIDE_HAS_KNOWN_FAILING}"
    if [ "${status}" != "ok" ]; then
      status_side="head"
    fi
  fi
  if [ "${status}" = "ok" ]; then
    run_side base "${work_dir}" "${label}" "${@}"
    if [ "${SIDE_STATUS}" != "ok" ]; then
      status="${SIDE_STATUS}"
      status_side="base"
    # Tests compare by the index of the harness call that ran them.
    elif [ "$(cat "${work_dir}/head-calls.txt")" != "$(cat "${work_dir}/base-calls.txt")" ]; then
      status="calls-differ"
    fi
  fi
  if [ "${status}" != "ok" ]; then
    echo "[]" >"${work_dir}/head-tests.json"
    echo "[]" >"${work_dir}/base-tests.json"
  fi

  jq -n \
    --arg implementation "${implementation}" \
    --arg target "${target}" \
    --arg commit "${commit}" \
    --arg status "${status}" \
    --arg statusSide "${status_side}" \
    --argjson knownFailingList "${has_known_failing}" \
    --slurpfile head "${work_dir}/head-tests.json" \
    --slurpfile base "${work_dir}/base-tests.json" \
    -f "${SCRIPT_DIR}/compare.jq" >"${result_file}"
  "${SCRIPT_DIR}/report.sh" summary "${result_file}" >>"${GITHUB_STEP_SUMMARY}"
  if [ "${status}" = "runner-not-called" ]; then
    echo "::error title=Conformance harness not called::${label} didn't call the protovalidate-conformance wrapper during its ${status_side} run" >&2
    exit 1
  fi
}

case "${1:-}" in
  changes)
    shift
    detect_changes "${@}"
    ;;
  install)
    shift
    install_wrapper "${@}"
    ;;
  install-go)
    shift
    install_go "${@}"
    ;;
  run)
    shift
    run_target "${@}"
    ;;
  skipped)
    shift
    skipped_implementations "${@}"
    ;;
  exec)
    shift
    exec_runner "${@}"
    ;;
  *)
    echo "usage: ${0} changes <base commit> <output file> | install <path> | install-go <path> <wrapper> | run <implementation> <target> <command...> | skipped <labels> <implementation...> | exec <args...>" >&2
    exit 2
    ;;
esac
