#!/usr/bin/env swift

import Foundation

let arguments = CommandLine.arguments

let targetRootPath = FileManager.default.currentDirectoryPath

let sourceRootPath: String
if arguments.contains("--local") {
    sourceRootPath = ("file://\(targetRootPath)/\(arguments[0])" as NSString).deletingLastPathComponent
} else {
    // TODO: replace `extract-files` with `master`
    sourceRootPath = "https://raw.githubusercontent.com/detroit-labs/fastlane-template/extract-files"
}

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

let projectName = (projectFileName as NSString).deletingPathExtension
let workspaceName = (projectName as NSString).appendingPathExtension("xcworkspace")!

let environment: [String: String] = [
    "RUBY_GEMSET": projectName.lowercased(),
    "RUBY_VERSION": "2.6.3",
    "XCODE_SCHEME_NAME": projectName,
    "XCODE_WORKSPACE_NAME": workspaceName,
    "XCODE_VERSION": "10.2",
]

func expand(_ contents: String) -> String {
    var contents = contents
    environment.keys.forEach { key in
        contents = contents.replacingOccurrences(of: "__\(key)__", with: environment[key]!)
    }
    return contents
}

struct TemplateFile {
    
    let source: String
    let target: String
    
    func writeToDisk() {
        if target.contains("/") {
            let directoryPath = ("\(targetRootPath)/\(target)" as NSString).deletingLastPathComponent
            try! FileManager.default.createDirectory(atPath: directoryPath, withIntermediateDirectories: true)
        }
        
        let sourceURL = URL(string: "\(sourceRootPath)/templates/\(source)")!
        
        let contents = try! String(contentsOf: sourceURL, encoding: .utf8)
        let data = expand(contents).data(using: .utf8)!
        FileManager.default.createFile(atPath: "\(targetRootPath)/\(target)", contents: data)
    }
    
}

let files = [
    TemplateFile(source: "fastlane/env", target: "fastlane/.env"),
    TemplateFile(source: "fastlane/Fastfile", target: "fastlane/Fastfile"),
    TemplateFile(source: "gems/Gemfile", target: "Gemfile"),
    TemplateFile(source: "ruby/ruby-gemset", target: ".ruby-gemset"),
    TemplateFile(source: "ruby/ruby-version", target: ".ruby-version")
]

files.forEach { file in
    file.writeToDisk()
    print("\(file.target) written to disk.")
}
print("Files written.")
