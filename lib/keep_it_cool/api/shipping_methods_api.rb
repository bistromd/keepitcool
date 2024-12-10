# frozen_string_literal: true

require 'cgi'

module KeepItCool
  class ShippingMethodsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Shipping Methods
    # Retrieves a list of all shipping methods for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [String] :distribution_center_id The ID of the distribution center to filter shipping methods by
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [PaginatedCustomerShippingMethodList]
    def shipping_methods_list(opts = {})
      data, _status_code, _headers = shipping_methods_list_with_http_info(opts)
      data
    end

    # List Shipping Methods
    # Retrieves a list of all shipping methods for your organization
    # @param [Hash] opts the optional parameters
    # @option opts [String] :distribution_center_id The ID of the distribution center to filter shipping methods by
    # @option opts [Integer] :limit Number of results to return per page.
    # @option opts [Integer] :offset The initial index from which to return the results.
    # @return [Array<(PaginatedCustomerShippingMethodList, Integer, Hash)>] PaginatedCustomerShippingMethodList data, response status code and response headers
    def shipping_methods_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShippingMethodsApi.shipping_methods_list ...'
      end
      # resource path
      local_var_path = '/v1/shipping-methods/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'distribution_center_id'] = opts[:'distribution_center_id'] if !opts[:'distribution_center_id'].nil?
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
      return_type = opts[:debug_return_type] || 'PaginatedCustomerShippingMethodList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"ShippingMethodsApi.shipping_methods_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingMethodsApi#shipping_methods_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Shipping Method
    # Retrieves a shipping method for your organization
    # @param uuid [String] A UUID string identifying this shipping method.
    # @param [Hash] opts the optional parameters
    # @return [CustomerShippingMethod]
    def shipping_methods_retrieve(uuid, opts = {})
      data, _status_code, _headers = shipping_methods_retrieve_with_http_info(uuid, opts)
      data
    end

    # Retrieve Shipping Method
    # Retrieves a shipping method for your organization
    # @param uuid [String] A UUID string identifying this shipping method.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerShippingMethod, Integer, Hash)>] CustomerShippingMethod data, response status code and response headers
    def shipping_methods_retrieve_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShippingMethodsApi.shipping_methods_retrieve ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling ShippingMethodsApi.shipping_methods_retrieve"
      end
      # resource path
      local_var_path = '/v1/shipping-methods/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerShippingMethod'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"ShippingMethodsApi.shipping_methods_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingMethodsApi#shipping_methods_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
