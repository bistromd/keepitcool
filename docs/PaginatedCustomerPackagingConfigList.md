# KeepItCool::PaginatedCustomerPackagingConfigList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  |  |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;CustomerPackagingConfig&gt;**](CustomerPackagingConfig.md) |  |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::PaginatedCustomerPackagingConfigList.new(
  count: 123,
  _next: http://api.example.org/accounts/?offset&#x3D;400&amp;limit&#x3D;100,
  previous: http://api.example.org/accounts/?offset&#x3D;200&amp;limit&#x3D;100,
  results: null
)
```
