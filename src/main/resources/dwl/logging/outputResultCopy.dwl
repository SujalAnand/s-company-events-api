%dw 2.0
output application/json  
---
	{
	nativeCodes: vars.ehSingle.nativeCodes map ((nativeCode , indexOfNativeCode) -> {
		nativeCode: nativeCode.nativeCode,
		nativeMessage: nativeCode.nativeMessage
	}),
	(exception: vars.exception) if vars.exception != null,	
	results: vars.ehSingle.results map ((payload01 , indexOfPayload01) -> payload01)
}