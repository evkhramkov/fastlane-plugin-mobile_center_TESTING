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
    class ImportDataContainer
      # @return [String]
      attr_accessor :csv_data


      #
      # Mapper for ImportDataContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImportDataContainer',
          type: {
            name: 'Composite',
            class_name: 'ImportDataContainer',
            model_properties: {
              csv_data: {
                required: false,
                serialized_name: 'csvData',
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
