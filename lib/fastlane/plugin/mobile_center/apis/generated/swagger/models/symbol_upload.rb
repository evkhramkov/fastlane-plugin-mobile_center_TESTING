# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # A single symbol upload entity
    #
    class SymbolUpload
      # @return [String] The id for the current symbol upload
      attr_accessor :symbol_upload_id

      # @return [String] The application that this symbol upload belongs to
      attr_accessor :app_id

      # @return [Enum] The current status for the symbol upload. Possible
      # values include: 'created', 'committed', 'aborted', 'processing',
      # 'indexed', 'failed'
      attr_accessor :status

      # @return [String] The type of the symbol for the current symbol upload.
      # Default value: 'Apple' .
      attr_accessor :symbol_type

      # @return [Array<String>] The symbol ids
      attr_accessor :symbols

      # @return [Enum] The origin of the symbol upload. Possible values
      # include: 'User', 'System'
      attr_accessor :origin


      #
      # Mapper for SymbolUpload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SymbolUpload',
          type: {
            name: 'Composite',
            class_name: 'SymbolUpload',
            model_properties: {
              symbol_upload_id: {
                required: true,
                serialized_name: 'symbol_upload_id',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                required: true,
                serialized_name: 'app_id',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              symbol_type: {
                required: true,
                is_constant: true,
                serialized_name: 'symbol_type',
                default_value: 'Apple',
                type: {
                  name: 'String'
                }
              },
              symbols: {
                required: false,
                serialized_name: 'symbols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              origin: {
                required: false,
                serialized_name: 'origin',
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
