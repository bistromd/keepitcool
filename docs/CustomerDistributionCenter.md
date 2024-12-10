# KeepItCool::CustomerDistributionCenter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the distribution center | [readonly] |
| **created_at** | **Time** | Timestamp when the distribution center was created | [readonly] |
| **name** | **String** | Name of the distribution center |  |
| **street_address** | **String** | Street address of the distribution center | [optional] |
| **street_address_2** | **String** | Street address line 2 of the distribution center | [optional] |
| **city** | **String** | City of the distribution center |  |
| **state** | **String** | State of the distribution center |  |
| **zip_code** | **String** | Zip code of the distribution center |  |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::CustomerDistributionCenter.new(
  id: null,
  created_at: null,
  name: null,
  street_address: null,
  street_address_2: null,
  city: null,
  state: null,
  zip_code: null
)
```

