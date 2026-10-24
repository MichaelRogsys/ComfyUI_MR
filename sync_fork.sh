#!/usr/bin/env bash
# Merge Comfy-Org/ComfyUI master into this fork's master and push it.
set -euo pipefail

git fetch upstream
git switch master
git merge upstream/master
git push origin master
