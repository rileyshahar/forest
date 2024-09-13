#!/bin/bash

trap "kill 0" EXIT
python3 -m http.server 1313 -d output &>/dev/null &
find . -name "*.tree" | entr scripts/build.sh --dev
# watch -n 1 scripts/build.sh --dev
wait
