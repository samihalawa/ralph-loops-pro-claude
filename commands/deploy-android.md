---
description: "Android deployment loop with Fastlane"
argument-hint: "[PROJECT_PATH]"
allowed-tools: ["Bash(${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh:*)"]
---

# Deploy Android with Fastlane

Automated Android app deployment to Google Play Store.

## Usage

```
/deploy-android ./MyApp
/deploy-android  # Uses current directory
```

Execute Android deployment loop:

```!
"${CLAUDE_PLUGIN_ROOT}/scripts/run-ralph-loop.sh" "Android Deployment with Fastlane:

PHASE 1 - PROJECT ANALYSIS:
1. Detect project type: Native Android / React Native / Flutter / Capacitor
2. Read build.gradle for:
   - applicationId (bundle ID)
   - versionCode
   - versionName
3. Check existing Fastlane setup
4. Verify Google Play credentials via envmem

PHASE 2 - FASTLANE SETUP (if needed):
5. Initialize: fastlane init
6. Configure Appfile:
   - package_name: [from build.gradle]
   - json_key_file: [path to service account key]
7. Configure Fastfile with lanes:
   - internal: Internal testing track
   - beta: Beta track
   - production: Production release

PHASE 3 - SIGNING:
8. Check for keystore file
9. Generate keystore if missing:
   keytool -genkey -v -keystore release.keystore -alias release -keyalg RSA -keysize 2048
10. Configure signing in build.gradle
11. Verify signing config works

PHASE 4 - BUILD:
12. Increment versionCode
13. Run: ./gradlew bundleRelease (AAB)
   OR: ./gradlew assembleRelease (APK)
14. Verify AAB/APK exists
15. Check build size and optimize if needed

PHASE 5 - UPLOAD:
16. Run: fastlane supply --track internal
   (or beta, or production)
17. Wait for processing
18. Verify upload succeeded

PHASE 6 - VERIFICATION:
19. Check Google Play Console status
20. Verify build appears in correct track
21. Document version uploaded
22. Output Play Console link

Project: ${ARGUMENTS:-.}

CREDENTIALS (from envmem.com):
- Use envmem search for: GOOGLE_PLAY_SA, GOOGLE_PLAY_KEY
- Service account JSON for Play Console API

ITERATE until build successfully uploaded to Play Store." --max-iterations 10 --completion-promise "Android build uploaded to Google Play successfully"
```

## Fastlane Lanes

```ruby
# Fastfile generated
lane :internal do
  gradle(task: 'bundle', build_type: 'Release')
  upload_to_play_store(track: 'internal')
end

lane :beta do
  gradle(task: 'bundle', build_type: 'Release')
  upload_to_play_store(track: 'beta')
end

lane :production do
  gradle(task: 'bundle', build_type: 'Release')
  upload_to_play_store(track: 'production')
end
```

## Output

```
BUILD COMPLETE:
├── AAB: ./app/build/outputs/bundle/release/app-release.aab
├── Version: 1.2.3 (45)
├── Package: com.example.myapp
├── Track: internal
└── Status: Uploaded ✓
```
