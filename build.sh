#!/usr/bin/env sh

set -ex

go clean -cache
env GOOS=freebsd GOARCH=amd64 go build -o v2fly -ldflags "-s -w -buildid=" ./main
