# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # Physical device dimensions
    #
    class DeviceDimensions
      # @return
      attr_accessor :depth

      # @return
      attr_accessor :height

      # @return
      attr_accessor :width


      #
      # Mapper for DeviceDimensions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceDimensions',
          type: {
            name: 'Composite',
            class_name: 'DeviceDimensions',
            model_properties: {
              depth: {
                required: false,
                serialized_name: 'depth',
                type: {
                  name: 'Object'
                }
              },
              height: {
                required: false,
                serialized_name: 'height',
                type: {
                  name: 'Object'
                }
              },
              width: {
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
