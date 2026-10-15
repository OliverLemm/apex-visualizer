prompt --application/deployment/install/install_av_varchar2s_t
begin
--   Manifest
--     INSTALL: INSTALL-av_varchar2s_t
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'create or replace type av_varchar2s_t as table of av_varchar2_t;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(79836285417835971)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_varchar2s_t'
,p_sequence=>240
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(79836369068835971)
,p_script_id=>wwv_flow_imp.id(79836285417835971)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TYPE'
,p_object_name=>'AV_VARCHAR2S_T'
);
wwv_flow_imp.component_end;
end;
/
