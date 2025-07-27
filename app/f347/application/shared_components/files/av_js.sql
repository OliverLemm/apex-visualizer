prompt --application/shared_components/files/av_js
begin
--   Manifest
--     APP STATIC FILES: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A20746869732066756E6374696F6E20747269676765727320616C6C206869646520616E642073686F7720726567696F6E7320746F2072656672657368202A2F0D0A66756E6374696F6E2061765F726566726573685F686964655F73686F775F726567';
wwv_flow_imp.g_varchar2_table(2) := '696F6E732829207B0D0A20202428272E742D526567696F6E2E742D526567696F6E2D2D6869646553686F7727292E656163682866756E6374696F6E2829207B0D0A2020202020206C657420726567696F6E5F6964203D20242874686973292E6174747228';
wwv_flow_imp.g_varchar2_table(3) := '27696427293B0D0A202020202020617065782E726567696F6E28726567696F6E5F6964292E7265667265736828293B0D0A20207D293B20200D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(77790222148389341)
,p_file_name=>'av.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
