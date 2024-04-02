#!/usr/bin/env bash

set -euo pipefail

scripts/build.sh
commit=$(git rev-parse --short HEAD)
cd output
git add .
git commit -m "deploy ${commit}"
git push -u origin main
