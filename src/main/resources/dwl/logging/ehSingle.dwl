%dw 2.0
output application/json
---
{
	httpCode: 500,
	httpDescription: "Unknown Error",
	nativeCodes: [{
		nativeCode: if ( not vars.exception.code == null ) vars.exception.code
else 999,
		nativeMessage: vars.exception.message,
		exception: {
			code: vars.exception.code default 999,
			info: vars.exception.info,
			message: vars.exception.message
		}
	}],
	results: [(payload) if not isEmpty(payload)]
}