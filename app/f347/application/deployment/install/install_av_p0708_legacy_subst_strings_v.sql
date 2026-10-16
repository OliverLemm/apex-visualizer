prompt --application/deployment/install/install_av_p0708_legacy_subst_strings_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0708_legacy_subst_strings_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0708_LEGACY_SUBST_STRINGS_V" ("APPLICATION_ID", "PA';
wwv_flow_imp.g_varchar2_table(2) := 'GE_ID", "PAGE_NAME", "COMPONENT_NAME", "COMPONENT_TYPE", "CODE_VC2") AS '||wwv_flow.LF||
'  select x.application_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(3) := '     ,x.page_id'||wwv_flow.LF||
'      ,x.page_name'||wwv_flow.LF||
'      ,x.component_name'||wwv_flow.LF||
'      ,x.component_type'||wwv_flow.LF||
'      ,x.code_vc2';
wwv_flow_imp.g_varchar2_table(4) := ''||wwv_flow.LF||
'from ( -- javascript Code'||wwv_flow.LF||
'      select j.application_id'||wwv_flow.LF||
'             ,j.page_id'||wwv_flow.LF||
'             ,j.pag';
wwv_flow_imp.g_varchar2_table(5) := 'e_name'||wwv_flow.LF||
'             ,j.component_name'||wwv_flow.LF||
'             ,j.component_type'||wwv_flow.LF||
'             ,j.js_code_vc2 cod';
wwv_flow_imp.g_varchar2_table(6) := 'e_vc2'||wwv_flow.LF||
'      from av_javascript_v j'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- css Code'||wwv_flow.LF||
'      select c.application_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(7) := '            ,c.page_id'||wwv_flow.LF||
'             ,c.page_name'||wwv_flow.LF||
'             ,c.component_name'||wwv_flow.LF||
'             ,c.comp';
wwv_flow_imp.g_varchar2_table(8) := 'onent_type'||wwv_flow.LF||
'             ,c.css_code_vc2 code_vc2'||wwv_flow.LF||
'      from av_css_v c'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- plsq';
wwv_flow_imp.g_varchar2_table(9) := 'l code'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,p.page_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(10) := ',p.component_name'||wwv_flow.LF||
'             ,p.component_type'||wwv_flow.LF||
'             ,p.plsql_code_vc2 code_vc2'||wwv_flow.LF||
'      from ';
wwv_flow_imp.g_varchar2_table(11) := 'av_plsql_v p'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- static regions'||wwv_flow.LF||
'      select r.application_id'||wwv_flow.LF||
'             ,r.p';
wwv_flow_imp.g_varchar2_table(12) := 'age_id'||wwv_flow.LF||
'             ,r.page_name'||wwv_flow.LF||
'             ,r.region_name component_name'||wwv_flow.LF||
'             ,''region'' c';
wwv_flow_imp.g_varchar2_table(13) := 'omponent_type'||wwv_flow.LF||
'             ,to_char(substr(r.region_source'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(14) := '                  ,3900)) code_vc2'||wwv_flow.LF||
'      from apex_application_page_regions r'||wwv_flow.LF||
'      where r.source_t';
wwv_flow_imp.g_varchar2_table(15) := 'ype_code in (''STATIC_TEXT'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- javascript file urls in pages'||wwv_flow.LF||
'      select p.ap';
wwv_flow_imp.g_varchar2_table(16) := 'plication_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,p.page_name'||wwv_flow.LF||
'             ,''JavaScript File Urls'' ';
wwv_flow_imp.g_varchar2_table(17) := 'component_name'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,p.javascript_file_urls code_vc2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(18) := '   from apex_application_pages p'||wwv_flow.LF||
'      where p.javascript_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(19) := '  -- javascript file urls in app'||wwv_flow.LF||
'      select a.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(20) := ',''Shared Components'' page_name'||wwv_flow.LF||
'             ,''JavaScript File Urls'' component_name'||wwv_flow.LF||
'             ,''us';
wwv_flow_imp.g_varchar2_table(21) := 'er_interface'' component_type'||wwv_flow.LF||
'             ,a.javascript_file_urls code_vc2'||wwv_flow.LF||
'      from apex_applicati';
wwv_flow_imp.g_varchar2_table(22) := 'ons a'||wwv_flow.LF||
'      where a.javascript_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- javascript file urls i';
wwv_flow_imp.g_varchar2_table(23) := 'n page templates'||wwv_flow.LF||
'      select tp.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Templates'' pa';
wwv_flow_imp.g_varchar2_table(24) := 'ge_name'||wwv_flow.LF||
'             ,tp.template_name component_name'||wwv_flow.LF||
'             ,''page_template'' component_type'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(25) := '            ,tp.javascript_file_urls code_vc2'||wwv_flow.LF||
'      from apex_application_temp_page tp'||wwv_flow.LF||
'      where t';
wwv_flow_imp.g_varchar2_table(26) := 'p.javascript_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- javascript file urls in list templates'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(27) := '     select tp.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Templates'' page_name'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(28) := '   ,tp.template_name component_name'||wwv_flow.LF||
'             ,''list_template'' component_type'||wwv_flow.LF||
'             ,tp.ja';
wwv_flow_imp.g_varchar2_table(29) := 'vascript_file_urls code_vc2'||wwv_flow.LF||
'      from apex_application_temp_list tp'||wwv_flow.LF||
'      where tp.javascript_file_';
wwv_flow_imp.g_varchar2_table(30) := 'urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- javascript file urls in region templates'||wwv_flow.LF||
'      select tp.a';
wwv_flow_imp.g_varchar2_table(31) := 'pplication_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Templates'' page_name'||wwv_flow.LF||
'             ,tp.template_';
wwv_flow_imp.g_varchar2_table(32) := 'name component_name'||wwv_flow.LF||
'             ,''region_template'' component_type'||wwv_flow.LF||
'             ,tp.javascript_file_';
wwv_flow_imp.g_varchar2_table(33) := 'urls code_vc2'||wwv_flow.LF||
'      from apex_application_temp_region tp'||wwv_flow.LF||
'      where tp.javascript_file_urls is not ';
wwv_flow_imp.g_varchar2_table(34) := 'null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- javascript file urls in themes'||wwv_flow.LF||
'      select ts.application_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(35) := '     ,0 page_id'||wwv_flow.LF||
'             ,''Theme'' page_name'||wwv_flow.LF||
'             ,ts.theme_name component_name'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(36) := '    ,''javascript_file_urls'' component_type'||wwv_flow.LF||
'             ,ts.javascript_file_urls code_vc2'||wwv_flow.LF||
'      from';
wwv_flow_imp.g_varchar2_table(37) := ' apex_application_themes ts'||wwv_flow.LF||
'      where ts.javascript_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      --';
wwv_flow_imp.g_varchar2_table(38) := ' css file urls in pages'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,p.page_n';
wwv_flow_imp.g_varchar2_table(39) := 'ame'||wwv_flow.LF||
'             ,''CSS File Urls'' component_name'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,p';
wwv_flow_imp.g_varchar2_table(40) := '.css_file_urls code_vc2'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.css_file_urls is not null'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(41) := '      union all'||wwv_flow.LF||
'      -- css file urls in app'||wwv_flow.LF||
'      select ui.application_id'||wwv_flow.LF||
'             ,0 page_id';
wwv_flow_imp.g_varchar2_table(42) := ''||wwv_flow.LF||
'             ,''Shared Components'' page_name'||wwv_flow.LF||
'             ,''CSS File Urls'' component_name'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(43) := '   ,''user_interface'' component_type'||wwv_flow.LF||
'             ,ui.css_file_urls code_vc2'||wwv_flow.LF||
'      from apex_appl_use';
wwv_flow_imp.g_varchar2_table(44) := 'r_interfaces ui'||wwv_flow.LF||
'      where ui.css_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- css file urls in t';
wwv_flow_imp.g_varchar2_table(45) := 'hemes'||wwv_flow.LF||
'      select ts.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Theme'' page_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(46) := '      ,ts.theme_name component_name'||wwv_flow.LF||
'             ,''css_file_urls'' component_type'||wwv_flow.LF||
'             ,ts.cs';
wwv_flow_imp.g_varchar2_table(47) := 's_file_urls code_vc2'||wwv_flow.LF||
'      from apex_application_themes ts'||wwv_flow.LF||
'      where ts.css_file_urls is not null'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(48) := '      union all'||wwv_flow.LF||
'      -- Theme Styles'||wwv_flow.LF||
'      -- css file urls in theme styles'||wwv_flow.LF||
'      select ts.applica';
wwv_flow_imp.g_varchar2_table(49) := 'tion_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Theme'' page_name'||wwv_flow.LF||
'             ,ts.name component_name';
wwv_flow_imp.g_varchar2_table(50) := ''||wwv_flow.LF||
'             ,''theme_style'' component_type'||wwv_flow.LF||
'             ,ts.css_file_urls code_vc2'||wwv_flow.LF||
'      from apex_';
wwv_flow_imp.g_varchar2_table(51) := 'application_theme_styles ts'||wwv_flow.LF||
'      where ts.css_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- input ';
wwv_flow_imp.g_varchar2_table(52) := 'file urls in theme styles'||wwv_flow.LF||
'      select ts.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Them';
wwv_flow_imp.g_varchar2_table(53) := 'e'' page_name'||wwv_flow.LF||
'             ,ts.name component_name'||wwv_flow.LF||
'             ,''theme_roller_input_file_urls'' compo';
wwv_flow_imp.g_varchar2_table(54) := 'nent_type'||wwv_flow.LF||
'             ,ts.theme_roller_input_file_urls code_vc2'||wwv_flow.LF||
'      from apex_application_theme_s';
wwv_flow_imp.g_varchar2_table(55) := 'tyles ts'||wwv_flow.LF||
'      where ts.theme_roller_input_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- output fil';
wwv_flow_imp.g_varchar2_table(56) := 'e url in theme styles'||wwv_flow.LF||
'      select ts.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Theme'' p';
wwv_flow_imp.g_varchar2_table(57) := 'age_name'||wwv_flow.LF||
'             ,ts.name component_name'||wwv_flow.LF||
'             ,''theme_roller_output_file_url'' component';
wwv_flow_imp.g_varchar2_table(58) := '_type'||wwv_flow.LF||
'             ,ts.theme_roller_output_file_url code_vc2'||wwv_flow.LF||
'      from apex_application_theme_style';
wwv_flow_imp.g_varchar2_table(59) := 's ts'||wwv_flow.LF||
'      where ts.theme_roller_output_file_url is not null) x'||wwv_flow.LF||
'where instr(x.code_vc2'||wwv_flow.LF||
'           ,''';
wwv_flow_imp.g_varchar2_table(60) := 'IMAGE_PREFIX'') > 0'||wwv_flow.LF||
'or instr(x.code_vc2'||wwv_flow.LF||
'       ,''WORKSPACE_IMAGES'') > 0'||wwv_flow.LF||
'or instr(x.code_vc2'||wwv_flow.LF||
'       ,''';
wwv_flow_imp.g_varchar2_table(61) := 'APP_IMAGES'') > 0'||wwv_flow.LF||
'or instr(x.code_vc2'||wwv_flow.LF||
'       ,''THEME_IMAGES'') > 0'||wwv_flow.LF||
'or instr(x.code_vc2'||wwv_flow.LF||
'       ,''THEME_';
wwv_flow_imp.g_varchar2_table(62) := 'DB_IMAGES'') > 0'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(43550249478000655)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0708_legacy_subst_strings_v'
,p_sequence=>160
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
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
