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
    class OrganizationRequest
      # @return [String] The display name of the organization
      attr_accessor :display_name

      # @return [String] The name of the organization used in URLs
      attr_accessor :name


      #
      # Mapper for OrganizationRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OrganizationRequest',
          type: {
            name: 'Composite',
            class_name: 'OrganizationRequest',
            model_properties: {
              display_name: {
                required: false,
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
              }
            }
          }
        }
      end
    end
  end
end
