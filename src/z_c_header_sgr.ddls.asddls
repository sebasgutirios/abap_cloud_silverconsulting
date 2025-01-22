@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA PROJECTION HEADER'
@Metadata.allowExtensions: true
define root view entity Z_C_HEADER_SGR
  as projection on Z_I_HEADER_SGR
  association [1..*] to Z_C_ITEM_SGR as _Header on $projection.IdHeader = _Header.id_item
{
  key id_header     as IdHeader,
      email         as Email,
      first_name    as FirstName,
      last_name     as LastName,
      country       as Country,
      createon      as Createon,
      delivery_date as DeliveryDate,
      order_status  as OrderStatus,
      image_url     as ImageUrl,
       _Header
}
