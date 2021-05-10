%dw 2.0
output application/json
---
{
code: error.muleMessage.attributes.StatusCode,
info: (error.errorType.namespace ++ ':' ++ error.errorType.identifier) default '' as String,
message: error.detailedDescription default '' as String
}