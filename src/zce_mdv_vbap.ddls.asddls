@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCE_MDV_VBAP
  as select from zta_mdv_vbap
{
  key item_id    as ItemId,
      order_id   as OrderId,
      product    as Product,
      @Semantics.quantity.unitOfMeasure: 'uom'
      quantity   as Quantity,
      uom        as Uom,
      @Semantics.amount.currencyCode: 'currency'
      amount     as Amount,
      currency   as Currency,
      created_by as CreatedBy,
      created_on as CreatedOn,
      changed_by as ChangedBy,
      changed_on as ChangedOn
}
