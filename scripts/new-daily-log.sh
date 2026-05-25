#!/usr/bin/env sh
set -eu

repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
logs_dir="$repo_root/logs"

date_override="${1:-}"
if [ -n "$date_override" ]; then
  day="$date_override"
else
  day="$(date +%F)"
fi

mkdir -p "$logs_dir"
path="$logs_dir/$day.md"

if [ -f "$path" ]; then
  echo "$path"
  exit 0
fi

cat >"$path" <<EOF
# $day

## Target commits

- Target: ?
- Shipped: ?

## What changed

- 

## Next ideas

- 
EOF

echo "$path"
