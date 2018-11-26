class ZCL_CALLIMPL_ABF definition
  public
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IO_INTERFACE type ref to ZIF_INTERFACE1_ABF .
  methods CALL_METHODS .
  methods SET_NEW
    importing
      !IO_INTERFACE type ref to ZIF_INTERFACE1_ABF .
protected section.
private section.

  data MO_INTEFACE type ref to ZIF_INTERFACE1_ABF .
ENDCLASS.



CLASS ZCL_CALLIMPL_ABF IMPLEMENTATION.


  METHOD call_methods.
    mo_inteface->write_a( ).
    mo_inteface->write_b( ).
  ENDMETHOD.


  METHOD constructor.
    mo_inteface = io_interface.
  ENDMETHOD.


  METHOD set_new.
    mo_inteface = io_interface.
  ENDMETHOD.
ENDCLASS.
