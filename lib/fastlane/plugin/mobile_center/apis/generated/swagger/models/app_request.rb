# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # Model object.
    #
    #
    class AppRequest
      # @return [String] A short text describing the app
      attr_accessor :description

      # @return [String] The descriptive name of the app. This can contain any
      # characters
      attr_accessor :display_name

      # @return [String] The name of the app used in URLs
      attr_accessor :name

      # @return [Enum] The OS the app will be running on. Possible values
      # include: 'Android', 'iOS', 'Tizen', 'Windows'
      attr_accessor :os

      # @return [Enum] The platform of the app. Possible values include:
      # 'Java', 'Objective-C-Swift', 'React-Native', 'UWP', 'Xamarin'
      attr_accessor :platform


      #
      # Mapper for AppRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppRequest',
          type: {
            name: 'Composite',
            class_name: 'AppRequest',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'display_name',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              os: {
                required: true,
                serialized_name: 'os',
                type: {
                  name: 'String'
                }
              },
              platform: {
                required: true,
                serialized_name: 'platform',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
