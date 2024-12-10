# KeepItCool::CustomerShippingMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the shipping method | [readonly] |
| **created_at** | **Time** | Timestamp when the shipping method was created | [readonly] |
| **name** | **String** | The name of the shipping method |  |
| **distribution_center** | [**CustomerShippingMethodDistributionCenter**](CustomerShippingMethodDistributionCenter.md) |  |  |
| **carrier_service** | [**CarrierServiceEnum**](CarrierServiceEnum.md) |  | [optional] |
| **pickup_hour** | **Float** | The hour of the day that shipments are picked up by this shipping method |  |
| **line_haul** | [**CustomerLineHaul**](CustomerLineHaul.md) |  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CustomerShippingMethod.new(
  id: null,
  created_at: null,
  name: null,
  distribution_center: null,
  carrier_service: null,
  pickup_hour: null,
  line_haul: null
)
```

