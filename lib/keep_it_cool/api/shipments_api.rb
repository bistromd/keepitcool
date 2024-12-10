# frozen_string_literal: true

require 'cgi'

module KeepItCool
  class ShipmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk create or update shipments
    #  ### Creating/updating shipments    ### Triggering recommendations    ### Limits  Up to 10 shipments can be sent in a single request.          
    # @param bulk_create_shipment [BulkCreateShipment] 
    # @param [Hash] opts the optional parameters
    # @return [BulkShipmentResponse]
    def shipments_create(bulk_create_shipment, opts = {})
      data, _status_code, _headers = shipments_create_with_http_info(bulk_create_shipment, opts)
      data
    end

    # Bulk create or update shipments
    #  ### Creating/updating shipments    ### Triggering recommendations    ### Limits  Up to 10 shipments can be sent in a single request.          
    # @param bulk_create_shipment [BulkCreateShipment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BulkShipmentResponse, Integer, Hash)>] BulkShipmentResponse data, response status code and response headers
    def shipments_create_with_http_info(bulk_create_shipment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentsApi.shipments_create ...'
      end
      # verify the required parameter 'bulk_create_shipment' is set
      if @api_client.config.client_side_validation && bulk_create_shipment.nil?
        fail ArgumentError, "Missing the required parameter 'bulk_create_shipment' when calling ShipmentsApi.shipments_create"
      end
      # resource path
      local_var_path = '/v1/shipments/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bulk_create_shipment)

      # return_type
      return_type = opts[:debug_return_type] || 'BulkShipmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['API Key Auth']

      new_options = opts.merge(
        :operation => :"ShipmentsApi.shipments_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentsApi#shipments_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
