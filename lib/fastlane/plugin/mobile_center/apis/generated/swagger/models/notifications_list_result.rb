# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # List of notifications
    #
    class NotificationsListResult
      # @return [Array<NotificationDetailsResult>]
      attr_accessor :values

      # @return [Integer] the total count of notifications
      attr_accessor :total

      # @return [String]
      attr_accessor :next_link


      #
      # Mapper for NotificationsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationsListResult',
          type: {
            name: 'Composite',
            class_name: 'NotificationsListResult',
            model_properties: {
              values: {
                required: true,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NotificationDetailsResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NotificationDetailsResult'
                      }
                  }
                }
              },
              total: {
                required: false,
                serialized_name: 'total',
                type: {
                  name: 'Number'
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
