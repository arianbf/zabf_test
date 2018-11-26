class ZCL_IMPLINTERFACE2_ABF definition
  public
  create public .

public section.

  interfaces ZIF_INTERFACE1_ABF .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IMPLINTERFACE2_ABF IMPLEMENTATION.


  method ZIF_INTERFACE1_ABF~WRITE_A.
    WRITE 'A2'.
  endmethod.


  method ZIF_INTERFACE1_ABF~WRITE_B.
    write 'B2'.
  endmethod.
ENDCLASS.
