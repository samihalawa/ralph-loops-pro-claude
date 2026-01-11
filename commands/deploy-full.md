---
description: "Full app deployment loop - iOS + Android + Visual verification"
argument-hint: "[PROJECT_PATH]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Full App Deployment (iOS + Android)

Complete deployment pipeline with visual verification.

## Usage

```
/deploy-full ./MyApp
/deploy-full  # Uses current directory
```

Execute full deployment loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "FULL APP DEPLOYMENT with Visual Verification:

═══════════════════════════════════════════════════════════════
PHASE 1 - PRE-FLIGHT CHECKS
═══════════════════════════════════════════════════════════════
1. Analyze project structure
2. Detect frameworks: iOS/Android/React Native/Flutter/Capacitor
3. Fetch credentials from envmem.com:
   - APPLE_TEAM_ID, APPLE_KEY_ID, APPLE_ISSUER_ID, APPLE_PRIVATE_KEY
   - GOOGLE_PLAY_SA, GOOGLE_PLAY_KEY
4. Verify all credentials valid
5. Check current version numbers
6. Ensure clean git state

═══════════════════════════════════════════════════════════════
PHASE 2 - BUILD PREPARATION
═══════════════════════════════════════════════════════════════
7. Increment version/build numbers consistently across platforms
8. Update changelog if exists
9. Run linting and type checks
10. Run test suite
11. Fix any failing tests

═══════════════════════════════════════════════════════════════
PHASE 3 - IOS BUILD & DEPLOY
═══════════════════════════════════════════════════════════════
12. Initialize/update Fastlane for iOS
13. Run: fastlane match appstore
14. Run: fastlane gym
15. Verify IPA created
16. Run: fastlane pilot upload
17. Wait for TestFlight processing
18. Verify build in App Store Connect

═══════════════════════════════════════════════════════════════
PHASE 4 - ANDROID BUILD & DEPLOY
═══════════════════════════════════════════════════════════════
19. Initialize/update Fastlane for Android
20. Configure signing keystore
21. Run: ./gradlew bundleRelease
22. Verify AAB created
23. Run: fastlane supply --track internal
24. Wait for Play Console processing
25. Verify build in Google Play Console

═══════════════════════════════════════════════════════════════
PHASE 5 - VISUAL VERIFICATION (Claude for Chrome)
═══════════════════════════════════════════════════════════════
26. Open App Store Connect in browser (tabs_context_mcp)
27. Screenshot TestFlight build status
28. Open Google Play Console in browser
29. Screenshot internal track status
30. Verify both builds processing/available

═══════════════════════════════════════════════════════════════
PHASE 6 - DOCUMENTATION
═══════════════════════════════════════════════════════════════
31. Update README with new version
32. Create release notes
33. Commit all changes
34. Create git tag for release
35. Push to remote

═══════════════════════════════════════════════════════════════
OUTPUT
═══════════════════════════════════════════════════════════════
DEPLOYMENT SUMMARY:
├── iOS:
│   ├── Version: X.Y.Z (build)
│   ├── TestFlight: [status]
│   └── Screenshot: [attached]
├── Android:
│   ├── Version: X.Y.Z (versionCode)
│   ├── Play Store: [status]
│   └── Screenshot: [attached]
├── Git:
│   ├── Commit: [hash]
│   └── Tag: vX.Y.Z
└── Status: COMPLETE ✓

Project: ${ARGUMENTS:-.}

ITERATE until both platforms deployed and visually verified." --max-iterations 15 --completion-promise "Both iOS and Android builds deployed and verified with screenshots"
```

## Visual Verification

Uses Claude for Chrome to:
- Screenshot App Store Connect
- Screenshot Google Play Console
- Verify build status visually
- Capture evidence of successful deployment
