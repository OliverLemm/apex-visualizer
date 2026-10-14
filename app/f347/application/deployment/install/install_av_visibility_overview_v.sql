prompt --application/deployment/install/install_av_visibility_overview_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_overview_v
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
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_OVERVIEW_V" ("APP_ID", "APP_NAME", "VISIB';
wwv_flow_imp.g_varchar2_table(2) := 'ILTY_NAME") AS '||wwv_flow.LF||
'  select aaa.application_id            app_id'||wwv_flow.LF||
'      ,aaa.application_name          a';
wwv_flow_imp.g_varchar2_table(3) := 'pp_name'||wwv_flow.LF||
'      ,aaa.authorization_scheme_name visibilty_name'||wwv_flow.LF||
'from apex_application_authorization aaa'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(4) := 'union all'||wwv_flow.LF||
'select aa.application_id app_id'||wwv_flow.LF||
'      ,aa.application_name app_name'||wwv_flow.LF||
'      ,''condition'' vis';
wwv_flow_imp.g_varchar2_table(5) := 'ibilty_name'||wwv_flow.LF||
'from apex_applications aa'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164066404159060573)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_visibility_overview_v'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164066547679060573)
,p_script_id=>wwv_flow_imp.id(164066404159060573)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_VISIBILITY_OVERVIEW_V'
);
wwv_flow_imp.component_end;
end;
/
