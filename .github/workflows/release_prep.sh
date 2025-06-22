#!/bin/bash
set -x -e -u -o pipefail

if [[ $# -ne 1 ]]; then
    >&2 echo "Usage: ${0} <version tag>"
    exit 1
fi

NAME="protovalidate"
TAG="${1}"
PREFIX="${NAME}-${TAG:1}"
ARCHIVE="${PREFIX}.tar.gz"

# Update MODULE.bazel version
>&2 echo "# Update MODULE.bazel version to ${TAG:1}"
if ! awk -v tag="${TAG:1}" '
    sub(/version = "0\.0\.0",/, "version = \"" tag "\",") {
        count++;
    }
    { print; }
    END {
        if (count != 1) {
            exit 1;
        }
    }
' MODULE.bazel > MODULE.bazel.tmp; then
    >&2 echo "Failed to update MODULE.bazel version!"
    rm MODULE.bazel.tmp
    exit 1
fi

mv MODULE.bazel.tmp MODULE.bazel
>&2 echo "MODULE.bazel contents:"
cat MODULE.bazel

# Create release archive
>&2 echo "# Create release archive ${ARCHIVE}"
git archive \
    --prefix="${PREFIX}/" \
    --output="${ARCHIVE}" \
    "$(git stash create)"

>&2 echo "Release archive ${ARCHIVE} contents:"
tar tvf "${ARCHIVE}"

# Calculate SHA256 sum for WORKSPACE code
SHA256=$(shasum -a 256 "${ARCHIVE}" | awk '{print $1}')

# Generate release notes snippets
>&2 echo "# Generate release notes snippets"
> release_notes.md cat << EOF
## \`MODULE.bazel\` Usage
\`\`\`bzl
bazel_dep(name = "protovalidate", version = "${TAG:1}")
\`\`\`

## \`WORKSPACE\` Usage
\`\`\`bzl
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_bufbuild_protovalidate",
    sha256 = "${SHA256}",
    strip_prefix = "${PREFIX}",
    urls = [
        "https://github.com/bufbuild/protovalidate/releases/download/${TAG}/protovalidate-${TAG:1}.tar.gz",
    ],
)
\`\`\`
EOF

>&2 echo "Success."
