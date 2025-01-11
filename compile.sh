#!/usr/bin/env bash

find $1 -type f | while read -r file; do
  cat "$file"
  echo ""
done > combined.txt