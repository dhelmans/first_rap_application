@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCE_MDV_PRODUCT
  as select from zta_mdv_product
{
  key product_id as ProductId,
      name       as Name,
      category   as Category,
      @Semantics.amount.currencyCode: 'currency'
      price      as Price,
      currency   as Currency,
      discount   as Discount
}
