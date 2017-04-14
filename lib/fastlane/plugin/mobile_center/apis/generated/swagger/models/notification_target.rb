# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  module Models
    #
    # Generic notification target.
    #
    class NotificationTarget
      @@discriminatorMap = Hash.new

      def initialize
        @type = "NotificationTarget"
      end

      attr_accessor :type


      #
      # Mapper for NotificationTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationTarget',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'NotificationTarget',
            class_name: 'NotificationTarget',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
