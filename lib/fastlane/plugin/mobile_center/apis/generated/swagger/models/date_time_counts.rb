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
    class DateTimeCounts
      # @return [String] the ISO 8601 datetime
      attr_accessor :datetime

      # @return [Integer] count of the object
      attr_accessor :count


      #
      # Mapper for DateTimeCounts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DateTimeCounts',
          type: {
            name: 'Composite',
            class_name: 'DateTimeCounts',
            model_properties: {
              datetime: {
                required: false,
                serialized_name: 'datetime',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
