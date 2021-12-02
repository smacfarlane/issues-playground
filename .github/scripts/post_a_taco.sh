#!/usr/bin/env bash

set -euo pipefail

declare -r comment_url="${1}"

curl \
  --silent \
  --show-error \
  --request POST \
  --header "Authorization: Bearer ${GITHUB_TOKEN}" \
  --header "Accept: application/vnd.github.v3+json" \
  "${comment_url}" \
  --data '{"body":"![taco](https://c.tenor.com/zBiP5wuKb8UAAAAi/taco-tuesday-taco.gif)"}'
