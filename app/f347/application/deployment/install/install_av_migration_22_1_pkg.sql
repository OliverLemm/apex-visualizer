prompt --application/deployment/install/install_av_migration_22_1_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_22_1_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_22_1_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version constant varchar2(10 char) :=';
wwv_flow_imp.g_varchar2_table(2) := ' ''22.1'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 12.05.2025'||wwv_flow.LF||
'  -- Purpose : checks for apex ve';
wwv_flow_imp.g_varchar2_table(3) := 'rsion 22.1'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_p';
wwv_flow_imp.g_varchar2_table(4) := 'riorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_2'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(5) := '    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migratio';
wwv_flow_imp.g_varchar2_table(6) := 'ns_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_m';
wwv_flow_imp.g_varchar2_table(7) := 'igration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_';
wwv_flow_imp.g_varchar2_table(8) := '1_6'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return a';
wwv_flow_imp.g_varchar2_table(9) := 'v_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in numbe';
wwv_flow_imp.g_varchar2_table(10) := 'r'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ';
wwv_flow_imp.g_varchar2_table(11) := 'ptf_des_8_1_13'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(12) := ' ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_22_1_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace packag';
wwv_flow_imp.g_varchar2_table(13) := 'e body av_migration_22_1_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in numb';
wwv_flow_imp.g_varchar2_table(14) := 'er'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migr';
wwv_flow_imp.g_varchar2_table(15) := 'ation av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c';
wwv_flow_imp.g_varchar2_table(16) := '_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select page_id'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(17) := ' ,page_name'||wwv_flow.LF||
'                      ,region_name'||wwv_flow.LF||
'                      ,display_position'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(18) := '            ,display_position_code'||wwv_flow.LF||
'                from apex_application_page_regions r'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(19) := '      where display_position_code in (''BODY_1'''||wwv_flow.LF||
'                                               ,''BOD';
wwv_flow_imp.g_varchar2_table(20) := 'Y_2'''||wwv_flow.LF||
'                                               ,''BODY_3'''||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(21) := '           ,''AFTER_HEADER'''||wwv_flow.LF||
'                                               ,''BEFORE_FOOTER'')'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '          and application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_v';
wwv_flow_imp.g_varchar2_table(23) := 'ersion             => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type               ';
wwv_flow_imp.g_varchar2_table(24) := '   => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(25) := 'ter_no            => ''8.1.1'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''D';
wwv_flow_imp.g_varchar2_table(26) := 'esupported Page Positions'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''The';
wwv_flow_imp.g_varchar2_table(27) := ' following page positions are desupported and display as Legacy in Page Designer: Body 1, Body 2, Bo';
wwv_flow_imp.g_varchar2_table(28) := 'dy 3, After Header, Before Footer'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link         ';
wwv_flow_imp.g_varchar2_table(29) := ' => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-379DEAC6-FE4D-44DE-A';
wwv_flow_imp.g_varchar2_table(30) := '2E1-041DD648F8F4'''||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(31) := '                           ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i';
wwv_flow_imp.g_varchar2_table(32) := '_attribute_value          => m.display_position'||wwv_flow.LF||
'                                     ,i_migration_e';
wwv_flow_imp.g_varchar2_table(33) := 'ffort_in_days => av_migration_pkg.c_effort_in_days_10_minutes'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(34) := ',i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(35) := '                  ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_p';
wwv_flow_imp.g_varchar2_table(36) := 'age_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name             ';
wwv_flow_imp.g_varchar2_table(37) := '   => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.region_name';
wwv_flow_imp.g_varchar2_table(38) := ''||wwv_flow.LF||
'                                     ,i_component_type           => av_migration_pkg.c_component_t';
wwv_flow_imp.g_varchar2_table(39) := 'ype_region'||wwv_flow.LF||
'                                     ,i_region_name              => m.region_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(40) := '                                ,i_item_name                => null'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(41) := '      ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2      ';
wwv_flow_imp.g_varchar2_table(42) := '        => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(43) := '                            ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(44) := '     end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_1;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_2'||wwv_flow.LF||
'  (';
wwv_flow_imp.g_varchar2_table(45) := ''||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrati';
wwv_flow_imp.g_varchar2_table(46) := 'ons_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prioriti';
wwv_flow_imp.g_varchar2_table(47) := 'es'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (se';
wwv_flow_imp.g_varchar2_table(48) := 'lect b.page_id'||wwv_flow.LF||
'                      ,b.page_name'||wwv_flow.LF||
'                      ,b.region'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(49) := '       ,b.button_name'||wwv_flow.LF||
'                      ,b.label'||wwv_flow.LF||
'                      ,b.display_position'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(50) := '              from apex_application_page_buttons b'||wwv_flow.LF||
'                where b.display_position_code in';
wwv_flow_imp.g_varchar2_table(51) := ' (''TOP'''||wwv_flow.LF||
'                                                 ,''BOTTOM'''||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(52) := '                  ,''BELOW_BOX'''||wwv_flow.LF||
'                                                 ,''ABOVE_BOX'')'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(53) := '            and b.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_ap';
wwv_flow_imp.g_varchar2_table(54) := 'ex_version             => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type           ';
wwv_flow_imp.g_varchar2_table(55) := '       => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_';
wwv_flow_imp.g_varchar2_table(56) := 'chapter_no            => ''8.1.2'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          =';
wwv_flow_imp.g_varchar2_table(57) := '> ''Desupported Region Positions'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          =';
wwv_flow_imp.g_varchar2_table(58) := '> ''The following region positions used for button positioning are desupported and display as Legacy ';
wwv_flow_imp.g_varchar2_table(59) := 'in Page Designer: Top of Region, Bottom of Region, Above Region, Below Region'''||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(60) := '                 ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.';
wwv_flow_imp.g_varchar2_table(61) := '1/htmrn/index.html#GUID-728F5525-51BD-429C-9651-5C53CB7CA14B'''||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(62) := ',i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             =';
wwv_flow_imp.g_varchar2_table(63) := '> 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.display_position'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(64) := '                              ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_3_min';
wwv_flow_imp.g_varchar2_table(65) := 'utes'||wwv_flow.LF||
'                                     ,i_migration_priority       => av_migration_pkg.c_migrati';
wwv_flow_imp.g_varchar2_table(66) := 'on_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id';
wwv_flow_imp.g_varchar2_table(67) := ''||wwv_flow.LF||
'                                     ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(68) := '                  ,i_page_name                => m.page_name'||wwv_flow.LF||
'                                     ,';
wwv_flow_imp.g_varchar2_table(69) := 'i_component_name           => m.button_name'||wwv_flow.LF||
'                                     ,i_component_type ';
wwv_flow_imp.g_varchar2_table(70) := '          => av_migration_pkg.c_component_type_button'||wwv_flow.LF||
'                                     ,i_regio';
wwv_flow_imp.g_varchar2_table(71) := 'n_name              => m.region'||wwv_flow.LF||
'                                     ,i_item_name                =>';
wwv_flow_imp.g_varchar2_table(72) := ' null'||wwv_flow.LF||
'                                     ,i_item_label               => null'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(73) := '                  ,i_js_code_vc2              => null'||wwv_flow.LF||
'                                     ,i_plsql';
wwv_flow_imp.g_varchar2_table(74) := '_code_vc2           => null'||wwv_flow.LF||
'                                     ,i_css_code_vc2             => nul';
wwv_flow_imp.g_varchar2_table(75) := 'l);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_';
wwv_flow_imp.g_varchar2_table(76) := '1_2;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorit';
wwv_flow_imp.g_varchar2_table(77) := 'ies in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  be';
wwv_flow_imp.g_varchar2_table(78) := 'gin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recom';
wwv_flow_imp.g_varchar2_table(79) := 'med) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select page_id'||wwv_flow.LF||
'                      ,page_name'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(80) := '        ,component_name'||wwv_flow.LF||
'                      ,component_type'||wwv_flow.LF||
'                      ,code_vc2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(81) := '             from av_p0708_legacy_subst_strings_v'||wwv_flow.LF||
'                where application_id = i_app_id)';
wwv_flow_imp.g_varchar2_table(82) := ''||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(83) := '                                  ,i_rn_type                  => av_migration_pkg.c_migration_type_d';
wwv_flow_imp.g_varchar2_table(84) := 'esupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''8.1.4'''||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(85) := '                          ,i_rn_chapter_name          => ''Legacy Substitution Strings Desupported'''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(86) := '                                     ,i_rn_chapter_text          => ''As of this release, the followi';
wwv_flow_imp.g_varchar2_table(87) := 'ng apex.env substitution strings are desupported: APP_IMAGES, IMAGE_PREFIX, THEME_DB_IMAGES, THEME_I';
wwv_flow_imp.g_varchar2_table(88) := 'MAGES, WORKSPACE_IMAGES. While the legacy substitutions still function, Oracle recommends developers';
wwv_flow_imp.g_varchar2_table(89) := ' update their environments to use updated substitutions (listed below).'''||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(90) := '           ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmr';
wwv_flow_imp.g_varchar2_table(91) := 'n/index.html#GUID-206A76B3-1BE6-44B2-B54D-57494DEDEE0C'''||wwv_flow.LF||
'                                     ,i_che';
wwv_flow_imp.g_varchar2_table(92) := 'ck_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(93) := '                                    ,i_attribute_value          => m.code_vc2'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(94) := '                ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_3_minutes'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(95) := '                             ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_';
wwv_flow_imp.g_varchar2_table(96) := 'recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(97) := '                         ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                                 ';
wwv_flow_imp.g_varchar2_table(98) := '    ,i_page_name                => m.page_name'||wwv_flow.LF||
'                                     ,i_component_na';
wwv_flow_imp.g_varchar2_table(99) := 'me           => m.component_name'||wwv_flow.LF||
'                                     ,i_component_type           =';
wwv_flow_imp.g_varchar2_table(100) := '> m.component_type'||wwv_flow.LF||
'                                     ,i_region_name              => null'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(101) := '                               ,i_item_name                => null'||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(102) := '     ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2       ';
wwv_flow_imp.g_varchar2_table(103) := '       => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(104) := '                           ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(105) := '    end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_4;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_6'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(106) := '    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migratio';
wwv_flow_imp.g_varchar2_table(107) := 'ns_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prioritie';
wwv_flow_imp.g_varchar2_table(108) := 's'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (sel';
wwv_flow_imp.g_varchar2_table(109) := 'ect p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'                      ,p.region'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(110) := '      ,p.item_name'||wwv_flow.LF||
'                      ,p.label'||wwv_flow.LF||
'                      ,p.source_post_computation';
wwv_flow_imp.g_varchar2_table(111) := ''||wwv_flow.LF||
'                from apex_application_page_items p'||wwv_flow.LF||
'                where p.source_post_computatio';
wwv_flow_imp.g_varchar2_table(112) := 'n is not null'||wwv_flow.LF||
'                and p.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := ';
wwv_flow_imp.g_varchar2_table(113) := 'av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                                     ,i';
wwv_flow_imp.g_varchar2_table(114) := '_rn_type                  => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(115) := '             ,i_rn_chapter_no            => ''8.1.6'''||wwv_flow.LF||
'                                     ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(116) := 'ter_name          => ''Post Calculation for Page Items Desupported '''||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(117) := '      ,i_rn_chapter_text          => ''The Post Calculation functionality of page items is desupporte';
wwv_flow_imp.g_varchar2_table(118) := 'd. This functionality remains for existing page items where it has been used, but you can no longer ';
wwv_flow_imp.g_varchar2_table(119) := 'set it for new page items nor add it to existing page items where it has not been used in the past.''';
wwv_flow_imp.g_varchar2_table(120) := ''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => ''https://docs.oracle.com/en/da';
wwv_flow_imp.g_varchar2_table(121) := 'tabase/oracle/apex/22.1/htmrn/index.html#GUID-9EB2681D-0DD3-4CA6-AD8F-8EB276EE2581'''||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(122) := '                      ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_chec';
wwv_flow_imp.g_varchar2_table(123) := 'k_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.sou';
wwv_flow_imp.g_varchar2_table(124) := 'rce_post_computation'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => av_migrati';
wwv_flow_imp.g_varchar2_table(125) := 'on_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => ';
wwv_flow_imp.g_varchar2_table(126) := 'av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id    ';
wwv_flow_imp.g_varchar2_table(127) := '               => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id                  => m.pa';
wwv_flow_imp.g_varchar2_table(128) := 'ge_id'||wwv_flow.LF||
'                                     ,i_page_name                => m.page_name'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(129) := '                         ,i_component_name           => m.item_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(130) := '      ,i_component_type           => av_migration_pkg.c_component_type_item'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(131) := '              ,i_region_name              => null'||wwv_flow.LF||
'                                     ,i_item_name';
wwv_flow_imp.g_varchar2_table(132) := '                => null'||wwv_flow.LF||
'                                     ,i_item_label               => null'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(133) := '                                    ,i_js_code_vc2              => null'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(134) := '          ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                                     ,i_css_code_vc2 ';
wwv_flow_imp.g_varchar2_table(135) := '            => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;';
wwv_flow_imp.g_varchar2_table(136) := ''||wwv_flow.LF||
'  end ptf_des_8_1_6;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(137) := '_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_';
wwv_flow_imp.g_varchar2_table(138) := 'migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migratio';
wwv_flow_imp.g_varchar2_table(139) := 'n_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select d.page_id'||wwv_flow.LF||
'                      ,d.pag';
wwv_flow_imp.g_varchar2_table(140) := 'e_name'||wwv_flow.LF||
'                      ,d.dynamic_action_name'||wwv_flow.LF||
'                      ,d.affected_elements'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(141) := '              from apex_application_page_da_acts d'||wwv_flow.LF||
'                where d.affected_elements_type_c';
wwv_flow_imp.g_varchar2_table(142) := 'ode = ''ITEM'''||wwv_flow.LF||
'                and d.action_code in (''NATIVE_SHOW'''||wwv_flow.LF||
'                                 ';
wwv_flow_imp.g_varchar2_table(143) := '   ,''NATIVE_HIDE'')'||wwv_flow.LF||
'                and d.attribute_01 = ''Y'''||wwv_flow.LF||
'                and d.application_id =';
wwv_flow_imp.g_varchar2_table(144) := ' i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_v';
wwv_flow_imp.g_varchar2_table(145) := 'ersion'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pkg.c_migra';
wwv_flow_imp.g_varchar2_table(146) := 'tion_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''8.1.7'''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(147) := '                                     ,i_rn_chapter_name          => ''Show / Hide All Page Items On S';
wwv_flow_imp.g_varchar2_table(148) := 'ame Line Attributes Desupported'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          =';
wwv_flow_imp.g_varchar2_table(149) := '> ''In Dynamic Actions, the Show and Hide actions have attributes Show all page items on same line an';
wwv_flow_imp.g_varchar2_table(150) := 'd Hide all page items on same line, respectively. These attributes were designed for forms with a ta';
wwv_flow_imp.g_varchar2_table(151) := 'ble-based layout. Because Universal Theme no longer uses table-based layout, these attributes are de';
wwv_flow_imp.g_varchar2_table(152) := 'supported.This functionality remains for existing Dynamic Actions where it was set to Yes, but devel';
wwv_flow_imp.g_varchar2_table(153) := 'opers cannot select it for new Dynamic Actions.'''||wwv_flow.LF||
'                                     ,i_rn_chapter';
wwv_flow_imp.g_varchar2_table(154) := '_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-B4A888';
wwv_flow_imp.g_varchar2_table(155) := 'B4-AAFB-4556-8958-9644981301FC'''||wwv_flow.LF||
'                                     ,i_check_integrated         =>';
wwv_flow_imp.g_varchar2_table(156) := ' 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(157) := '            ,i_attribute_value          => null'||wwv_flow.LF||
'                                     ,i_migration_e';
wwv_flow_imp.g_varchar2_table(158) := 'ffort_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_m';
wwv_flow_imp.g_varchar2_table(159) := 'igration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(160) := '              ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_page_';
wwv_flow_imp.g_varchar2_table(161) := 'id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name                =';
wwv_flow_imp.g_varchar2_table(162) := '> m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.dynamic_action_';
wwv_flow_imp.g_varchar2_table(163) := 'name'||wwv_flow.LF||
'                                     ,i_component_type           => av_migration_pkg.c_compone';
wwv_flow_imp.g_varchar2_table(164) := 'nt_type_dynamic_action'||wwv_flow.LF||
'                                     ,i_region_name              => null'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(165) := '                                   ,i_item_name                => null'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(166) := '         ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2   ';
wwv_flow_imp.g_varchar2_table(167) := '           => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(168) := '                               ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);';
wwv_flow_imp.g_varchar2_table(169) := ''||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_7;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_13'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(170) := '  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_mig';
wwv_flow_imp.g_varchar2_table(171) := 'rations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prio';
wwv_flow_imp.g_varchar2_table(172) := 'rities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in';
wwv_flow_imp.g_varchar2_table(173) := ' (select page_id'||wwv_flow.LF||
'                      ,page_name'||wwv_flow.LF||
'                      ,region_name'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(174) := '          ,icon_view_custom'||wwv_flow.LF||
'                      ,detail_view_for_each_row'||wwv_flow.LF||
'                from a';
wwv_flow_imp.g_varchar2_table(175) := 'pex_appl_page_igs'||wwv_flow.LF||
'                where application_id = i_app_id'||wwv_flow.LF||
'                and (regexp_like';
wwv_flow_imp.g_varchar2_table(176) := '(icon_view_custom'||wwv_flow.LF||
'                               ,''&'' || ''\w+_LABEL\.'''||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(177) := '    ,''i'') or --'||wwv_flow.LF||
'                      regexp_like(detail_view_for_each_row'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(178) := '        ,''&'' || ''\w+_LABEL\.'''||wwv_flow.LF||
'                               ,''i'')))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migrati';
wwv_flow_imp.g_varchar2_table(179) := 'on := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                                 ';
wwv_flow_imp.g_varchar2_table(180) := '    ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(181) := '                   ,i_rn_chapter_no            => ''8.1.13'''||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(182) := 'rn_chapter_name          => ''Syntax {COLUMN_NAME}_LABEL in Interactive Grid Icon and Detail Views De';
wwv_flow_imp.g_varchar2_table(183) := 'supported'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''The &{COLUMN_NAME}_';
wwv_flow_imp.g_varchar2_table(184) := 'LABEL. syntax, which is used to reference the column label in Interactive Grid Detail and Icon views';
wwv_flow_imp.g_varchar2_table(185) := ', is desupported. Instead, use &{COLUMN_NAME}%LABEL.'''||wwv_flow.LF||
'                                     ,i_rn_ch';
wwv_flow_imp.g_varchar2_table(186) := 'apter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-F';
wwv_flow_imp.g_varchar2_table(187) := '41C725D-0D28-4E1C-8786-BE986885C256'''||wwv_flow.LF||
'                                     ,i_check_integrated      ';
wwv_flow_imp.g_varchar2_table(188) := '   => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(189) := '                 ,i_attribute_value          => null'||wwv_flow.LF||
'                                     ,i_migrat';
wwv_flow_imp.g_varchar2_table(190) := 'ion_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(191) := ' ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(192) := '                   ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(193) := 'page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name            ';
wwv_flow_imp.g_varchar2_table(194) := '    => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => null'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(195) := '                               ,i_component_type           => av_migration_pkg.c_component_type_regi';
wwv_flow_imp.g_varchar2_table(196) := 'on'||wwv_flow.LF||
'                                     ,i_region_name              => null'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(197) := '               ,i_item_name                => null'||wwv_flow.LF||
'                                     ,i_item_lab';
wwv_flow_imp.g_varchar2_table(198) := 'el               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => null'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(199) := '                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(200) := '           ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(201) := '   end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_13;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_22_1_pkg;'||wwv_flow.LF||
'/ ';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(71862450479261275)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_22_1_pkg'
,p_sequence=>230
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(71862513453261276)
,p_script_id=>wwv_flow_imp.id(71862450479261275)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_MIGRATION_22_1_PKG'
);
wwv_flow_imp.component_end;
end;
/
