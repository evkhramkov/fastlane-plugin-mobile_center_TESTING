# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module MobileCenterApi
  module Models
    #
    # Model object.
    #
    #
    class Crash
      # @return [String]
      attr_accessor :crash_id

      # @return [String]
      attr_accessor :display_id

      # @return [DateTime]
      attr_accessor :timestamp

      # @return [String]
      attr_accessor :version

      # @return [String]
      attr_accessor :build

      # @return [String]
      attr_accessor :device

      # @return [String]
      attr_accessor :os_version

      # @return [String]
      attr_accessor :os_type

      # @return [String]
      attr_accessor :user_name

      # @return [String]
      attr_accessor :user_email


      #
      # Mapper for Crash class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Crash',
          type: {
            name: 'Composite',
            class_name: 'Crash',
            model_properties: {
              crash_id: {
                required: true,
                serialized_name: 'crash_id',
                type: {
                  name: 'String'
                }
              },
              display_id: {
                required: false,
                serialized_name: 'display_id',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                required: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              version: {
                required: true,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              build: {
                required: true,
                serialized_name: 'build',
                type: {
                  name: 'String'
                }
              },
              device: {
                required: true,
                serialized_name: 'device',
                type: {
                  name: 'String'
                }
              },
              os_version: {
                required: true,
                serialized_name: 'os_version',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'os_type',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: true,
                serialized_name: 'user_name',
                type: {
                  name: 'String'
                }
              },
              user_email: {
                required: false,
                serialized_name: 'user_email',
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