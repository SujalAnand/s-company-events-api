%dw 2.0
output application/json  
---
{
  httpCode: 201,
  httpDescription: "Updated",
  nativeCodes: [
    {
      nativeCode: 0,
      nativeMessage: "USER ADDED SUCCESSFULLY"
    }
  ],
  results: [
    {
      Return: vars."output"
    }
  ]
}