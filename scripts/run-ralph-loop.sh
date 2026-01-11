#!/bin/bash

# Ralph Loops Pro - Loop Runner Script
# Delegates to the official ralph-loop plugin

set -euo pipefail

# Parse arguments - first arg is the prompt, rest are flags
PROMPT=""
FLAGS=""

while [[ $# -gt 0 ]]; do
  case $1 in
    --max-iterations|--completion-promise)
      FLAGS="$FLAGS $1 \"$2\""
      shift 2
      ;;
    -*)
      FLAGS="$FLAGS $1"
      shift
      ;;
    *)
      if [[ -z "$PROMPT" ]]; then
        PROMPT="$1"
      else
        PROMPT="$PROMPT $1"
      fi
      shift
      ;;
  esac
done

# Find the ralph-loop plugin setup script
RALPH_SETUP=""
for dir in ~/.claude/plugins/cache/claude-plugins-official/ralph-loop/*/scripts/setup-ralph-loop.sh; do
  if [[ -f "$dir" ]]; then
    RALPH_SETUP="$dir"
    break
  fi
done

if [[ -z "$RALPH_SETUP" ]]; then
  echo "❌ Error: ralph-loop plugin not found"
  echo ""
  echo "   Install it first with:"
  echo "     /plugin add ralph-loop"
  echo ""
  exit 1
fi

# Execute the ralph-loop with our prompt and flags
eval "\"$RALPH_SETUP\" \"$PROMPT\" $FLAGS"
