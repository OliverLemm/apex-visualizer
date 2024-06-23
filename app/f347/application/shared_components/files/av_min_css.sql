prompt --application/shared_components/files/av_min_css
begin
--   Manifest
--     APP STATIC FILES: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2361762D726567696F6E2D72696768742D636F6C756D6E202E742D526567696F6E2D627574746F6E732D6C6566747B77696474683A313030257D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65481793436058498)
,p_file_name=>'av.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
