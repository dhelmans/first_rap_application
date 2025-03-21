CLASS zcl_mdv_class1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mdv_class1 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  TYPES: BEGIN OF ty,
         data type string,
         muto type string,
         end of ty.

  DATA: lt_a TYPE TABLE OF ty.

  append value #( data = 'a' muto = 'b' ) to lt_a.
  append value #( data = 'c' muto = 'd' ) to lt_a.

    out->write( EXPORTING data = lt_a ).

  ENDMETHOD.

ENDCLASS.
