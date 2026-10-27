#!/usr/bin/env bash
# GitHub rejects files >100MB: split any such file under xcode/ into 90MB parts (rejoined by scripts/join.sh on the runner).
set -euo pipefail
cd "$(dirname "$0")/../xcode"
find . -type f -size +90M | while read -r f; do split -b 90m -d "$f" "$f.part-"; rm -f "$f"; echo "split: $f"; done
