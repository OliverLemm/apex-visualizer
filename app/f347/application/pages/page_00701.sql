prompt --application/pages/page_00701
begin
--   Manifest
--     PAGE: 00701
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.3'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>701
,p_name=>'APEX 18.1'
,p_alias=>'APEX-18-1'
,p_step_title=>'APEX 18.1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp.component_end;
end;
/
