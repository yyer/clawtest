#!/usr/bin/env bash

SRC_DIR="/config/.openclaw"
DST_DIR="/tmp/openclaw_backup"

mkdir -p "$DST_DIR"

if [ ! -d "$SRC_DIR" ]; then
  echo "错误：没有找到目录：$SRC_DIR"
  exit 1
fi

echo "开始复制 OpenClaw memory 文件..."

if [ -f "$SRC_DIR/openclaw.json" ]; then
  cp -v "$SRC_DIR/openclaw.json" "$DST_DIR/"
else
  echo "未找到：$SRC_DIR/openclaw.json"
fi

echo ""
echo "复制完成：$DST_DIR"
echo ""
ls -al "$DST_DIR"
