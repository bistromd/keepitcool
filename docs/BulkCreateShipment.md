# KeepItCool::BulkCreateShipment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shipments** | [**Array&lt;ShipmentInputData&gt;**](ShipmentInputData.md) |  The list of shipments to be created or updated in Keep it Cool.  If a shipment with the provided &#x60;external_shipment_id&#x60; already exists in Keep it Cool, the shipment will be updated with the provided data. If the shipment does not exist, a new shipment will be created.  **Note on update behavior**: If a field is not provided in the shipment list, the existing value for that field will be preserved. For example, if a shipment already exists in Keep it Cool with a &#x60;expected_ship_date&#x60; of &#x60;2021-01-01&#x60;, and the &#x60;ship_date&#x60; field is not provided in the shipment list, the existing &#x60;expected_ship_date&#x60; of &#x60;2021-01-01&#x60; will be preserved.  |  |
| **features** | [**Features**](Features.md) |  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::BulkCreateShipment.new(
  shipments: null,
  features: null
)
```

