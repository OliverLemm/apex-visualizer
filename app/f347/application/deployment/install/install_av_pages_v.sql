prompt --application/deployment/install/install_av_pages_v
begin
--   Manifest
--     INSTALL: INSTALL-av_pages_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGES_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAG';
wwv_flow_imp.g_varchar2_table(2) := 'E_ID", "PAGE_NAME", "PAGE_MODE", "PAGE_ALIAS", "PAGE_FUNCTION", "PAGE_GROUP", "PAGE_TEMPLATE", "CREA';
wwv_flow_imp.g_varchar2_table(3) := 'TED_BY", "CREATED_ON", "LAST_UPDATED_BY", "LAST_UPDATED_ON", "RELOAD_ON_SUBMIT", "WARN_ON_UNSAVED_CH';
wwv_flow_imp.g_varchar2_table(4) := 'ANGES") AS '||wwv_flow.LF||
'  select aap.application_id'||wwv_flow.LF||
'      ,aap.application_name'||wwv_flow.LF||
'      ,aap.page_id'||wwv_flow.LF||
'      ,aap.pa';
wwv_flow_imp.g_varchar2_table(5) := 'ge_name'||wwv_flow.LF||
'      ,aap.page_mode'||wwv_flow.LF||
'      ,aap.page_alias'||wwv_flow.LF||
'      ,aap.page_function'||wwv_flow.LF||
'      ,aap.page_group'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(6) := '    ,aap.page_template'||wwv_flow.LF||
'      ,aap.created_by'||wwv_flow.LF||
'      ,aap.created_on'||wwv_flow.LF||
'      ,aap.last_updated_by'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(7) := ',aap.last_updated_on'||wwv_flow.LF||
'      ,aap.reload_on_submit'||wwv_flow.LF||
'      ,aap.warn_on_unsaved_changes'||wwv_flow.LF||
'from apex_applic';
wwv_flow_imp.g_varchar2_table(8) := 'ation_pages aap'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164065383263053366)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_pages_v'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164065535800053366)
,p_script_id=>wwv_flow_imp.id(164065383263053366)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGES_V'
);
wwv_flow_imp.component_end;
end;
/
