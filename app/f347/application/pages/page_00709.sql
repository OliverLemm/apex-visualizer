prompt --application/pages/page_00709
begin
--   Manifest
--     PAGE: 00709
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.7'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_page(
 p_id=>709
,p_user_interface_id=>wwv_flow_api.id(452492531566466351)
,p_name=>'APEX 22.1'
,p_alias=>'APEX-22-1'
,p_step_title=>'APEX 22.1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20220605185735'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45105580925952525)
,p_plug_name=>'APEX 22.1'
,p_icon_css_classes=>'fa-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(452456691272466243)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(452492814882466360)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(452482206618466299)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.component_end;
end;
/
