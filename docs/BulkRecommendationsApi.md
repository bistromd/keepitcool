# KeepItCool::BulkRecommendationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_recommendations_list**](BulkRecommendationsApi.md#bulk_recommendations_list) | **GET** /v1/bulk-recommendations/ | List Bulk Recommendations |
| [**bulk_recommendations_retrieve**](BulkRecommendationsApi.md#bulk_recommendations_retrieve) | **GET** /v1/bulk-recommendations/{uuid}/ | Retrieve Bulk Recommendation |


## bulk_recommendations_list

> <PaginatedCustomerBulkRecommendationConfigList> bulk_recommendations_list(opts)

List Bulk Recommendations

Retrieves a list of all bulk recommendation configurations for your organization

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

api_instance = KeepItCool::BulkRecommendationsApi.new
opts = {
  limit: 56, # Integer | Number of results to return per page.
  offset: 56 # Integer | The initial index from which to return the results.
}

begin
  # List Bulk Recommendations
  result = api_instance.bulk_recommendations_list(opts)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling BulkRecommendationsApi->bulk_recommendations_list: #{e}"
end
```

#### Using the bulk_recommendations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomerBulkRecommendationConfigList>, Integer, Hash)> bulk_recommendations_list_with_http_info(opts)

```ruby
begin
  # List Bulk Recommendations
  data, status_code, headers = api_instance.bulk_recommendations_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomerBulkRecommendationConfigList>
rescue KeepItCool::ApiError => e
  puts "Error when calling BulkRecommendationsApi->bulk_recommendations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of results to return per page. | [optional] |
| **offset** | **Integer** | The initial index from which to return the results. | [optional] |

### Return type

[**PaginatedCustomerBulkRecommendationConfigList**](PaginatedCustomerBulkRecommendationConfigList.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bulk_recommendations_retrieve

> <CustomerBulkRecommendationConfig> bulk_recommendations_retrieve(uuid)

Retrieve Bulk Recommendation

Retrieves a specific bulk recommendation configuration for your organization

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

api_instance = KeepItCool::BulkRecommendationsApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | A UUID string identifying this bulk recommendation config.

begin
  # Retrieve Bulk Recommendation
  result = api_instance.bulk_recommendations_retrieve(uuid)
  p result
rescue KeepItCool::ApiError => e
  puts "Error when calling BulkRecommendationsApi->bulk_recommendations_retrieve: #{e}"
end
```

#### Using the bulk_recommendations_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerBulkRecommendationConfig>, Integer, Hash)> bulk_recommendations_retrieve_with_http_info(uuid)

```ruby
begin
  # Retrieve Bulk Recommendation
  data, status_code, headers = api_instance.bulk_recommendations_retrieve_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerBulkRecommendationConfig>
rescue KeepItCool::ApiError => e
  puts "Error when calling BulkRecommendationsApi->bulk_recommendations_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | A UUID string identifying this bulk recommendation config. |  |

### Return type

[**CustomerBulkRecommendationConfig**](CustomerBulkRecommendationConfig.md)

### Authorization

[API Key Auth](../README.md#API Key Auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

