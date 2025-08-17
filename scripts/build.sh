#!/bin/bash

if [ $# -gt 0 ]; then
  forester build forest.toml "$1"
else
  forester build forest.toml
fi
