---
description: "Full ASO audit loop - keyword research, metadata, launch planning"
argument-hint: "[APP_NAME] [CATEGORY]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# ASO Full Audit Loop

Complete App Store Optimization audit with iterative refinement.

## Usage

```
/aso-audit FitFlow "Health & Fitness"
/aso-audit MyApp Productivity
```

Execute ASO audit loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "Full ASO Audit for $ARGUMENTS:

PHASE 1 - RESEARCH (aso-research):
1. Fetch competitor data via iTunes Search API
2. Analyze top 5 competitors in category
3. Extract keywords from competitor metadata
4. Identify 20+ priority keywords
5. Create keyword-list.md with tiers (primary/secondary/long-tail)
6. Create competitor-gaps.md with opportunities

PHASE 2 - OPTIMIZATION (aso-optimizer):
7. Generate Apple App Store metadata:
   - Title (≤30 chars) with primary keyword
   - Subtitle (≤30 chars) with secondary keyword
   - Keywords (≤100 chars, no duplicates, no spaces after commas)
   - Description with natural keyword integration
8. Generate Google Play Store metadata:
   - Title (≤50 chars)
   - Short description (≤80 chars)
   - Full description (≤4000 chars)
9. Validate ALL character limits
10. Check for natural language (no keyword stuffing)
11. Create visual-assets-spec.md for designers

PHASE 3 - STRATEGY (aso-strategist):
12. Create 47-item prelaunch-checklist.md
13. Generate timeline.md with REAL calendar dates (not Week 1, Week 2)
14. Create review-responses.md templates
15. Create ongoing-tasks.md (daily/weekly/monthly schedule)

PHASE 4 - SYNTHESIS:
16. Create 00-MASTER-ACTION-PLAN.md consolidating all phases
17. Calculate ASO health score (0-100)
18. Generate FINAL-REPORT.md with executive summary

OUTPUT STRUCTURE:
outputs/[APP_NAME]/
├── 00-MASTER-ACTION-PLAN.md
├── 01-research/
│   ├── keyword-list.md
│   ├── competitor-gaps.md
│   └── action-research.md
├── 02-metadata/
│   ├── apple-metadata.md
│   ├── google-metadata.md
│   ├── visual-assets-spec.md
│   └── action-metadata.md
├── 03-testing/
│   ├── ab-test-setup.md
│   └── action-testing.md
├── 04-launch/
│   ├── prelaunch-checklist.md
│   ├── timeline.md
│   ├── submission-guide.md
│   └── action-launch.md
├── 05-optimization/
│   ├── review-responses.md
│   ├── ongoing-tasks.md
│   └── action-optimization.md
└── FINAL-REPORT.md

VALIDATION:
- All files exist
- Character limits validated
- Real dates used
- No placeholders or TBD
- Actionable checklists with success criteria

ITERATE until all deliverables complete and validated." --max-iterations 12 --completion-promise "ASO audit complete with all deliverables validated and production-ready"
```

## iTunes API Integration

Uses free Apple iTunes Search API:
```
https://itunes.apple.com/search?term=[APP]&entity=software&limit=10
```

## Output Quality Standards

- Character limits validated per platform
- Natural language (readable, not stuffed)
- Real calendar dates
- Actionable tasks with checkboxes
- Success criteria for each task
