@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCE_MDV_VBAK
  as select from zta_mdv_vbak
{
  key order_id     as OrderId,
      order_no     as OrderNo,
      buyer        as Buyer,
      @Semantics.amount.currencyCode: 'currency'
      gross_amount as GrossAmount,
      currency     as Currency,
      created_by   as CreatedBy,
      created_on   as CreatedOn,
      changed_by   as ChangedBy,
      changed_on   as ChangedOn
}
