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
    class FeatureCreateRequest
      # @return [String] The unique name of the feature
      attr_accessor :name

      # @return [String] The full (friendly) name of the feature.
      attr_accessor :display_name

      # @return [Integer] The state of the feature
      attr_accessor :state

      # @return [String] The friendly name of the feature
      attr_accessor :description


      #
      # Mapper for FeatureCreateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FeatureCreateRequest',
          type: {
            name: 'Composite',
            class_name: 'FeatureCreateRequest',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
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
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Number'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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