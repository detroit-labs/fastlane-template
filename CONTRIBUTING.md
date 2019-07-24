# Contributing Guidelines

## Local Development

Run `/path/to/setup.swift --local` from your new project directory to use your local setup script and template files.

## Remote Deployment

Update the `setup.swift` script's `branch` variable to point to your branch instead of `master`.

Run `swift <(curl -sS https://raw.githubusercontent.com/detroit-labs/fastlane-template/{branch-name}/setup.swift)` from your new project directory to use your development branch's setup script and template files.

Make sure that you revert the `branch` back to `master` before merging your changes into `master`.
