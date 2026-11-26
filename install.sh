#!/usr/bin/env bash
# Seedance 2.5 Skill 安装脚本：把 skills/seedance25-skill 复制到各工具的技能目录。
# 用法：
#   ./install.sh claude|codex|gemini|cursor|codebuddy|all     安装到用户级目录
#   ./install.sh <工具> --project /path/to/repo                 安装到项目级目录
#   ./install.sh workbuddy-zip                                  打包 zip，供 WorkBuddy「上传技能」导入
#   加 --dry-run 只打印不执行
set -euo pipefail
NAME="seedance25-skill"
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC="$HERE/skills/$NAME"
tool="${1:-}"; shift || true
project=""; dry=0
while [ $# -gt 0 ]; do
  case "$1" in
    --project) project="$2"; shift 2;;
    --dry-run) dry=1; shift;;
    *) echo "未知参数: $1"; exit 1;;
  esac
done
[ -f "$SRC/SKILL.md" ] || { echo "找不到 $SRC/SKILL.md"; exit 1; }

dir_for() {  # 工具 -> 技能根目录
  local t="$1"
  if [ -n "$project" ]; then
    case "$t" in
      claude) echo "$project/.claude/skills";;
      codex) echo "$project/.agents/skills";;
      gemini) echo "$project/.gemini/skills";;
      cursor) echo "$project/.cursor/skills";;
      codebuddy) echo "$project/.codebuddy/skills";;
    esac
  else
    case "$t" in
      claude) echo "$HOME/.claude/skills";;
      codex) echo "$HOME/.agents/skills";;      # 旧版 Codex 读 ~/.codex/skills，见 README
      gemini) echo "$HOME/.gemini/skills";;
      cursor) echo "$HOME/.cursor/skills";;
      codebuddy) echo "$HOME/.codebuddy/skills";;
    esac
  fi
}

install_one() {
  local t="$1" root; root="$(dir_for "$t")"
  [ -n "$root" ] || { echo "不支持的工具: $t"; exit 1; }
  local dest="$root/$NAME"
  echo "[$t] -> $dest"
  if [ $dry -eq 0 ]; then
    mkdir -p "$root"
    if [ -e "$dest" ]; then mv "$dest" "$dest.bak.$(date +%Y%m%d%H%M%S)"; echo "  已有旧版本，已改名备份"; fi
    cp -R "$SRC" "$dest"   # 复制而不是软链：部分工具会跳过软链
    chmod +x "$dest/scripts/"* 2>/dev/null || true
  fi
}

case "$tool" in
  claude|codex|gemini|cursor|codebuddy) install_one "$tool";;
  all) for t in claude codex gemini cursor codebuddy; do install_one "$t"; done;;
  workbuddy-zip)
    out="$HERE/$NAME.zip"
    echo "打包 -> $out"
    if [ $dry -eq 0 ]; then
      rm -f "$out"
      if command -v zip >/dev/null; then (cd "$HERE/skills" && zip -qr "$out" "$NAME")
      else python3 -c "import shutil,sys;shutil.make_archive(sys.argv[1][:-4],'zip',sys.argv[2],sys.argv[3])" "$out" "$HERE/skills" "$NAME"; fi
    fi;;
  *) sed -n '2,7p' "$0"; exit 1;;
esac
echo "完成。重启对应工具或使用其刷新命令后生效。"
