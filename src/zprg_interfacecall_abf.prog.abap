*&---------------------------------------------------------------------*
*& Report  ZPRG_INTERFACECALL_ABF
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zprg_interfacecall_abf.

DATA: go_ifimpl1  TYPE REF TO zcl_implinterface1_abf,
      go_ifimpl2  TYPE REF TO zcl_implinterface2_abf,
      go_callimpl TYPE REF TO zcl_callimpl_abf.


CREATE OBJECT go_ifimpl1.
CREATE OBJECT go_ifimpl2.
CREATE OBJECT go_callimpl
  EXPORTING
    io_interface = go_ifimpl1.

go_callimpl->call_methods( ).
ULINE.
go_callimpl->set_new( go_ifimpl2 ).
go_callimpl->call_methods( ).
