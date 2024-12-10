# KeepItCool::ShippingMethodsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**shipping_methods_list**](ShippingMethodsApi.md#shipping_methods_list) | **GET** /v1/shipping-methods/ | List Shipping Methods |
| [**shipping_methods_retrieve**](ShippingMethodsApi.md#shipping_methods_retrieve) | **GET** /v1/shipping-methods/{uuid}/ | Retrieve Shipping Method |


## shipping_methods_list

> <PaginatedCustomerShippingMethodList> shipping_methods_list(opts)

List Shipping Methods

Retrieves a list of all shipping methods for your organization

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

api_instance = KeepItCool::ShippingMethodsApi.new
opts = {
  distribution_center_id: 'distribution_center_id_example', # String | The ID of the distribution center to filter shipping methods by
  limit: 56, # Integer | Number of results to return per page.
  offset: 56 # Integer | The initial index from which to return the results.
}

begin
  # List Shipping Methods
  result = api_instance.shipping_methods_list(opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_list: #{e}"
end
```

#### Using the shipping_methods_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomerShippingMethodList>, Integer, Hash)> shipping_methods_list_with_http_info(opts)

```ruby
begin
  # List Shipping Methods
  data, status_code, headers = api_instance.shipping_methods_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomerShippingMethodList>
rescue KeepItCool::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distribution_center_id** | **String** | The ID of the distribution center to filter shipping methods by | [optional] |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |

### Return type

[**PaginatedCustomerShippingMethodList**](PaginatedCustomerShippingMethodList.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## shipping_methods_retrieve

> <CustomerShippingMethod> shipping_methods_retrieve(uuid)

Retrieve Shipping Method

Retrieves a shipping method for your organization

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

api_instance = KeepItCool::ShippingMethodsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this shipping method.

begin
  # Retrieve Shipping Method
  result = api_instance.shipping_methods_retrieve(uuid)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_retrieve: #{e}"
end
```

#### Using the shipping_methods_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerShippingMethod>, Integer, Hash)> shipping_methods_retrieve_with_http_info(uuid)

```ruby
begin
  # Retrieve Shipping Method
  data, status_code, headers = api_instance.shipping_methods_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerShippingMethod>
rescue KeepItCool::ApiError => e
  puts "Error when calling ShippingMethodsApi->shipping_methods_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this shipping method. |  |

### Return type

[**CustomerShippingMethod**](CustomerShippingMethod.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

