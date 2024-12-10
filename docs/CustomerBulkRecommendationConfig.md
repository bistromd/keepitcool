# KeepItCool::CustomerBulkRecommendationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the bulk recommendation configuration | [readonly] |
| **distribution_centers** | [**Array&lt;CustomerDistributionCenterShallow&gt;**](CustomerDistributionCenterShallow.md) | The distribution centers used in the bulk recommendation configuration | [readonly] |
| **shipping_methods** | [**Array&lt;CustomerShippingMethodShallow&gt;**](CustomerShippingMethodShallow.md) | The shipping methods used in the bulk recommendation configuration | [readonly] |
| **packaging_configs** | [**Array&lt;CustomerPackagingConfigShallow&gt;**](CustomerPackagingConfigShallow.md) | The packaging configurations used in the bulk recommendation configuration | [readonly] |
| **latest_completed_results** | [**Array&lt;CustomerBulkRecommendationResult&gt;**](CustomerBulkRecommendationResult.md) | The latest completed bulk recommendation results for the upcoming ship dates for the bulk recommendation configuration | [readonly] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CustomerBulkRecommendationConfig.new(
  id: null,
  distribution_centers: null,
  shipping_methods: null,
  packaging_configs: null,
  latest_completed_results: null
)
```

