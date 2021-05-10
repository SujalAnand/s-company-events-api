%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Inserted",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "Agenda Item Deleted Successfully"
    }
  ],
  results: [
    {
      ID: vars."output"
    }
  ]
}