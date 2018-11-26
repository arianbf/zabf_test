*&---------------------------------------------------------------------*
*& Include ZIC_ABF_ALV_TOP                                   Report ZPRG_ABF_ALV
*&
*&---------------------------------------------------------------------*
REPORT zprg_abf_alv.

DATA: lo_icf_alv TYPE REF TO /ind/cl_icf_alv,
      ls_instinfo TYPE /ind/st_alv_instifo,
      gt_outtab  TYPE TABLE OF /ind/t_amt_sg.
