---
description: "iOS/macOS deployment loop with Fastlane"
argument-hint: "[PROJECT_PATH]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Deploy iOS/macOS with Fastlane

Automated iOS/macOS app deployment to TestFlight and App Store.

## Usage

```
/deploy-ios ./MyApp
/deploy-ios  # Uses current directory
```

Execute iOS deployment loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "iOS/macOS Deployment with Fastlane:

PHASE 1 - PROJECT ANALYSIS:
1. Detect project type: Xcode / React Native / Flutter / Expo / Capacitor
2. Read Info.plist for bundle ID, version, build number
3. Check existing Fastlane setup (fastlane/ directory)
4. Verify Apple credentials via envmem or environment

PHASE 2 - FASTLANE SETUP (if needed):
5. Initialize Fastlane: fastlane init
6. Configure Appfile with:
   - app_identifier: [from Info.plist]
   - apple_id: [from envmem]
   - team_id: [from envmem]
7. Configure Fastfile with lanes:
   - beta: TestFlight upload
   - release: App Store submission
   - match: Code signing

PHASE 3 - CODE SIGNING:
8. Run: fastlane match development
9. Run: fastlane match appstore
10. Verify provisioning profiles installed
11. Configure Xcode project for automatic signing

PHASE 4 - BUILD:
12. Increment build number
13. Run: fastlane gym (build IPA/APP)
14. Verify build succeeded
15. Check IPA/APP file exists

PHASE 5 - UPLOAD:
16. Run: fastlane pilot upload (TestFlight)
   OR fastlane deliver (App Store)
17. Wait for processing
18. Verify upload succeeded

PHASE 6 - VERIFICATION:
19. Check App Store Connect status
20. Verify build appears in TestFlight
21. Document version uploaded
22. Output TestFlight link (if available)

Project: ${ARGUMENTS:-.}

CREDENTIALS (from envmem.com):
- Use envmem search for: APPLE_TEAM_ID, APPLE_KEY_ID, APPLE_ISSUER_ID
- Generate JWT for App Store Connect API if needed

ITERATE until build successfully uploaded to TestFlight." --max-iterations 10 --completion-promise "iOS build uploaded to TestFlight successfully"
```

## Fastlane Lanes

```ruby
# Fastfile generated
lane :beta do
  increment_build_number
  build_app(scheme: "MyApp")
  upload_to_testflight
end

lane :release do
  increment_build_number
  build_app(scheme: "MyApp")
  upload_to_app_store
end
```

## Environment Variables

Required (fetched from envmem.com):
- `APPLE_TEAM_ID`
- `APPLE_KEY_ID`
- `APPLE_ISSUER_ID`
- `APPLE_PRIVATE_KEY`

## Output

```
BUILD COMPLETE:
├── IPA: ./build/MyApp.ipa
├── Version: 1.2.3 (45)
├── Bundle ID: com.example.myapp
├── TestFlight: Processing...
└── Status: Uploaded ✓
```
