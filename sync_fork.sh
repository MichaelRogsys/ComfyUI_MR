#!/usr/bin/env bash
# Merge Comfy-Org/ComfyUI master into this fork's master and push it.
# Run with ./sync_fork.sh
#
# - Switches to master. If uncommitted changes touch the same files as master,
#   the switch is refused: commit or stash them first.
# - Merges rather than rebases, so each sync adds a merge commit but never
#   needs a force-push.
# - If upstream changed the same lines as the fork's own commits, the merge
#   stops. Resolve the conflicts, commit, then run: git push origin master
#   Likely spots: comfy/model_management.py, comfy/sd.py, .gitignore
# - Do not commit your own work straight to master. Use a branch per change.
set -euo pipefail

git fetch upstream
git switch master
git merge upstream/master
git push origin master
