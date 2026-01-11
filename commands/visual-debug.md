---
description: "Full visual debugging loop with detailed documentation"
argument-hint: "[URL]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Visual Debug (Full)

Comprehensive visual debugging with full documentation and systematic approach.

## Usage

```
/visual-debug https://myapp.netlify.app
/visual-debug http://localhost:3000
```

Execute full visual debug loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "COMPREHENSIVE Visual Debug using Claude for Chrome MCP:

PHASE 1 - INITIAL ASSESSMENT:
1. Call tabs_context_mcp to get valid browser tab ID
2. Take screenshot of current state (computer action=screenshot)
3. Read full page content (read_page for accessibility tree)
4. Check console for ALL errors (read_console_messages)
5. Check network for failed requests (read_network_requests)
6. Document all issues found

PHASE 2 - FIX CYCLE:
For each issue found:
a) Locate source file in codebase
b) Implement fix
c) Validate fix doesn't break other functionality
d) Document what was changed

PHASE 3 - DEPLOY & VERIFY:
7. Stage all changes: git add -A
8. Commit with descriptive message: git commit -m 'fix: [issues fixed]'
9. Push to trigger deployment: git push
10. Wait 60 seconds for deployment to complete
11. Force reload page: navigate_page type=reload ignoreCache=true

PHASE 4 - VALIDATION:
12. Take NEW screenshot - compare to initial
13. Re-check console for errors
14. Re-check network for failures
15. Test ALL interactive elements:
    - Click every button
    - Fill every form field
    - Submit forms
    - Verify state changes
    - Test navigation links
16. Document results

PHASE 5 - ITERATION:
17. If ANY issues remain → return to PHASE 2
18. If all clear → output completion promise

Target URL: $ARGUMENTS

MANDATORY: Use ONLY mcp__claude-in-chrome tools for all browser interactions.
Take screenshots as evidence at every phase transition.
Never assume - always verify visually." --max-iterations 15 --completion-promise "UI verified with zero console errors and all interactions working correctly"
```

## Evidence Requirements

Each iteration must produce:

```
ITERATION [N]:
================
SCREENSHOT: [before/after comparison]
CONSOLE: [error count] errors found
  - [error 1 details]
  - [error 2 details]
NETWORK: [failure count] failed requests
  - [request 1 details]
UI ISSUES: [count]
  - [issue 1]
  - [issue 2]
FIXES APPLIED:
  - [file:line] - [change description]
COMMIT: [hash]
DEPLOY: [status]
VERIFICATION: [pass/fail]
REMAINING: [issues still to fix]
```

## MCP Tools Used

| Tool | Purpose |
|------|---------|
| `tabs_context_mcp` | Get browser tab context |
| `computer action=screenshot` | Capture visual state |
| `read_page` | Get DOM/accessibility tree |
| `read_console_messages` | Find JS errors |
| `read_network_requests` | Find failed API calls |
| `navigate` | Navigate/reload pages |
| `click` | Test button interactions |
| `fill` | Test form inputs |
| `form_input` | Fill form fields |

## Tips

1. Always start with `tabs_context_mcp` - stale tab IDs cause failures
2. Use `pattern="error|Error"` to filter console noise
3. Take screenshots BEFORE and AFTER every fix
4. Test the most critical user flow first
5. Don't stop until promise is genuinely TRUE
