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
    class DistributionGroup
      # @return [String] ID identifying a unique distribution group.
      attr_accessor :id

      # @return [String] A name identifying a unique distribution group.
      attr_accessor :name

      # @return [Boolean] Is the containing release the latest one in this
      # distribution group.
      attr_accessor :is_latest


      #
      # Mapper for DistributionGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DistributionGroup',
          type: {
            name: 'Composite',
            class_name: 'DistributionGroup',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              is_latest: {
                required: false,
                serialized_name: 'is_latest',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
