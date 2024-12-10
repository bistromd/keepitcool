# KeepItCool::ShipmentInputData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_shipment_id** | **String** | The ID of this shipment in your system. This field is used to identify a unique shipment. If the ID already exists in Keep it Cool, the shipment will be updated with the provided data. If the ID does not exist, a new shipment will be created. |  |
| **order_number** | **String** | The order number associated with the shipment. This value will be displayed with the shipment and can be used to search for a shipment in Keep it Cool&#39;s dashboard. | [optional] |
| **tracking_number** | **String** | The shipping carrier&#39;s tracking number for this shipment. It is used to fetch the carrier&#39;s tracking data (scans, delivery status, etc).  **Note**: While not required on creation, it is highly recommended to eventually update a shipment with a tracking number. Doing so will allow Keep it Cool to track and display actual shipment performance and improve its predictions and recommendations for future shipments.  | [optional] |
| **to_location** | [**ToLocation**](ToLocation.md) |  | [optional] |
| **distribution_center** | [**DistributionCenterIdentification**](DistributionCenterIdentification.md) |  | [optional] |
| **shipping_method** | [**ShippingMethodIdentification**](ShippingMethodIdentification.md) |  | [optional] |
| **packaging_config** | [**PackagingIdentification**](PackagingIdentification.md) |  | [optional] |
| **items** | [**Array&lt;Item&gt;**](Item.md) |  The items being shipped in the box (excluding the coolant)   | [optional] |
| **coolant** | [**Coolant**](Coolant.md) |  | [optional] |
| **expected_ship_date** | **Date** | The date the shipment is expected to ship. If provided, Keep it Cool will use this date to predict the shipment&#39;s performance.  Format: &#x60;YYYY-MM-DD&#x60; (e.g. &#x60;2021-05-31&#x60;),  | [optional] |
| **order_created_at** | **Time** | The time the order was placed. If provided, this value will be displayed along with the shipment data. It can also be used in ship date recommendations (when order cutoff times are enabled).  Format: &#x60;ISO 8601&#x60; (e.g &#x60;2021-05-31T12:00:00Z&#x60;). If no timezone is provided, UTC will be assumed. | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::ShipmentInputData.new(
  external_shipment_id: null,
  order_number: null,
  tracking_number: null,
  to_location: null,
  distribution_center: null,
  shipping_method: null,
  packaging_config: null,
  items: null,
  coolant: null,
  expected_ship_date: null,
  order_created_at: null
)
```

