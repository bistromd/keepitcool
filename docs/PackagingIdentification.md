# KeepItCool::PackagingIdentification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **packaging_config_id** | **String** |  The ID of the packaging configuration in Keep it Cool. This field will be used to identify the packaging configuration and can be retrieved from the packaging configuration endpoint.                                           | [optional] |

## Example

```ruby
require 'keep_it_cool'

instance = KeepItCool::PackagingIdentification.new(
  packaging_config_id: null
)
```

