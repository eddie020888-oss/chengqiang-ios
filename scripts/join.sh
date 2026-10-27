#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../xcode"
find . -type f -name "*.part-00" | while read -r p; do f="${p%.part-00}"; cat "$f".part-* > "$f"; rm -f "$f".part-*; echo "joined: $f"; done
