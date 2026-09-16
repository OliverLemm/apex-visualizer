prompt --application/deployment/install/install_av_p0600_not_used_auth_schemes_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0600_not_used_auth_schemes_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0600_NOT_USED_AUTH_SCHEMES_V" ("AUTHORIZATION_SCHEM';
wwv_flow_imp.g_varchar2_table(2) := 'E_NAME", "APPLICATION_ID", "SCHEME_TYPE") AS '||wwv_flow.LF||
'  with auth as'||wwv_flow.LF||
' (select v1.visibility_id'||wwv_flow.LF||
'        ,v1.a';
wwv_flow_imp.g_varchar2_table(3) := 'pplication_id'||wwv_flow.LF||
'  from av_visibility_v v1'||wwv_flow.LF||
'  where v1.visibility_category = ''AUTHORIZATION_SCHEME'''||wwv_flow.LF||
'  an';
wwv_flow_imp.g_varchar2_table(4) := 'd v1.visibility_name is not null)'||wwv_flow.LF||
'select a.authorization_scheme_name'||wwv_flow.LF||
'      ,a.application_id'||wwv_flow.LF||
'      ,';
wwv_flow_imp.g_varchar2_table(5) := 'a.scheme_type'||wwv_flow.LF||
'from apex_application_authorization a'||wwv_flow.LF||
'where to_char(a.authorization_scheme_id) not in ';
wwv_flow_imp.g_varchar2_table(6) := '(select a1.visibility_id'||wwv_flow.LF||
'                                                 from auth a1'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(7) := '                                    where a1.application_id = a.application_id)'||wwv_flow.LF||
'and to_char(''!'' || a';
wwv_flow_imp.g_varchar2_table(8) := '.authorization_scheme_id) not in (select a1.visibility_id'||wwv_flow.LF||
'                                          ';
wwv_flow_imp.g_varchar2_table(9) := '           from auth a1'||wwv_flow.LF||
'                                                     where a1.application_id';
wwv_flow_imp.g_varchar2_table(10) := ' = a.application_id)'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59790543015718060)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0600_not_used_auth_schemes_v'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59790606434718060)
,p_script_id=>wwv_flow_imp.id(59790543015718060)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0600_NOT_USED_AUTH_SCHEMES_V'
);
wwv_flow_imp.component_end;
end;
/
