@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Partner'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCE_MDV_BP
  as select from zta_mdv_bp
{
  key bp_id        as BpId,
      bp_role      as BpRole,
      company_name as CompanyName,
      street       as Street,
      city         as City,
      country      as Country,
      region       as Region
}
