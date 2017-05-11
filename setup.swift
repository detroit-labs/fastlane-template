#!/usr/bin/env swift

import Foundation

struct File {
    
    let name: String
    let contents: Data
    
    func writeToDisk() {
        let currentPath = FileManager.default.currentDirectoryPath
        
        if name.contains("/") {
            let directoryPath = ("\(currentPath)/\(name)" as NSString).deletingLastPathComponent
            try! FileManager.default.createDirectory(atPath: directoryPath, withIntermediateDirectories: true)
        }
        
        FileManager.default.createFile(atPath: "\(currentPath)/\(name)", contents: contents)
    }
    
}

func findProjectName() -> String {
    let currentPath = FileManager.default.currentDirectoryPath
    let contents = try! FileManager.default.contentsOfDirectory(atPath: currentPath)
    let projects = contents.filter { $0.contains("xcodeproj") }
    guard projects.count == 1,
        let project = projects.first else {
        print("Either zero or too many xcodeprojs found, run this script on new projects only.")
        exit(0)
    }
    
    return project
}

let projectFileName = findProjectName()
let projectName = projectFileName.components(separatedBy: ".")[0]

func rubyVersionFile() -> File {
    let rubyVersionContent = "2.4.0".data(using: .utf8)!
    let rubyVersionName = ".ruby-version"
    
    return File(name: rubyVersionName, contents: rubyVersionContent)
}

func rubyGemsetFile() -> File {
    let rubyGemsetContent = projectName.lowercased().data(using: .utf8)!
    let rubyGemsetName = ".ruby-gemset"
    
    return File(name: rubyGemsetName, contents: rubyGemsetContent)
}

func gemfileFile() -> File {
    let gemfileContent = "source \"https://rubygems.org\"\n\ngem \"cocoapods\"\ngem \"fastlane\"\ngem \"xcode-install\"\n".data(using: .utf8)!
    let gemfileName = "Gemfile"
    
    return File(name: gemfileName, contents: gemfileContent)
}

func fastfileFile() -> File {
    let fastfileContent = "default_platform :ios\n\nimport_from_git(url: 'https://github.com/detroit-labs/fastlane-template')\n".data(using: .utf8)!
    let fastfileName = "fastlane/Fastfile"
    
    return File(name: fastfileName, contents: fastfileContent)
}

let probableWorkspaceName = projectFileName.replacingOccurrences(of: "xcodeproj", with: "xcworkspace")
let probableSchemeName = projectName

func envFile(withWorkspaceName workspaceName: String, schemeName: String) -> File {
    let simSetting = "FASTLANE_EXPLICIT_OPEN_SIMULATOR=1"
    let gymWorkspace = "GYM_WORKSPACE=\"\(workspaceName)\""
    let gymScheme = "GYM_SCHEME=\"\(schemeName)\""
    let gymClean = "GYM_CLEAN=true"
    let scanWorkspace = "SCAN_WORKSPACE=\"\(workspaceName)\""
    let scanScheme = "SCAN_SCHEME=\"\(schemeName)\""
    let scanClean = "SCAN_CLEAN=true"
    let profileDirectory = "PROFILE_DIRECTORY=\"../Profiles\""
    let xcodeVersion = "XCODE_VERSION=\"~> 8.3.0\""
    
    let env = [simSetting, gymWorkspace, gymScheme, gymClean, scanWorkspace, scanScheme, scanClean, profileDirectory, xcodeVersion].joined(separator: "\n") + "\n"
    let envContent = env.data(using: .utf8)!
    let envName = "fastlane/.env"
    
    return File(name: envName, contents: envContent)
}

let files = [rubyVersionFile(), rubyGemsetFile(), gemfileFile(), fastfileFile(), envFile(withWorkspaceName: probableWorkspaceName, schemeName: probableSchemeName)]
files.forEach { $0.writeToDisk() }
print("Files written.")