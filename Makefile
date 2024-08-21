# See https://tech.davis-hansson.com/p/make/
SHELL := bash
.DELETE_ON_ERROR:
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := all
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --no-print-directory
BIN := .tmp/bin
COPYRIGHT_YEARS := 2023
LICENSE_IGNORE := -e internal/testdata/
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
test: generate ## Run all unit tests
	$(GO) test -race -cover ./tools/...
	bazel test //...

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

.PHONY: conformance
conformance: ## Build conformance harness
	$(GO) build -o $(BIN)/protovalidate-conformance ./tools/protovalidate-conformance

.PHONY: generate
generate: ## Regenerate code and license headers
	$(MAKE) generate-bazel
	$(MAKE) generate-proto
	$(MAKE) generate-license

.PHONY: bazel
bazel: generate-bazel
	bazel build //...

.PHONY: generate-bazel
generate-bazel:
	bazel run //:gazelle

.PHONY: generate-proto
generate-proto: | $(BIN)/buf
	rm -rf tools/internal/gen/*/
	$(BIN)/buf generate

.PHONY: generate-license
generate-license: | $(BIN)/license-header
	@# We want to operate on a list of modified and new files, excluding
	@# deleted and ignored files. git-ls-files can't do this alone. comm -23 takes
	@# two files and prints the union, dropping lines common to both (-3) and
	@# those only in the second file (-2). We make one git-ls-files call for
	@# the modified, cached, and new (--others) files, and a second for the
	@# deleted files.
	comm -23 \
		<(git ls-files --cached --modified --others --no-empty-directory --exclude-standard | sort -u | grep -v $(LICENSE_IGNORE) ) \
		<(git ls-files --deleted | sort -u) | \
		xargs $(BIN)/license-header \
			--license-type apache \
			--copyright-holder "Buf Technologies, Inc." \
			--year-range "$(COPYRIGHT_YEARS)"

.PHONY: checkgenerate
checkgenerate: generate
	@# Used in CI to verify that `make generate` doesn't produce a diff.
	test -z "$$(git status --porcelain | tee /dev/stderr)"

.PHONY: upgrade-go
upgrade-go:
	cd ./tools/internal/gen && $(GO) get -u -t ./... && go mod tidy -v
	cd ./tools && $(GO) get -u -t ./... && go mod tidy -v

$(BIN):
	@mkdir -p $(BIN)

$(BIN)/buf: $(BIN) Makefile
	GOBIN=$(abspath $(@D)) $(GO) install github.com/bufbuild/buf/cmd/buf@latest

$(BIN)/license-header: $(BIN) Makefile
	GOBIN=$(abspath $(@D)) $(GO) install \
		  github.com/bufbuild/buf/private/pkg/licenseheader/cmd/license-header@latest

$(BIN)/golangci-lint: $(BIN) Makefile
	GOBIN=$(abspath $(@D)) $(GO) install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.60.2

