#!/usr/bin/env bash


set -eu

args=(
    --mirror "/mnt/media/mirror"
    --ref-type branch
    "https://github.com/GrapheneOS/platform_manifest"
    "$@"
    ../*/repo-*.json
)

export TMPDIR=/tmp

../../mk-repo-file.py "${args[@]}"
