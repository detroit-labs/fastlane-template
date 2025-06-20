module Fastlane
  module Actions
    class BundleUpdateAction < Action
      def self.description
        "Updates bundle"
      end

      def self.run(params)
        cmd = ['bundle update']

        sh(cmd.join(' '))
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
