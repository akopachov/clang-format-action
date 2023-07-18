#!/bin/sh -l

chown -R $(id -u):$(id -g) $PWD
git clang-format --force --style="$1" $2
printf 'Exit code: %d\n' $?
