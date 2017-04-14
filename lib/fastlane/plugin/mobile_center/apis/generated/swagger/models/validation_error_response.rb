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
    class ValidationErrorResponse
      # @return [String]
      attr_accessor :id

      # @return [String]
      attr_accessor :code

      # @return [String]
      attr_accessor :message


      #
      # Mapper for ValidationErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidationErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ValidationErrorResponse',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              code: {
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: true,
                serialized_name: 'message',
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
