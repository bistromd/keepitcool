# frozen_string_literal: true

# Common files
require 'keep_it_cool/api_client'
require 'keep_it_cool/api_error'
require 'keep_it_cool/version'
require 'keep_it_cool/configuration'

# Models
require 'keep_it_cool/models/bulk_create_shipment'
require 'keep_it_cool/models/bulk_shipment_response'
require 'keep_it_cool/models/carrier_service_enum'
require 'keep_it_cool/models/coolant'
require 'keep_it_cool/models/coolant_block'
require 'keep_it_cool/models/coolant_block_type_enum'
require 'keep_it_cool/models/customer_bulk_recommendation_config'
require 'keep_it_cool/models/customer_bulk_recommendation_result'
require 'keep_it_cool/models/customer_distribution_center'
require 'keep_it_cool/models/customer_distribution_center_shallow'
require 'keep_it_cool/models/customer_line_haul'
require 'keep_it_cool/models/customer_packaging_config'
require 'keep_it_cool/models/customer_packaging_config_shallow'
require 'keep_it_cool/models/customer_shipping_method'
require 'keep_it_cool/models/customer_shipping_method_distribution_center'
require 'keep_it_cool/models/customer_shipping_method_shallow'
require 'keep_it_cool/models/distribution_center_identification'
require 'keep_it_cool/models/features'
require 'keep_it_cool/models/item'
require 'keep_it_cool/models/packaging_identification'
require 'keep_it_cool/models/paginated_customer_bulk_recommendation_config_list'
require 'keep_it_cool/models/paginated_customer_distribution_center_list'
require 'keep_it_cool/models/paginated_customer_packaging_config_list'
require 'keep_it_cool/models/paginated_customer_shipping_method_list'
require 'keep_it_cool/models/patched_customer_distribution_center'
require 'keep_it_cool/models/patched_customer_packaging_config'
require 'keep_it_cool/models/shipment_input_data'
require 'keep_it_cool/models/shipment_output_data'
require 'keep_it_cool/models/shipment_prediction'
require 'keep_it_cool/models/shipment_response'
require 'keep_it_cool/models/shipment_status_enum'
require 'keep_it_cool/models/shipping_method_identification'
require 'keep_it_cool/models/state_enum'
require 'keep_it_cool/models/status_enum'
require 'keep_it_cool/models/to_location'

# APIs
require 'keep_it_cool/api/bulk_recommendations_api'
require 'keep_it_cool/api/distribution_centers_api'
require 'keep_it_cool/api/packaging_configs_api'
require 'keep_it_cool/api/shipments_api'
require 'keep_it_cool/api/shipping_methods_api'

module KeepItCool
  class << self
    # Customize default settings for the SDK using block.
    #   KeepItCool.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
