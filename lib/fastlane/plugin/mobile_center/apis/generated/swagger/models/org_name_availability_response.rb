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
    class OrgNameAvailabilityResponse
      # @return [Boolean] The availability status of the requested org name
      attr_accessor :available

      # @return [String] The generated org name
      attr_accessor :name


      #
      # Mapper for OrgNameAvailabilityResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OrgNameAvailabilityResponse',
          type: {
            name: 'Composite',
            class_name: 'OrgNameAvailabilityResponse',
            model_properties: {
              available: {
                required: true,
                serialized_name: 'available',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
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
