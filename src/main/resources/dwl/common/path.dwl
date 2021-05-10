%dw 2.0
output application/java  
---
{
  value: 
    if ((not vars.ehSingle.httpCode == null and vars.emptyResults == false))
      "COPY"
    else (if ((not vars.ehSingle.httpCode == null and vars.emptyResults == true))
      "EMPTY"
    else
      ("DEFAULT"))
}