module Fastlane
  module Actions
    class ReleaseAction < Action
      def self.connection(owner_name, app_name)
        require 'faraday'
        require 'faraday_middleware'

        UI.message("Creating connection to v0.1/apps/#{owner_name}/#{app_name}/release_uploads")

        options = {
          url: "https://api.mobile.azure.com/v0.1/apps/#{owner_name}/#{app_name}/release_uploads"
        }
        
        Faraday.new(options) do |builder|
          builder.request :multipart
          builder.request :url_encoded
          builder.response :json, content_type: /\bjson$/
          builder.use FaradayMiddleware::FollowRedirects
          builder.adapter :net_http
        end
      end

      def self.run(params)
        UI.message("Running release action")
        connection = self.connection(params[:owner_name], params[:app_name])
        puts connection
      end

      def self.description
        ""
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

          FastlaneCore::ConfigItem.new(key: :owner_name,
                                  env_name: "MOBILE_CENTER_OWNER_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :app_name,
                                  env_name: "MOBILE_CENTER_APP_NAME",
                               description: "App name",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :ipa,
                                  env_name: "MOBILE_CENTER_DISTRIBUTE_IPA_FILE",
                               description: "Build release path",
                                  optional: false,
                                      type: String),

          FastlaneCore::ConfigItem.new(key: :group,
                                  env_name: "MOBILE_CENTER_DISTRIBUTE_GROUP",
                               description: "Distribute group",
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
