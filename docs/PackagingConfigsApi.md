# KeepItCool::PackagingConfigsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**packaging_configs_create**](PackagingConfigsApi.md#packaging_configs_create) | **POST** /v1/packaging-configs/ | Create Packaging Config |
| [**packaging_configs_list**](PackagingConfigsApi.md#packaging_configs_list) | **GET** /v1/packaging-configs/ | List Packaging Configs |
| [**packaging_configs_partial_update**](PackagingConfigsApi.md#packaging_configs_partial_update) | **PATCH** /v1/packaging-configs/{uuid}/ | Update Packaging Config |
| [**packaging_configs_retrieve**](PackagingConfigsApi.md#packaging_configs_retrieve) | **GET** /v1/packaging-configs/{uuid}/ | Retrieve Packaging Config |


## packaging_configs_create

> <CustomerPackagingConfig> packaging_configs_create(customer_packaging_config)

Create Packaging Config

Creates a new packaging config for your organization

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

api_instance = KeepItCool::PackagingConfigsApi.new
customer_packaging_config = KeepItCool::CustomerPackagingConfig.new({id: 'id_example', created_at: Time.now, name: 'name_example', box_width_in: 3.56, box_height_in: 3.56, box_length_in: 3.56, priority: 37}) # CustomerPackagingConfig | 

begin
  # Create Packaging Config
  result = api_instance.packaging_configs_create(customer_packaging_config)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_create: #{e}"
end
```

#### Using the packaging_configs_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPackagingConfig>, Integer, Hash)> packaging_configs_create_with_http_info(customer_packaging_config)

```ruby
begin
  # Create Packaging Config
  data, status_code, headers = api_instance.packaging_configs_create_with_http_info(customer_packaging_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPackagingConfig>
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_packaging_config** | [**CustomerPackagingConfig**](CustomerPackagingConfig.md) |  |  |

### Return type

[**CustomerPackagingConfig**](CustomerPackagingConfig.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## packaging_configs_list

> <PaginatedCustomerPackagingConfigList> packaging_configs_list(opts)

List Packaging Configs

Retrieves a list of all packaging configs for your organization

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

api_instance = KeepItCool::PackagingConfigsApi.new
opts = {
  limit: 56, # Integer | Number of results to return per page.
  offset: 56 # Integer | The initial index from which to return the results.
}

begin
  # List Packaging Configs
  result = api_instance.packaging_configs_list(opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_list: #{e}"
end
```

#### Using the packaging_configs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomerPackagingConfigList>, Integer, Hash)> packaging_configs_list_with_http_info(opts)

```ruby
begin
  # List Packaging Configs
  data, status_code, headers = api_instance.packaging_configs_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomerPackagingConfigList>
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |

### Return type

[**PaginatedCustomerPackagingConfigList**](PaginatedCustomerPackagingConfigList.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## packaging_configs_partial_update

> <CustomerPackagingConfig> packaging_configs_partial_update(uuid, opts)

Update Packaging Config

Update a packaging config for your organization

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

api_instance = KeepItCool::PackagingConfigsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this packaging config.
opts = {
  patched_customer_packaging_config: KeepItCool::PatchedCustomerPackagingConfig.new # PatchedCustomerPackagingConfig | 
}

begin
  # Update Packaging Config
  result = api_instance.packaging_configs_partial_update(uuid, opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_partial_update: #{e}"
end
```

#### Using the packaging_configs_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPackagingConfig>, Integer, Hash)> packaging_configs_partial_update_with_http_info(uuid, opts)

```ruby
begin
  # Update Packaging Config
  data, status_code, headers = api_instance.packaging_configs_partial_update_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPackagingConfig>
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this packaging config. |  |
| **patched_customer_packaging_config** | [**PatchedCustomerPackagingConfig**](PatchedCustomerPackagingConfig.md) |  | [optional] |

### Return type

[**CustomerPackagingConfig**](CustomerPackagingConfig.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## packaging_configs_retrieve

> <CustomerPackagingConfig> packaging_configs_retrieve(uuid)

Retrieve Packaging Config

Retrieves a packaging config for your organization

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

api_instance = KeepItCool::PackagingConfigsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this packaging config.

begin
  # Retrieve Packaging Config
  result = api_instance.packaging_configs_retrieve(uuid)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_retrieve: #{e}"
end
```

#### Using the packaging_configs_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPackagingConfig>, Integer, Hash)> packaging_configs_retrieve_with_http_info(uuid)

```ruby
begin
  # Retrieve Packaging Config
  data, status_code, headers = api_instance.packaging_configs_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPackagingConfig>
rescue KeepItCool::ApiError => e
  puts "Error when calling PackagingConfigsApi->packaging_configs_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this packaging config. |  |

### Return type

[**CustomerPackagingConfig**](CustomerPackagingConfig.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

