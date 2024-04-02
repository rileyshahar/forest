#!/bin/bash

set -euo pipefail

mv trees/"$1".tree trees/"$2".tree
find trees -type f -exec sed -i "s/($1)/($2)/g" {} \;
find trees -type f -exec sed -i "s/:$1/:$2/g" {} \;
