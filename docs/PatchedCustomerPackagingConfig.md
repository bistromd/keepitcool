# KeepItCool::PatchedCustomerPackagingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the packaging config | [optional][readonly] |
| **created_at** | **Time** | Timestamp when the packaging config was created | [optional][readonly] |
| **name** | **String** | Name of the packaging config | [optional] |
| **box_width_in** | **Float** | Outer width of the box in inches | [optional] |
| **box_height_in** | **Float** | Outer height of the box in inches | [optional] |
| **box_length_in** | **Float** | Outer length of the box in inches | [optional] |
| **insulation_type** | **String** | Type of insulation used in the box | [optional] |
| **insulation_thickness_in** | **Float** | Thickness of insulation in inches | [optional] |
| **insulation_r_value** | **Float** | The stated r-value of the insulation | [optional] |
| **priority** | **Integer** |  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::PatchedCustomerPackagingConfig.new(
  id: null,
  created_at: null,
  name: null,
  box_width_in: null,
  box_height_in: null,
  box_length_in: null,
  insulation_type: null,
  insulation_thickness_in: null,
  insulation_r_value: null,
  priority: null
)
```

