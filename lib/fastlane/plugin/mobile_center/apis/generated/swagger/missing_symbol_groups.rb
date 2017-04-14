# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module swagger
  #
  # Microsoft Visual Studio Mobile Center API
  #
  class MissingSymbolGroups

    #
    # Creates and initializes a new instance of the MissingSymbolGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MobileCenterClient] reference to the MobileCenterClient
    attr_reader :client

    #
    # Gets missing symbol crash group by its id
    #
    # Gets missing symbol crash group by its id
    #
    # @param symbol_group_id [String] missing symbol crash group id
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MissingSymbolCrashGroupsResponse] operation results.
    #
    def get(symbol_group_id, owner_name, app_name, custom_headers = nil)
      response = get_async(symbol_group_id, owner_name, app_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets missing symbol crash group by its id
    #
    # Gets missing symbol crash group by its id
    #
    # @param symbol_group_id [String] missing symbol crash group id
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(symbol_group_id, owner_name, app_name, custom_headers = nil)
      get_async(symbol_group_id, owner_name, app_name, custom_headers).value!
    end

    #
    # Gets missing symbol crash group by its id
    #
    # Gets missing symbol crash group by its id
    #
    # @param symbol_group_id [String] missing symbol crash group id
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(symbol_group_id, owner_name, app_name, custom_headers = nil)
      fail ArgumentError, 'symbol_group_id is nil' if symbol_group_id.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/symbol_groups/{symbol_group_id}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'symbol_group_id' => symbol_group_id,'owner_name' => owner_name,'app_name' => app_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = swagger::Models::MissingSymbolCrashGroupsResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # @param top [Integer] top N elements
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param filter [String] query filter
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MissingSymbolCrashGroupsResponse] operation results.
    #
    def list(top, owner_name, app_name, filter = nil, custom_headers = nil)
      response = list_async(top, owner_name, app_name, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # @param top [Integer] top N elements
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param filter [String] query filter
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_with_http_info(top, owner_name, app_name, filter = nil, custom_headers = nil)
      list_async(top, owner_name, app_name, filter, custom_headers).value!
    end

    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # Gets top N (ordered by crash count) of crash groups by missing symbol
    #
    # @param top [Integer] top N elements
    # @param owner_name [String] The name of the owner
    # @param app_name [String] The name of the application
    # @param filter [String] query filter
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(top, owner_name, app_name, filter = nil, custom_headers = nil)
      fail ArgumentError, 'top is nil' if top.nil?
      fail ArgumentError, 'owner_name is nil' if owner_name.nil?
      fail ArgumentError, 'app_name is nil' if app_name.nil?


      request_headers = {}
      path_template = 'v0.1/apps/{owner_name}/{app_name}/symbol_groups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'owner_name' => owner_name,'app_name' => app_name},
          query_params: {'top' => top,'filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = swagger::Models::MissingSymbolCrashGroupsResponse.mapper()
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