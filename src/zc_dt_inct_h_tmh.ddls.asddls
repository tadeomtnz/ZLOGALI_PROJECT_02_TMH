@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view History'
@Metadata.allowExtensions: true
define view entity zc_dt_inct_h_tmh 
as projection on zdd_inct_h_tmh   
{
    key HisUuid,
    key IncUuid,
    HisId,
    PreviousStatus,
    NewStatus,
    Text,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Incident : redirected to parent zc_dt_inct_tmh
}
