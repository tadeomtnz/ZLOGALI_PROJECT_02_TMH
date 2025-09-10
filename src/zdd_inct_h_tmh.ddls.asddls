@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with history table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zdd_inct_h_tmh 
as select from zdt_inct_h_tmh
  association to parent zr_dt_inct_tmh as _Incident 
    on $projection.IncUuid = _Incident.IncUUID
{
    key his_uuid as HisUuid,
    key inc_uuid as IncUuid,
    his_id as HisId,
    previous_status as PreviousStatus,
    new_status as NewStatus,
    text as Text,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    
    // Associations
    _Incident
}
