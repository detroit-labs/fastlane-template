# Automatic iOS Project Setup
Run `swift <(curl -sS https://raw.githubusercontent.com/detroit-labs/fastlane-template/setup.swift)` from your new project directory to have the following files automatically added:
 
 - `.ruby-version` with version `2.4.2` set.
 - `.ruby-gemset` with a name matching your project name, lowercased.
 - `fastlane/Fastfile` which sources the template found in this repo.
 - `fastlane/.env` with enviroment variables for various defaults.
 - `Gemfile` with the `fastlane`, `cocoapods`, and `xcode-install` gems.

 Once you run the script, execute `bundle install` to install the gems (requires `bundler` to be installed). 

# Fastfile Template
This repo includes the universal `Fastfile` which includes several default actions. For more detail, read the [README](fastlane/README.md).
