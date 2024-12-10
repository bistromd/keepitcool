# frozen_string_literal: true

require 'cgi'

module KeepItCool
  class BulkRecommendationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Bulk Recommendations
    # Retrieves a list of all bulk recommendation configurations for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [PaginatedCustomerBulkRecommendationConfigList]
    def bulk_recommendations_list(opts = {})
      data, _status_code, _headers = bulk_recommendations_list_with_http_info(opts)
      data
    end

    # List Bulk Recommendations
    # Retrieves a list of all bulk recommendation configurations for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [Array<(PaginatedCustomerBulkRecommendationConfigList, Integer, Hash)>] PaginatedCustomerBulkRecommendationConfigList data, response status code and response headers
    def bulk_recommendations_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BulkRecommendationsApi.bulk_recommendations_list ...'
      end
      # resource path
      local_var_path = '/v1/bulk-recommendations/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedCustomerBulkRecommendationConfigList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"BulkRecommendationsApi.bulk_recommendations_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkRecommendationsApi#bulk_recommendations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Bulk Recommendation
    # Retrieves a specific bulk recommendation configuration for your organization
    # @param uuid [String] A UUID string identifying this bulk recommendation config.
    # @param [Hash] opts the optional parameters
    # @return [CustomerBulkRecommendationConfig]
    def bulk_recommendations_retrieve(uuid, opts = {})
      data, _status_code, _headers = bulk_recommendations_retrieve_with_http_info(uuid, opts)
      data
    end

    # Retrieve Bulk Recommendation
    # Retrieves a specific bulk recommendation configuration for your organization
    # @param uuid [String] A UUID string identifying this bulk recommendation config.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerBulkRecommendationConfig, Integer, Hash)>] CustomerBulkRecommendationConfig data, response status code and response headers
    def bulk_recommendations_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BulkRecommendationsApi.bulk_recommendations_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling BulkRecommendationsApi.bulk_recommendations_retrieve"
      end
      # resource path
      local_var_path = '/v1/bulk-recommendations/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerBulkRecommendationConfig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"BulkRecommendationsApi.bulk_recommendations_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkRecommendationsApi#bulk_recommendations_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
