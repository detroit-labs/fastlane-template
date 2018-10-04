module Fastlane
  module Actions
    class CheckoutGitBranchAction < Action
      def self.run(params)
        sh("git checkout #{params[:branchname]}")
      end

      def self.description
        "Checks out a branch in Git"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :branchname,
                                       env_name: "FL_CHECKOUT_GIT_BRANCH_NAME",
                                       description: "The name of the branch to check out",
                                       type: String,
                                       optional: false),
        ]
      end

      def self.authors
        ["SlaunchaMan"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
