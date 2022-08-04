prompt --application/shared_components/files/av_min_css
begin
--   Manifest
--     APP STATIC FILES: 347
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.8'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2361762D726567696F6E2D72696768742D636F6C756D6E202E742D526567696F6E2D627574746F6E732D6C6566747B77696474683A313030257D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(45073219296177050)
,p_file_name=>'av.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
