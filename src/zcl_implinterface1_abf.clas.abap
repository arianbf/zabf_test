class ZCL_IMPLINTERFACE1_ABF definition
  public
  create public .

public section.

  interfaces ZIF_INTERFACE1_ABF .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IMPLINTERFACE1_ABF IMPLEMENTATION.


  method ZIF_INTERFACE1_ABF~WRITE_A.
    WRITE 'A'.
  endmethod.


  method ZIF_INTERFACE1_ABF~WRITE_B.
    WRITE 'B'.
  endmethod.
ENDCLASS.
