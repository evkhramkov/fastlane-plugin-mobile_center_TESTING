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
    class DeviceFrame
      # @return [DeviceFrameDefinition]
      attr_accessor :grid

      # @return [DeviceFrameDefinition]
      attr_accessor :full


      #
      # Mapper for DeviceFrame class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceFrame',
          type: {
            name: 'Composite',
            class_name: 'DeviceFrame',
            model_properties: {
              grid: {
                required: false,
                serialized_name: 'grid',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceFrameDefinition'
                }
              },
              full: {
                required: false,
                serialized_name: 'full',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceFrameDefinition'
                }
              }
            }
          }
        }
      end
    end
  end
end
