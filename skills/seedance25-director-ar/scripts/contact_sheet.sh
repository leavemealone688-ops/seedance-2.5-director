#!/usr/bin/env bash
# 用法: contact_sheet.sh 输入.mp4 输出.png [每秒帧数=1] [列数=5]
set -euo pipefail
in="$1"; out="$2"; fps="${3:-1}"; cols="${4:-5}"
dur=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$in")
n=$(python3 -c "import math;print(max(1,math.ceil(float('$dur')*$fps)))")
rows=$(( (n + cols - 1) / cols ))
ffmpeg -v error -y -i "$in" \
  -vf "fps=${fps},scale=320:-1,drawtext=text='%{pts\:hms}':x=8:y=8:fontsize=20:fontcolor=white:box=1:boxcolor=black@0.5,tile=${cols}x${rows}" \
  -frames:v 1 "$out"
echo "联系表: $out （${n} 帧, ${cols}x${rows}）"
