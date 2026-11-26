#!/usr/bin/env bash
# Seedance 2.5 Skill installer: copies skills/seedance25-director* into each tool's skills folder.
# Usage:
#   ./install.sh claude|codex|gemini|cursor|codebuddy|all [--lang LANGS] [--project DIR] [--dry-run]
#   ./install.sh workbuddy-zip [--lang LANGS]       build zip(s) for WorkBuddy's local skill upload
#   --lang  all (default) or a comma list: zh-cn,zh-tw,en,ko,ja,es,pt-br,fr,de,id,vi,th,ar,ru
#           (zh = zh-cn, pt = pt-br)
#   --project DIR  install into a project instead of your home folder
#   --dry-run      print what would happen, change nothing
set -euo pipefail
BASE="seedance25-director"
HERE="$(cd "$(dirname "$0")" && pwd)"
ALL_LANGS="zh-cn zh-tw en ko ja es pt-br fr de id vi th ar ru"
usage() { sed -n '2,10p' "$0"; }
tool="${1:-}"; [ $# -gt 0 ] && shift
project=""; dry=0; langs="all"
while [ $# -gt 0 ]; do
  case "$1" in
    --project) project="${2:?--project needs a folder}"; shift 2;;
    --lang|--langs) langs="${2:?--lang needs a value}"; shift 2;;
    --lang=*) langs="${1#--lang=}"; shift;;
    --dry-run) dry=1; shift;;
    -h|--help) usage; exit 0;;
    *) echo "Unknown option: $1"; usage; exit 1;;
  esac
done

folder_for() {  # language code -> skill folder name
  case "$(echo "$1" | tr 'A-Z_' 'a-z-')" in
    zh|zh-cn|zh-hans|cn) echo "$BASE";;
    zh-tw|zh-hant|tw) echo "$BASE-zh-tw";;
    pt|pt-br) echo "$BASE-pt-br";;
    en|ko|ja|es|fr|de|id|vi|th|ar|ru) echo "$BASE-$(echo "$1" | tr 'A-Z' 'a-z')";;
    *) echo "";;
  esac
}
[ "$langs" = "all" ] && langs="$ALL_LANGS"
FOLDERS=()
for l in $(echo "$langs" | tr ',' ' '); do
  f="$(folder_for "$l")"
  [ -n "$f" ] || { echo "Unsupported language: $l (choose from: $ALL_LANGS)"; exit 1; }
  [ -f "$HERE/skills/$f/SKILL.md" ] || { echo "Missing $HERE/skills/$f/SKILL.md"; exit 1; }
  FOLDERS+=("$f")
done

dir_for() {  # tool -> skills root
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
      codex) echo "$HOME/.agents/skills";;      # older Codex reads ~/.codex/skills, see README
      gemini) echo "$HOME/.gemini/skills";;
      cursor) echo "$HOME/.cursor/skills";;
      codebuddy) echo "$HOME/.codebuddy/skills";;
    esac
  fi
}

install_one() {
  local t="$1" root f dest; root="$(dir_for "$t")"
  [ -n "$root" ] || { echo "Unsupported tool: $t"; exit 1; }
  for f in "${FOLDERS[@]}"; do
    dest="$root/$f"
    echo "[$t] -> $dest"
    if [ $dry -eq 0 ]; then
      mkdir -p "$root"
      if [ -e "$dest" ]; then mv "$dest" "$dest.bak.$(date +%Y%m%d%H%M%S)"; echo "  existing copy renamed as a backup"; fi
      cp -R "$HERE/skills/$f" "$dest"   # copy, not symlink: some tools skip symlinks
      chmod +x "$dest/scripts/"* 2>/dev/null || true
    fi
  done
}

case "$tool" in
  claude|codex|gemini|cursor|codebuddy) install_one "$tool";;
  all) for t in claude codex gemini cursor codebuddy; do install_one "$t"; done;;
  workbuddy-zip)
    for f in "${FOLDERS[@]}"; do
      out="$HERE/$f.zip"
      echo "zip -> $out"
      if [ $dry -eq 0 ]; then
        rm -f "$out"
        if command -v zip >/dev/null; then (cd "$HERE/skills" && zip -qr "$out" "$f")
        else python3 -c "import shutil,sys;shutil.make_archive(sys.argv[1][:-4],'zip',sys.argv[2],sys.argv[3])" "$out" "$HERE/skills" "$f"; fi
      fi
    done;;
  -h|--help) usage; exit 0;;
  *) usage; exit 1;;
esac
echo "Done. Restart the tool (or use its reload command) to pick up the skills."
