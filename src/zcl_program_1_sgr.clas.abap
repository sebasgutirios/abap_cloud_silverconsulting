CLASS zcl_program_1_sgr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_program_1_sgr IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

     DATA:
    ltd_header TYPE STANDARD TABLE OF zheader_sgr.

    out->write( |Delete   -> Travel ztb_booking_8712| ).
    DELETE FROM zorn_header_9389.

ltd_header
        = VALUE #(
                    (
                        id_header     =  '0000005001'
                        email         =  'juan@example.com'
                        first_name    =  'Juan'
                        last_name     =  'Martínez'
                        country       =  'Mexico'
                        createon     =  '20240228'
                        delivery_date =  '20240310'
                        order_status  =  '1'
                        image_url     =  'juan'
                    )
                   ).

    IF lines( ltd_header ) > 0.

      INSERT zheader_sgr FROM TABLE @ltd_header.

    ENDIF.

    out->write( |insert -> Header zorn_header_9389| ).


ENDMETHOD.

ENDCLASS.
