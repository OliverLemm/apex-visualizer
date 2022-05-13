prompt --application/shared_components/logic/application_processes/apex_nitro
begin
--   Manifest
--     APPLICATION PROCESS: APEX Nitro
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.7'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(28019854089825293)
,p_process_sequence=>-9999
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX Nitro'
,p_process_sql_clob=>'apex_application.g_flow_images := ''http://localhost:4000/'';'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'owa_util.get_cgi_env(''APEX-Nitro'') is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
