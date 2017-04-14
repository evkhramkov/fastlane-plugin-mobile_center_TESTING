# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Swagger
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class Repositories

    #
    # Creates and initializes a new instance of the Repositories class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MobileCenterClient] reference to the MobileCenterClient
    attr_reader :client

    #
    # Gets the repositories available from the source code host
    #
    # @param source_host [Enum] The source host. Possible values include: 'github',
    # 'bitbucket', 'vsts'
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param form [Enum] The selected form of the object. Possible values include:
    # 'lite', 'full'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def list(source_host, owner_name, app_name, form = nil, custom_headers = nil)
      response = list_async(source_host, owner_name, app_name, form, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the repositories available from the source code host
    #
    # @param source_host [Enum] The source host. Possible values include: 'github',
    # 'bitbucket', 'vsts'
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param form [Enum] The selected form of the object. Possible values include:
    # 'lite', 'full'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_with_http_info(source_host, owner_name, app_name, form = nil, custom_headers = nil)
      list_async(source_host, owner_name, app_name, form, custom_headers).value!
    end

    #
    # Gets the repositories available from the source code host
    #
    # @param source_host [Enum] The source host. Possible values include: 'github',
    # 'bitbucket', 'vsts'
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param form [Enum] The selected form of the object. Possible values include:
    # 'lite', 'full'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(source_host, owner_name, app_name, form = nil, custom_headers = nil)
      fail ArgumentError, 'source_host is nil' if source_host.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/source_hosts/{source_host}/repositories'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'source_host' => source_host,'owner_name' => owner_name,'app_name' => app_name},
          query_params: {'form' => form},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 400
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'SourceRepositoryElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'SourceRepository'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 400
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Swagger::Models::ValidationErrorResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end