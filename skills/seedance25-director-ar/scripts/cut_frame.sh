#!/usr/bin/env bash
# 用法: cut_frame.sh 输入.mp4 剪辑出点秒数 输出.png
# 下一镜要从“剪辑后真正留下的最后一帧”切入，而不是原片最后一帧（原片尾巴常被剪掉）。
set -euo pipefail
in="$1"; t="$2"; out="$3"
ffmpeg -v error -y -ss "$t" -i "$in" -frames:v 1 -q:v 2 "$out"
echo "衔接帧 @${t}s: $out"
