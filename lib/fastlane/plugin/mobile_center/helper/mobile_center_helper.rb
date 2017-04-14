require 'ms_rest'

module Fastlane
  module Helper
    class MobileCenterHelper
      def self.create_mobile_center_client(api_token)
        credentials = MsRest::TokenCredentials.new(api_token)
        MobileCenterApi::MobileCenterClient.new(credentials)
      end

      def self.build(api_token, branch, owner_name, app_name)
        client = self.create_mobile_center_client(api_token)
        result = client.builds.queue(branch, owner_name, app_name)
        puts result
      end
    end
  end
end
