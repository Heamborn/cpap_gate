#!/bin/sh
set -eu

echo "===== /etc/resolv.conf ====="
cat /etc/resolv.conf || true
echo "============================"

# 启动 nginx（官方推荐方式）
exec nginx -g "daemon off;"
