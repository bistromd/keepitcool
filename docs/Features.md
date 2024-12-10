# KeepItCool::Features

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coolant_recommendation** | **Boolean** |  When true, Keep it Cool will recommend a coolant configuration for the shipment. The recommended coolant configuration will override any coolant configuration provided in the shipment list.  | [optional] |
| **ship_date_recommendation** | **Boolean** |  When true, Keep it Cool will recommend a ship date for the shipment. The recommended ship date will override the ship date provided in the shipment list.  | [optional] |
| **shipping_method_recommendation** | **Boolean** |  When true, Keep it Cool will recommend a shipping method for the shipment based on your configured options. The recommended shipping method will override the shipping method provided in the shipment list.  | [optional] |
| **packaging_recommendation** | **Boolean** |  When true, Keep it Cool will recommend a packaging configuration for the shipment. The recommended packaging configuration will override the packaging configuration provided in the shipment list.  | [optional] |
| **distribution_center_recommendation** | **Boolean** |  When true, Keep it Cool will recommend a distribution center for the shipment. The recommended distribution center will override the distribution center provided in the shipment list.  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::Features.new(
  coolant_recommendation: null,
  ship_date_recommendation: null,
  shipping_method_recommendation: null,
  packaging_recommendation: null,
  distribution_center_recommendation: null
)
```

