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
    class CrashCounts
      # @return [Integer] total crash count
      attr_accessor :count

      # @return [Array<DateTimeCounts>] the total crash count for day
      attr_accessor :crashes


      #
      # Mapper for CrashCounts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrashCounts',
          type: {
            name: 'Composite',
            class_name: 'CrashCounts',
            model_properties: {
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              crashes: {
                required: false,
                serialized_name: 'crashes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeCountsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DateTimeCounts'
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
