prompt --application/shared_components/files/av_css
begin
--   Manifest
--     APP STATIC FILES: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2361762D726567696F6E2D72696768742D636F6C756D6E202E742D526567696F6E2D627574746F6E732D6C6566740D0A7B0D0A2020202077696474683A313030253B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65478068959051466)
,p_file_name=>'av.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
