module Fastlane
  module Actions
    class CheckoutGitBranchAction < Action
      def self.description
        "Checks out a branch in Git"
      end

      def self.run(params)
        cmd = ['git checkout']

        cmd << "#{params[:branch_name]}"

        sh(cmd.join(' '))
      end
  
      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :branch_name,
                                       env_name: "FL_CHECKOUT_GIT_BRANCH_NAME",
                                       description: "The name of the branch to check out",
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
