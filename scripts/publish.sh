
#!/usr/bin/env bash
# -e -o pipefail: Fail on when happening command errors
set -eo pipefail

# Usage:
#   ./scripts/publish.sh [--execute]
# Options:
#   --execute: Execute the publish command, otherwise dry-run (default)

# publish crates (order is important)
published_crates=(
  "nissy_a"
  "nissy_b"
  "nissy_c"
  "nissy_d"
  "nissy_e"
)

for crate in "${published_crates[@]}"; do
  echo "=============================="
  echo "Publishing crate: $crate"
  echo "=============================="
  if [ "$1" = "--execute" ]; then
    cargo publish -p $crate
  else
    cargo publish --dry-run --no-verify -p $crate
  fi
done
