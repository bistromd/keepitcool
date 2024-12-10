# KeepItCool::ToLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address** | **String** |  | [optional] |
| **street_address_2** | **String** |  | [optional] |
| **zip_code** | **String** |  |  |
| **city** | **String** |  | [optional] |
| **state** | [**StateEnum**](StateEnum.md) |  | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::ToLocation.new(
  street_address: null,
  street_address_2: null,
  zip_code: null,
  city: null,
  state: null
)
```

