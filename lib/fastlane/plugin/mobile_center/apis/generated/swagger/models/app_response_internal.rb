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
    class AppResponseInternal < AppResponse
      # @return [Array<String>] The feature flags that are enabled for this app
      attr_accessor :feature_flags

      # @return [Array<AppResponseInternalRepositoriesItem>] The repositories
      # associated with this app
      attr_accessor :repositories


      #
      # Mapper for AppResponseInternal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppResponseInternal',
          type: {
            name: 'Composite',
            class_name: 'AppResponseInternal',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              app_secret: {
                required: true,
                serialized_name: 'app_secret',
                type: {
                  name: 'String'
                }
              },
              azure_subscription_id: {
                required: false,
                serialized_name: 'azure_subscription_id',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'display_name',
                type: {
                  name: 'String'
                }
              },
              icon_url: {
                required: false,
                serialized_name: 'icon_url',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              member_permissions: {
                required: false,
                serialized_name: 'member_permissions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              os: {
                required: true,
                serialized_name: 'os',
                type: {
                  name: 'String'
                }
              },
              owner: {
                required: true,
                serialized_name: 'owner',
                type: {
                  name: 'Composite',
                  class_name: 'Owner'
                }
              },
              platform: {
                required: true,
                serialized_name: 'platform',
                type: {
                  name: 'String'
                }
              },
              origin: {
                required: true,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              feature_flags: {
                required: false,
                serialized_name: 'feature_flags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              repositories: {
                required: false,
                serialized_name: 'repositories',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AppResponseInternalRepositoriesItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AppResponseInternalRepositoriesItem'
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
