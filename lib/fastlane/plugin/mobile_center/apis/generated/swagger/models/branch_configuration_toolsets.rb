# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # The branch build configuration for each toolset
    #
    class BranchConfigurationToolsets
      # @return [XcodeBranchConfigurationProperties]
      attr_accessor :xcode

      # @return [JavaScriptBranchConfigurationProperties]
      attr_accessor :javascript

      # @return [XamarinBranchConfigurationProperties]
      attr_accessor :xamarin

      # @return [AndroidBranchConfigurationProperties]
      attr_accessor :android


      #
      # Mapper for BranchConfigurationToolsets class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BranchConfigurationToolsets',
          type: {
            name: 'Composite',
            class_name: 'BranchConfigurationToolsets',
            model_properties: {
              xcode: {
                required: false,
                serialized_name: 'xcode',
                type: {
                  name: 'Composite',
                  class_name: 'XcodeBranchConfigurationProperties'
                }
              },
              javascript: {
                required: false,
                serialized_name: 'javascript',
                type: {
                  name: 'Composite',
                  class_name: 'JavaScriptBranchConfigurationProperties'
                }
              },
              xamarin: {
                required: false,
                serialized_name: 'xamarin',
                type: {
                  name: 'Composite',
                  class_name: 'XamarinBranchConfigurationProperties'
                }
              },
              android: {
                required: false,
                serialized_name: 'android',
                type: {
                  name: 'Composite',
                  class_name: 'AndroidBranchConfigurationProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
