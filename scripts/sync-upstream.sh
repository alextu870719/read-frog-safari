#!/usr/bin/env bash
set -euo pipefail

UPSTREAM_REMOTE="${1:-upstream}"
UPSTREAM_BRANCH="${2:-main}"
UPSTREAM_URL="https://github.com/mengxi-ream/read-frog.git"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "[sync-upstream] not inside a git repository"
  exit 1
fi

CURRENT_BRANCH="$(git branch --show-current)"
if [[ "$CURRENT_BRANCH" != "main" ]]; then
  echo "[sync-upstream] please switch to main first (current: $CURRENT_BRANCH)"
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "[sync-upstream] working tree is not clean, commit or stash first"
  exit 1
fi

if ! git remote get-url "$UPSTREAM_REMOTE" >/dev/null 2>&1; then
  echo "[sync-upstream] adding remote '$UPSTREAM_REMOTE' -> $UPSTREAM_URL"
  git remote add "$UPSTREAM_REMOTE" "$UPSTREAM_URL"
fi

echo "[sync-upstream] fetching $UPSTREAM_REMOTE/$UPSTREAM_BRANCH"
git fetch "$UPSTREAM_REMOTE" --prune

echo "[sync-upstream] merging $UPSTREAM_REMOTE/$UPSTREAM_BRANCH into main"
git merge --no-ff "$UPSTREAM_REMOTE/$UPSTREAM_BRANCH" -m "merge: sync $UPSTREAM_REMOTE/$UPSTREAM_BRANCH"

echo "[sync-upstream] done"
