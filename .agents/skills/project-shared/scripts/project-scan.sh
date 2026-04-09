#!/usr/bin/env sh

set -eu

repo_root="${1:-.}"

cd "$repo_root"

printf 'リポジトリ: %s\n' "$(pwd)"
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || printf 'HEAD')"
  printf 'ブランチ: %s\n' "$branch"
  printf '\n'
  printf 'Git 状態:\n'
  git status --short || true
  printf '\n'
fi

printf 'トップレベルのファイル:\n'
find . -mindepth 1 -maxdepth 2 | sort | sed -n '1,80p'
