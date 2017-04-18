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
    class TestReportFeaturesItemTestsItemRunsItem
      # @return [Float]
      attr_accessor :number

      # @return [Array<TestReportFeaturesItemTestsItemRunsItemStepsItem>]
      attr_accessor :steps

      # @return [Float]
      attr_accessor :failed

      # @return [Float]
      attr_accessor :skipped

      # @return [String]
      attr_accessor :report_url

      # @return [String]
      attr_accessor :id


      #
      # Mapper for TestReportFeaturesItemTestsItemRunsItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TestReport_featuresItem_testsItem_runsItem',
          type: {
            name: 'Composite',
            class_name: 'TestReportFeaturesItemTestsItemRunsItem',
            model_properties: {
              number: {
                required: false,
                serialized_name: 'number',
                type: {
                  name: 'Double'
                }
              },
              steps: {
                required: false,
                serialized_name: 'steps',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TestReportFeaturesItemTestsItemRunsItemStepsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TestReportFeaturesItemTestsItemRunsItemStepsItem'
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
              report_url: {
                required: false,
                serialized_name: 'report_url',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
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