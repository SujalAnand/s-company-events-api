%dw 2.0
output application/json
var exception = {
	code: error.muleMessage.attributes.StatusCode,
	info: error.errorType.namespace default "" as String ++ " : " ++ error.errorType.identifier default "" as String, 
	message: error.detailedDescription default '' as String
}
---
{
    httpCode: 500,
    httpDescription: "Unknown Error",
    nativeCodes: [
    {
        nativeCode:
        if (not exception.code == null)
        exception.code
        else
        999,
        nativeMessage: exception.message,
        exception: {
            code: exception.code,
            info: exception.info,
            message: exception.message
        }
    }
    ],
    results: [
         (payload) if not isEmpty(payload)
    ]
}