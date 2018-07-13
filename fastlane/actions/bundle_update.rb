module Fastlane
  module Actions
    class BundleUpdateAction < Action
      def self.run(params)
        if gemfile_lock_exists?
          cmd = ['bundle update']

          cmd << "#{params[:gems].join(' ')}" if params[:gems]
          cmd << "--group ${params[:group]}" if params[:group]
          cmd << "--source ${params[:source]}" if params[:source]
          cmd << "--local" if params[:local]
          cmd << "--ruby" if params[:ruby]
          cmd << "--bundler ${params[:bundler]}" if params[:bundler]
          cmd << "--full-index" if params[:full_index]
          cmd << "--jobs #{params[:jobs]}" if params[:jobs]
          cmd << "--quiet" if params[:quiet]
          cmd << "--force" if params[:force]
          cmd << "--patch" if params[:patch]
          cmd << "--minor" if params[:minor]
          cmd << "--major" if params[:major]
          cmd << "--strict" if params[:strict]
          cmd << "--conservative" if params[:conservative]

          return sh(cmd.join(' '))
        else
          UI.message("No Gemfile found")
        end
      end

      def self.gemfile_lock_exists?
        possible_lockfiles = ['Gemfile.lock', 'gemfile.lock']
        possible_lockfiles.each do |lockfile|
          lockfile = File.absolute_path(lockfile)
          return true if File.exist?(lockfile)
          UI.message("Lockfile not found at: '#{lockfile}'")
        end
        return false
      end

      def self.description
        'This action runs `bundle update` (if available)'
      end

      def self.is_supported?(platform)
        true
      end

      def self.author
        ["SlaunchaMan"]
      end

      def self.example_code
        nil
      end

      def self.category
        :misc
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :gems,
                                       env_name: "FL_BUNDLE_UPDATE_GEMS",
                                       description: "A list of gems to update",
                                       type: Array,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :group,
                                       env_name: "FL_BUNDLE_UPDATE_GROUP",
                                       description: "Only  update the gems in the specified group",
                                       type: String,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :source,
                                       env_name: "FL_BUNDLE_UPDATE_SOURCE",
                                       description: "The name of a git or path source used in the Gemfile",
                                       type: String,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :local,
                                       env_name: "FL_BUNDLE_UPDATE_LOCAL",
                                       description: "Do not attempt to fetch gems remotely and use the gem cache instead",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :ruby,
                                       env_name: "FL_BUNDLE_UPDATE_RUBY",
                                       description: "Update the locked version of Ruby to the current version of Ruby",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :bundler,
                                       env_name: "FL_BUNDLE_UPDATE_BUNDLER",
                                       description: "Update the locked version of bundler to the invoked bundler version",
                                       type: String,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :full_index,
                                       env_name: "FL_BUNDLE_UPDATE_FULL_INDEX",
                                       description: "Fall back to using the single-file index of all gems",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :jobs,
                                       env_name: "FL_BUNDLE_UPDATE_JOBS",
                                       description: "Specify the number of jobs to run in parallel. The default is 1",
                                       type: Integer,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :retry,
                                       env_name: "FL_BUNDLE_UPDATE_RETRY",
                                       description: "Retry failed network or git requests for n times",
                                       type: Integer,
                                       optional: true),
          FastlaneCore::ConfigItem.new(key: :quiet,
                                       env_name: "FL_BUNDLE_UPDATE_QUIET",
                                       description: "Only output warnings and errors",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :force,
                                       env_name: "FL_BUNDLE_UPDATE_FORCE",
                                       description: "Force downloading every gem",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :patch,
                                       env_name: "FL_BUNDLE_UPDATE_PATCH",
                                       description: "Prefer updating only to next patch version",
                                       type: Boolean,
                                       optional: true,
                                       conflicting_options: [:minor, :major]),
          FastlaneCore::ConfigItem.new(key: :minor,
                                       env_name: "FL_BUNDLE_UPDATE_MINOR",
                                       description: "Prefer updating only to next minor version",
                                       type: Boolean,
                                       optional: true,
                                       conflicting_options: [:patch, :major]),
          FastlaneCore::ConfigItem.new(key: :major,
                                       env_name: "FL_BUNDLE_UPDATE_MAJOR",
                                       description: "Prefer updating to next major version",
                                       type: Boolean,
                                       optional: true,
                                       conflicting_options: [:patch, :minor]),
          FastlaneCore::ConfigItem.new(key: :strict,
                                       env_name: "FL_BUNDLE_UPDATE_STRICT",
                                       description: "Do not allow any gem to be updated past latest :patch | :minor | :major",
                                       is_string: false,
                                       default_value: false),
          FastlaneCore::ConfigItem.new(key: :conservative,
                                       env_name: "FL_BUNDLE_UPDATE_CONSERVATIVE",
                                       description: "Use bundle install conservative update behavior and do not allow shared dependencies to be updated",
                                       is_string: false,
                                       default_value: false),
        ]
      end
    end
  end
end
