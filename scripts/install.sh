#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_root/skills/feynman-learning"
target="${1:-all}"
dry_run=0

if [[ "${target:-}" == "--dry-run" ]]; then
  dry_run=1
  target="${2:-all}"
fi

if [[ ! -d "$source_dir" ]]; then
  echo "Missing source skill directory: $source_dir" >&2
  exit 1
fi

install_one() {
  local dest_root="$1"
  local dest="$dest_root/feynman-learning"
  if [[ "$dest_root" == "/" || "$dest" == "/" || -z "$dest_root" || -z "$dest" ]]; then
    echo "Refusing unsafe install destination: $dest" >&2
    exit 1
  fi
  if [[ "$dry_run" -eq 1 ]]; then
    echo "Would install feynman-learning -> $dest"
    return
  fi
  mkdir -p "$dest_root"
  rm -rf -- "$dest"
  cp -R "$source_dir" "$dest"
  echo "Installed feynman-learning -> $dest"
}

case "$target" in
  codex)
    install_one "${CODEX_HOME:-$HOME/.codex}/skills"
    ;;
  cursor)
    install_one "$HOME/.cursor/skills"
    ;;
  all)
    install_one "${CODEX_HOME:-$HOME/.codex}/skills"
    install_one "$HOME/.cursor/skills"
    ;;
  *)
    echo "Usage: $0 [--dry-run] [codex|cursor|all]" >&2
    exit 2
    ;;
esac
