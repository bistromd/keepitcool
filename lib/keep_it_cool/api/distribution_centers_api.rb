# frozen_string_literal: true

require 'cgi'

module KeepItCool
  class DistributionCentersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Distribution Center
    # Creates a new distribution center for your organization
    # @param customer_distribution_center [CustomerDistributionCenter] 
    # @param [Hash] opts the optional parameters
    # @return [CustomerDistributionCenter]
    def distribution_centers_create(customer_distribution_center, opts = {})
      data, _status_code, _headers = distribution_centers_create_with_http_info(customer_distribution_center, opts)
      data
    end

    # Create Distribution Center
    # Creates a new distribution center for your organization
    # @param customer_distribution_center [CustomerDistributionCenter] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerDistributionCenter, Integer, Hash)>] CustomerDistributionCenter data, response status code and response headers
    def distribution_centers_create_with_http_info(customer_distribution_center, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionCentersApi.distribution_centers_create ...'
      end
      # verify the required parameter 'customer_distribution_center' is set
      if @api_client.config.client_side_validation && customer_distribution_center.nil?
        fail ArgumentError, "Missing the required parameter 'customer_distribution_center' when calling DistributionCentersApi.distribution_centers_create"
      end
      # resource path
      local_var_path = '/v1/distribution-centers/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_distribution_center)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerDistributionCenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"DistributionCentersApi.distribution_centers_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionCentersApi#distribution_centers_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Distribution Centers
    # Retrieves a list of all distribution centers for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [PaginatedCustomerDistributionCenterList]
    def distribution_centers_list(opts = {})
      data, _status_code, _headers = distribution_centers_list_with_http_info(opts)
      data
    end

    # List Distribution Centers
    # Retrieves a list of all distribution centers for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [Array<(PaginatedCustomerDistributionCenterList, Integer, Hash)>] PaginatedCustomerDistributionCenterList data, response status code and response headers
    def distribution_centers_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionCentersApi.distribution_centers_list ...'
      end
      # resource path
      local_var_path = '/v1/distribution-centers/'

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
      return_type = opts[:debug_return_type] || 'PaginatedCustomerDistributionCenterList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"DistributionCentersApi.distribution_centers_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionCentersApi#distribution_centers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Distribution Center
    # Update a distribution center for your organization
    # @param uuid [String] A UUID string identifying this distribution center.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedCustomerDistributionCenter] :patched_customer_distribution_center 
    # @return [CustomerDistributionCenter]
    def distribution_centers_partial_update(uuid, opts = {})
      data, _status_code, _headers = distribution_centers_partial_update_with_http_info(uuid, opts)
      data
    end

    # Update Distribution Center
    # Update a distribution center for your organization
    # @param uuid [String] A UUID string identifying this distribution center.
    # @param [Hash] opts the optional parameters
    # @option opts [PatchedCustomerDistributionCenter] :patched_customer_distribution_center 
    # @return [Array<(CustomerDistributionCenter, Integer, Hash)>] CustomerDistributionCenter data, response status code and response headers
    def distribution_centers_partial_update_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionCentersApi.distribution_centers_partial_update ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling DistributionCentersApi.distribution_centers_partial_update"
      end
      # resource path
      local_var_path = '/v1/distribution-centers/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'patched_customer_distribution_center'])

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerDistributionCenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"DistributionCentersApi.distribution_centers_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionCentersApi#distribution_centers_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Distribution Center
    # Retrieves a distribution center for your organization
    # @param uuid [String] A UUID string identifying this distribution center.
    # @param [Hash] opts the optional parameters
    # @return [CustomerDistributionCenter]
    def distribution_centers_retrieve(uuid, opts = {})
      data, _status_code, _headers = distribution_centers_retrieve_with_http_info(uuid, opts)
      data
    end

    # Retrieve Distribution Center
    # Retrieves a distribution center for your organization
    # @param uuid [String] A UUID string identifying this distribution center.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerDistributionCenter, Integer, Hash)>] CustomerDistributionCenter data, response status code and response headers
    def distribution_centers_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DistributionCentersApi.distribution_centers_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling DistributionCentersApi.distribution_centers_retrieve"
      end
      # resource path
      local_var_path = '/v1/distribution-centers/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerDistributionCenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"DistributionCentersApi.distribution_centers_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DistributionCentersApi#distribution_centers_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
