%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Inserted",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "Agenda Item Updated Successfully"
    }
  ],
  results: [
    {
      ID: vars."output"
    }
  ]
}