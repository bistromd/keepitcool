# KeepItCool::CustomerBulkRecommendationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Timestamp when the bulk recommendation result was created | [readonly] |
| **ship_date** | **Date** | The ship date that the bulk recommendation result is for. | [readonly] |
| **result_csv** | **String** | The URL of CSV file with the bulk recommendation results. | [readonly] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CustomerBulkRecommendationResult.new(
  created_at: null,
  ship_date: null,
  result_csv: null
)
```

