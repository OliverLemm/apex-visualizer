prompt --application/deployment/install/install_av_migration_20_2_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_20_2_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_20_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version constant varchar2(10 char) := ''';
wwv_flow_imp.g_varchar2_table(2) := '20.2'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 14.05.2025'||wwv_flow.LF||
'  -- Purpose : checks for apex version ';
wwv_flow_imp.g_varchar2_table(3) := '20.2'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities i';
wwv_flow_imp.g_varchar2_table(4) := 'n varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_5'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id     ';
wwv_flow_imp.g_varchar2_table(5) := '          in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in va';
wwv_flow_imp.g_varchar2_table(7) := 'rchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_8'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id         ';
wwv_flow_imp.g_varchar2_table(8) := '      in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'en';
wwv_flow_imp.g_varchar2_table(9) := 'd av_migration_20_2_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body av_migration_20_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_d';
wwv_flow_imp.g_varchar2_table(10) := 'es_7_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return ';
wwv_flow_imp.g_varchar2_table(11) := 'av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_pr';
wwv_flow_imp.g_varchar2_table(12) := 'iorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in ';
wwv_flow_imp.g_varchar2_table(13) := '(select p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'                      ,p.component_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(14) := '               ,p.component_type'||wwv_flow.LF||
'                      ,p.plsql_code_vc2'||wwv_flow.LF||
'                from av_pls';
wwv_flow_imp.g_varchar2_table(15) := 'ql_v p'||wwv_flow.LF||
'                where instr(upper(p.plsql_code_clob)'||wwv_flow.LF||
'                           ,''APEX_UTIL.S';
wwv_flow_imp.g_varchar2_table(16) := 'TRING_TO_TABLE'') > 0'||wwv_flow.LF||
'                and p.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration';
wwv_flow_imp.g_varchar2_table(17) := ' := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(18) := ' ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(19) := '               ,i_rn_chapter_no            => ''7.1.4'''||wwv_flow.LF||
'                                     ,i_rn_cha';
wwv_flow_imp.g_varchar2_table(20) := 'pter_name          => ''APEX_UTIL.STRING_TO_TABLE Function Desupported'''||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(21) := '        ,i_rn_chapter_text          => ''APEX_UTIL.STRING_TO_TABLE is desupported. Use APEX_STRING.ST';
wwv_flow_imp.g_varchar2_table(22) := 'RING_TO_TABLE instead.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => ''https:/';
wwv_flow_imp.g_varchar2_table(23) := '/docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-6709BB89-9E72-46D';
wwv_flow_imp.g_varchar2_table(24) := 'F-B6DB-B28E6F81827F'''||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(25) := '                            ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i';
wwv_flow_imp.g_varchar2_table(26) := '_attribute_value          => m.plsql_code_vc2'||wwv_flow.LF||
'                                     ,i_migration_effo';
wwv_flow_imp.g_varchar2_table(27) := 'rt_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migra';
wwv_flow_imp.g_varchar2_table(28) := 'tion_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(29) := '         ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id    ';
wwv_flow_imp.g_varchar2_table(30) := '              => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name                => m.pag';
wwv_flow_imp.g_varchar2_table(31) := 'e_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.component_name'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(32) := '                             ,i_component_type           => m.component_type'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(33) := '              ,i_region_name              => null'||wwv_flow.LF||
'                                     ,i_item_name ';
wwv_flow_imp.g_varchar2_table(34) := '               => null'||wwv_flow.LF||
'                                     ,i_item_label               => null'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(35) := '                                 ,i_js_code_vc2              => null'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(36) := '      ,i_plsql_code_vc2           => m.plsql_code_vc2'||wwv_flow.LF||
'                                     ,i_css_co';
wwv_flow_imp.g_varchar2_table(37) := 'de_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    retur';
wwv_flow_imp.g_varchar2_table(38) := 'n;'||wwv_flow.LF||
'  end ptf_des_7_1_4;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_5'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_mig';
wwv_flow_imp.g_varchar2_table(39) := 'ration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migrati';
wwv_flow_imp.g_varchar2_table(40) := 'on_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority';
wwv_flow_imp.g_varchar2_table(41) := '_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(42) := '                ,p.component_name'||wwv_flow.LF||
'                      ,p.component_type'||wwv_flow.LF||
'                      ,p.p';
wwv_flow_imp.g_varchar2_table(43) := 'lsql_code_vc2'||wwv_flow.LF||
'                from av_plsql_v p'||wwv_flow.LF||
'                where instr(upper(p.plsql_code_clob)';
wwv_flow_imp.g_varchar2_table(44) := ''||wwv_flow.LF||
'                           ,''APEX_UTIL.TABLE_TO_STRING'') > 0'||wwv_flow.LF||
'                and p.application_id =';
wwv_flow_imp.g_varchar2_table(45) := ' i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_ver';
wwv_flow_imp.g_varchar2_table(46) := 'sion'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pkg.c_migratio';
wwv_flow_imp.g_varchar2_table(47) := 'n_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''7.1.5'''||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(48) := '                                ,i_rn_chapter_name          => ''APEX_UTIL.TABLE_TO_STRING Function D';
wwv_flow_imp.g_varchar2_table(49) := 'esupported '''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''APEX_UTIL.TABLE_TO';
wwv_flow_imp.g_varchar2_table(50) := '_STRING is desupported. Use APEX_STRING.TABLE_TO_STRING instead.'''||wwv_flow.LF||
'                                  ';
wwv_flow_imp.g_varchar2_table(51) := '   ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/application-express/20';
wwv_flow_imp.g_varchar2_table(52) := '.2/htmrn/index.html#GUID-ABE4A449-842F-439F-B340-DBD623E67F69'''||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(53) := ',i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             =>';
wwv_flow_imp.g_varchar2_table(54) := ' 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.plsql_code_vc2'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(55) := '                         ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(56) := '                                  ,i_migration_priority       => av_migration_pkg.c_migration_priori';
wwv_flow_imp.g_varchar2_table(57) := 'ty_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(58) := '                            ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(59) := '      ,i_page_name                => m.page_name'||wwv_flow.LF||
'                                     ,i_component_n';
wwv_flow_imp.g_varchar2_table(60) := 'ame           => m.component_name'||wwv_flow.LF||
'                                     ,i_component_type           =';
wwv_flow_imp.g_varchar2_table(61) := '> m.component_type'||wwv_flow.LF||
'                                     ,i_region_name              => null'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(62) := '                             ,i_item_name                => null'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(63) := '  ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2           ';
wwv_flow_imp.g_varchar2_table(64) := '   => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => m.plsql_code_vc2'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(65) := '                                 ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration)';
wwv_flow_imp.g_varchar2_table(66) := ';'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_7_1_5;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(67) := 'i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(68) := '   pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(69) := '    ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select j.page_id';
wwv_flow_imp.g_varchar2_table(70) := ''||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'                      ,j.component_name'||wwv_flow.LF||
'                      ,j';
wwv_flow_imp.g_varchar2_table(71) := '.component_type'||wwv_flow.LF||
'                      ,j.js_code_vc2'||wwv_flow.LF||
'                from av_javascript_v j'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(72) := '        where (instr(lower(j.js_code_vc2)'||wwv_flow.LF||
'                            ,''openmodal'') > 0 or instr(low';
wwv_flow_imp.g_varchar2_table(73) := 'er(j.js_code_vc2)'||wwv_flow.LF||
'                                                       ,''closemodal'') > 0)'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(74) := '         and application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_vers';
wwv_flow_imp.g_varchar2_table(75) := 'ion             => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  =';
wwv_flow_imp.g_varchar2_table(76) := '> av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_n';
wwv_flow_imp.g_varchar2_table(77) := 'o            => ''7.1.7'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''openMod';
wwv_flow_imp.g_varchar2_table(78) := 'al and closeModal are Desupported '''||wwv_flow.LF||
'                                     ,i_rn_chapter_text         ';
wwv_flow_imp.g_varchar2_table(79) := ' => ''The undocumented theme specific functions openModal and closeModal are desupported. Use the ape';
wwv_flow_imp.g_varchar2_table(80) := 'x.theme.openRegion and apex.theme.closeRegion functions or the corresponding dynamic actions "Open R';
wwv_flow_imp.g_varchar2_table(81) := 'egion" and "Close Region."'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => ''htt';
wwv_flow_imp.g_varchar2_table(82) := 'ps://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-216EF074-6E0C';
wwv_flow_imp.g_varchar2_table(83) := '-4CCC-BC39-AFECE3674305'''||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(84) := '                                ,i_check_needed             => 1'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(85) := '  ,i_attribute_value          => m.js_code_vc2'||wwv_flow.LF||
'                                     ,i_migration_eff';
wwv_flow_imp.g_varchar2_table(86) := 'ort_in_days => av_migration_pkg.c_effort_in_days_10_minutes'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(87) := 'migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(88) := '              ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_page_i';
wwv_flow_imp.g_varchar2_table(89) := 'd                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name                => ';
wwv_flow_imp.g_varchar2_table(90) := 'm.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.component_name'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(91) := '                                  ,i_component_type           => m.component_type'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(92) := '                   ,i_region_name              => null'||wwv_flow.LF||
'                                     ,i_item_';
wwv_flow_imp.g_varchar2_table(93) := 'name                => null'||wwv_flow.LF||
'                                     ,i_item_label               => null';
wwv_flow_imp.g_varchar2_table(94) := ''||wwv_flow.LF||
'                                     ,i_js_code_vc2              => m.js_code_vc2'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(95) := '                    ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                                     ,i_css_';
wwv_flow_imp.g_varchar2_table(96) := 'code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    ret';
wwv_flow_imp.g_varchar2_table(97) := 'urn;'||wwv_flow.LF||
'  end ptf_des_7_1_7;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_8'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_m';
wwv_flow_imp.g_varchar2_table(98) := 'igration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migra';
wwv_flow_imp.g_varchar2_table(99) := 'tion_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priori';
wwv_flow_imp.g_varchar2_table(100) := 'ty_2_should) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select r.page_id'||wwv_flow.LF||
'                      ,r.page_name'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(101) := '                ,r.region_name'||wwv_flow.LF||
'                      ,r.source_type'||wwv_flow.LF||
'                from apex_applic';
wwv_flow_imp.g_varchar2_table(102) := 'ation_page_regions r'||wwv_flow.LF||
'                where r.source_type = ''Tabular Form'''||wwv_flow.LF||
'                and r.appl';
wwv_flow_imp.g_varchar2_table(103) := 'ication_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             =';
wwv_flow_imp.g_varchar2_table(104) := '> c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pk';
wwv_flow_imp.g_varchar2_table(105) := 'g.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''';
wwv_flow_imp.g_varchar2_table(106) := '7.1.8'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Tabular Forms Desupporte';
wwv_flow_imp.g_varchar2_table(107) := 'd'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''Creation of new legacy tabul';
wwv_flow_imp.g_varchar2_table(108) := 'ar forms is no longer supported as of this release. The APEX_ITEM API is considered legacy code and ';
wwv_flow_imp.g_varchar2_table(109) := 'should not be used for new development. Existing tabular forms continue to function. Use interactive';
wwv_flow_imp.g_varchar2_table(110) := ' grids instead of tabular forms.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          =';
wwv_flow_imp.g_varchar2_table(111) := '> ''https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-881C02C';
wwv_flow_imp.g_varchar2_table(112) := '3-211D-4FB3-8A02-F741FA1BBA35'''||wwv_flow.LF||
'                                     ,i_check_integrated         => 1';
wwv_flow_imp.g_varchar2_table(113) := ''||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(114) := '        ,i_attribute_value          => m.source_type'||wwv_flow.LF||
'                                     ,i_migrati';
wwv_flow_imp.g_varchar2_table(115) := 'on_effort_in_days => av_migration_pkg.c_effort_in_days_4_hours'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(116) := ',i_migration_priority       => av_migration_pkg.c_migration_priority_2_should'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(117) := '               ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_page_';
wwv_flow_imp.g_varchar2_table(118) := 'id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name                =>';
wwv_flow_imp.g_varchar2_table(119) := ' m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.region_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(120) := '                                ,i_component_type           => av_migration_pkg.c_component_type_reg';
wwv_flow_imp.g_varchar2_table(121) := 'ion'||wwv_flow.LF||
'                                     ,i_region_name              => m.region_name'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(122) := '                       ,i_item_name                => null'||wwv_flow.LF||
'                                     ,i_i';
wwv_flow_imp.g_varchar2_table(123) := 'tem_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => ';
wwv_flow_imp.g_varchar2_table(124) := 'null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(125) := '               ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(126) := '    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_7_1_8;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_20_2_pkg;'||wwv_flow.LF||
'/';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(71861942651259481)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_20_2_pkg'
,p_sequence=>220
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(71862000089259481)
,p_script_id=>wwv_flow_imp.id(71861942651259481)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_MIGRATION_20_2_PKG'
);
wwv_flow_imp.component_end;
end;
/
