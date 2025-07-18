#!/usr/bin/env bash
set -euo pipefail

MSG="$1"
BRANCH="development"
REMOTE="origin"

# 1. Fetch latest refs
git fetch "$REMOTE"

# 2. Check if branch exists locally; if not, try to track remote or create it
if git show-ref --verify --quiet "refs/heads/$BRANCH"; then
  echo "Switching to existing local branch '$BRANCH'"
  git checkout "$BRANCH"
else
  if git ls-remote --exit-code --heads "$REMOTE" "$BRANCH" >/dev/null; then
    echo "Branch '$BRANCH' exists on $REMOTE; checking it out"
    git checkout -b "$BRANCH" --track "$REMOTE/$BRANCH"
  else
    echo "Branch '$BRANCH' not found; creating new branch"
    git checkout -b "$BRANCH"
  fi
fi

# 3. Update from remote
git pull "$REMOTE" "$BRANCH"

# 4. Commit changes
git add -A
git commit -m "$MSG"

# 5. Push (will set upstream on first push)
git push --set-upstream "$REMOTE" "$BRANCH"
