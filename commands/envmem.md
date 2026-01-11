---
description: "Fetch environment variables and secrets from envmem.com"
argument-hint: "[SEARCH_QUERY]"
---

# EnvMem - Environment Memory

Fetch environment variables and secrets from envmem.com cloud storage.

## Usage

```
/envmem openai              # Search for OpenAI keys
/envmem apple               # Search for Apple credentials
/envmem google play         # Search for Google Play credentials
```

## How It Works

Query the envmem.com API to retrieve stored environment variables:

```bash
# Search endpoint
curl "https://envmem.com/search?q=QUERY&apikey=YOUR_API_KEY"

# MCP endpoint (for Claude integration)
# Configure in plugin.json:
# "mcpServers": {
#   "envmem": {
#     "url": "https://envmem.com/mcp?apikey=YOUR_API_KEY"
#   }
# }
```

## Common Searches

| Query | Returns |
|-------|---------|
| `apple` | APPLE_TEAM_ID, APPLE_KEY_ID, APPLE_ISSUER_ID, APPLE_PRIVATE_KEY |
| `google play` | GOOGLE_PLAY_SA, GOOGLE_PLAY_KEY |
| `openai` | OPENAI_API_KEY |
| `stripe` | STRIPE_PUBLISHABLE_KEY, STRIPE_SECRET_KEY |
| `supabase` | SUPABASE_URL, SUPABASE_ANON_KEY |
| `github` | GITHUB_TOKEN |
| `netlify` | NETLIFY_AUTH_TOKEN |
| `cloudflare` | CLOUDFLARE_API_TOKEN, CLOUDFLARE_ACCOUNT_ID |

## Integration with Ralph Loops

All deployment loops automatically query envmem for credentials:

```
/deploy-ios MyApp
# → Fetches APPLE_* credentials from envmem
# → Uses them for Fastlane signing and upload

/deploy-android MyApp
# → Fetches GOOGLE_PLAY_* credentials from envmem
# → Uses them for Play Console upload
```

## Setup

1. Create account at https://envmem.com
2. Store your environment variables
3. Get your API key
4. Configure in plugin or use directly:

```bash
export ENVMEM_API_KEY="your-api-key"
```

## Security Notes

- API keys are transmitted securely over HTTPS
- Credentials are stored encrypted at rest
- Use environment variables, not hardcoded keys
- Never commit API keys to git
