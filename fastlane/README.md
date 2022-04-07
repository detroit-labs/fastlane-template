fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### installProfiles

```sh
[bundle exec] fastlane installProfiles
```

Installs any provisioning profiles in $PROFILE_DIRECTORY, relative to Fastlane's execution path.

### updateDependencies

```sh
[bundle exec] fastlane updateDependencies
```

Updates project dependencies in Bundler and CocoaPods, then sends a pull request if there are changes

#### Options

 * **`branchname`**: Accepts an optional value to set the dependency updater branch. If no value is passed in, it will use the UPDATE_DEPENDENCIES_BRANCH environment variable, or default to jenkins-update-dependencies if it doesn't exit.

 * **`base`**: Accepts an optional value to set the base branch for the created dependency update PR. If no value is passed in, it will default to main.

 * **`pullRequestTitle`**: Accepts an optional value to set the title for the created dependency update PR. If no value is passed in, it will default to Update Dependencies.

### sendUpdatePullRequest

```sh
[bundle exec] fastlane sendUpdatePullRequest
```

Sends a pull request with the current changes to dependencies

### installKeychainsIfPossible

```sh
[bundle exec] fastlane installKeychainsIfPossible
```

Installs the DL and project keychains if provided. This is a transitional API that should be removed once all projects move to keychain injections.

### removeKeychainsIfPossible

```sh
[bundle exec] fastlane removeKeychainsIfPossible
```

Removes the DL and project keychains if provided. This is a transitional API that should be removed once all projects move to keychain injections.

### installDLKeychain

```sh
[bundle exec] fastlane installDLKeychain
```

Installs the DL keychain. Must provide path (or DL_KEYCHAIN_PATH) and password (or DL_KEYCHAIN_PASSWORD) parameters.

### installProjectKeychain

```sh
[bundle exec] fastlane installProjectKeychain
```

Installs the project keychain from a path relative to the root of the project. Must provide path (or PROJECT_KEYCHAIN_PATH), and password (or PROJECT_KEYCHAIN_PASSWORD) parameters.

### installKeychain

```sh
[bundle exec] fastlane installKeychain
```

Installs a keychain by first copying it. Requires the keychain file path and password parameters.

### removeDLKeychain

```sh
[bundle exec] fastlane removeDLKeychain
```

Remove the Detroit Labs keychain. Requires the DL keychain path, or for DL_KEYCHAIN_PATH to be set.

### removeProjectKeychain

```sh
[bundle exec] fastlane removeProjectKeychain
```

Remove the project keychain. Requires the project keychain path, or for PROJECT_KEYCHAIN_PATH to be set.

### removeKeychain

```sh
[bundle exec] fastlane removeKeychain
```

Removes a keychain by name by removing {name}Copy.

### format

```sh
[bundle exec] fastlane format
```

Run SwiftFormat from CocoaPods

----


## iOS

### ios custom_before_all

```sh
[bundle exec] fastlane ios custom_before_all
```

Overridable lane called at the end of before_all.

### ios custom_after_all

```sh
[bundle exec] fastlane ios custom_after_all
```

Overridable lane called at the end of after_all.

### ios custom_error

```sh
[bundle exec] fastlane ios custom_error
```

Overridable lane called at the end of error.

### ios runTests

```sh
[bundle exec] fastlane ios runTests
```

Runs all the tests.

### ios build

```sh
[bundle exec] fastlane ios build
```

Build the archive and ipa with options (configuration (Release), include_bitcode (false), export_method (enterprise)), export_options ({}).

### ios beta

```sh
[bundle exec] fastlane ios beta
```

Build and upload to Firebase with (configuration (Release)), (include_bitcode (false)), (export_method (enterprise)), (export_options ({})) and (group).

#### Options

 * **`groups`**: Firebase distribution groups to notify of release. Required. (Default: `nil`)

 * **`configuration`**: Build configuration to use. (Default: `ENV["GYM_CONFIGURATION"]` or `Release`)

 * **`include_bitcode`**: Whether or not to build with bitcode enabled. (Default: `false`)

 * **`export_method`**: Export method to use. See `fastlane action gym` for options. (Default: `ENV["GYM_EXPORT_METHOD"]` or `enterprise`)

 * **`export_options`**: Custom export options to use (Default: `{}`)

 * **`changelog_type`**: Type of changelog to generate, if any. Possible values are jenkins, pr, git, or none. (Default: `none`)

 * **`release_notes`**: Release notes for the release, if not using a changelog_type. (Default: `nil`)

 * **`upload_symbols`**: Whether or not to upload symbols to Firebase. Requires FirebaseCrashlytics pod to be installed. (Default: `true`)

#### Environment Variables

 * **`FIREBASE_APP_ID`**: Firebase app ID. Should be passed as a secure text value. Required.

 * **`FIREBASE_TOKEN`**: Firebase distribution token. Should be passed as a secure text value. Required.

### ios uploadToFirebase

```sh
[bundle exec] fastlane ios uploadToFirebase
```

Upload a local IPA and dSYM to Firebase App Distribution.

#### Options

 * **`groups`**: Firebase distribution groups to notify of release. Required. (Default: `nil`)

 * **`upload_symbols`**: Whether or not to upload symbols to Firebase. Requires FirebaseCrashlytics pod to be installed. (Default: `true`)

 * **`changelog_type`**: The type of changelog to generate (e.g. `"git"`, `"jenkins"`, `"pr"`, "none") (Default: `"none"`)

 * **`release_notes`**: A string to set as the release notes; overrides any generated changelog. (Default: `nil`)

#### Environment Variables

 * **`FIREBASE_APP_ID`**: Firebase app ID. Should be passed as a secure text value. Required.

 * **`FIREBASE_TOKEN`**: Firebase distribution token. Should be passed as a secure text value. Required.

### ios createGitHubRelease

```sh
[bundle exec] fastlane ios createGitHubRelease
```

Create and tag a GitHub release and attach any built IPA and dSYM to the release. This will be performed on the current branch.

Adds the IPA and dSYM files using the IPA_OUTPUT_PATH and DSYM_OUTPUT_PATH from earlier builds, like gym. Customize those outputs if you want custom file names.

#### Options

 * **`repository_name`**: Name of the repo for the release. (Default: `GITHUB_REPO` environment variable.)

 * **`name`**: Name for the release. (Default: `v<version_number>`)

 * **`description`**: Description for the release. (Default: `v<version_number>, build: <build_number>`)

 * **`tag_name`**: Tag name for the release. (Default: `v<version_number>`)

#### Environment Variables

 * **`GITHUB_API_TOKEN`**: GitHub API token. Should be passed as a secure text value. Required.

### ios incrementBuildNumber

```sh
[bundle exec] fastlane ios incrementBuildNumber
```

Sets the build number to the given value or, if none is provided, automatically sets the build number according to the strategy provided.

### ios setBuildNumberToCommitCount

```sh
[bundle exec] fastlane ios setBuildNumberToCommitCount
```

Sets the build number to the current commit count.

### ios setBuildNumberToTimestamp

```sh
[bundle exec] fastlane ios setBuildNumberToTimestamp
```

Set the build number to a Unix timestamp.

### ios cleanupArchive

```sh
[bundle exec] fastlane ios cleanupArchive
```

Deletes the archive generated by gym.

### ios cleanupSimulator

```sh
[bundle exec] fastlane ios cleanupSimulator
```

Shuts down and kills the simulator and background process.

### ios cleanup

```sh
[bundle exec] fastlane ios cleanup
```

Cleanup simulator and build archives.

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
