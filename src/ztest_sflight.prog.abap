*&---------------------------------------------------------------------*
*& Report ZSFLIGHT_DATA
*&---------------------------------------------------------------------*
*& IM01 29/Jan/2025 Add selection by carrier
*&---------------------------------------------------------------------*
report zsflight_data.

select * from sflight into table @data(lt_sflight).


data: lo_table type ref to cl_salv_table.

try.

    cl_salv_table=>factory( importing r_salv_table = lo_table
                            changing  t_table      = lt_sflight ).

    lo_table->display( ).
  catch cx_salv_msg ##no_handler.

endtry.
