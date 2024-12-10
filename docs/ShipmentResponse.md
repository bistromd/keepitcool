# KeepItCool::ShipmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**StatusEnum**](StatusEnum.md) |  |  |
| **external_shipment_id** | **String** | The id of shipment in your system that was sent in the request. |  |
| **error_details** | **Array&lt;String&gt;** | A list of errors that occurred while creating or updating the shipment or running the selected features. |  |
| **warnings** | **Array&lt;String&gt;** | A list of warnings that occurred while running the selected features. |  |
| **shipment_data** | [**ShipmentOutputData**](ShipmentOutputData.md) |  |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::ShipmentResponse.new(
  status: null,
  external_shipment_id: null,
  error_details: null,
  warnings: null,
  shipment_data: null
)
```

