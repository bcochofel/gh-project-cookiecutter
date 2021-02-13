#!/usr/bin/env bash

# check if we have pre-commit installed
if ! command -v pre-commit &>/dev/null; then
    echo "pre-commit could not be found"
    exit 1
fi

git init
git add .
git commit -m "first commit"
git branch -M main

pre-commit install
pre-commit install --hook-type commit-msg

exit 0
