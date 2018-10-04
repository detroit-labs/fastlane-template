module Fastlane
  module Actions
    class CreateGitBranchAction < Action
      def self.run(params)
        cmd = ['git branch']

        cmd << "#{params[:branchname]}"
        cmd << "#{params[:start_point]}" if params[:start_point]

        sh(cmd.join(' '))
      end

      def self.description
        "Creates a new Git branch with the given name"
      end

      def self.author
        ["SlaunchaMan"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :branchname,
                                       env_name: "FL_CREATE_GIT_BRANCH_NAME",
                                       description: "The name of the new branch",
                                       type: String,
                                       optional: false),
          FastlaneCore::ConfigItem.new(key: :start_point,
                                       env_name: "FL_CREATE_GIT_BRANCH_START_POINT",
                                       description: "The start point of the branch",
                                       type: String,
                                       optional: true)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
