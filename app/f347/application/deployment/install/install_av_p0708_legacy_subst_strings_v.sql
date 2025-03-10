prompt --application/deployment/install/install_av_p0708_legacy_subst_strings_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0708_legacy_subst_strings_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.3'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(43550249478000655)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0708_legacy_subst_strings_v'
,p_sequence=>160
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0708_LEGACY_SUBST_STRINGS_V" ("APPLICATION_ID", "PAGE_ID", "PAGE_NAME", "COMPONENT_NAME", "COMPONENT_TYPE", "CODE_VC2") AS ',
'  select x.application_id',
'      ,x.page_id',
'      ,x.page_name',
'      ,x.component_name',
'      ,x.component_type',
'      ,x.code_vc2',
'from ( -- javascript Code',
'      select j.application_id',
'             ,j.page_id',
'             ,j.page_name',
'             ,j.component_name',
'             ,j.component_type',
'             ,j.js_code_vc2 code_vc2',
'      from av_javascript_v j',
'      union all',
'      -- css Code',
'      select c.application_id',
'             ,c.page_id',
'             ,c.page_name',
'             ,c.component_name',
'             ,c.component_type',
'             ,c.css_code_vc2 code_vc2',
'      from av_css_v c',
'      union all',
'      -- plsql code',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name',
'             ,p.component_name',
'             ,p.component_type',
'             ,p.plsql_code_vc2 code_vc2',
'      from av_plsql_v p',
'      union all',
'      -- static regions',
'      select r.application_id',
'             ,r.page_id',
'             ,r.page_name',
'             ,r.region_name component_name',
'             ,''region'' component_type',
'             ,to_char(substr(r.region_source',
'                            ,0',
'                            ,3900)) code_vc2',
'      from apex_application_page_regions r',
'      where r.source_type_code in (''STATIC_TEXT'')',
'      union all',
'      -- javascript file urls in pages',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name',
'             ,''JavaScript File Urls'' component_name',
'             ,''page'' component_type',
'             ,p.javascript_file_urls code_vc2',
'      from apex_application_pages p',
'      where p.javascript_file_urls is not null',
'      union all',
'      -- javascript file urls in app',
'      select a.application_id',
'             ,0 page_id',
'             ,''Shared Components'' page_name',
'             ,''JavaScript File Urls'' component_name',
'             ,''user_interface'' component_type',
'             ,a.javascript_file_urls code_vc2',
'      from apex_applications a',
'      where a.javascript_file_urls is not null',
'      union all',
'      -- javascript file urls in page templates',
'      select tp.application_id',
'             ,0 page_id',
'             ,''Templates'' page_name',
'             ,tp.template_name component_name',
'             ,''page_template'' component_type',
'             ,tp.javascript_file_urls code_vc2',
'      from apex_application_temp_page tp',
'      where tp.javascript_file_urls is not null',
'      union all',
'      -- javascript file urls in list templates',
'      select tp.application_id',
'             ,0 page_id',
'             ,''Templates'' page_name',
'             ,tp.template_name component_name',
'             ,''list_template'' component_type',
'             ,tp.javascript_file_urls code_vc2',
'      from apex_application_temp_list tp',
'      where tp.javascript_file_urls is not null',
'      union all',
'      -- javascript file urls in region templates',
'      select tp.application_id',
'             ,0 page_id',
'             ,''Templates'' page_name',
'             ,tp.template_name component_name',
'             ,''region_template'' component_type',
'             ,tp.javascript_file_urls code_vc2',
'      from apex_application_temp_region tp',
'      where tp.javascript_file_urls is not null',
'      union all',
'      -- javascript file urls in themes',
'      select ts.application_id',
'             ,0 page_id',
'             ,''Theme'' page_name',
'             ,ts.theme_name component_name',
'             ,''javascript_file_urls'' component_type',
'             ,ts.javascript_file_urls code_vc2',
'      from apex_application_themes ts',
'      where ts.javascript_file_urls is not null',
'      union all',
'      -- css file urls in pages',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name',
'             ,''CSS File Urls'' component_name',
'             ,''page'' component_type',
'             ,p.css_file_urls code_vc2',
'      from apex_application_pages p',
'      where p.css_file_urls is not null',
'      union all',
'      -- css file urls in app',
'      select ui.application_id',
'             ,0 page_id',
'             ,''Shared Components'' page_name',
'             ,''CSS File Urls'' component_name',
'             ,''user_interface'' component_type',
'             ,ui.css_file_urls code_vc2',
'      from apex_appl_user_interfaces ui',
'      where ui.css_file_urls is not null',
'      union all',
'      -- css file urls in themes',
'      select ts.application_id',
'             ,0 page_id',
'             ,''Theme'' page_name',
'             ,ts.theme_name component_name',
'             ,''css_file_urls'' component_type',
'             ,ts.css_file_urls code_vc2',
'      from apex_application_themes ts',
'      where ts.css_file_urls is not null',
'      union all',
'      -- Theme Styles',
'      -- css file urls in theme styles',
'      select ts.application_id',
'             ,0 page_id',
'             ,''Theme'' page_name',
'             ,ts.name component_name',
'             ,''theme_style'' component_type',
'             ,ts.css_file_urls code_vc2',
'      from apex_application_theme_styles ts',
'      where ts.css_file_urls is not null',
'      union all',
'      -- input file urls in theme styles',
'      select ts.application_id',
'             ,0 page_id',
'             ,''Theme'' page_name',
'             ,ts.name component_name',
'             ,''theme_roller_input_file_urls'' component_type',
'             ,ts.theme_roller_input_file_urls code_vc2',
'      from apex_application_theme_styles ts',
'      where ts.theme_roller_input_file_urls is not null',
'      union all',
'      -- output file url in theme styles',
'      select ts.application_id',
'             ,0 page_id',
'             ,''Theme'' page_name',
'             ,ts.name component_name',
'             ,''theme_roller_output_file_url'' component_type',
'             ,ts.theme_roller_output_file_url code_vc2',
'      from apex_application_theme_styles ts',
'      where ts.theme_roller_output_file_url is not null) x',
'where instr(x.code_vc2',
'           ,''IMAGE_PREFIX'') > 0',
'or instr(x.code_vc2',
'       ,''WORKSPACE_IMAGES'') > 0',
'or instr(x.code_vc2',
'       ,''APP_IMAGES'') > 0',
'or instr(x.code_vc2',
'       ,''THEME_IMAGES'') > 0',
'or instr(x.code_vc2',
'       ,''THEME_DB_IMAGES'') > 0',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(43550354641000658)
,p_script_id=>wwv_flow_imp.id(43550249478000655)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0708_LEGACY_SUBST_STRINGS_V'
);
wwv_flow_imp.component_end;
end;
/
