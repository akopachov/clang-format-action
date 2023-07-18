#!/bin/sh -l

chown -R $(id -u):$(id -g) $PWD
git-clang-format --force --verbose --style="$1" $2