# See https://tech.davis-hansson.com/p/make/
SHELL := bash
.DELETE_ON_ERROR:
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-print-directory
BIN := .tmp/bin
COPYRIGHT_YEARS := 2023-2026
LICENSE_IGNORE := -e internal/testdata/
BUF_VERSION := v1.61.0
GOLANGCI_LINT_VERSION := v1.64.7
BAZELISK_VERSION := v1.27.0
# Set to use a different compiler. For example, `GO=go1.18rc1 make test`.
GO ?= go
ARGS ?=


.PHONY: help
help: ## Describe useful make targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "%-15s %s\n", $$1, $$2}'

.PHONY: all
all: generate lint test conformance ## Run all tests and lint (default)

.PHONY: clean
clean: ## Delete intermediate build artifacts
	@# -X only removes untracked files, -d recurses into directories, -f actually removes files/dirs
	git clean -Xdf

.PHONY: test
test: test-go test-bazel ## Run all unit tests

.PHONY: test-go
test-go:
	$(GO) test -race -cover ./tools/...

.PHONY: test-bazel
test-bazel: generate | $(BIN)/bazelisk
	$(BIN)/bazelisk test //...

.PHONY: lint
lint: lint-proto lint-go  ## Lint code and protos

.PHONY: lint-go
lint-go: | $(BIN)/golangci-lint
	$(BIN)/golangci-lint run --modules-download-mode=readonly --timeout=3m0s ./tools/...

.PHONY: lint-go-fix
lint-go-fix: | $(BIN)/golangci-lint
	$(BIN)/golangci-lint run --fix --modules-download-mode=readonly --timeout=3m0s ./tools/...

.PHONY: lint-proto
lint-proto: | $(BIN)/buf
	$(BIN)/buf lint
	$(BIN)/buf breaking --against '.git#branch=main'
	$(MAKE) lint-protovalidate

.PHONY: lint-protovalidate
lint-protovalidate: | $(BIN)/buf  ## Check invariants of validate.proto
	PATH="$(abspath $(BIN)):$$PATH" $(GO) run ./tools/internal/protovalidate-check proto/protovalidate

.PHONY: conformance
conformance: ## Build conformance harness
	$(GO) build -o $(BIN)/protovalidate-conformance ./tools/protovalidate-conformance

.PHONY: generate
generate: ## Regenerate code and license headers
	$(MAKE) generate-bazel
	$(MAKE) generate-proto
	$(MAKE) generate-license

.PHONY: bazel
bazel: generate-bazel | $(BIN)/bazelisk
	$(BIN)/bazelisk build //...

.PHONY: generate-bazel
generate-bazel: | $(BIN)/bazelisk
	$(BIN)/bazelisk run //:gazelle

.PHONY: generate-proto
generate-proto: | $(BIN)/buf
	$(BIN)/buf generate
	mkdir -p ../go_proto_local && cd ../go_proto_local && $(GO) mod init buf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go && $(GO) mod tidy

.PHONY: generate-license
generate-license: | $(BIN)/license-header
	$(BIN)/license-header \
		--license-type apache \
		--copyright-holder "Buf Technologies, Inc." \
		--year-range "$(COPYRIGHT_YEARS)"

.PHONY: checkgenerate
checkgenerate: generate
	@# Used in CI to verify that `make generate` doesn't produce a diff.
	test -z "$$(git status --porcelain | tee /dev/stderr)"

.PHONY: upgrade-go
upgrade-go:
	cd ./tools && $(GO) get -u -t ./... && go mod tidy -v

.PHONY: generate-workspace
generate-workspace: generate-proto
	cd .. && go work init go_proto_local protovalidate-go protovalidate/tools && go work sync

$(BIN):
	@mkdir -p $(BIN)

$(BIN)/buf: Makefile | $(BIN)
	GOBIN=$(abspath $(@D)) $(GO) install github.com/bufbuild/buf/cmd/buf@$(BUF_VERSION)

$(BIN)/bazelisk: Makefile | $(BIN)
	GOBIN=$(abspath $(@D)) $(GO) install github.com/bazelbuild/bazelisk@$(BAZELISK_VERSION)

$(BIN)/license-header: Makefile | $(BIN)
	GOBIN=$(abspath $(@D)) $(GO) install \
		  github.com/bufbuild/buf/private/pkg/licenseheader/cmd/license-header@$(BUF_VERSION)

$(BIN)/golangci-lint: Makefile | $(BIN)
	GOBIN=$(abspath $(@D)) $(GO) install github.com/golangci/golangci-lint/cmd/golangci-lint@$(GOLANGCI_LINT_VERSION)
