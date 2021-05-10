%dw 2.0
output application/java  
---
vars."kpi-info" map using (id = $.Id)
  {
    ModelLine: $.ModelLine,
    KpiDate: $.KpiDate as DateTime as String {format: "yyyy-MM-dd"},
    KpiType: $.KpiType,
    ModelLineId: $.ModelLineId,
    Id: $.Id,
    Comment: $.Comment,
    DocumentDetails: (vars."kpi-document-detail" filter ($.*LinkedId contains id) map {
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