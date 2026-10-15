prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 347
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
wwv_flow_imp.g_varchar2_table(1) := 'drop view av_applications_v;'||wwv_flow.LF||
'drop view av_components_v;'||wwv_flow.LF||
'drop view av_css_v;'||wwv_flow.LF||
'drop view av_javascri';
wwv_flow_imp.g_varchar2_table(2) := 'pt_v;'||wwv_flow.LF||
'drop view av_pages_v;'||wwv_flow.LF||
'drop view av_page_links_v;'||wwv_flow.LF||
'drop view av_page_links_nav_static_v;'||wwv_flow.LF||
'dro';
wwv_flow_imp.g_varchar2_table(3) := 'p view av_plsql_v;'||wwv_flow.LF||
'drop view av_plugins_v;'||wwv_flow.LF||
'drop view av_page_complexity_v;'||wwv_flow.LF||
'drop view av_p0100_js_';
wwv_flow_imp.g_varchar2_table(4) := 'code_by_page_v;'||wwv_flow.LF||
'drop view av_p0200_css_code_by_page_v;'||wwv_flow.LF||
'drop view av_p0300_plsql_code_by_page_v;'||wwv_flow.LF||
'd';
wwv_flow_imp.g_varchar2_table(5) := 'rop view av_p0600_not_used_auth_schemes_v;'||wwv_flow.LF||
'drop view av_p0600_tabs_v;'||wwv_flow.LF||
'drop view av_p0708_legacy_su';
wwv_flow_imp.g_varchar2_table(6) := 'bst_strings_v;'||wwv_flow.LF||
'drop view av_templates_v;'||wwv_flow.LF||
'drop view av_visibility_overview_v;'||wwv_flow.LF||
'drop view av_visibil';
wwv_flow_imp.g_varchar2_table(7) := 'ity_v;'||wwv_flow.LF||
'drop package av_general_pkg;'||wwv_flow.LF||
'drop package av_migration_pkg;'||wwv_flow.LF||
'drop package av_migration_19_2';
wwv_flow_imp.g_varchar2_table(8) := '_pkg;'||wwv_flow.LF||
'drop package av_migration_20_2_pkg;'||wwv_flow.LF||
'drop package av_migration_22_1_pkg;';
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(314927592265159640)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
