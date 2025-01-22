@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA PROJECTION ITEM'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_ITEM_SGR as projection on Z_I_ITEM_SGR
{
    key id_item as id_item,
    name as Name,
    description as Description,
    releasedate as Releasedate,
    discontinueddate as Discontinueddate,
    price as Price,
    @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    height as Height,
    @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
    width as Width,
    depth as Depth,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure
}
