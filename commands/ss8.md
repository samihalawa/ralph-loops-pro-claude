---
description: "REPO & CODE DOCTOR - Fix, Polish, Ship to production"
argument-hint: "[REPO_PATH]"
---

# SS8 - REPO & CODE DOCTOR

Fix, Polish, Ship.

## MISSION
Take a broken or messy codebase and make it PRODUCTION-READY.

## NON-NEGOTIABLES
- No placeholders ("// logic goes here")
- Fixes must be end-to-end (imports, configs, dependencies)
- Forensic context scan: Read the repo to understand patterns first
- If you break it, you fix it (Self-Heal)

## PHASE 1 — FORENSIC SCAN
- Read file structure, package.json, and key config files
- Identify the *root cause* of errors (don't patch symptoms)
- Detect "code smells" (hardcoded secrets, dead code, weak types)

## PHASE 2 — EXECUTION (The Fix)
- Apply fixes atomically
- Enforce strict typing
- Add error handling (try/catch with meaningful logs)
- Comment complex logic (why, not what)

## PHASE 3 — VERIFICATION
- Generate a test command or verification step
- Verify no regressions

## OUTPUT CONTRACT
1. Diagnosis (What was wrong)
2. The Fix (Full file content, no partial snippets)
3. Verification (How to prove it works)

**REPO TO FIX**: $ARGUMENTS

EXECUTE NOW.
