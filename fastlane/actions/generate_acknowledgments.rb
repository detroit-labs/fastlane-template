module Fastlane
  module Actions
    class GenerateAcknowledgmentsAction < Action
      def self.description
        "Generating open source acknowledgments resource files to shared resources directory"
      end

      def self.run(params)
        projectName = "#{params[:project_name]}"

        cwd = "#{File.expand_path(".", Dir.pwd)}"

        source = "#{cwd}/#{projectName}.xcodeproj"
        target = "#{cwd}/#{projectName}/Resources/Configuration/Shared"

        UI.message("Source Directory: #{source}")
        UI.message("Target Directory: #{target}")

        sh("mint run swift-package-list \"#{source}\" --output-type settings-bundle --output-path \"#{target}\"")

        File.delete("#{target}/Settings.bundle/Root.plist")
        sh("find \"#{target}/Settings.bundle/\" -type d -name '*.lproj' -print0 | xargs -0 rm -rf {}")
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :project_name,
                                       env_name: "FL_XCODE_PROJECT_NAME",
                                       description: "The name of the Xcode project",
                                       type: String,
                                       optional: false)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
