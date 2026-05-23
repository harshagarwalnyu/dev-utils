#!/usr/bin/env bash
set -euo pipefail
# Prune local branches already merged into main
git fetch --prune
git branch --merged main | grep -v '^\*\|main\|master' | xargs -r git branch -d
echo 'Cleaned up merged branches.'
