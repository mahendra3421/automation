#!/usr/bin/env sh
set -eu

max="${1:-10}"

case "$max" in
  ''|*[!0-9]*)
    echo "usage: $0 [max_int]" >&2
    exit 2
    ;;
esac

if [ "$max" -lt 1 ]; then
  echo "max must be >= 1" >&2
  exit 2
fi

if [ -n "${RANDOM-}" ]; then
  echo $(( (RANDOM % max) + 1 ))
  exit 0
fi

if command -v od >/dev/null 2>&1; then
  n="$(od -An -N2 -tu2 /dev/urandom 2>/dev/null | tr -d ' ')"
  if [ -n "${n:-}" ]; then
    echo $(( (n % max) + 1 ))
    exit 0
  fi
fi

echo "1"
