prompt --application/deployment/install/install_av_migration_20_2_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_20_2_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_20_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version constant varchar2(10 char) :=';
wwv_flow_imp.g_varchar2_table(2) := ' ''20.2'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 14.05.2025'||wwv_flow.LF||
'  -- Purpose : checks for apex ve';
wwv_flow_imp.g_varchar2_table(3) := 'rsion 20.2'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_p';
wwv_flow_imp.g_varchar2_table(4) := 'riorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_5'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migratio';
wwv_flow_imp.g_varchar2_table(6) := 'ns_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_m';
wwv_flow_imp.g_varchar2_table(7) := 'igration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_';
wwv_flow_imp.g_varchar2_table(8) := '1_8'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return a';
wwv_flow_imp.g_varchar2_table(9) := 'v_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_20_2_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body av_m';
wwv_flow_imp.g_varchar2_table(10) := 'igration_20_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_m';
wwv_flow_imp.g_varchar2_table(11) := 'igration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_mi';
wwv_flow_imp.g_varchar2_table(12) := 'gration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_';
wwv_flow_imp.g_varchar2_table(13) := 'priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.page_id'||wwv_flow.LF||
'                      ,p.page_';
wwv_flow_imp.g_varchar2_table(14) := 'name'||wwv_flow.LF||
'                      ,p.component_name'||wwv_flow.LF||
'                      ,p.component_type'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(15) := '          ,p.plsql_code_vc2'||wwv_flow.LF||
'                from av_plsql_v p'||wwv_flow.LF||
'                where instr(upper(p.';
wwv_flow_imp.g_varchar2_table(16) := 'plsql_code_clob)'||wwv_flow.LF||
'                           ,''APEX_UTIL.STRING_TO_TABLE'') > 0'||wwv_flow.LF||
'                and ';
wwv_flow_imp.g_varchar2_table(17) := 'p.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version      ';
wwv_flow_imp.g_varchar2_table(18) := '       => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_mig';
wwv_flow_imp.g_varchar2_table(19) := 'ration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no      ';
wwv_flow_imp.g_varchar2_table(20) := '      => ''7.1.4'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''APEX_UTIL.STR';
wwv_flow_imp.g_varchar2_table(21) := 'ING_TO_TABLE Function Desupported'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text         ';
wwv_flow_imp.g_varchar2_table(22) := ' => ''APEX_UTIL.STRING_TO_TABLE is desupported. Use APEX_STRING.STRING_TO_TABLE instead.'''||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(23) := '                           ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracl';
wwv_flow_imp.g_varchar2_table(24) := 'e/application-express/20.2/htmrn/index.html#GUID-6709BB89-9E72-46DF-B6DB-B28E6F81827F'''||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(25) := '                         ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_c';
wwv_flow_imp.g_varchar2_table(26) := 'heck_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.';
wwv_flow_imp.g_varchar2_table(27) := 'plsql_code_vc2'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => av_migration_pkg';
wwv_flow_imp.g_varchar2_table(28) := '.c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => av_mig';
wwv_flow_imp.g_varchar2_table(29) := 'ration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id          ';
wwv_flow_imp.g_varchar2_table(30) := '         => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id                  => m.page_id';
wwv_flow_imp.g_varchar2_table(31) := ''||wwv_flow.LF||
'                                     ,i_page_name                => m.page_name'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(32) := '                   ,i_component_name           => m.component_name'||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(33) := '     ,i_component_type           => m.component_type'||wwv_flow.LF||
'                                     ,i_region';
wwv_flow_imp.g_varchar2_table(34) := '_name              => null'||wwv_flow.LF||
'                                     ,i_item_name                => null';
wwv_flow_imp.g_varchar2_table(35) := ''||wwv_flow.LF||
'                                     ,i_item_label               => null'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(36) := '             ,i_js_code_vc2              => null'||wwv_flow.LF||
'                                     ,i_plsql_code';
wwv_flow_imp.g_varchar2_table(37) := '_vc2           => m.plsql_code_vc2'||wwv_flow.LF||
'                                     ,i_css_code_vc2            ';
wwv_flow_imp.g_varchar2_table(38) := ' => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf';
wwv_flow_imp.g_varchar2_table(39) := '_des_7_1_4;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_5'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_';
wwv_flow_imp.g_varchar2_table(40) := 'priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t';
wwv_flow_imp.g_varchar2_table(41) := ';'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_';
wwv_flow_imp.g_varchar2_table(42) := '3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(43) := '                   ,p.component_name'||wwv_flow.LF||
'                      ,p.component_type'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(44) := ' ,p.plsql_code_vc2'||wwv_flow.LF||
'                from av_plsql_v p'||wwv_flow.LF||
'                where instr(upper(p.plsql_cod';
wwv_flow_imp.g_varchar2_table(45) := 'e_clob)'||wwv_flow.LF||
'                           ,''APEX_UTIL.TABLE_TO_STRING'') > 0'||wwv_flow.LF||
'                and p.applica';
wwv_flow_imp.g_varchar2_table(46) := 'tion_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             =>';
wwv_flow_imp.g_varchar2_table(47) := ' c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pk';
wwv_flow_imp.g_varchar2_table(48) := 'g.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ';
wwv_flow_imp.g_varchar2_table(49) := '''7.1.5'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''APEX_UTIL.TABLE_TO_STR';
wwv_flow_imp.g_varchar2_table(50) := 'ING Function Desupported '''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''APE';
wwv_flow_imp.g_varchar2_table(51) := 'X_UTIL.TABLE_TO_STRING is desupported. Use APEX_STRING.TABLE_TO_STRING instead.'''||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(52) := '                   ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/applic';
wwv_flow_imp.g_varchar2_table(53) := 'ation-express/20.2/htmrn/index.html#GUID-ABE4A449-842F-439F-B340-DBD623E67F69'''||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(54) := '                 ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_nee';
wwv_flow_imp.g_varchar2_table(55) := 'ded             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.plsql_co';
wwv_flow_imp.g_varchar2_table(56) := 'de_vc2'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => av_migration_pkg.c_effor';
wwv_flow_imp.g_varchar2_table(57) := 't_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => av_migration_p';
wwv_flow_imp.g_varchar2_table(58) := 'kg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                  ';
wwv_flow_imp.g_varchar2_table(59) := ' => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id                  => m.page_id'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(60) := '                              ,i_page_name                => m.page_name'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(61) := '           ,i_component_name           => m.component_name'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(62) := 'component_type           => m.component_type'||wwv_flow.LF||
'                                     ,i_region_name   ';
wwv_flow_imp.g_varchar2_table(63) := '           => null'||wwv_flow.LF||
'                                     ,i_item_name                => null'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(64) := '                               ,i_item_label               => null'||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(65) := '     ,i_js_code_vc2              => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2    ';
wwv_flow_imp.g_varchar2_table(66) := '       => m.plsql_code_vc2'||wwv_flow.LF||
'                                     ,i_css_code_vc2             => null';
wwv_flow_imp.g_varchar2_table(67) := ');'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_7_1';
wwv_flow_imp.g_varchar2_table(68) := '_5;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_prioriti';
wwv_flow_imp.g_varchar2_table(69) := 'es in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  beg';
wwv_flow_imp.g_varchar2_table(70) := 'in'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recomm';
wwv_flow_imp.g_varchar2_table(71) := 'ed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select j.page_id'||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(72) := '           ,j.component_name'||wwv_flow.LF||
'                      ,j.component_type'||wwv_flow.LF||
'                      ,j.js_c';
wwv_flow_imp.g_varchar2_table(73) := 'ode_vc2'||wwv_flow.LF||
'                from av_javascript_v j'||wwv_flow.LF||
'                where (instr(lower(j.js_code_vc2)'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(74) := '                            ,''openmodal'') > 0 or instr(lower(j.js_code_vc2)'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(75) := '                                ,''closemodal'') > 0)'||wwv_flow.LF||
'                and application_id = i_app_id)';
wwv_flow_imp.g_varchar2_table(76) := ''||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(77) := '                                  ,i_rn_type                  => av_migration_pkg.c_migration_type_d';
wwv_flow_imp.g_varchar2_table(78) := 'esupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''7.1.7'''||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(79) := '                          ,i_rn_chapter_name          => ''openModal and closeModal are Desupported ''';
wwv_flow_imp.g_varchar2_table(80) := ''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''The undocumented theme specif';
wwv_flow_imp.g_varchar2_table(81) := 'ic functions openModal and closeModal are desupported. Use the apex.theme.openRegion and apex.theme.';
wwv_flow_imp.g_varchar2_table(82) := 'closeRegion functions or the corresponding dynamic actions "Open Region" and "Close Region."'''||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(83) := '                                ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/';
wwv_flow_imp.g_varchar2_table(84) := 'oracle/application-express/20.2/htmrn/index.html#GUID-216EF074-6E0C-4CCC-BC39-AFECE3674305'''||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(85) := '                              ,i_check_integrated         => 1'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(86) := ' ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          ';
wwv_flow_imp.g_varchar2_table(87) := '=> m.js_code_vc2'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => av_migration_p';
wwv_flow_imp.g_varchar2_table(88) := 'kg.c_effort_in_days_10_minutes'||wwv_flow.LF||
'                                     ,i_migration_priority       => ';
wwv_flow_imp.g_varchar2_table(89) := 'av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id    ';
wwv_flow_imp.g_varchar2_table(90) := '               => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id                  => m.pa';
wwv_flow_imp.g_varchar2_table(91) := 'ge_id'||wwv_flow.LF||
'                                     ,i_page_name                => m.page_name'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(92) := '                         ,i_component_name           => m.component_name'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(93) := '           ,i_component_type           => m.component_type'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(94) := 'region_name              => null'||wwv_flow.LF||
'                                     ,i_item_name                =';
wwv_flow_imp.g_varchar2_table(95) := '> null'||wwv_flow.LF||
'                                     ,i_item_label               => null'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(96) := '                   ,i_js_code_vc2              => m.js_code_vc2'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(97) := '  ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                                     ,i_css_code_vc2         ';
wwv_flow_imp.g_varchar2_table(98) := '    => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ';
wwv_flow_imp.g_varchar2_table(99) := 'ptf_des_7_1_7;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_7_1_8'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migrati';
wwv_flow_imp.g_varchar2_table(100) := 'on_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migratio';
wwv_flow_imp.g_varchar2_table(101) := 'n_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priori';
wwv_flow_imp.g_varchar2_table(102) := 'ty_2_should) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select r.page_id'||wwv_flow.LF||
'                      ,r.page_name'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(103) := '                    ,r.region_name'||wwv_flow.LF||
'                      ,r.source_type'||wwv_flow.LF||
'                from apex_';
wwv_flow_imp.g_varchar2_table(104) := 'application_page_regions r'||wwv_flow.LF||
'                where r.source_type = ''Tabular Form'''||wwv_flow.LF||
'                an';
wwv_flow_imp.g_varchar2_table(105) := 'd r.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version    ';
wwv_flow_imp.g_varchar2_table(106) := '         => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_m';
wwv_flow_imp.g_varchar2_table(107) := 'igration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no    ';
wwv_flow_imp.g_varchar2_table(108) := '        => ''7.1.8'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Tabular For';
wwv_flow_imp.g_varchar2_table(109) := 'ms Desupported'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''Creation of ne';
wwv_flow_imp.g_varchar2_table(110) := 'w legacy tabular forms is no longer supported as of this release. The APEX_ITEM API is considered le';
wwv_flow_imp.g_varchar2_table(111) := 'gacy code and should not be used for new development. Existing tabular forms continue to function. U';
wwv_flow_imp.g_varchar2_table(112) := 'se interactive grids instead of tabular forms.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(113) := 'link          => ''https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.ht';
wwv_flow_imp.g_varchar2_table(114) := 'ml#GUID-881C02C3-211D-4FB3-8A02-F741FA1BBA35'''||wwv_flow.LF||
'                                     ,i_check_integra';
wwv_flow_imp.g_varchar2_table(115) := 'ted         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(116) := '                          ,i_attribute_value          => m.source_type'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(117) := '         ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_4_hours'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(118) := '                    ,i_migration_priority       => av_migration_pkg.c_migration_priority_2_should'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(119) := '                                    ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(120) := '              ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page';
wwv_flow_imp.g_varchar2_table(121) := '_name                => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name         ';
wwv_flow_imp.g_varchar2_table(122) := '  => m.region_name'||wwv_flow.LF||
'                                     ,i_component_type           => av_migration';
wwv_flow_imp.g_varchar2_table(123) := '_pkg.c_component_type_region'||wwv_flow.LF||
'                                     ,i_region_name              => m.';
wwv_flow_imp.g_varchar2_table(124) := 'region_name'||wwv_flow.LF||
'                                     ,i_item_name                => null'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(125) := '                        ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i';
wwv_flow_imp.g_varchar2_table(126) := '_js_code_vc2              => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           ';
wwv_flow_imp.g_varchar2_table(127) := '=> null'||wwv_flow.LF||
'                                     ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe ro';
wwv_flow_imp.g_varchar2_table(128) := 'w(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_7_1_8;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migra';
wwv_flow_imp.g_varchar2_table(129) := 'tion_20_2_pkg;'||wwv_flow.LF||
'/ ';
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
