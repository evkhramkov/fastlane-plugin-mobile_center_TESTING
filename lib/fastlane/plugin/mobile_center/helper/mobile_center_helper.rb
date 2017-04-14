require 'ms_rest'

module Fastlane
  module Helper
    class MobileCenterHelper
      # class methods that you define here become available in your action
      # as `Helper::MobileCenterHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the mobile_center plugin helper!")
      end

      def self.create_mobile_center_client
        # MsRest::ServiceClient
        # MsRest::ServiceClientCredentials
        puts MobileCenterClient.constants
      end
    end
  end
end
