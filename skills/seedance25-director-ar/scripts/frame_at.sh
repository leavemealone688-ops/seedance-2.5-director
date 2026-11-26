#!/usr/bin/env bash
# 用法: frame_at.sh 输入.mp4 秒数 输出.png   —— 抽指定时间点的帧（剪辑切点帧）
set -euo pipefail
ffmpeg -v error -y -ss "$2" -i "$1" -frames:v 1 "$3"
echo "帧 @${2}s: $3"
