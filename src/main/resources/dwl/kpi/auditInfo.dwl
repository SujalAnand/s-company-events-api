%dw 2.0
output application/java  
---
{
  operatingUserId: vars.operatingUserId,
  appName: vars.appName,
  methodVerb: vars.methodVerb,
  requestPath: vars.requestPath,
  queryParams: vars.queryParams,
  responseStatus: vars.responseStatus,
  responsePayload: vars.ehSingle
}