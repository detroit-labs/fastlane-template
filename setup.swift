#!/usr/bin/env swift

import Foundation

let branch = "extract-files" // TODO: "master"

let currentDirectoryPath = FileManager.default.currentDirectoryPath

let sourceRootPath: String = {
    let arguments = CommandLine.arguments
    guard arguments.contains("--local") else {
        return "https://raw.githubusercontent.com/detroit-labs/fastlane-template/\(branch)"
    }
    let commandPath = (arguments[0] as NSString).deletingLastPathComponent
    if commandPath.starts(with: "/") {
        return "file://\(commandPath)"
    }
    return "file://\(currentDirectoryPath)/\(commandPath)"
}()

struct TemplateFile {
    
    let source: String
    let target: String
    
    func writeToDisk(environment: [String: String]) {
        if target.contains("/") {
            let directoryPath = (target as NSString).deletingLastPathComponent
            try! FileManager.default.createDirectory(atPath: directoryPath, withIntermediateDirectories: true)
        }
        
        let sourceURL = URL(string: "\(sourceRootPath)/templates/\(source)")!
        
        var contents = try! String(contentsOf: sourceURL, encoding: .utf8)
        environment.keys.forEach { key in
            contents = contents.replacingOccurrences(of: "__\(key)__", with: environment[key]!)
        }

        let data = contents.data(using: .utf8)!
        FileManager.default.createFile(atPath: target, contents: data)
    }
    
}

let projectFileName: String = {
    let contents = try! FileManager.default.contentsOfDirectory(atPath: currentDirectoryPath)
    let projects = contents.filter { $0.contains("xcodeproj") }
    guard projects.count == 1,
        let project = projects.first else {
            print("Either zero or too many xcodeprojs found, run this script on new projects only.")
            exit(0)
    }
    return project
}()

let projectName = (projectFileName as NSString).deletingPathExtension
let workspaceName = (projectName as NSString).appendingPathExtension("xcworkspace")!

let environment: [String: String] = [
    "IOS_VERSION": "11.0",
    "RUBY_GEMSET": projectName.lowercased(),
    "RUBY_VERSION": "2.6.3",
    "XCODE_PROJECT_NAME": projectName,
    "XCODE_SCHEME_NAME": projectName,
    "XCODE_WORKSPACE_NAME": workspaceName,
    "XCODE_VERSION": "10.2",
]

let files = [
    TemplateFile(source: "cocoapods/Podfile", target: "Podfile"),
    TemplateFile(source: "cocoapods/Settings.bundle/Root.plist", target: "\(projectName)/Resources/Settings.bundle/Root.plist"),
    TemplateFile(source: "fastlane/env", target: "fastlane/.env"),
    TemplateFile(source: "fastlane/Fastfile", target: "fastlane/Fastfile"),
    TemplateFile(source: "gems/Gemfile", target: "Gemfile"),
    TemplateFile(source: "git/gitignore", target: ".gitignore"),
    TemplateFile(source: "readme/README.MD", target: "README.MD"),
    TemplateFile(source: "ruby/ruby-gemset", target: ".ruby-gemset"),
    TemplateFile(source: "ruby/ruby-version", target: ".ruby-version"),
    TemplateFile(source: "swiftlint/swiftlint.yml", target: ".swiftlint.yml")
]

files.forEach { file in
    file.writeToDisk(environment: environment)
    print("\(file.target) written to disk.")
}
print("Files written.")
