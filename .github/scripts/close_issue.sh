#!/usr/bin/env bash

set -euo pipefail

declare -r issue_url="${1}"

curl \
  -X PATCH \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  "${issue_url}" \
  -d '{"state":"closed"}'
