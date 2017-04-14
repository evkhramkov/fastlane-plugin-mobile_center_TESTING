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
    class LogContainer
      # @return [Boolean] indicates if the number of available logs are more
      # than the max allowed return limit(100).
      attr_accessor :exceeded_max_limit

      # @return [DateTime] the timestamp of the last log received. This value
      # can be used as the start time parameter in the consecutive API call.
      attr_accessor :last_received_log_timestamp

      # @return [Array<Log>] the list of logs
      attr_accessor :logs


      #
      # Mapper for LogContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LogContainer',
          type: {
            name: 'Composite',
            class_name: 'LogContainer',
            model_properties: {
              exceeded_max_limit: {
                required: false,
                serialized_name: 'exceeded_max_limit',
                type: {
                  name: 'Boolean'
                }
              },
              last_received_log_timestamp: {
                required: false,
                serialized_name: 'last_received_log_timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              logs: {
                required: true,
                serialized_name: 'logs',
                constraints: {
                  MinItems: 0
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'LogElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Log',
                        class_name: 'Log'
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
