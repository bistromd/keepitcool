# KeepItCool::ShipmentOutputData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_number** | **String** |  | [optional] |
| **external_shipment_id** | **String** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **to_location** | [**ToLocation**](ToLocation.md) |  | [optional] |
| **coolant** | [**Coolant**](Coolant.md) |  | [optional] |
| **items** | [**Array&lt;Item&gt;**](Item.md) |  | [optional] |
| **expected_ship_date** | **Date** |  | [optional] |
| **order_created_at** | **Time** |  | [optional] |
| **shipment_status** | [**ShipmentStatusEnum**](ShipmentStatusEnum.md) |  | [readonly] |
| **shipped_at** | **Time** |  | [optional] |
| **delivered_at** | **Time** |  | [optional] |
| **current_prediction** | [**ShipmentPrediction**](ShipmentPrediction.md) |  | [optional] |
| **distribution_center** | [**CustomerDistributionCenter**](CustomerDistributionCenter.md) |  | [optional] |
| **packaging_config** | [**CustomerPackagingConfig**](CustomerPackagingConfig.md) |  | [optional] |
| **shipping_method** | [**CustomerShippingMethod**](CustomerShippingMethod.md) |  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::ShipmentOutputData.new(
  order_number: null,
  external_shipment_id: null,
  tracking_number: null,
  to_location: null,
  coolant: null,
  items: null,
  expected_ship_date: null,
  order_created_at: null,
  shipment_status: null,
  shipped_at: null,
  delivered_at: null,
  current_prediction: null,
  distribution_center: null,
  packaging_config: null,
  shipping_method: null
)
```

