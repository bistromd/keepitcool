# KeepItCool::CoolantBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coolant_block_type** | [**CoolantBlockTypeEnum**](CoolantBlockTypeEnum.md) |  |  |
| **coolant_block_weight_lbs** | **Float** | The weight of the coolant block being used (lbs) |  |
| **coolant_block_count** | **Integer** | The quantity of this coolant block in the shipment. |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CoolantBlock.new(
  coolant_block_type: null,
  coolant_block_weight_lbs: null,
  coolant_block_count: null
)
```

