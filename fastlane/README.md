fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### blackboard

```sh
[bundle exec] fastlane blackboard
```

Run Blackboard using Mint from the root of the project.

### updateDependencies

```sh
[bundle exec] fastlane updateDependencies
```

Updates project dependencies in Bundler, then sends a pull request if there are changes.

#### Environment Variables

 * **`GITHUB_REPO`**: GitHub repository name. Should be passed as a secure text value. Required.

 * **`PROJECT_GITHUB_API_TOKEN`**: GitHub API token. Should be passed as a secure text value. Required.

 * **`XCODE_PROJECT_NAME`**: The project's xcodeproj name. Required.

 * **`XCODE_VERSION`**: The Xcode application version. Required.

### installProfiles

```sh
[bundle exec] fastlane installProfiles
```

Installs any provisioning profiles from a path relative to the root of the project.

#### Environment Variables

 * **`PROVISIONING_PROFILE_PATH`**: A provisioning profile path. Required.

### createGitHubRelease

```sh
[bundle exec] fastlane createGitHubRelease
```

Create and tag a GitHub release and attach any built IPA and dSYM to the release. This will be performed on the current branch.

#### Environment Variables

 * **`GITHUB_REPO`**: GitHub repository name. Should be passed as a secure text value. Required.

 * **`PROJECT_GITHUB_API_TOKEN`**: GitHub API token. Should be passed as a secure text value. Required.

 * **`GYM_SCHEME`**: The project's scheme. Required.

### format

```sh
[bundle exec] fastlane format
```

Run SwiftFormat using Mint from the root of the project.

#### Options

 * **`strategy`**: A format strategy. Optional. Defaults to 'all'.

   - **all**: All Swift source files will be formatted.

   - **staged**: Only Git staged Swift source files will be formatted.

### lint

```sh
[bundle exec] fastlane lint
```

Run SwiftLint using Mint from the root of the project.

----


## iOS

### ios build

```sh
[bundle exec] fastlane ios build
```

Builds and packages iOS app.

#### Environment Variables

 * **`BUILD_NUMBER_STRATEGY`**: A build number strategy. Required.

   - **commits**: Sets the build number to the current commit count.

   - **timestamp**: Set the build number to a Unix timestamp.

   - **manual**: Does not change build number.

 * **`BUNDLE_IDENTIFIER`**: A bundle identifier. Required.

 * **`GYM_CONFIGURATION`**: The gym configuration. Required.

 * **`GYM_EXPORT_METHOD`**: The gym export method. Required.

 * **`GYM_SCHEME`**: The project's scheme. Required.

 * **`GYM_XCARGS`**: Pass additional arguments to xcodebuild. Optional. Defaults to '-skipMacroValidation'.

 * **`PROVISIONING_PROFILE`**: The provisioning profile. Required.

### ios runTests

```sh
[bundle exec] fastlane ios runTests
```

Runs all the tests.

#### Environment Variables

 * **`SCAN_DEVICE`**: The name of the simulator type you want to run tests on. Required.

 * **`SCAN_SCHEME`**: The project's scheme. Required.

 * **`SCAN_XCARGS`**: Pass additional arguments to xcodebuild. Optional. Defaults to '-skipMacroValidation'.

### ios uploadToFirebase

```sh
[bundle exec] fastlane ios uploadToFirebase
```

Upload a local IPA and dSYM to Firebase App Distribution.

#### Options

 * **`release_notes`**: The release notes of this build. Optional.

#### Environment Variables

 * **`FIREBASE_APP_ID`**: The Firebase application identifier. Required.

 * **`FIREBASE_GROUPS`**: The Firebase distribution group names as a comma-separated list. Required.

 * **`FIREBASE_TOKEN`**: The Firebase command line interface token. Required.

### ios uploadToTestFlight

```sh
[bundle exec] fastlane ios uploadToTestFlight
```

Upload a local IPA to the TestFlight, the dSYM to Firebase Crashlytics, and create a GitHub release.

#### Environment Variables

 * **`APPSTORE_API_KEY_ID`**: The AppStore API key identifier. Required.

 * **`APPSTORE_API_ISSUER_ID`**: The AppStore API issuer identifier. Required.

 * **`APPSTORE_API_PRIVATE_KEY`**: The AppStore contents of the key p8 file. Required.

 * **`FIREBASE_APP_ID`**: The Firebase application identifier. Required.

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
