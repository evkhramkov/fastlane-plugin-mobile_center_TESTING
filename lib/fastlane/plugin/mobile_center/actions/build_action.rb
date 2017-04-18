# build action, which uses generated client code by autorest and swagger spec

module Fastlane
  module Actions
    class BuildAction < Action
      def self.run(params)
        UI.message("Running build action")
        Helper::MobileCenterHelper.build(
          params[:api_token],
          params[:branch],
          params[:owner_name],
          params[:app_name]
        )
      end

      def self.description
        "queue mobile center build for app"
      end

      def self.authors
        ["Evgeniy Khramkov"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "visual studio mobile center integration plugin"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :api_token,
                                  env_name: "MOBILE_CENTER_API_TOKEN",
                               description: "Auth token",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :branch,
                                  env_name: "MOBILE_CENTER_BRANCH",
                               description: "Branch",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :owner_name,
                                  env_name: "MOBILE_CENTER_OWNER_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :app_name,
                                  env_name: "MOBILE_CENTER_APP_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
