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
    class Table
      # @return [String]
      attr_accessor :name

      # @return [Array<Permission>]
      attr_accessor :permissions

      # @return [Hash{String => String}]
      attr_accessor :extended_settings

      # @return [Array<TableColumn>]
      attr_accessor :columns


      #
      # Mapper for Table class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Table',
          type: {
            name: 'Composite',
            class_name: 'Table',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: false,
                serialized_name: 'permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PermissionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Permission'
                      }
                  }
                }
              },
              extended_settings: {
                required: false,
                serialized_name: 'extendedSettings',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              columns: {
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TableColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TableColumn'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
