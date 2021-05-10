%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Document Deleted",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "Document Deleted Successfully"
    }
  ],
  results: [
    {
      Returned: vars."output"
    }
  ]
}