%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Calendar Entry Deleted",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "Calendar Entry Deleted Successfully"
    }
  ],
  results: [
    {
      Returned: vars."output"
    }
  ]
}