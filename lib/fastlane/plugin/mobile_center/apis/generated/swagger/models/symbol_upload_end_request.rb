# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # A request containing information pertaining to completing a symbol upload
    # process
    #
    class SymbolUploadEndRequest
      # @return [Enum] The desired operation for the symbol upload. Possible
      # values include: 'committed', 'aborted'
      attr_accessor :status


      #
      # Mapper for SymbolUploadEndRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SymbolUploadEndRequest',
          type: {
            name: 'Composite',
            class_name: 'SymbolUploadEndRequest',
            model_properties: {
              status: {
                required: true,
                serialized_name: 'status',
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
