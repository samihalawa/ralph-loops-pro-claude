# Ralph Loops Pro

Professional Ralph Loop templates for Claude Code - Visual debugging, ASO workflows, and iOS/Android deployment automation.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-purple)](https://claude.ai/code)

## Features

- **Visual Debugging** - Automated UI testing with Claude for Chrome
- **ASO Workflows** - App Store Optimization with iTunes API integration
- **Fastlane Deployment** - iOS/Android deployment automation
- **EnvMem Integration** - Cloud-based credential management

## Installation

```bash
/plugin add samihalawa/ralph-loops-pro-claude
```

Or install from GitHub:

```bash
/plugin add https://github.com/samihalawa/ralph-loops-pro-claude
```

### Prerequisites

1. **ralph-loop plugin** (required):
   ```bash
   /plugin add ralph-loop
   ```

2. **Claude for Chrome** MCP (for visual debugging):
   - Install Claude for Chrome extension
   - Enable MCP connection

3. **envmem.com** (optional, for credential management):
   - Create account at https://envmem.com
   - Add API key to environment

## Quick Start

### Visual Debugging

```bash
# Quick debug
/vdebug https://myapp.netlify.app

# Aggressive fix mode
/vfix http://localhost:3000

# Full debug with documentation
/visual-debug https://myapp.com
```

### ASO Workflows

```bash
# Full ASO audit
/aso-audit FitFlow "Health & Fitness"

# Quick metadata optimization
/aso-optimize MyApp
```

### Deployment

```bash
# iOS to TestFlight
/deploy-ios ./MyApp

# Android to Play Store
/deploy-android ./MyApp

# Both platforms with verification
/deploy-full ./MyApp
```

## Commands Reference

### Visual Debugging

| Command | Description | Iterations |
|---------|-------------|------------|
| `/vdebug [URL]` | Quick visual debug | 15 |
| `/vfix [URL]` | Aggressive UI fixes | 20 |
| `/visual-debug [URL]` | Full documented debug | 15 |

### ASO

| Command | Description | Iterations |
|---------|-------------|------------|
| `/aso-audit [APP] [CATEGORY]` | Full ASO audit | 12 |
| `/aso-optimize [APP]` | Metadata optimization | 8 |

### Deployment

| Command | Description | Iterations |
|---------|-------------|------------|
| `/deploy-ios [PATH]` | iOS/macOS deployment | 10 |
| `/deploy-android [PATH]` | Android deployment | 10 |
| `/deploy-full [PATH]` | Both platforms | 15 |

### Utilities

| Command | Description |
|---------|-------------|
| `/envmem [QUERY]` | Search envmem.com |
| `/help` | Show all commands |

## How It Works

Each command creates a pre-configured Ralph Loop with:

1. **Structured prompt** - Step-by-step instructions
2. **Max iterations** - Prevents infinite loops
3. **Completion promise** - Clear success criteria
4. **Tool integration** - Claude for Chrome, envmem, etc.

The loop executes until the promise is TRUE or max iterations reached.

## MCP Configuration

### Claude for Chrome (Required for Visual)

The visual debugging commands use these MCP tools:
- `mcp__claude-in-chrome__tabs_context_mcp`
- `mcp__claude-in-chrome__computer`
- `mcp__claude-in-chrome__read_page`
- `mcp__claude-in-chrome__read_console_messages`
- `mcp__claude-in-chrome__read_network_requests`

### envmem.com (Optional)

Add to your MCP configuration:

```json
{
  "mcpServers": {
    "envmem": {
      "url": "https://envmem.com/mcp?apikey=YOUR_API_KEY"
    }
  }
}
```

## Output Examples

### Visual Debug Output

```
ITERATION 3:
================
SCREENSHOT: [captured]
CONSOLE: 0 errors ✓
NETWORK: 0 failures ✓
UI ISSUES: 0
FIXES APPLIED: 3
  - src/App.tsx:45 - Fixed null check
  - src/api.ts:23 - Added error handling
  - src/styles.css:12 - Fixed layout
COMMIT: abc123f
DEPLOY: verified
VERIFICATION: PASS ✓
```

### ASO Output

```
outputs/FitFlow/
├── 00-MASTER-ACTION-PLAN.md
├── 01-research/
│   ├── keyword-list.md
│   └── competitor-gaps.md
├── 02-metadata/
│   ├── apple-metadata.md (copy-paste ready)
│   └── google-metadata.md (copy-paste ready)
├── 04-launch/
│   ├── prelaunch-checklist.md (47 items)
│   └── timeline.md (real dates)
└── FINAL-REPORT.md
```

### Deployment Output

```
DEPLOYMENT COMPLETE:
├── iOS:
│   ├── Version: 1.2.3 (45)
│   ├── TestFlight: Ready for Testing ✓
│   └── Screenshot: [attached]
├── Android:
│   ├── Version: 1.2.3 (45)
│   ├── Play Store: Internal Track ✓
│   └── Screenshot: [attached]
└── Status: COMPLETE ✓
```

## Contributing

Contributions welcome! Please read our contributing guidelines.

## License

MIT License - see [LICENSE](LICENSE) for details.

## Author

**Sami Halawa**
- GitHub: [@samihalawa](https://github.com/samihalawa)

## Acknowledgments

- [ralph-loop](https://github.com/anthropics/claude-code-plugins) - Official Anthropic plugin
- [fastlane-skill](https://github.com/greenstevester/fastlane-skill) - Fastlane integration patterns
- [envmem.com](https://envmem.com) - Cloud credential management
