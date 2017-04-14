# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Swagger
  module Models
    #
    # Model object.
    #
    #
    class TestReportFeaturesItem
      # @return [String]
      attr_accessor :name

      # @return [Array<TestReportFeaturesItemTestsItem>]
      attr_accessor :tests

      # @return [Float]
      attr_accessor :failed

      # @return [Float]
      attr_accessor :skipped

      # @return [Float]
      attr_accessor :peak_memory

      # @return [Float]
      attr_accessor :peak_duration


      #
      # Mapper for TestReportFeaturesItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TestReport_featuresItem',
          type: {
            name: 'Composite',
            class_name: 'TestReportFeaturesItem',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tests: {
                required: false,
                serialized_name: 'tests',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TestReportFeaturesItemTestsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TestReportFeaturesItemTestsItem'
                      }
                  }
                }
              },
              failed: {
                required: false,
                serialized_name: 'failed',
                type: {
                  name: 'Double'
                }
              },
              skipped: {
                required: false,
                serialized_name: 'skipped',
                type: {
                  name: 'Double'
                }
              },
              peak_memory: {
                required: false,
                serialized_name: 'peakMemory',
                type: {
                  name: 'Double'
                }
              },
              peak_duration: {
                required: false,
                serialized_name: 'peakDuration',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end