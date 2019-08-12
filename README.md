# Fastfile Template
This repo includes the universal `Fastfile` which includes several default actions.
For more detail, read the [README](fastlane/README.md).

# Automatic iOS Project Setup
Run `swift <(curl -sS https://raw.githubusercontent.com/detroit-labs/fastlane-template/master/setup.swift)` from your new project directory to have the following files automatically added:
 
| File | Description |
| --- | --- |
| .github/CODEOWNERS | Individuals or teams that are responsible for code in a repository. |
| .github/ISSUE_TEMPLATE/bug_report.md | GitHub issue bug report template. |
| .github/ISSUE_TEMPLATE/feature_request.md | GitHub issue feature request template. |
| .github/pull_request_template.md | GitHub pull request template. |
| .gitignore | Standard macOS, Xcode, CocoaPods, Carthage, fastlane file exclusions. |
| .ruby-gemset | Name matching your project name, lowercased. |
| .ruby-version | Specifies Ruby version to use. |
| .swiftlint.yml | Excluded `Carthage`, `Pods` folders and several opt-in rules enabled. |
| .swift-version | Specifies Swift version to use. |
| fastlane/.env | Enviroment variables for various defaults. |
| fastlane/Fastfile | Sources the template found in this repo. |
| Gemfile | Containing `cocoapods`, `fastlane`, and `xcode-install` gems. |
| Podfile | Containing `Alamfire`, `Blackboard`, `SwiftFormat`, and `SwiftLint` pods. |
| README.MD | Basic project setup instructions. |
| Settings.bundle | Basic settings bundle containing Cocoapods acknowledgements. |

# Additional Manual Project Setup

## Initialize Local Git Repo
- Execute `git init` to initialized a Git repository.

## Update GitHub Resources
Update with project specific details for:

- `.github/CODEOWNERS`
- `.github/ISSUE_TEMPLATE/bug_report.md`
- `.github/ISSUE_TEMPLATE/feature_request.md`
- `.github/pull_request_template.md`

## Update Project Documentation
Update `README.MD` with project specific details.

## Install Gems and Pods
- Execute `gem install bundler && bundle install` to install all gems.
- Execute `bundle exec pod install --repo-update` to install all pods.

## Xcode Project Changes
- Add `Blackboard` to Build Phase script to project target.
For more detail, read the [README](https://github.com/NathanE73/Blackboard/blob/master/README/Installation/CocoaPods.md#xcode).
- Add `SwiftFormat` to Build Phase script to project target.
For more details, read the [README](https://github.com/nicklockwood/SwiftFormat#xcode-build-phase).
- Add `SwiftLint` to Build Phase script to project target.
For more detail, read the [README](https://github.com/realm/SwiftLint#xcode).
- Add `Resources/Settings.bundle` to the project.
