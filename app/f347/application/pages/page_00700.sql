prompt --application/pages/page_00700
begin
--   Manifest
--     PAGE: 00700
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.1'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_page(
 p_id=>700
,p_user_interface_id=>wwv_flow_api.id(452492531566466351)
,p_name=>'Migration'
,p_alias=>'MIGRATION'
,p_step_title=>'Migration'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20211124101952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46162021886404030)
,p_plug_name=>'What Migration contains'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(452458863643466246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'For every version of APEX you should change the deprecated features and remove the desupported ones. Below this Page there is one page by release, which checks the selected app regarding the deprecated and desupported features, if they can be identif'
||'ied by the APEX Metadata.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
