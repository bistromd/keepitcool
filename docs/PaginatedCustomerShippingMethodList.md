# KeepItCool::PaginatedCustomerShippingMethodList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  |  |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;CustomerShippingMethod&gt;**](CustomerShippingMethod.md) |  |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::PaginatedCustomerShippingMethodList.new(
  count: 123,
  _next: http://api.example.org/accounts/?offset&#x3D;400&amp;limit&#x3D;100,
  previous: http://api.example.org/accounts/?offset&#x3D;200&amp;limit&#x3D;100,
  results: null
)
```
