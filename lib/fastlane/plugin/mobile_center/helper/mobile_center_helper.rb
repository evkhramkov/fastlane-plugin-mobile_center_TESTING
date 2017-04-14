require 'ms_rest'

module Fastlane
  module Helper
    class MobileCenterHelper
      def self.create_mobile_center_client(api_token)
        credentials = MsRest::TokenCredentials.new(api_token)
        @client = MobileCenterClient::MobileCenterClient.new(credentials)
      end
    end
  end
end
