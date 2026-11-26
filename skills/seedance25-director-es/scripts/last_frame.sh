#!/usr/bin/env bash
# 用法: last_frame.sh 输入.mp4 输出.png   —— 抽最后一帧作为下一镜头的接戏帧
set -euo pipefail
ffmpeg -v error -y -sseof -0.1 -i "$1" -frames:v 1 -update 1 "$2"
echo "尾帧: $2"
