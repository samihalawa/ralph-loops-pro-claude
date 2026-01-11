---
description: "Quick ASO metadata optimization loop"
argument-hint: "[APP_NAME]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# ASO Quick Optimize

Fast metadata optimization for existing apps.

## Usage

```
/aso-optimize MyApp
```

Execute quick optimization loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "Quick ASO Metadata Optimization for $ARGUMENTS:

1. Fetch current app metadata via iTunes API (if live)
2. Analyze current keyword performance
3. Research competitor keywords in same category
4. Generate IMPROVED metadata:

APPLE APP STORE:
- Title: [keyword-optimized, ≤30 chars]
  Character count: X/30 ✓
- Subtitle: [benefit-focused, ≤30 chars]
  Character count: X/30 ✓
- Keywords: [no duplicates, no spaces, ≤100 chars]
  Character count: X/100 ✓

GOOGLE PLAY STORE:
- Title: [keyword-rich, ≤50 chars]
  Character count: X/50 ✓
- Short Description: [compelling, ≤80 chars]
  Character count: X/80 ✓
- Full Description: [keyword-integrated, ≤4000 chars]

5. Create A/B test variants for titles/subtitles
6. Output copy-paste ready content
7. Validate all character limits
8. Check natural language flow

Output to: outputs/$ARGUMENTS/02-metadata/

ITERATE until all metadata validated and copy-paste ready." --max-iterations 8 --completion-promise "Metadata optimized and copy-paste ready for both platforms"
```

## Quick Copy-Paste Output

Generates ready-to-use content:

```markdown
## Apple App Store Connect

### Title (30 chars max)
Your Optimized Title Here
Character Count: 25/30 ✓

### Subtitle (30 chars max)
Your Compelling Subtitle
Character Count: 24/30 ✓

### Keywords (100 chars max)
keyword1,keyword2,keyword3,...
Character Count: 95/100 ✓
```
