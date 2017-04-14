module Fastlane
  module Actions
    class MobileCenterAction < Action
      def self.run(params)
        UI.message("The mobile_center plugin is working!")
        Helper::MobileCenterHelper.create_mobile_center_client(params[:token])
      end

      def self.description
        "visual studio mobile center integration plugin"
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
          FastlaneCore::ConfigItem.new(key: :token,
                                  env_name: "MOBILE_CENTER_TOKEN",
                               description: "Auth token",
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
