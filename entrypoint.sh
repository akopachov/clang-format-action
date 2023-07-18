#!/bin/sh -l

chown -R $(id -u):$(id -g) $PWD
git-clang-format --style="$1" $2