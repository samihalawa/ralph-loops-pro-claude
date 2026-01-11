# Ralph Loops Pro

Professional Ralph Loop templates for Claude Code - Visual debugging, ASO workflows, iOS/Android deployment automation, and **32 SS agent prompts** for meta-analysis, coding, research, and business automation.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-purple)](https://claude.ai/code)

## Features

- **Visual Debugging** - Automated UI testing with Claude for Chrome
- **ASO Workflows** - App Store Optimization with iTunes API integration
- **Fastlane Deployment** - iOS/Android deployment automation
- **EnvMem Integration** - Cloud-based credential management
- **SS Commands** - 32 production-grade agent prompts for autonomous AI workflows

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

---

## SS Commands (32 Agent Prompts)

Complete library of production-grade AI agent prompts organized into 5 categories.

### Quick Reference Index

| Category | Commands | Purpose |
|----------|----------|---------|
| **Meta & Analysis** | ss1-ss7 | Meta-prompts, context analysis, auditing |
| **Coding & DevOps** | ss8-ss14 | Code repair, deployment, git automation |
| **Research** | ss15-ss18 | Deep research, quality audits |
| **Business** | ss19-ss23 | Proposals, business models, outreach |
| **Specialized** | ss24-ss28, ssX-Z | Platform-specific workflows |

---

### META, CONTEXT & ANALYSIS (ss1-ss7)

| Command | Name | Description |
|---------|------|-------------|
| `/ss0` | **Command Index** | Quick reference for all SS commands |
| `/ss1` | **Meta-Prompt Architect** | Transform vague requests into production-grade system prompts |
| `/ss2` | **Ultra-Context Analyzer** | Meta-creative intelligence with divergent thinking |
| `/ss3` | **Context Resurrector** | Forensic recovery of project state without asking user |
| `/ss4` | **Swarm Completion Protocol** | Context continuation engine for session handoffs |
| `/ss5` | **Level-3 Forensic Audit** | Hard reset and full conversation re-evaluation |
| `/ss6` | **Ruthless Critic** | Zero-mercy code/content review with severity scoring |
| `/ss7` | **Universal Optimizer** | Self-correction loop with 1000 trial simulations |

---

### CODING, DEBUGGING & DEVOPS (ss8-ss14)

| Command | Name | Description |
|---------|------|-------------|
| `/ss8` | **Repo & Code Doctor** | Production-ready fixes for broken codebases |
| `/ss9` | **Manus Master Repair** | Workflow & UI/UX fixer identifying 20 workflows |
| `/ss10` | **UI/UX Polish & Fixer** | Visual verification with screenshot analysis |
| `/ss11` | **Autopilot Perfect Loop** | 30-50 minute autonomous enhancement |
| `/ss12` | **Ship It Now** | Zero excuses deployment (commit, push, deploy) |
| `/ss13` | **Manus Git Auto-Sync** | Checkpoint + push in one bash command |
| `/ss14 [project]` | **Project Migration** | Complete repo + env + DB duplication to TiDB |

---

### RESEARCH & EXTRACTION (ss15-ss18)

| Command | Name | Description |
|---------|------|-------------|
| `/ss15` | **Deep Research Engine** | Complete context scan before any action |
| `/ss16` | **Universal Research Protocol** | Multi-source parallel research |
| `/ss17` | **Quality & Forensic Audit** | Trust nothing, verify everything |
| `/ss18` | **Meeting Intelligence** | Turn transcripts into action items |

---

### CREATION, DOCS & BUSINESS (ss19-ss23)

| Command | Name | Description |
|---------|------|-------------|
| `/ss19 [app]` | **App Analysis & Design Spec** | Documentation for design handoff |
| `/ss20 [project]` | **Proposal & Offer Engine** | Win deals in <2 minutes |
| `/ss21` | **Business Model Challenger** | 3 models: Cash Cow, Scale Play, Contrarian |
| `/ss22` | **Outreach & Growth Architect** | ICP targeting and segmentation |
| `/ss23` | **Nano Banana Pro** | Creative engine for ads and UI |

---

### SPECIALIZED & PLATFORM-SPECIFIC (ss24-ss28, ssX-Z)

| Command | Name | Description |
|---------|------|-------------|
| `/ss24` | **Production Repo Polisher** | Stack Auth + SEO + UI/UX checklist |
| `/ss25` | **Conversation Analyzer** | Forensic root cause analysis of AI chats |
| `/ss26` | **CoT Autonomous Debugger** | Chain-of-thought single-pass production fix |
| `/ss27 [project]` | **Claude Code Autopilot** | CLI autopilot with `--dangerously-skip-permissions` |
| `/ss28` | **Manus Parallel Agent** | Infinite debug loop across all projects |
| `/ssX` | **TusClases + WhatsApp Ops** | Student inquiry processing workflow |
| `/ssY [project]` | **Browser Debug (Single)** | Focus one project until production-ready |
| `/ssZ` | **Browser Debug (Multi)** | Debug last 8 projects in parallel |

---

## Visual Debugging Commands

### Quick Start

```bash
# Quick debug
/vdebug https://myapp.netlify.app

# Aggressive fix mode
/vfix http://localhost:3000

# Full debug with documentation
/visual-debug https://myapp.com
```

### Commands Reference

| Command | Description | Iterations |
|---------|-------------|------------|
| `/vdebug [URL]` | Quick visual debug | 15 |
| `/vfix [URL]` | Aggressive UI fixes | 20 |
| `/visual-debug [URL]` | Full documented debug | 15 |

---

## ASO Workflows

```bash
# Full ASO audit
/aso-audit FitFlow "Health & Fitness"

# Quick metadata optimization
/aso-optimize MyApp
```

| Command | Description | Iterations |
|---------|-------------|------------|
| `/aso-audit [APP] [CATEGORY]` | Full ASO audit | 12 |
| `/aso-optimize [APP]` | Metadata optimization | 8 |

---

## Deployment Commands

```bash
# iOS to TestFlight
/deploy-ios ./MyApp

# Android to Play Store
/deploy-android ./MyApp

# Both platforms with verification
/deploy-full ./MyApp
```

| Command | Description | Iterations |
|---------|-------------|------------|
| `/deploy-ios [PATH]` | iOS/macOS deployment | 10 |
| `/deploy-android [PATH]` | Android deployment | 10 |
| `/deploy-full [PATH]` | Both platforms | 15 |

---

## Utilities

| Command | Description |
|---------|-------------|
| `/envmem [QUERY]` | Search envmem.com |
| `/help` | Show all commands |

---

## How It Works

Each command creates a pre-configured workflow with:

1. **Structured prompt** - Step-by-step instructions
2. **Max iterations** - Prevents infinite loops
3. **Completion promise** - Clear success criteria
4. **Tool integration** - Claude for Chrome, envmem, etc.

The loop executes until the promise is TRUE or max iterations reached.

---

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

---

## Output Examples

### Visual Debug Output

```
ITERATION 3:
================
SCREENSHOT: [captured]
CONSOLE: 0 errors
NETWORK: 0 failures
UI ISSUES: 0
FIXES APPLIED: 3
  - src/App.tsx:45 - Fixed null check
  - src/api.ts:23 - Added error handling
  - src/styles.css:12 - Fixed layout
COMMIT: abc123f
DEPLOY: verified
VERIFICATION: PASS
```

### SS Command Output (ss20 - Proposal)

```
PROPOSAL GENERATED:
====================
Client: Acme Corp
Project: E-commerce Platform

PRICING:
- Good: $15,000 (MVP)
- Better: $25,000 (Full Features)
- Best: $40,000 (Enterprise)

TIMELINE: 6-8 weeks
DELIVERABLES: 12 items
OUTPUT: outputs/proposals/acme-corp.md
```

---

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
