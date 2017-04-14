require 'ms_rest'

module Fastlane
  module Helper
    class MobileCenterHelper
      def self.create_mobile_center_client(token)
        UI.message("token #{token}")
        credentials = MsRest::TokenCredentials.new(token)
        @client = MobileCenterClient::MobileCenterClient.new(credentials)
      end
    end
  end
end
