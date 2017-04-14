# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # Device Selection

    # Short ID for a list of device IDs
    #
    class DeviceSelection
      # @return [String] Identifier of the device selection
      attr_accessor :short_id


      #
      # Mapper for DeviceSelection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceSelection',
          type: {
            name: 'Composite',
            class_name: 'DeviceSelection',
            model_properties: {
              short_id: {
                required: true,
                serialized_name: 'shortId',
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
