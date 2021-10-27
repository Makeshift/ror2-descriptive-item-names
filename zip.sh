#!/bin/bash
author=$(jq -r '.author' manifest.json)
name=$(jq -r '.name' manifest.json)
version=$(jq -r '.version_number' manifest.json)

zip -r "${author}-${name}-${version}.zip" . -x '*.git*' -x '*zip.sh*' -x '*.zip*'
