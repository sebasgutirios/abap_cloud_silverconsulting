@AbapCatalog.sqlViewName: 'ZVHEADER_SGR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA DEFINITION HEADER'
@Metadata.ignorePropagatedAnnotations: true
define root view Z_I_HEADER_SGR
  as select from zheader_sgr
{
  key id_header,
      email,
      first_name,
      last_name,
      country,
      createon,
      delivery_date,
      order_status,
      image_url
}
