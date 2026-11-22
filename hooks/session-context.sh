#!/bin/bash
# AI product — SessionStart hook.
# Prints the product manager's memory for this project: date, company stage, specs in draft or
# review, overdue/upcoming obligations, last journal entries, pending learnings, inbox, latest
# digest. Silent when the project has no ai-team/product workspace.
set -u
# Find the nearest workspace: ai-team/product in the project folder or any parent folder
# (a company folder can hold ai-team/ next to projects/<product>/).
dir="${CLAUDE_PROJECT_DIR:-$PWD}"
WS=""
while [ -n "$dir" ] && [ "$dir" != "/" ]; do
  if [ -d "$dir/ai-team/product" ]; then WS="$dir/ai-team"; break; fi
  dir=$(dirname "$dir")
done
[ -n "$WS" ] || exit 0
ME="$WS/product"
cd "$ME" || exit 0

version=$(grep -m1 '"version"' "${CLAUDE_PLUGIN_ROOT:-.}/.claude-plugin/plugin.json" 2>/dev/null | sed 's/.*"version": *"\([^"]*\)".*/\1/')
today=$(date +%F)
soon=$(date -v+30d +%F 2>/dev/null || date -d '+30 days' +%F)

echo "=== AI PRODUCT ${version:+v$version }— session context (${today}) ==="
echo "Rules: ${CLAUDE_PLUGIN_ROOT:-<plugin>}/RULES.md (agent ai-product:product). Evidence over opinion. Never invent customers, quotes or numbers. The founder decides. Log every job (log-job)."
echo "Workspace: $WS  (every ai-team/... path in the rules and skills means this folder)"

stage=$(grep -m1 '^- \*\*Stage:\*\*' "$WS/company/profile.md" 2>/dev/null | sed 's/^- \*\*Stage:\*\* *//')
nsm=$(grep -m1 '^- \*\*North Star:\*\*' metrics.md 2>/dev/null | sed 's/^- \*\*North Star:\*\* *//' | cut -c1-80)
echo "Company stage: ${stage:-unknown} · North Star: ${nsm:-not defined}"
echo

echo "--- Specs in draft or review ---"
found=0
for f in specs/SPEC-*.md; do
  [ -e "$f" ] || continue
  st=$(grep -m1 '^status:' "$f" | sed 's/^status: *//; s/ *#.*//; s/"//g')
  case "$st" in
    draft|review)
      title=$(grep -m1 '^title:' "$f" | sed 's/^title: *//; s/ *#.*//; s/"//g')
      upd=$(grep -m1 '^updated:' "$f" | sed 's/^updated: *//; s/ *#.*//')
      echo "$(basename "$f" .md)  [$st] ${title:-untitled} (updated ${upd:-?})"; found=1 ;;
  esac
done
[ $found -eq 0 ] && echo "(none)"
echo

echo "--- Product obligations: overdue or due by ${soon} ---"
if [ -f history/obligations.md ]; then
  awk -F'|' -v today="$today" -v soon="$soon" '
    /^\| O-/ {
      id=$2; due=$3; type=$4; what=$5; status=$7
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", due); gsub(/^ +| +$/, "", type)
      gsub(/^ +| +$/, "", what); gsub(/^ +| +$/, "", status)
      if (status == "open" && due ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && due <= soon) {
        flag = (due < today) ? "OVERDUE " : ""
        printf "%s%s  %s  [%s] %s\n", flag, id, due, type, what; n++
      }
      if (status == "open" && due == "—") u++
    }
    END { if (n == 0) print "(none)"; if (u > 0) printf "(+ %d open items without a date)\n", u }' history/obligations.md
fi
echo

echo "--- Last journal entries ---"
j=$(grep '^## J-' history/journal.md 2>/dev/null | tail -n 6)
echo "${j:-(none)}"
echo

pending=$(grep -c '^| L-[0-9]* .*| general .*| pending' learnings.md 2>/dev/null || true)
inbox=$(find inbox -type f ! -name 'README.md' ! -name '.*' 2>/dev/null | wc -l | tr -d ' ')
latest=$(ls -1 digests/20*.md 2>/dev/null | tail -n 1)
echo "Inbox: ${inbox:-0} file(s) · Pending general learnings: ${pending:-0}$( [ "${pending:-0}" -ge 3 ] && echo ' → suggest ai-product:improve') · Latest digest: ${latest:-none yet}"
exit 0
