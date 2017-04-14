# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # The Xcode version
    #
    class XcodeVersion
      # @return [String] The version name
      attr_accessor :name

      # @return [Boolean] If the version is current
      attr_accessor :current


      #
      # Mapper for XcodeVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'XcodeVersion',
          type: {
            name: 'Composite',
            class_name: 'XcodeVersion',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              current: {
                required: false,
                serialized_name: 'current',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
