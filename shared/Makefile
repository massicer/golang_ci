.DEFAULT_GOAL := all

.PHONY: lint
lint:
	golangci-lint run

.PHONY: test-coverage
test-coverage:
	go test ./... -test.v -coverprofile cp.out

.PHONY: test
test:
	go test ./... -test.v

.PHONY: build
build:
	go build ./...

.PHONY: all
all: lint test-coverage build