%dw 2.0
output application/java  
---
vars."meetings-info" map using (id = $.MeetingId)
  {
    Comments: $.Comments,
    MeetingType: $.MeetingType,
    Title: $.Title,
    MeetingId: $.MeetingId,
    UtcDateTime: $.UtcDateTime,
    Duration: $.Duration,
    RelatedDocuments: (vars."meetings-document-detail" filter ($.*LinkedId contains id) map {
      UploadedUtcDateTime: $.UploadedUtcDateTime,
      Title: $.Title,
      DateTag: $.DateTag,
      LinkedId: $.LinkedId,
      Comment: $.Comment,
      Url: $.PhysicalRoot,
      Type: $.DocumentType,
      PhysicalFileName: $.PhysicalFileName,
      DocumentDetailsId: $.Id
    }),
    agendaItems: (vars."agenda-items-info" filter ($.*MeetingId contains id) map using (agendaId = $.Id)
      {
        OrderIndex: $.OrderIndex,
        Title: $.Title,
        MeetingId: $.MeetingId,
        Presenters: $.Presenters,
        Duration: $.Duration,
        Id: $.Id,
        RelatedDocuments: (vars."agenda-items-document-detail" filter ($.*LinkedId contains agendaId) map {
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
      })
  }