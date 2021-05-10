%dw 2.0
output application/java  
---
vars."calendar-info" map using (id = $.Id)
  {
    Comments: $.Comments,
    Title: $.Title,
    EventType: $.EventType,
    CalendarEntryTypeId: $.CalendarEntryTypeId,
    Duration: $.Duration,
    UtcDateTime: $.UtcDateTime,
    Id: $.Id,
    RelatedDocuments: (vars."calendar-document-detail" filter ($.*LinkedId contains id) map {
      UploadedUtcDateTime: $.UploadedUtcDateTime,
      Title: $.Title,
      DateTag: $.DateTag,
      LinkedId: $.LinkedId,
      Comment: $.Comment,
      Url: $.PhysicalRoot,
      Type: $.DocumentType,
      PhysicalFileName: $.PhysicalFileName,
      DocumentDetailsId: $.Id
    })
  }