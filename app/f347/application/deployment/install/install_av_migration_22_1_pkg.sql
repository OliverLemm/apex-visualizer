prompt --application/deployment/install/install_av_migration_22_1_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_22_1_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_22_1_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version constant varchar2(10 char) := ''';
wwv_flow_imp.g_varchar2_table(2) := '22.1'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 12.05.2025'||wwv_flow.LF||
'  -- Purpose : checks for apex version ';
wwv_flow_imp.g_varchar2_table(3) := '22.1'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities i';
wwv_flow_imp.g_varchar2_table(4) := 'n varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_2'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id     ';
wwv_flow_imp.g_varchar2_table(5) := '          in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;';
wwv_flow_imp.g_varchar2_table(6) := ''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in va';
wwv_flow_imp.g_varchar2_table(7) := 'rchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_6'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id         ';
wwv_flow_imp.g_varchar2_table(8) := '      in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(9) := 'function ptf_des_8_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varcha';
wwv_flow_imp.g_varchar2_table(10) := 'r2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_13'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id            ';
wwv_flow_imp.g_varchar2_table(11) := '   in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end a';
wwv_flow_imp.g_varchar2_table(12) := 'v_migration_22_1_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body av_migration_22_1_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_';
wwv_flow_imp.g_varchar2_table(13) := '8_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_';
wwv_flow_imp.g_varchar2_table(14) := 'migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prior';
wwv_flow_imp.g_varchar2_table(15) := 'ities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (se';
wwv_flow_imp.g_varchar2_table(16) := 'lect page_id'||wwv_flow.LF||
'                      ,page_name'||wwv_flow.LF||
'                      ,region_name'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(17) := '   ,display_position'||wwv_flow.LF||
'                      ,display_position_code'||wwv_flow.LF||
'                from apex_applicat';
wwv_flow_imp.g_varchar2_table(18) := 'ion_page_regions r'||wwv_flow.LF||
'                where display_position_code in (''BODY_1'''||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(19) := '                       ,''BODY_2'''||wwv_flow.LF||
'                                               ,''BODY_3'''||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(20) := '                                     ,''AFTER_HEADER'''||wwv_flow.LF||
'                                               ';
wwv_flow_imp.g_varchar2_table(21) := ',''BEFORE_FOOTER'')'||wwv_flow.LF||
'                and application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := a';
wwv_flow_imp.g_varchar2_table(22) := 'v_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                                     ,i_r';
wwv_flow_imp.g_varchar2_table(23) := 'n_type                  => av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(24) := '          ,i_rn_chapter_no            => ''8.1.1'''||wwv_flow.LF||
'                                     ,i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(25) := 'name          => ''Desupported Page Positions'''||wwv_flow.LF||
'                                     ,i_rn_chapter_tex';
wwv_flow_imp.g_varchar2_table(26) := 't          => ''The following page positions are desupported and display as Legacy in Page Designer: ';
wwv_flow_imp.g_varchar2_table(27) := 'Body 1, Body 2, Body 3, After Header, Before Footer'''||wwv_flow.LF||
'                                     ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(28) := 'ter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-379';
wwv_flow_imp.g_varchar2_table(29) := 'DEAC6-FE4D-44DE-A2E1-041DD648F8F4'''||wwv_flow.LF||
'                                     ,i_check_integrated         ';
wwv_flow_imp.g_varchar2_table(30) := '=> 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(31) := '            ,i_attribute_value          => m.display_position'||wwv_flow.LF||
'                                     ,';
wwv_flow_imp.g_varchar2_table(32) := 'i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_10_minutes'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(33) := '            ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(34) := '                             ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(35) := '      ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name    ';
wwv_flow_imp.g_varchar2_table(36) := '            => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.reg';
wwv_flow_imp.g_varchar2_table(37) := 'ion_name'||wwv_flow.LF||
'                                     ,i_component_type           => av_migration_pkg.c_comp';
wwv_flow_imp.g_varchar2_table(38) := 'onent_type_region'||wwv_flow.LF||
'                                     ,i_region_name              => m.region_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(39) := '                                     ,i_item_name                => null'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(40) := '          ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2   ';
wwv_flow_imp.g_varchar2_table(41) := '           => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(42) := '                             ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(43) := '    end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_1;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_2'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_ap';
wwv_flow_imp.g_varchar2_table(44) := 'p_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    p';
wwv_flow_imp.g_varchar2_table(45) := 'ipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(46) := ',av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select b.page_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(47) := '                   ,b.page_name'||wwv_flow.LF||
'                      ,b.region'||wwv_flow.LF||
'                      ,b.button_name';
wwv_flow_imp.g_varchar2_table(48) := ''||wwv_flow.LF||
'                      ,b.label'||wwv_flow.LF||
'                      ,b.display_position'||wwv_flow.LF||
'                from apex_';
wwv_flow_imp.g_varchar2_table(49) := 'application_page_buttons b'||wwv_flow.LF||
'                where b.display_position_code in (''TOP'''||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(50) := '                                ,''BOTTOM'''||wwv_flow.LF||
'                                                 ,''BELOW_B';
wwv_flow_imp.g_varchar2_table(51) := 'OX'''||wwv_flow.LF||
'                                                 ,''ABOVE_BOX'')'||wwv_flow.LF||
'                and b.application';
wwv_flow_imp.g_varchar2_table(52) := '_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_ape';
wwv_flow_imp.g_varchar2_table(53) := 'x_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pkg.c_mig';
wwv_flow_imp.g_varchar2_table(54) := 'ration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''8.1.2'''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(55) := '                                     ,i_rn_chapter_name          => ''Desupported Region Positions'''||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := '                                    ,i_rn_chapter_text          => ''The following region positions u';
wwv_flow_imp.g_varchar2_table(57) := 'sed for button positioning are desupported and display as Legacy in Page Designer: Top of Region, Bo';
wwv_flow_imp.g_varchar2_table(58) := 'ttom of Region, Above Region, Below Region'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link ';
wwv_flow_imp.g_varchar2_table(59) := '         => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-728F5525-51B';
wwv_flow_imp.g_varchar2_table(60) := 'D-429C-9651-5C53CB7CA14B'''||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(61) := '                                 ,i_check_needed             => 1'||wwv_flow.LF||
'                                  ';
wwv_flow_imp.g_varchar2_table(62) := '   ,i_attribute_value          => m.display_position'||wwv_flow.LF||
'                                     ,i_migrati';
wwv_flow_imp.g_varchar2_table(63) := 'on_effort_in_days => av_migration_pkg.c_effort_in_days_3_minutes'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(64) := '  ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(65) := '                   ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ,i_p';
wwv_flow_imp.g_varchar2_table(66) := 'age_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name              ';
wwv_flow_imp.g_varchar2_table(67) := '  => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.button_name'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(68) := '                                    ,i_component_type           => av_migration_pkg.c_component_type';
wwv_flow_imp.g_varchar2_table(69) := '_button'||wwv_flow.LF||
'                                     ,i_region_name              => m.region'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(70) := '                      ,i_item_name                => null'||wwv_flow.LF||
'                                     ,i_it';
wwv_flow_imp.g_varchar2_table(71) := 'em_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => n';
wwv_flow_imp.g_varchar2_table(72) := 'ull'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(73) := '              ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(74) := '   end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_2;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_4'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id           ';
wwv_flow_imp.g_varchar2_table(75) := '    in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(76) := ' l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,av_migration_p';
wwv_flow_imp.g_varchar2_table(77) := 'kg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select page_id'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(78) := '  ,page_name'||wwv_flow.LF||
'                      ,component_name'||wwv_flow.LF||
'                      ,component_type'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(79) := '           ,code_vc2'||wwv_flow.LF||
'                from av_p0708_legacy_subst_strings_v'||wwv_flow.LF||
'                where appl';
wwv_flow_imp.g_varchar2_table(80) := 'ication_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             =';
wwv_flow_imp.g_varchar2_table(81) := '> c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_migration_pk';
wwv_flow_imp.g_varchar2_table(82) := 'g.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''';
wwv_flow_imp.g_varchar2_table(83) := '8.1.4'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Legacy Substitution Stri';
wwv_flow_imp.g_varchar2_table(84) := 'ngs Desupported'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''As of this rel';
wwv_flow_imp.g_varchar2_table(85) := 'ease, the following apex.env substitution strings are desupported: APP_IMAGES, IMAGE_PREFIX, THEME_D';
wwv_flow_imp.g_varchar2_table(86) := 'B_IMAGES, THEME_IMAGES, WORKSPACE_IMAGES. While the legacy substitutions still function, Oracle reco';
wwv_flow_imp.g_varchar2_table(87) := 'mmends developers update their environments to use updated substitutions (listed below).'''||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(88) := '                           ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracl';
wwv_flow_imp.g_varchar2_table(89) := 'e/apex/22.1/htmrn/index.html#GUID-206A76B3-1BE6-44B2-B54D-57494DEDEE0C'''||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(90) := '         ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed      ';
wwv_flow_imp.g_varchar2_table(91) := '       => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => m.code_vc2'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(92) := '                            ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_3_minut';
wwv_flow_imp.g_varchar2_table(93) := 'es'||wwv_flow.LF||
'                                     ,i_migration_priority       => av_migration_pkg.c_migration_';
wwv_flow_imp.g_varchar2_table(94) := 'priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(95) := '                                  ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(96) := '            ,i_page_name                => m.page_name'||wwv_flow.LF||
'                                     ,i_compo';
wwv_flow_imp.g_varchar2_table(97) := 'nent_name           => m.component_name'||wwv_flow.LF||
'                                     ,i_component_type      ';
wwv_flow_imp.g_varchar2_table(98) := '     => m.component_type'||wwv_flow.LF||
'                                     ,i_region_name              => null'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(99) := '                                   ,i_item_name                => null'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(100) := '        ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2     ';
wwv_flow_imp.g_varchar2_table(101) := '         => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(102) := '                           ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(103) := '  end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_4;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_6'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_';
wwv_flow_imp.g_varchar2_table(104) := 'id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pip';
wwv_flow_imp.g_varchar2_table(105) := 'elined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,a';
wwv_flow_imp.g_varchar2_table(106) := 'v_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.page_id'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(107) := '                 ,p.page_name'||wwv_flow.LF||
'                      ,p.region'||wwv_flow.LF||
'                      ,p.item_name'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(108) := '                   ,p.label'||wwv_flow.LF||
'                      ,p.source_post_computation'||wwv_flow.LF||
'                from ap';
wwv_flow_imp.g_varchar2_table(109) := 'ex_application_page_items p'||wwv_flow.LF||
'                where p.source_post_computation is not null'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(110) := '    and p.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version';
wwv_flow_imp.g_varchar2_table(111) := '             => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => a';
wwv_flow_imp.g_varchar2_table(112) := 'v_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no  ';
wwv_flow_imp.g_varchar2_table(113) := '          => ''8.1.6'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Post Calcu';
wwv_flow_imp.g_varchar2_table(114) := 'lation for Page Items Desupported '''||wwv_flow.LF||
'                                     ,i_rn_chapter_text         ';
wwv_flow_imp.g_varchar2_table(115) := ' => ''The Post Calculation functionality of page items is desupported. This functionality remains for';
wwv_flow_imp.g_varchar2_table(116) := ' existing page items where it has been used, but you can no longer set it for new page items nor add';
wwv_flow_imp.g_varchar2_table(117) := ' it to existing page items where it has not been used in the past.'''||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(118) := '     ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/inde';
wwv_flow_imp.g_varchar2_table(119) := 'x.html#GUID-9EB2681D-0DD3-4CA6-AD8F-8EB276EE2581'''||wwv_flow.LF||
'                                     ,i_check_inte';
wwv_flow_imp.g_varchar2_table(120) := 'grated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(121) := '                           ,i_attribute_value          => m.source_post_computation'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(122) := '                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(123) := '                              ,i_migration_priority       => av_migration_pkg.c_migration_priority_3';
wwv_flow_imp.g_varchar2_table(124) := '_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(125) := '                        ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(126) := '  ,i_page_name                => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name ';
wwv_flow_imp.g_varchar2_table(127) := '          => m.item_name'||wwv_flow.LF||
'                                     ,i_component_type           => av_migr';
wwv_flow_imp.g_varchar2_table(128) := 'ation_pkg.c_component_type_item'||wwv_flow.LF||
'                                     ,i_region_name              => ';
wwv_flow_imp.g_varchar2_table(129) := 'null'||wwv_flow.LF||
'                                     ,i_item_name                => null'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(130) := '               ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_v';
wwv_flow_imp.g_varchar2_table(131) := 'c2              => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(132) := '                                  ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration';
wwv_flow_imp.g_varchar2_table(133) := ');'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_6;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_7'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(134) := ' i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(135) := '    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(136) := '     ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select d.page_i';
wwv_flow_imp.g_varchar2_table(137) := 'd'||wwv_flow.LF||
'                      ,d.page_name'||wwv_flow.LF||
'                      ,d.dynamic_action_name'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(138) := '    ,d.affected_elements'||wwv_flow.LF||
'                from apex_application_page_da_acts d'||wwv_flow.LF||
'                where ';
wwv_flow_imp.g_varchar2_table(139) := 'd.affected_elements_type_code = ''ITEM'''||wwv_flow.LF||
'                and d.action_code in (''NATIVE_SHOW'''||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(140) := '                           ,''NATIVE_HIDE'')'||wwv_flow.LF||
'                and d.attribute_01 = ''Y'''||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(141) := 'and d.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version    ';
wwv_flow_imp.g_varchar2_table(142) := '         => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => av_mi';
wwv_flow_imp.g_varchar2_table(143) := 'gration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no      ';
wwv_flow_imp.g_varchar2_table(144) := '      => ''8.1.7'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Show / Hide Al';
wwv_flow_imp.g_varchar2_table(145) := 'l Page Items On Same Line Attributes Desupported'''||wwv_flow.LF||
'                                     ,i_rn_chapter';
wwv_flow_imp.g_varchar2_table(146) := '_text          => ''In Dynamic Actions, the Show and Hide actions have attributes Show all page items';
wwv_flow_imp.g_varchar2_table(147) := ' on same line and Hide all page items on same line, respectively. These attributes were designed for';
wwv_flow_imp.g_varchar2_table(148) := ' forms with a table-based layout. Because Universal Theme no longer uses table-based layout, these a';
wwv_flow_imp.g_varchar2_table(149) := 'ttributes are desupported.This functionality remains for existing Dynamic Actions where it was set t';
wwv_flow_imp.g_varchar2_table(150) := 'o Yes, but developers cannot select it for new Dynamic Actions.'''||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(151) := '  ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.h';
wwv_flow_imp.g_varchar2_table(152) := 'tml#GUID-B4A888B4-AAFB-4556-8958-9644981301FC'''||wwv_flow.LF||
'                                     ,i_check_integra';
wwv_flow_imp.g_varchar2_table(153) := 'ted         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(154) := '                        ,i_attribute_value          => null'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(155) := 'migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(156) := '      ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(157) := '                       ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(158) := ',i_page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name          ';
wwv_flow_imp.g_varchar2_table(159) := '      => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.dynamic_a';
wwv_flow_imp.g_varchar2_table(160) := 'ction_name'||wwv_flow.LF||
'                                     ,i_component_type           => av_migration_pkg.c_co';
wwv_flow_imp.g_varchar2_table(161) := 'mponent_type_dynamic_action'||wwv_flow.LF||
'                                     ,i_region_name              => null';
wwv_flow_imp.g_varchar2_table(162) := ''||wwv_flow.LF||
'                                     ,i_item_name                => null'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(163) := '           ,i_item_label               => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2  ';
wwv_flow_imp.g_varchar2_table(164) := '            => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(165) := '                              ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(166) := '     end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_7;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_des_8_1_13'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_';
wwv_flow_imp.g_varchar2_table(167) := 'app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(168) := ' pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(169) := '  ,av_migration_pkg.c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select page_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(170) := '                   ,page_name'||wwv_flow.LF||
'                      ,region_name'||wwv_flow.LF||
'                      ,icon_view_cu';
wwv_flow_imp.g_varchar2_table(171) := 'stom'||wwv_flow.LF||
'                      ,detail_view_for_each_row'||wwv_flow.LF||
'                from apex_appl_page_igs'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(172) := '         where application_id = i_app_id'||wwv_flow.LF||
'                and (regexp_like(icon_view_custom'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(173) := '                      ,''&'' || ''\w+_LABEL\.'''||wwv_flow.LF||
'                               ,''i'') or --'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(174) := '         regexp_like(detail_view_for_each_row'||wwv_flow.LF||
'                               ,''&'' || ''\w+_LABEL\.'''||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(175) := '                              ,''i'')))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_versio';
wwv_flow_imp.g_varchar2_table(176) := 'n             => c_apex_version'||wwv_flow.LF||
'                                     ,i_rn_type                  => ';
wwv_flow_imp.g_varchar2_table(177) := 'av_migration_pkg.c_migration_type_desupported'||wwv_flow.LF||
'                                     ,i_rn_chapter_no ';
wwv_flow_imp.g_varchar2_table(178) := '           => ''8.1.13'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Syntax {';
wwv_flow_imp.g_varchar2_table(179) := 'COLUMN_NAME}_LABEL in Interactive Grid Icon and Detail Views Desupported'''||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(180) := '           ,i_rn_chapter_text          => ''The &{COLUMN_NAME}_LABEL. syntax, which is used to refere';
wwv_flow_imp.g_varchar2_table(181) := 'nce the column label in Interactive Grid Detail and Icon views, is desupported. Instead, use &{COLUM';
wwv_flow_imp.g_varchar2_table(182) := 'N_NAME}%LABEL.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => ''https://docs.or';
wwv_flow_imp.g_varchar2_table(183) := 'acle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-F41C725D-0D28-4E1C-8786-BE986885C256'''||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(184) := '                                   ,i_check_integrated         => 1'||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(185) := '     ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value       ';
wwv_flow_imp.g_varchar2_table(186) := '   => null'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => av_migration_pkg.c_ef';
wwv_flow_imp.g_varchar2_table(187) := 'fort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => av_migration';
wwv_flow_imp.g_varchar2_table(188) := '_pkg.c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                 ';
wwv_flow_imp.g_varchar2_table(189) := '  => i_app_id'||wwv_flow.LF||
'                                     ,i_page_id                  => m.page_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(190) := '                             ,i_page_name                => m.page_name'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(191) := '         ,i_component_name           => null'||wwv_flow.LF||
'                                     ,i_component_type ';
wwv_flow_imp.g_varchar2_table(192) := '          => av_migration_pkg.c_component_type_region'||wwv_flow.LF||
'                                     ,i_region';
wwv_flow_imp.g_varchar2_table(193) := '_name              => null'||wwv_flow.LF||
'                                     ,i_item_name                => null'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(194) := '                                     ,i_item_label               => null'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(195) := '          ,i_js_code_vc2              => null'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2';
wwv_flow_imp.g_varchar2_table(196) := '           => null'||wwv_flow.LF||
'                                     ,i_css_code_vc2             => null);'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(197) := '  pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_des_8_1_13;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_mi';
wwv_flow_imp.g_varchar2_table(198) := 'gration_22_1_pkg;'||wwv_flow.LF||
'/';
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
