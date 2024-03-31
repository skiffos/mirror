#!/bin/bash
set -eo pipefail

aws \
    --profile skiff-mirror \
    s3 \
    --endpoint-url https://s3.us-east-005.backblazeb2.com \
    sync ./ s3://skiffos-mirror/ \
    --delete \
    --exclude ".git/*" \
    --exclude "sync.bash"
