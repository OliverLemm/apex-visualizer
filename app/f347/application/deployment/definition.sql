prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(314927592265159640)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop view av_applications_v;',
'drop view av_components_v;',
'drop view av_css_v;',
'drop view av_javascript_v;',
'drop view av_pages_v;',
'drop view av_page_links_v;',
'drop view av_plsql_v;',
'drop view av_plugins_v;',
'drop view av_page_complexity_v;',
'drop view av_p0100_js_code_by_page_v;',
'drop view av_p0200_css_code_by_page_v;',
'drop view av_p0300_plsql_code_by_page_v;',
'drop view av_p0600_not_used_auth_schemes_v;',
'drop view av_p0708_legacy_subst_strings_v;',
'drop view av_visibility_overview_v;',
'drop view av_visibility_v;',
'drop package av_general_pkg;'))
);
wwv_flow_imp.component_end;
end;
/
