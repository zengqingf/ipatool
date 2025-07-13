#!/bin/bash

read -p "请输入 Bundle Identifier: " BUNDLE_ID
if [[ -z "$BUNDLE_ID" ]]; then
  echo "错误：Bundle Identifier 不能为空！"
  exit 1
fi

read -p "请输入 Version ID: " VERSION_ID
if [[ -z "$VERSION_ID" ]]; then
  echo "错误：Version ID 不能为空！"
  exit 1
fi

./ipatool_history download --bundle-identifier "$BUNDLE_ID" --version-id "$VERSION_ID"
