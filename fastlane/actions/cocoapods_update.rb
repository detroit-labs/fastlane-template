module Fastlane
  module Actions
    class CocoapodsUpdateAction < Action
      def self.run(params)
        Actions.verify_gem!('cocoapods')
        cmd = []

        cmd << ['bundle exec'] if params[:use_bundle_exec] && shell_out_should_use_bundle_exec?
        cmd << ['pod update']

        cmd << "--sources=#{params[:sources].join(',')}" if params[:sources]
        cmd << "--exclude-pods=#{params[:exclude_pods].join(',')}" if params[:exclude_pods]
        cmd << "--no-repo-update" unless params[:repo_update]
        cmd << "--silent" if params[:silent]
        cmd << "--verbose" if params[:verbose]
        cmd << "--no-ansi" unless params[:ansi]

        sh(cmd.join(' '))
      end

      def self.description
        "Runs `pod update` for the project"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :sources,
                                       env_name: "FL_COCOAPODS_UPDATE_SOURCES",
                                       description: "The sources from which to update dependent pods",
                                       type: Array,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :exclude_pods,
                                       env_name: "FL_COCOAPODS_UPDATE_EXCLUDE_PODS",
                                       description: "Pods to exclude during update",
                                       type: Array,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :repo_update,
                                       env_name: "FL_COCOAPODS_UPDATE_REPO_UPDATE",
                                       description: "If `pod repo update` should be run before the update",
                                       type: Boolean,
                                       default_value: true),
          FastlaneCore::ConfigItem.new(key: :silent,
                                       env_name: "FL_COCOAPODS_UPDATE_SILENT",
                                       description: "Execute command without logging output",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :verbose,
                                       env_name: "FL_COCOAPODS_UPDATE_VERBOSE",
                                       description: "Show more debugging information",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :ansi,
                                       env_name: "FL_COCOAPODS_UPDATE_ANSI",
                                       description: "Show output with ANSI codes",
                                       is_string: false,
                                       default_value: true),
          FastlaneCore::ConfigItem.new(key: :use_bundle_exec,
                                       env_name: "FL_COCOAPODS_UPDATE_USE_BUNDLE_EXEC",
                                       description: "Use bundle exec when there is a Gemfile presented",
                                       is_string: false,
                                       default_value: true),
        ]
        # Please don't add a version parameter to the `cocoapods` action. If you need to specify a version when running
        # `cocoapods`, please start using a Gemfile and lock the version there
        # More information https://docs.fastlane.tools/getting-started/ios/setup/#use-a-gemfile
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end

      def self.authors
        ["SlaunchaMan"]
      end

      def self.details
        "If you use [CocoaPods](http://cocoapods.org) you can use the `cocoapods_update` integration to run `pod update` before building your app."
      end

      def self.example_code
        [
          'cocoapods_update',
          'cocoapods_update(
            quiet: true,
            podfile: "./CustomPodfile"
          )'
        ]
      end

      def self.category
        :building
      end
    end
  end
end
