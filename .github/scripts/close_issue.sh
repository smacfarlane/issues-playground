#!/usr/bin/env bash

set -euo pipefail

declare -r issue_url="${1}"

curl \
  --silent \
  --show-error \
  --request PATCH \
  --header "Authorization: Bearer ${GITHUB_TOKEN}" \
  --header "Accept: application/vnd.github.v3+json" \
  "${issue_url}" \
  --data '{"state":"closed"}'
