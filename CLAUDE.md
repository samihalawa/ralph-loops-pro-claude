# Ralph Loops Pro - Claude Code Integration

Quick reference for Claude Code instances using this plugin.

## Available Commands

- `/vdebug [URL]` - Quick visual debug loop
- `/vfix [URL]` - Aggressive UI fix loop
- `/visual-debug [URL]` - Full visual debug with docs
- `/aso-audit [APP] [CATEGORY]` - Complete ASO audit
- `/aso-optimize [APP]` - Quick metadata optimization
- `/deploy-ios [PATH]` - iOS deployment with Fastlane
- `/deploy-android [PATH]` - Android deployment with Fastlane
- `/deploy-full [PATH]` - Both platforms deployment
- `/envmem [QUERY]` - Search environment credentials
- `/help` - Show all commands

## Required MCP Servers

### Claude for Chrome (Visual Commands)
```
mcp__claude-in-chrome__tabs_context_mcp
mcp__claude-in-chrome__computer
mcp__claude-in-chrome__read_page
mcp__claude-in-chrome__read_console_messages
mcp__claude-in-chrome__read_network_requests
mcp__claude-in-chrome__navigate
mcp__claude-in-chrome__click
mcp__claude-in-chrome__fill
```

### envmem.com (Deployment Commands)
```
https://envmem.com/search?q=QUERY&apikey=KEY
```

## Loop Behavior

All commands create Ralph Loops that:
1. Execute structured multi-step workflows
2. Iterate until completion promise is TRUE
3. Respect max iteration limits
4. Use visual verification via screenshots

## Completion Promises

- Visual: "Zero console errors and all UI elements verified working"
- ASO: "ASO audit complete with all deliverables validated"
- Deploy: "Build uploaded to [platform] successfully"
