# KeepItCool::CustomerLineHaul

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_zip_code** | **String** | The zip code of the facility the line haul goes to |  |
| **duration_hours** | **Float** | The duration of the line haul in hours |  |
| **is_refrigerated** | **Boolean** | Whether or not the line haul is refrigerated |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CustomerLineHaul.new(
  destination_zip_code: null,
  duration_hours: null,
  is_refrigerated: null
)
```

