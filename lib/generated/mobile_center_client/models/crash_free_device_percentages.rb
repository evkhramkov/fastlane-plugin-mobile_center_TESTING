# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterClient
  module Models
    #
    # Model object.
    #
    #
    class CrashFreeDevicePercentages
      # @return [Integer] Average percentage
      attr_accessor :average_percentage

      # @return [Array<DateTimePercentages>] The crash-free percentage per day.
      attr_accessor :daily_percentages


      #
      # Mapper for CrashFreeDevicePercentages class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrashFreeDevicePercentages',
          type: {
            name: 'Composite',
            class_name: 'CrashFreeDevicePercentages',
            model_properties: {
              average_percentage: {
                required: false,
                serialized_name: 'average_percentage',
                type: {
                  name: 'Number'
                }
              },
              daily_percentages: {
                required: false,
                serialized_name: 'daily_percentages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimePercentagesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DateTimePercentages'
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