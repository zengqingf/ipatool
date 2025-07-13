#!/bin/bash

read -p "请输入 Bundle Identifier: " BUNDLE_ID
if [[ -z "$BUNDLE_ID" ]]; then
  echo "错误：Bundle Identifier 不能为空！"
  exit 1
fi

read -p "请输入最大版本数（默认 20）: " MAX_VERSIONS
MAX_VERSIONS=${MAX_VERSIONS:-20}

./ipatool_history version-history --bundle-identifier "$BUNDLE_ID" --max-versions "$MAX_VERSIONS"
