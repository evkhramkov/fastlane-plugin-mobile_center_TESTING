require 'ms_rest'

module Fastlane
  module Helper
    class MobileCenterHelper
      def self.create_mobile_center_client(api_token)
        credentials = MsRest::TokenCredentials.new(api_token)
        MobileCenterClient::MobileCenterClient.new(credentials)
      end

      def self.build(api_token, branch, app_owner, app_name)
        puts api_token.to_s
        puts branch.to_s
        puts app_owner.to_s
        puts app_name.to_s
      end
    end
  end
end
