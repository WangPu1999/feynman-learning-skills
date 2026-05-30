#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_root/skills/feynman-learning"
target="${1:-all}"

install_one() {
  local dest_root="$1"
  local dest="$dest_root/feynman-learning"
  mkdir -p "$dest_root"
  rm -rf "$dest"
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
    echo "Usage: $0 [codex|cursor|all]" >&2
    exit 2
    ;;
esac

