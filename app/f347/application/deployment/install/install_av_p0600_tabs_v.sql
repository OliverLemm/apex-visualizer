prompt --application/deployment/install/install_av_p0600_tabs_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0600_tabs_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0600_TABS_V" ("APPLICATION_ID", "TAB_NAME", "TAB_LA';
wwv_flow_imp.g_varchar2_table(2) := 'BEL", "PAGES_COUNT", "TAB_PAGE", "TAB_ALSO_CURRENT_FOR_PAGES") AS '||wwv_flow.LF||
'  select t.application_id'||wwv_flow.LF||
'      ,';
wwv_flow_imp.g_varchar2_table(3) := 't.tab_name'||wwv_flow.LF||
'      ,t.tab_label'||wwv_flow.LF||
'      ,nvl2(tab_also_current_for_pages'||wwv_flow.LF||
'           ,(regexp_count(tab_a';
wwv_flow_imp.g_varchar2_table(4) := 'lso_current_for_pages'||wwv_flow.LF||
'                         ,'','') + 2)'||wwv_flow.LF||
'           ,1) pages_count'||wwv_flow.LF||
'      ,t.tab_pa';
wwv_flow_imp.g_varchar2_table(5) := 'ge'||wwv_flow.LF||
'      ,t.tab_also_current_for_pages'||wwv_flow.LF||
'from apex_application_tabs t'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(50059082577434550)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0600_tabs_v'
,p_sequence=>180
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(50059107246434551)
,p_script_id=>wwv_flow_imp.id(50059082577434550)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0600_TABS_V'
);
wwv_flow_imp.component_end;
end;
/
