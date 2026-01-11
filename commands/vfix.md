---
description: "Aggressive visual fix loop - find and fix ALL UI issues"
argument-hint: "[URL]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Visual Fix (vfix)

Aggressive UI fixing loop with 20 iterations maximum.

## Usage

```
/vfix https://myapp.netlify.app
/vfix http://localhost:3000
```

Execute aggressive visual fix loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "AGGRESSIVE Visual Fix using Claude for Chrome MCP: Navigate to $ARGUMENTS → screenshot → read_console_messages pattern=error|Error|undefined|null|fail|TypeError|ReferenceError → read_network_requests → identify EVERY issue visible → fix ALL issues in one comprehensive pass → git commit -m fix: comprehensive UI fixes → git push → wait 60s for deploy → navigate_page type=reload ignoreCache=true → screenshot AFTER → click all buttons systematically → fill all forms → verify state changes occur → compare before/after screenshots → if ANY issue remains REPEAT. Use mcp__claude-in-chrome tools ONLY. No assumptions - visual proof required for every fix." --max-iterations 20 --completion-promise "All UI issues fixed with visual proof and zero errors"
```

## What It Does

1. Navigate to target URL
2. Screenshot BEFORE state
3. Read ALL console errors (comprehensive pattern)
4. Read network for failed requests
5. Identify EVERY visible issue
6. Fix ALL in one pass
7. Commit with descriptive message
8. Push and wait for deploy (60s)
9. Force reload (bypass cache)
10. Screenshot AFTER state
11. Click ALL buttons systematically
12. Fill ALL forms
13. Verify state changes
14. Compare before/after
15. REPEAT if ANY issue remains

## Differences from /vdebug

| Feature | /vdebug | /vfix |
|---------|---------|-------|
| Max iterations | 15 | 20 |
| Fix approach | Issue by issue | All in one pass |
| Wait time | 45s | 60s |
| Button testing | Sample | ALL buttons |
| Aggression | Normal | Maximum |

## Success Criteria

- All UI issues fixed
- Visual proof provided (screenshots)
- Zero console errors
- All interactions work
