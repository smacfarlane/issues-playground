#!/usr/bin/env bash

set -euo pipefail

declare -r comment_url="${1}"

curl \
  -X POST \
  -H "Authorization: Bearer ${GITHUB_TOKEN}"
  -H "Accept: application/vnd.github.v3+json" \
  "${comment_url}" \
  -d '{"body":"![taco](https://c.tenor.com/zBiP5wuKb8UAAAAi/taco-tuesday-taco.gif)"}'
