# KeepItCool::ShipmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**shipments_create**](ShipmentsApi.md#shipments_create) | **POST** /v1/shipments/ | Bulk create or update shipments |


## shipments_create

> <BulkShipmentResponse> shipments_create(bulk_create_shipment)

Bulk create or update shipments

 ### Creating/updating shipments    ### Triggering recommendations    ### Limits  Up to 10 shipments can be sent in a single request.          

### Examples

```ruby
require 'time'
require 'keep_it_cool'
# setup authorization
KeepItCool.configure do |config|
  # Configure API key authorization: API Key Auth
  config.api_key['API Key Auth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['API Key Auth'] = 'Bearer'
end

api_instance = KeepItCool::ShipmentsApi.new
bulk_create_shipment = KeepItCool::BulkCreateShipment.new({shipments: [KeepItCool::ShipmentInputData.new({external_shipment_id: 'external_shipment_id_example'})]}) # BulkCreateShipment | 

begin
  # Bulk create or update shipments
  result = api_instance.shipments_create(bulk_create_shipment)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling ShipmentsApi->shipments_create: #{e}"
end
```

#### Using the shipments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkShipmentResponse>, Integer, Hash)> shipments_create_with_http_info(bulk_create_shipment)

```ruby
begin
  # Bulk create or update shipments
  data, status_code, headers = api_instance.shipments_create_with_http_info(bulk_create_shipment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkShipmentResponse>
rescue KeepItCool::ApiError => e
  puts "Error when calling ShipmentsApi->shipments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_create_shipment** | [**BulkCreateShipment**](BulkCreateShipment.md) |  |  |

### Return type

[**BulkShipmentResponse**](BulkShipmentResponse.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

