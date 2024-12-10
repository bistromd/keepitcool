# KeepItCool

KeepItCool - the Ruby gem for the Keep it Cool API

[![Ruby](https://github.com/bistromd/keepitcool/actions/workflows/ruby.yml/badge.svg)](https://github.com/bistromd/keepitcool/actions/workflows/ruby.yml)

## URLs

The base URL for the API is: `https://YOUR_API_URL`

## Authentication
Access to the API is granted via an API Key. The key should be sent in the `Authorization` header of each request and formatted as: `Authorization: Api-Key <key>`

You can find your API Key under the \"Developer\" section of your settings in the KIC web app.

## Data Formats

### Dates

Dates are formatted as ISO 8601 strings. For example: `2021-06-01T12:00:00Z`

## Pagination

All endpoints that return a list of objects are paginated.

The default page size is 100 objects. You can change the page size by passing the `limit` query parameter. For example: `/v1/packaging-configs?limit=50`. And you can change the page by passing the `offset` query parameter. For example: `/v1/packaging-configs?offset=100`

## Common Use Cases

Most API customers will use the API to:

### Get shipment recommendations:
Using the bulk [create/update method](#tag/Shipments/operation/shipments_create) on the shipments endpoint, you can send a list of shipments to the API and receive shipping recommendations (e.g. coolant, recommended ship dates) in response.

Commonly this endpoint is called when a customer creates a new shipment in their system, or when they update a shipment's details (e.g. ship date, destination).

As an example, a coolant recommendation request might look like:

```
POST /v1/shipments

{
  \"features\": {
    \"coolant_recommendation\": true
  },
  \"shipments\": [
    {
      \"external_shipment_id\": \"123456\",
      \"packaging_config\": {
        \"packaging_config_id\": \"497f6eca-6276-4993-bfeb-53cbbbba6f08\"
      },
      \"carrier_service\": \"fedex_ground\",
      \"to_location\": {
        \"street_address\": \"123 Main st.\",
        \"street_address_2\": \"Apt 2\",
        \"city\": \"Chicago\",
        \"zip_code\": \"60647\",
        \"state\": \"IL\"
      },
      \"distribution_center\": {
        \"distribution_center_id\": \"497f6eca-6276-4993-bfeb-53cbbbba6f08\"
      },
      \"expected_ship_date\": \"2023-12-04\",
      \"items\": [
        {
          \"sku\": \"Big item\",
          \"quantity\": 2,
          \"weight_lbs\": 10
        }
      ]
    }
  ]
}
```

### Update a shipment's tracking number:

While not required on creation, it is highly recommended to eventually update a shipment with a tracking number. Doing so will allow Keep it Cool to track and display actual shipment performance and improve its predictions and recommendations for future shipments.

You can update a shipment's tracking number by sending only the `external_shipment_id` and `tracking_number` to the bulk [create/update method](#tag/Shipments/operation/shipments_create) on the shipments endpoint.

As an example, the the request might look like:

```
POST /v1/shipments

{
    \"shipments\": [
        {
            \"external_shipment_id\": \"1234\",
            \"tracking_number\": \"1Z9999999999999999\"
        }
    ]
}
```

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build keep_it_cool.gemspec
```

Then either install the gem locally:

```shell
gem install ./keep_it_cool-1.0.0.gem
```

(for development, run `gem install --dev ./keep_it_cool-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'keep_it_cool', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'keep_it_cool', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'keep_it_cool'

# Setup authorization
KeepItCool.configure do |config|
  # Configure API key authorization
  config.api_key['API Key Auth'] = 'YOUR API KEY'
  config.api_key_prefix['API Key Auth'] = 'Api-Key'
  config.host = 'YOUR API URL'
  config.scheme = 'https'  # preferred HTTPS, but can use HTTP if necessary.
  # Optional: Configure faraday connection
  # config.configure_faraday_connection { |connection| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = KeepItCool::BulkRecommendationsApi.new
opts = {
  limit: 10, # Integer | Number of results to return per page.
  offset: 0 # Integer | The initial index from which to return the results.
}

begin
  #List Bulk Recommendations
  result = api_instance.bulk_recommendations_list(opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Exception when calling BulkRecommendationsApi->bulk_recommendations_list: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*KeepItCool::BulkRecommendationsApi* | [**bulk_recommendations_list**](docs/BulkRecommendationsApi.md#bulk_recommendations_list) | **GET** /v1/bulk-recommendations/ | List Bulk Recommendations
*KeepItCool::BulkRecommendationsApi* | [**bulk_recommendations_retrieve**](docs/BulkRecommendationsApi.md#bulk_recommendations_retrieve) | **GET** /v1/bulk-recommendations/{uuid}/ | Retrieve Bulk Recommendation
*KeepItCool::DistributionCentersApi* | [**distribution_centers_create**](docs/DistributionCentersApi.md#distribution_centers_create) | **POST** /v1/distribution-centers/ | Create Distribution Center
*KeepItCool::DistributionCentersApi* | [**distribution_centers_list**](docs/DistributionCentersApi.md#distribution_centers_list) | **GET** /v1/distribution-centers/ | List Distribution Centers
*KeepItCool::DistributionCentersApi* | [**distribution_centers_partial_update**](docs/DistributionCentersApi.md#distribution_centers_partial_update) | **PATCH** /v1/distribution-centers/{uuid}/ | Update Distribution Center
*KeepItCool::DistributionCentersApi* | [**distribution_centers_retrieve**](docs/DistributionCentersApi.md#distribution_centers_retrieve) | **GET** /v1/distribution-centers/{uuid}/ | Retrieve Distribution Center
*KeepItCool::PackagingConfigsApi* | [**packaging_configs_create**](docs/PackagingConfigsApi.md#packaging_configs_create) | **POST** /v1/packaging-configs/ | Create Packaging Config
*KeepItCool::PackagingConfigsApi* | [**packaging_configs_list**](docs/PackagingConfigsApi.md#packaging_configs_list) | **GET** /v1/packaging-configs/ | List Packaging Configs
*KeepItCool::PackagingConfigsApi* | [**packaging_configs_partial_update**](docs/PackagingConfigsApi.md#packaging_configs_partial_update) | **PATCH** /v1/packaging-configs/{uuid}/ | Update Packaging Config
*KeepItCool::PackagingConfigsApi* | [**packaging_configs_retrieve**](docs/PackagingConfigsApi.md#packaging_configs_retrieve) | **GET** /v1/packaging-configs/{uuid}/ | Retrieve Packaging Config
*KeepItCool::ShipmentsApi* | [**shipments_create**](docs/ShipmentsApi.md#shipments_create) | **POST** /v1/shipments/ | Bulk create or update shipments
*KeepItCool::ShippingMethodsApi* | [**shipping_methods_list**](docs/ShippingMethodsApi.md#shipping_methods_list) | **GET** /v1/shipping-methods/ | List Shipping Methods
*KeepItCool::ShippingMethodsApi* | [**shipping_methods_retrieve**](docs/ShippingMethodsApi.md#shipping_methods_retrieve) | **GET** /v1/shipping-methods/{uuid}/ | Retrieve Shipping Method


## Documentation for Models

 - [KeepItCool::BulkCreateShipment](docs/BulkCreateShipment.md)
 - [KeepItCool::BulkShipmentResponse](docs/BulkShipmentResponse.md)
 - [KeepItCool::CarrierServiceEnum](docs/CarrierServiceEnum.md)
 - [KeepItCool::Coolant](docs/Coolant.md)
 - [KeepItCool::CoolantBlock](docs/CoolantBlock.md)
 - [KeepItCool::CoolantBlockTypeEnum](docs/CoolantBlockTypeEnum.md)
 - [KeepItCool::CustomerBulkRecommendationConfig](docs/CustomerBulkRecommendationConfig.md)
 - [KeepItCool::CustomerBulkRecommendationResult](docs/CustomerBulkRecommendationResult.md)
 - [KeepItCool::CustomerDistributionCenter](docs/CustomerDistributionCenter.md)
 - [KeepItCool::CustomerDistributionCenterShallow](docs/CustomerDistributionCenterShallow.md)
 - [KeepItCool::CustomerLineHaul](docs/CustomerLineHaul.md)
 - [KeepItCool::CustomerPackagingConfig](docs/CustomerPackagingConfig.md)
 - [KeepItCool::CustomerPackagingConfigShallow](docs/CustomerPackagingConfigShallow.md)
 - [KeepItCool::CustomerShippingMethod](docs/CustomerShippingMethod.md)
 - [KeepItCool::CustomerShippingMethodDistributionCenter](docs/CustomerShippingMethodDistributionCenter.md)
 - [KeepItCool::CustomerShippingMethodShallow](docs/CustomerShippingMethodShallow.md)
 - [KeepItCool::DistributionCenterIdentification](docs/DistributionCenterIdentification.md)
 - [KeepItCool::Features](docs/Features.md)
 - [KeepItCool::Item](docs/Item.md)
 - [KeepItCool::PackagingIdentification](docs/PackagingIdentification.md)
 - [KeepItCool::PaginatedCustomerBulkRecommendationConfigList](docs/PaginatedCustomerBulkRecommendationConfigList.md)
 - [KeepItCool::PaginatedCustomerDistributionCenterList](docs/PaginatedCustomerDistributionCenterList.md)
 - [KeepItCool::PaginatedCustomerPackagingConfigList](docs/PaginatedCustomerPackagingConfigList.md)
 - [KeepItCool::PaginatedCustomerShippingMethodList](docs/PaginatedCustomerShippingMethodList.md)
 - [KeepItCool::PatchedCustomerDistributionCenter](docs/PatchedCustomerDistributionCenter.md)
 - [KeepItCool::PatchedCustomerPackagingConfig](docs/PatchedCustomerPackagingConfig.md)
 - [KeepItCool::ShipmentInputData](docs/ShipmentInputData.md)
 - [KeepItCool::ShipmentOutputData](docs/ShipmentOutputData.md)
 - [KeepItCool::ShipmentPrediction](docs/ShipmentPrediction.md)
 - [KeepItCool::ShipmentResponse](docs/ShipmentResponse.md)
 - [KeepItCool::ShipmentStatusEnum](docs/ShipmentStatusEnum.md)
 - [KeepItCool::ShippingMethodIdentification](docs/ShippingMethodIdentification.md)
 - [KeepItCool::StateEnum](docs/StateEnum.md)
 - [KeepItCool::StatusEnum](docs/StatusEnum.md)
 - [KeepItCool::ToLocation](docs/ToLocation.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### API Key Auth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
