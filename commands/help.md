---
description: "Show all available Ralph Loops Pro commands"
---

# Ralph Loops Pro - Help

Professional Ralph Loop templates for automated workflows.

## Available Commands

### Visual Debugging

| Command | Description | Max Iterations |
|---------|-------------|----------------|
| `/vdebug [URL]` | Quick visual debug loop | 15 |
| `/vfix [URL]` | Aggressive UI fix loop | 20 |
| `/visual-debug [URL]` | Full visual debug with docs | 15 |

### ASO (App Store Optimization)

| Command | Description | Max Iterations |
|---------|-------------|----------------|
| `/aso-audit [APP] [CATEGORY]` | Full ASO audit | 12 |
| `/aso-optimize [APP]` | Quick metadata optimization | 8 |

### Deployment

| Command | Description | Max Iterations |
|---------|-------------|----------------|
| `/deploy-ios [PATH]` | iOS/macOS with Fastlane | 10 |
| `/deploy-android [PATH]` | Android with Fastlane | 10 |
| `/deploy-full [PATH]` | Both platforms + verification | 15 |

### Utilities

| Command | Description |
|---------|-------------|
| `/envmem [QUERY]` | Search envmem.com for credentials |
| `/help` | Show this help |

## Requirements

### Claude for Chrome MCP

All visual debugging commands require Claude for Chrome:
- `mcp__claude-in-chrome__tabs_context_mcp`
- `mcp__claude-in-chrome__computer`
- `mcp__claude-in-chrome__read_page`
- `mcp__claude-in-chrome__read_console_messages`
- `mcp__claude-in-chrome__read_network_requests`

### envmem.com MCP (Optional)

For automatic credential fetching:
```json
{
  "mcpServers": {
    "envmem": {
      "url": "https://envmem.com/mcp?apikey=YOUR_KEY"
    }
  }
}
```

### ralph-loop Plugin (Required)

This plugin depends on the official ralph-loop plugin:
```
/plugin add ralph-loop
```

## Quick Examples

```bash
# Debug a deployed website
/vdebug https://myapp.netlify.app

# Full ASO audit for new app
/aso-audit FitFlow "Health & Fitness"

# Deploy to both app stores
/deploy-full ./MyApp
```

## How It Works

Each command generates a pre-configured Ralph Loop prompt with:
- Specific step-by-step instructions
- Appropriate max iterations
- Clear completion promise
- Required tool integrations

The loop runs until the promise is TRUE or max iterations reached.
