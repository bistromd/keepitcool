# KeepItCool::DistributionCentersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**distribution_centers_create**](DistributionCentersApi.md#distribution_centers_create) | **POST** /v1/distribution-centers/ | Create Distribution Center |
| [**distribution_centers_list**](DistributionCentersApi.md#distribution_centers_list) | **GET** /v1/distribution-centers/ | List Distribution Centers |
| [**distribution_centers_partial_update**](DistributionCentersApi.md#distribution_centers_partial_update) | **PATCH** /v1/distribution-centers/{uuid}/ | Update Distribution Center |
| [**distribution_centers_retrieve**](DistributionCentersApi.md#distribution_centers_retrieve) | **GET** /v1/distribution-centers/{uuid}/ | Retrieve Distribution Center |


## distribution_centers_create

> <CustomerDistributionCenter> distribution_centers_create(customer_distribution_center)

Create Distribution Center

Creates a new distribution center for your organization

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

api_instance = KeepItCool::DistributionCentersApi.new
customer_distribution_center = KeepItCool::CustomerDistributionCenter.new({id: 'id_example', created_at: Time.now, name: 'name_example', city: 'city_example', state: 'state_example', zip_code: 'zip_code_example'}) # CustomerDistributionCenter | 

begin
  # Create Distribution Center
  result = api_instance.distribution_centers_create(customer_distribution_center)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_create: #{e}"
end
```

#### Using the distribution_centers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDistributionCenter>, Integer, Hash)> distribution_centers_create_with_http_info(customer_distribution_center)

```ruby
begin
  # Create Distribution Center
  data, status_code, headers = api_instance.distribution_centers_create_with_http_info(customer_distribution_center)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDistributionCenter>
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_distribution_center** | [**CustomerDistributionCenter**](CustomerDistributionCenter.md) |  |  |

### Return type

[**CustomerDistributionCenter**](CustomerDistributionCenter.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## distribution_centers_list

> <PaginatedCustomerDistributionCenterList> distribution_centers_list(opts)

List Distribution Centers

Retrieves a list of all distribution centers for your organization

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

api_instance = KeepItCool::DistributionCentersApi.new
opts = {
  limit: 56, # Integer | Number of results to return per page.
  offset: 56 # Integer | The initial index from which to return the results.
}

begin
  # List Distribution Centers
  result = api_instance.distribution_centers_list(opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_list: #{e}"
end
```

#### Using the distribution_centers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomerDistributionCenterList>, Integer, Hash)> distribution_centers_list_with_http_info(opts)

```ruby
begin
  # List Distribution Centers
  data, status_code, headers = api_instance.distribution_centers_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomerDistributionCenterList>
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |

### Return type

[**PaginatedCustomerDistributionCenterList**](PaginatedCustomerDistributionCenterList.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## distribution_centers_partial_update

> <CustomerDistributionCenter> distribution_centers_partial_update(uuid, opts)

Update Distribution Center

Update a distribution center for your organization

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

api_instance = KeepItCool::DistributionCentersApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this distribution center.
opts = {
  patched_customer_distribution_center: KeepItCool::PatchedCustomerDistributionCenter.new # PatchedCustomerDistributionCenter | 
}

begin
  # Update Distribution Center
  result = api_instance.distribution_centers_partial_update(uuid, opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_partial_update: #{e}"
end
```

#### Using the distribution_centers_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDistributionCenter>, Integer, Hash)> distribution_centers_partial_update_with_http_info(uuid, opts)

```ruby
begin
  # Update Distribution Center
  data, status_code, headers = api_instance.distribution_centers_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDistributionCenter>
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this distribution center. |  |
| **patched_customer_distribution_center** | [**PatchedCustomerDistributionCenter**](PatchedCustomerDistributionCenter.md) |  | [optional] |

### Return type

[**CustomerDistributionCenter**](CustomerDistributionCenter.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## distribution_centers_retrieve

> <CustomerDistributionCenter> distribution_centers_retrieve(uuid)

Retrieve Distribution Center

Retrieves a distribution center for your organization

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

api_instance = KeepItCool::DistributionCentersApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this distribution center.

begin
  # Retrieve Distribution Center
  result = api_instance.distribution_centers_retrieve(uuid)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_retrieve: #{e}"
end
```

#### Using the distribution_centers_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDistributionCenter>, Integer, Hash)> distribution_centers_retrieve_with_http_info(uuid)

```ruby
begin
  # Retrieve Distribution Center
  data, status_code, headers = api_instance.distribution_centers_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDistributionCenter>
rescue KeepItCool::ApiError => e
  puts "Error when calling DistributionCentersApi->distribution_centers_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this distribution center. |  |

### Return type

[**CustomerDistributionCenter**](CustomerDistributionCenter.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

