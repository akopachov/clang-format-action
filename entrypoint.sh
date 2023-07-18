#!/bin/sh -l

git clang-format --force --style="$1" $2
status=$?

printf 'Exit code: %d\n' $status

if [[ $status == 0 || $status == 1 ]]; then 
  exit 0
else
  exit $status
fi
