@AbapCatalog.sqlViewName: 'ZDV_ITEMS_SGR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA DEFINITION ITEM'
@Metadata.ignorePropagatedAnnotations: true

define root view Z_I_ITEM_SGR
  as select from zitem_sgr
{
key id_item,
name ,
description ,
releasedate,
discontinueddate ,
price ,
height ,
width ,
depth ,
quantity ,
unitofmeasure
}
