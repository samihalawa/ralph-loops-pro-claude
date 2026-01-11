---
description: "Quick visual debug loop - screenshot, find issues, fix, verify"
argument-hint: "[URL]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Visual Debug (vdebug)

Quick visual debugging loop using Claude for Chrome MCP tools.

## Usage

```
/vdebug https://myapp.netlify.app
/vdebug http://localhost:3000
/vdebug  # Uses current browser tab
```

Execute the ralph loop for visual debugging:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "Visual Debug with Claude for Chrome MCP: 1) tabs_context_mcp to get tab 2) screenshot current state 3) read_console_messages pattern=error|Error|undefined|null|fail 4) read_network_requests for failed calls 5) read_page for broken UI elements 6) FIX all issues found in codebase 7) git add -A && git commit -m fix: UI issues && git push 8) wait 45s for deploy 9) navigate_page type=reload ignoreCache=true 10) NEW screenshot 11) test clicks/forms with computer tool 12) REPEAT until clean. ALWAYS use mcp__claude-in-chrome tools. Screenshot as evidence each step. Target: $ARGUMENTS" --max-iterations 15 --completion-promise "Zero console errors and all UI elements verified working"
```

## What It Does

1. **Screenshot** current state
2. **Read console** for JS errors
3. **Read network** for failed requests
4. **Read page** for broken elements
5. **Fix** all issues in code
6. **Commit & push**
7. **Wait** for deployment
8. **Reload** with cache bypass
9. **New screenshot** - compare
10. **Test interactions** - clicks, forms
11. **Repeat** until clean

## Required MCP

This command requires **Claude for Chrome** MCP to be active:
- `mcp__claude-in-chrome__tabs_context_mcp`
- `mcp__claude-in-chrome__computer` (screenshot)
- `mcp__claude-in-chrome__read_console_messages`
- `mcp__claude-in-chrome__read_network_requests`
- `mcp__claude-in-chrome__read_page`
- `mcp__claude-in-chrome__navigate`
- `mcp__claude-in-chrome__click`
- `mcp__claude-in-chrome__fill`

## Success Criteria

Loop completes when ALL true:
- Zero JavaScript console errors
- Zero failed network requests
- All buttons clickable
- All forms submittable
- Screenshots prove improvement
