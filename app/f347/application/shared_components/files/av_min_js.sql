prompt --application/shared_components/files/av_min_js
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
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E2061765F726566726573685F686964655F73686F775F726567696F6E7328297B2428222E742D526567696F6E2E742D526567696F6E2D2D6869646553686F7722292E65616368282866756E6374696F6E28297B6C657420653D242874';
wwv_flow_api.g_varchar2_table(2) := '686973292E617474722822696422293B617065782E726567696F6E2865292E7265667265736828297D29297D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(57382672707510970)
,p_file_name=>'av.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
