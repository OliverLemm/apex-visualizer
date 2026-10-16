prompt --application/deployment/install/install_av_css_v
begin
--   Manifest
--     INSTALL: INSTALL-av_css_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_CSS_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_';
wwv_flow_imp.g_varchar2_table(2) := 'ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "COMPONENT_NAME", "COMPONENT_T';
wwv_flow_imp.g_varchar2_table(3) := 'YPE", "CSS_CODE_TYPE", "BEST_PRACTICE", "CSS_CODE", "CSS_CODE_VC2", "CSS_CODE_CLOB", "TOOLTIP", "CSS';
wwv_flow_imp.g_varchar2_table(4) := '_CODE_LINES", "CSS_CODE_LENGTH") AS '||wwv_flow.LF||
'  select app.application_id'||wwv_flow.LF||
'      ,app.application_name'||wwv_flow.LF||
'      ,';
wwv_flow_imp.g_varchar2_table(5) := 'app.page_id'||wwv_flow.LF||
'      ,app.page_name'||wwv_flow.LF||
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => app';
wwv_flow_imp.g_varchar2_table(6) := '.application_id'||wwv_flow.LF||
'                                             ,pi_app_page_id => app.page_id) page_de';
wwv_flow_imp.g_varchar2_table(7) := 'signer_url'||wwv_flow.LF||
'      ,nvl(app.page_group'||wwv_flow.LF||
'          ,''no page group'') page_group'||wwv_flow.LF||
'      ,app.page_function';
wwv_flow_imp.g_varchar2_table(8) := ''||wwv_flow.LF||
'      ,c.component_name'||wwv_flow.LF||
'      ,c.component_type'||wwv_flow.LF||
'      ,c.css_code_type'||wwv_flow.LF||
'      ,case'||wwv_flow.LF||
'         when le';
wwv_flow_imp.g_varchar2_table(9) := 'ngth(c.css_code_clob) > 1000 then'||wwv_flow.LF||
'          0'||wwv_flow.LF||
'         else'||wwv_flow.LF||
'          c.best_practice'||wwv_flow.LF||
'       end bes';
wwv_flow_imp.g_varchar2_table(10) := 't_practice'||wwv_flow.LF||
'      ,c.css_code_vc2 css_code -- only for backward compatibility'||wwv_flow.LF||
'      ,c.css_code_vc2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(11) := '     ,c.css_code_clob'||wwv_flow.LF||
'      ,''<b>'' || c.component_name || '' (page_id='' || c.page_id || '' - '' || c.co';
wwv_flow_imp.g_varchar2_table(12) := 'mponent_type || '' - '' || c.css_code_type || '')</b><br>'' || c.css_code_vc2 tooltip'||wwv_flow.LF||
'      ,regexp_coun';
wwv_flow_imp.g_varchar2_table(13) := 't(c.css_code_clob'||wwv_flow.LF||
'                   ,chr(10)) + 1 css_code_lines'||wwv_flow.LF||
'      ,length(c.css_code_clob) css';
wwv_flow_imp.g_varchar2_table(14) := '_code_length'||wwv_flow.LF||
'from apex_application_pages app'||wwv_flow.LF||
'join ( -- Theme Roller Custom CSS'||wwv_flow.LF||
'      select applicat';
wwv_flow_imp.g_varchar2_table(15) := 'ion_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
'             ,''Theme Roller Custom CSS'' component_name'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(16) := '1 best_practice'||wwv_flow.LF||
'             ,cast(substr(to_clob(tf.file_content)'||wwv_flow.LF||
'                         ,0'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(17) := '                    ,3900) as varchar2(4000)) css_code_vc2'||wwv_flow.LF||
'             ,to_clob(tf.file_content) cs';
wwv_flow_imp.g_varchar2_table(18) := 's_code_clob'||wwv_flow.LF||
'             ,''theme_roller_custom_css'' css_code_type'||wwv_flow.LF||
'             ,''custom_css'' compone';
wwv_flow_imp.g_varchar2_table(19) := 'nt_type'||wwv_flow.LF||
'             ,tf.theme_number component_number'||wwv_flow.LF||
'      from apex_application_theme_files tf'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(20) := '    union all'||wwv_flow.LF||
'      -- PAGE - Header Text'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(21) := '         ,''Page Header Text'' component_name'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,p.header_tex';
wwv_flow_imp.g_varchar2_table(22) := 't css_code_vc2'||wwv_flow.LF||
'             ,to_clob(p.header_text) css_code_clob'||wwv_flow.LF||
'             ,''header_text'' css_co';
wwv_flow_imp.g_varchar2_table(23) := 'de_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'      from apex_appl';
wwv_flow_imp.g_varchar2_table(24) := 'ication_pages p'||wwv_flow.LF||
'      where p.header_text is not null'||wwv_flow.LF||
'      and instr(p.header_text'||wwv_flow.LF||
'              ,''';
wwv_flow_imp.g_varchar2_table(25) := 'css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- PAGE - Body Header'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.';
wwv_flow_imp.g_varchar2_table(26) := 'page_id'||wwv_flow.LF||
'             ,''Page Body Header'' component_name'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(27) := 'p.body_header css_code'||wwv_flow.LF||
'             ,to_clob(p.body_header) css_code_clob'||wwv_flow.LF||
'             ,''body_header';
wwv_flow_imp.g_varchar2_table(28) := ''' css_code_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'      from a';
wwv_flow_imp.g_varchar2_table(29) := 'pex_application_pages p'||wwv_flow.LF||
'      where p.body_header is not null'||wwv_flow.LF||
'      and instr(p.body_header'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(30) := '      ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- PAGE - Footer Text'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(31) := '     ,p.page_id'||wwv_flow.LF||
'             ,''Page Footer text'' component_name'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(32) := '       ,p.footer_text css_code_vc2'||wwv_flow.LF||
'             ,to_clob(p.footer_text) css_code_clob'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(33) := '''footer_text'' css_code_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(34) := '      from apex_application_pages p'||wwv_flow.LF||
'      where p.body_header is not null'||wwv_flow.LF||
'      and instr(p.footer_t';
wwv_flow_imp.g_varchar2_table(35) := 'ext'||wwv_flow.LF||
'              ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page - Page CSS Classes'||wwv_flow.LF||
'      select p.applic';
wwv_flow_imp.g_varchar2_table(36) := 'ation_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''Page CSS Classes'' component_name'||wwv_flow.LF||
'             ,1 bes';
wwv_flow_imp.g_varchar2_table(37) := 't_practice'||wwv_flow.LF||
'             ,p.page_css_classes css_code_vc2'||wwv_flow.LF||
'             ,to_clob(p.page_css_classes) c';
wwv_flow_imp.g_varchar2_table(38) := 'ss_code_clob'||wwv_flow.LF||
'             ,''page_css_classes'' css_code_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(39) := '         ,null component_number'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.page_css_classes i';
wwv_flow_imp.g_varchar2_table(40) := 's not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page - Page HTML Header'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(41) := '   ,p.page_id'||wwv_flow.LF||
'             ,''Page HTML Header'' component_name'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(42) := '     ,to_char(substr(p.page_html_header'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'                            ,';
wwv_flow_imp.g_varchar2_table(43) := '3900)) css_code_vc2'||wwv_flow.LF||
'             ,to_clob(p.page_html_header) css_code_clob'||wwv_flow.LF||
'             ,''page_html';
wwv_flow_imp.g_varchar2_table(44) := '_header'' css_code_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(45) := ' from apex_application_pages p'||wwv_flow.LF||
'      where p.page_html_header is not null'||wwv_flow.LF||
'      and instr(p.page_htm';
wwv_flow_imp.g_varchar2_table(46) := 'l_header'||wwv_flow.LF||
'              ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page - Page HTML onload'||wwv_flow.LF||
'      select p.a';
wwv_flow_imp.g_varchar2_table(47) := 'pplication_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''Page HTML onload'' component_name'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(48) := '0 best_practice'||wwv_flow.LF||
'             ,p.page_html_onload css_code'||wwv_flow.LF||
'             ,to_clob(p.page_html_onload) ';
wwv_flow_imp.g_varchar2_table(49) := 'css_code_clob'||wwv_flow.LF||
'             ,''page_html_onload'' css_code_type'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(50) := '          ,null component_number'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.page_html_onload ';
wwv_flow_imp.g_varchar2_table(51) := 'is not null'||wwv_flow.LF||
'      and instr(p.page_html_onload'||wwv_flow.LF||
'              ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Pa';
wwv_flow_imp.g_varchar2_table(52) := 'ge - CSS file URLS'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''CSS file URL';
wwv_flow_imp.g_varchar2_table(53) := 's'' component_name'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,css_file_urls css_code_vc2'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(54) := '  ,to_clob(css_file_urls) css_code_clob'||wwv_flow.LF||
'             ,''css_file_urls'' css_code_type'||wwv_flow.LF||
'             ,''p';
wwv_flow_imp.g_varchar2_table(55) := 'age'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      wh';
wwv_flow_imp.g_varchar2_table(56) := 'ere p.css_file_urls is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page - inline CSS'||wwv_flow.LF||
'      select p.applicatio';
wwv_flow_imp.g_varchar2_table(57) := 'n_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''inline CSS'' component_name'||wwv_flow.LF||
'             ,1 best_practice';
wwv_flow_imp.g_varchar2_table(58) := ''||wwv_flow.LF||
'             ,to_char(substr(inline_css'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(59) := ',3900)) css_code_vc2'||wwv_flow.LF||
'             ,p.inline_css css_code_clob'||wwv_flow.LF||
'             ,''inline_css'' css_code_ty';
wwv_flow_imp.g_varchar2_table(60) := 'pe'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,null component_number'||wwv_flow.LF||
'      from apex_applicati';
wwv_flow_imp.g_varchar2_table(61) := 'on_pages p'||wwv_flow.LF||
'      where p.inline_css is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region - grid_column_css_cl';
wwv_flow_imp.g_varchar2_table(62) := 'asses'||wwv_flow.LF||
'      select pr.application_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name || '' - Gr';
wwv_flow_imp.g_varchar2_table(63) := 'id Column CSS Classes'' component_name'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,pr.grid_column_css';
wwv_flow_imp.g_varchar2_table(64) := '_classes css_code_vc2'||wwv_flow.LF||
'             ,to_clob(pr.grid_column_css_classes) css_code_clob'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(65) := '''grid_column_css_classes'' css_code_type'||wwv_flow.LF||
'             ,''region'' component_type'||wwv_flow.LF||
'             ,pr.displ';
wwv_flow_imp.g_varchar2_table(66) := 'ay_sequence component_number'||wwv_flow.LF||
'      from apex_application_page_regions pr'||wwv_flow.LF||
'      where pr.grid_column_';
wwv_flow_imp.g_varchar2_table(67) := 'css_classes is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region - region_css_classes'||wwv_flow.LF||
'      select pr.applica';
wwv_flow_imp.g_varchar2_table(68) := 'tion_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name || '' - Region CSS Classes ('' || pr.reg';
wwv_flow_imp.g_varchar2_table(69) := 'ion_id || '')'' component_name'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,pr.region_css_classes css_c';
wwv_flow_imp.g_varchar2_table(70) := 'ode_vc2'||wwv_flow.LF||
'             ,to_clob(pr.region_css_classes) css_code_clob'||wwv_flow.LF||
'             ,''region_css_classes';
wwv_flow_imp.g_varchar2_table(71) := ''' css_code_type'||wwv_flow.LF||
'             ,''region'' component_type'||wwv_flow.LF||
'             ,pr.display_sequence component_nu';
wwv_flow_imp.g_varchar2_table(72) := 'mber'||wwv_flow.LF||
'      from apex_application_page_regions pr'||wwv_flow.LF||
'      where pr.region_css_classes is not null'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(73) := ' union all'||wwv_flow.LF||
'      -- Region - icon_css_classes'||wwv_flow.LF||
'      select pr.application_id'||wwv_flow.LF||
'             ,pr.page_i';
wwv_flow_imp.g_varchar2_table(74) := 'd'||wwv_flow.LF||
'             ,pr.region_name || '' - Icon CSS Classes'' component_name'||wwv_flow.LF||
'             ,1 best_practice';
wwv_flow_imp.g_varchar2_table(75) := ''||wwv_flow.LF||
'             ,pr.icon_css_classes css_code_vc2'||wwv_flow.LF||
'             ,to_clob(pr.icon_css_classes) css_code_';
wwv_flow_imp.g_varchar2_table(76) := 'clob'||wwv_flow.LF||
'             ,''icon_css_classes'' css_code_type'||wwv_flow.LF||
'             ,''region'' component_type'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(77) := '   ,pr.display_sequence component_number'||wwv_flow.LF||
'      from apex_application_page_regions pr'||wwv_flow.LF||
'      where pr.';
wwv_flow_imp.g_varchar2_table(78) := 'icon_css_classes is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region - Header Text'||wwv_flow.LF||
'      select pr.applicati';
wwv_flow_imp.g_varchar2_table(79) := 'on_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name || '' - Region Header Text'' component_nam';
wwv_flow_imp.g_varchar2_table(80) := 'e'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,pr.region_header_text css_code_vc2'||wwv_flow.LF||
'             ,to_cl';
wwv_flow_imp.g_varchar2_table(81) := 'ob(pr.region_header_text) css_code_clob'||wwv_flow.LF||
'             ,''region_header_text'' css_code_type'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(82) := '  ,''region'' component_type'||wwv_flow.LF||
'             ,pr.display_sequence component_number'||wwv_flow.LF||
'      from apex_applic';
wwv_flow_imp.g_varchar2_table(83) := 'ation_page_regions pr'||wwv_flow.LF||
'      where pr.region_header_text is not null'||wwv_flow.LF||
'      and instr(lower(pr.region_';
wwv_flow_imp.g_varchar2_table(84) := 'header_text)'||wwv_flow.LF||
'              ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region - Footer Text'||wwv_flow.LF||
'      select pr';
wwv_flow_imp.g_varchar2_table(85) := '.application_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name || '' - Region Footer Text'' com';
wwv_flow_imp.g_varchar2_table(86) := 'ponent_name'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,pr.region_footer_text css_code_vc2'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(87) := '    ,to_clob(pr.region_footer_text) css_code_clob'||wwv_flow.LF||
'             ,''region_footer_text'' css_code_type'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(88) := '            ,''region'' component_type'||wwv_flow.LF||
'             ,pr.display_sequence component_number'||wwv_flow.LF||
'      from a';
wwv_flow_imp.g_varchar2_table(89) := 'pex_application_page_regions pr'||wwv_flow.LF||
'      where pr.region_header_text is not null'||wwv_flow.LF||
'      and instr(lower(';
wwv_flow_imp.g_varchar2_table(90) := 'pr.region_footer_text)'||wwv_flow.LF||
'              ,''css'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Dynamic Actions - set CSS'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(91) := '      select d.application_id'||wwv_flow.LF||
'             ,d.page_id'||wwv_flow.LF||
'             ,d.dynamic_action_name || '' - '' |';
wwv_flow_imp.g_varchar2_table(92) := '| a.dynamic_action_event_result || '' ('' || a.action_sequence || '')'' component_name'||wwv_flow.LF||
'             ,1 b';
wwv_flow_imp.g_varchar2_table(93) := 'est_practice'||wwv_flow.LF||
'             ,a.attribute_01 || '' '' || a.attribute_02 css_code_vc2'||wwv_flow.LF||
'             ,to_clo';
wwv_flow_imp.g_varchar2_table(94) := 'b(a.attribute_01 || '' '' || a.attribute_02) css_code_clob'||wwv_flow.LF||
'             ,lower(a.action_code) css_code';
wwv_flow_imp.g_varchar2_table(95) := '_type'||wwv_flow.LF||
'             ,''dynamic_action'' component_type'||wwv_flow.LF||
'             ,d.dynamic_action_sequence componen';
wwv_flow_imp.g_varchar2_table(96) := 't_number'||wwv_flow.LF||
'      from apex_application_page_da d'||wwv_flow.LF||
'      join apex_application_page_da_acts a on a.dynam';
wwv_flow_imp.g_varchar2_table(97) := 'ic_action_id = d.dynamic_action_id'||wwv_flow.LF||
'      where a.action_code = ''NATIVE_SET_CSS'''||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(98) := '  -- Dynamic Actions - add Class'||wwv_flow.LF||
'      select d.application_id'||wwv_flow.LF||
'             ,d.page_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(99) := ',d.dynamic_action_name || '' - '' || a.dynamic_action_event_result || '' ('' || a.action_sequence || '')''';
wwv_flow_imp.g_varchar2_table(100) := ' component_name'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,a.attribute_01 css_code_vc2'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(101) := ' ,to_clob(a.attribute_01) css_code_clob'||wwv_flow.LF||
'             ,lower(a.action_code) css_code_type'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(102) := '  ,''dynamic_action'' component_type'||wwv_flow.LF||
'             ,a.action_sequence component_number'||wwv_flow.LF||
'      from apex_';
wwv_flow_imp.g_varchar2_table(103) := 'application_page_da d'||wwv_flow.LF||
'      join apex_application_page_da_acts a on a.dynamic_action_id = d.dynamic_';
wwv_flow_imp.g_varchar2_table(104) := 'action_id'||wwv_flow.LF||
'      where a.action_code = ''NATIVE_ADD_CLASS'') c on c.application_id = app.application_id';
wwv_flow_imp.g_varchar2_table(105) := ''||wwv_flow.LF||
'                                              and c.page_id = app.page_id'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164064412331048423)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_css_v'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164064482561048424)
,p_script_id=>wwv_flow_imp.id(164064412331048423)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_CSS_V'
);
wwv_flow_imp.component_end;
end;
/
