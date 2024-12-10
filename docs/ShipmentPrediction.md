# KeepItCool::ShipmentPrediction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expected_delivered_at** | **Time** |  The time the package is expected to be delivered.  | [optional] |
| **expected_shipped_at** | **Time** | The time the package is expected to be shipped. | [optional] |
| **min_temp_f** | **Float** | The minimum temperature the package is expected to be exposed to. | [optional] |
| **max_temp_f** | **Float** | The maximum temperature the package is expected to be exposed to. | [optional] |
| **avg_temp_f** | **Float** | The average temperature the package is expected to be exposed to. | [optional] |
| **expected_duration_hours** | **Float** | The expected duration of the shipment in hours. | [optional] |
| **created_at** | **Time** | The time the prediction was created. | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::ShipmentPrediction.new(
  expected_delivered_at: null,
  expected_shipped_at: null,
  min_temp_f: null,
  max_temp_f: null,
  avg_temp_f: null,
  expected_duration_hours: null,
  created_at: null
)
```

