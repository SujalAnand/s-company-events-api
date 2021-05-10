%dw 2.0
output application/json  
---
{
  httpCode: 500,
  httpDescription: "Unknown Error",
  nativeCodes: [
    {
      nativeCode: 
        if (not vars.exception.code == null)
          vars.exception.code
        else
          999,
      nativeMessage: "There has been an error please see log",
      exception: {
        code: "-1",
        info: "There has been an error please see log",
        message: "There has been an error please see log"
      }
    }
  ],
  results: [
    {
      Message: "Error"
    }
  ]
}