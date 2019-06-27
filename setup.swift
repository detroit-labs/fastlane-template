#!/usr/bin/env swift

import Foundation

protocol FileProvider {
    
    var name: String { get }
    
    func writeToDisk()
    
}

/// A file to be written to the current directory under `name` containing `contents`.
struct File: FileProvider {
    
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


/// A file to be downloaded from `url` and saved to the current directory as `name`.
struct RemoteFile: FileProvider {
    
    let url: URL
    let name: String
    
    func writeToDisk() {
        let process = Process.launchedProcess(launchPath: "/usr/bin/curl", arguments: ["-s", "--create-dirs", "-o", "\((FileManager.default.currentDirectoryPath as NSString).appendingPathComponent(name))", "\(url.absoluteString)"])
        process.waitUntilExit()
    }
    
}

// When we get downloadable templates, put them here.
// let prTemplate = RemoteFile(url: URL(string: "https://raw.githubusercontent.com/detroit-labs/fastlane-template/master/fastlane/Fastfile")!, name: "github/Fastfile")

let projectFileName: String = {
    let currentPath = FileManager.default.currentDirectoryPath
    let contents = try! FileManager.default.contentsOfDirectory(atPath: currentPath)
    let projects = contents.filter { $0.contains("xcodeproj") }
    guard projects.count == 1,
        let project = projects.first else {
        print("Either zero or too many xcodeprojs found, run this script on new projects only.")
        exit(0)
    }

    return project
}()

let projectName = projectFileName.components(separatedBy: ".")[0]

let rubyVersion: File = {
    let rubyVersionContent = "2.6.3\n".data(using: .utf8)!

    return File(name: ".ruby-version", contents: rubyVersionContent)
}()

let rubyGemset: File = {
    let rubyGemsetContent = "\(projectName.lowercased())\n".data(using: .utf8)!

    return File(name: ".ruby-gemset", contents: rubyGemsetContent)
}()

let gemfile: File = {
    let gemfileContent = """
                        source \"https://rubygems.org\"

                        gem \"cocoapods\"
                        gem \"fastlane\"
                        gem \"xcode-install\"

                        """.data(using: .utf8)!

    return File(name: "Gemfile", contents: gemfileContent)
}()

let fastfile: File = {
    let fastfileContent = """
                        default_platform :ios

                        import_from_git(url: 'https://github.com/detroit-labs/fastlane-template')

                        """.data(using: .utf8)!

    return File(name: "fastlane/Fastfile", contents: fastfileContent)
}()

let probableWorkspaceName = projectFileName.replacingOccurrences(of: "xcodeproj", with: "xcworkspace")
let probableSchemeName = projectName

func env(withWorkspaceName workspaceName: String, schemeName: String) -> File {
    let simSetting = "FASTLANE_EXPLICIT_OPEN_SIMULATOR=1"
    let gymWorkspace = "GYM_WORKSPACE=\"\(workspaceName)\""
    let gymScheme = "GYM_SCHEME=\"\(schemeName)\""
    let gymClean = "GYM_CLEAN=true"
    let scanWorkspace = "SCAN_WORKSPACE=\"\(workspaceName)\""
    let scanScheme = "SCAN_SCHEME=\"\(schemeName)\""
    let scanClean = "SCAN_CLEAN=true"
    let profileDirectory = "PROFILE_DIRECTORY=\"../Profiles\""
    let xcodeVersion = "XCODE_VERSION=\"~> 10.2\""

    let env = [simSetting, gymWorkspace, gymScheme, gymClean, scanWorkspace, scanScheme, scanClean, profileDirectory, xcodeVersion].joined(separator: "\n") + "\n"
    let envContent = env.data(using: .utf8)!

    return File(name: "fastlane/.env", contents: envContent)
}

let files: [FileProvider] = [rubyVersion, rubyGemset, gemfile, fastfile, env(withWorkspaceName: probableWorkspaceName, schemeName: probableSchemeName)]
files.forEach { file in
    file.writeToDisk()
    print("\(file.name) written to disk.")
}
print("Files written.")

