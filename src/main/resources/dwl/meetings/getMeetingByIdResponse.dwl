%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Returned",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "Meeting Entry Returned Successfully"
    }
  ],
  results: vars.meeting
}