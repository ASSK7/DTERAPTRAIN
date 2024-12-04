@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZDEL_I_ROOT_TRAVEL as select from zdel_travel_1
//composition of target_data_source_name as _association_name
{
    
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    booking_fee as BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    overall_status as OverallStatus,
    @Semantics.largeObject : { 
        fileName: 'FileName',
        mimeType: 'MimeType',
        contentDispositionPreference: #ATTACHMENT,
        acceptableMimeTypes: [ 'image/png', 'application/pdf', 'image/jpg', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ]
    
     }
    attachment as Attachment,
    mime_type as MimeType,
    file_name as FileName,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.localInstanceLastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt
}
