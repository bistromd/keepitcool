# KeepItCool::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The sku of the item. If an item with this sku already exists in Keep it Cool, it&#39;s properties will be used to populate any fields left blank on the item. |  |
| **name** | **String** | The name of the item. This field will be displayed with the shipment&#39;s details. | [optional] |
| **weight_lbs** | **Float** | The weight of a single item in lbs. | [optional] |
| **length_in** | **Float** | The height of a single item in inches. | [optional] |
| **width_in** | **Float** | The width of a single item in inches. | [optional] |
| **height_in** | **Float** | The length of a single item in inches. | [optional] |
| **quantity** | **Integer** | The quantity of this item in the shipment. If blank, defaults to 1. | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::Item.new(
  sku: null,
  name: null,
  weight_lbs: null,
  length_in: null,
  width_in: null,
  height_in: null,
  quantity: null
)
```

