%dw 2.0
output application/json  
---
{
  nativeCodes: {
    nativeCode: -1,
    nativeMessage: "Unknown Error",
    exception: vars.exception
  },
  results: []
}