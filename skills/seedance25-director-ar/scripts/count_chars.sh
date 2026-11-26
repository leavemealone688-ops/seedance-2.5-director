#!/usr/bin/env bash
# 用法: count_chars.sh prompt.txt [上限=5000]
# 统计字符数（中文按 1 个字符计）并检查是否超平台上限，同时报出非 ASCII 字符数（部分海外画布团队规则要求纯 ASCII）。
set -euo pipefail
f="$1"; lim="${2:-5000}"
python3 - "$f" "$lim" <<'PY'
import sys
t=open(sys.argv[1],encoding="utf-8").read().rstrip("\n")
lim=int(sys.argv[2]); n=len(t); na=sum(1 for c in t if ord(c)>127)
print(f"字符数 {n} / 上限 {lim}  {'OK' if n<=lim else '超出 '+str(n-lim)}")
print(f"非 ASCII 字符 {na}")
bad=[w for w in ["still ","as before","again,","same as last","修改后","上一版","如前"] if w in t]
if bad: print("提示：出现可能指向旧版本的词 ->", bad)
PY
