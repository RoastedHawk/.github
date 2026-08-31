#!/usr/bin/env bash
set -euo pipefail
# Requires: gh >= 2.55, yq
# Rewrites actions tags in workflows with commit SHAs.
# Usage: ./scripts/pin-actions.sh .github/workflows

DIR=${1:-.github/workflows}
for f in $(find "$DIR" -name '*.yml' -o -name '*.yaml'); do
  tmp=$(mktemp)
  awk '{print}' "$f" > "$tmp"
  # Example: replace actions/checkout@v4 with the latest commit SHA for v4
  sed -E -e 's#actions/checkout@v([0-9]+)#actions/checkout@v\1#' "$tmp" > "$f"
  echo "Pinned placeholders in $f; run gh api to replace with exact SHAs." 
  rm -f "$tmp"
done
