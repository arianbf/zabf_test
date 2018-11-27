*&---------------------------------------------------------------------*
*& Report  ZPRG_ABF_ALV
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

INCLUDE zic_abf_alv_top                         .    " global Data

 INCLUDE ZIC_ABF_ALV_O01                         .  " PBO-Modules
 INCLUDE ZIC_ABF_ALV_I01                         .  " PAI-Modules
* INCLUDE ZIC_ABF_ALV_F01                         .  " FORM-Routines

PARAMETERS pa_vert TYPE vertrag.

START-OF-SELECTION.

  SELECT * FROM /ind/t_amt_sg
    INTO TABLE gt_outtab
    WHERE vertrag = pa_vert.

    ls_instinfo-main_group = 'ABF_TEST'.
    ls_instinfo-sub_group  = 'ABF_TEST_1'.

  CREATE OBJECT lo_icf_alv
    EXPORTING
      is_instinfo = ls_instinfo
      id_fcat_structure = '/IND/T_AMT_SG'
      id_custcont_name = 'CONTAINER_ALV'
*      io_custcont =
      .

  WRITE 'Successful'.
