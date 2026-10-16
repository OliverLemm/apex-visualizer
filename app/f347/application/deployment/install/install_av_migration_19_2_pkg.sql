prompt --application/deployment/install/install_av_migration_19_2_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_19_2_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_19_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 07.01.';
wwv_flow_imp.g_varchar2_table(2) := '2024 20:40:30'||wwv_flow.LF||
'  -- Purpose : checks for apex version 19.2'||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_dep_6_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id  ';
wwv_flow_imp.g_varchar2_table(3) := '             in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelin';
wwv_flow_imp.g_varchar2_table(4) := 'ed;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_dep_6_1_2'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in v';
wwv_flow_imp.g_varchar2_table(5) := 'archar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_19_2_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace pa';
wwv_flow_imp.g_varchar2_table(6) := 'ckage body av_migration_19_2_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version constant varchar2(10 char) := ''19.2'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  funct';
wwv_flow_imp.g_varchar2_table(7) := 'ion f_dep_6_1_1'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) ';
wwv_flow_imp.g_varchar2_table(8) := 'return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migra';
wwv_flow_imp.g_varchar2_table(9) := 'tion_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priotity_5_information) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(10) := ' l_migration := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(11) := '           ,i_rn_type                  => av_migration_pkg.c_migration_type_deprecated'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(12) := '                      ,i_rn_chapter_no            => ''6.1.1'''||wwv_flow.LF||
'                                   ,i_r';
wwv_flow_imp.g_varchar2_table(13) := 'n_chapter_name          => ''Deprecated Productivity Apps'''||wwv_flow.LF||
'                                   , i_rn_';
wwv_flow_imp.g_varchar2_table(14) := 'chapter_text          => ''The following Productivity Apps are deprecated as of this release:'||wwv_flow.LF||
'<ul>'||wwv_flow.LF||
'<l';
wwv_flow_imp.g_varchar2_table(15) := 'i>Bug Tracking</li>'||wwv_flow.LF||
'<li>Checklist Manager</li>'||wwv_flow.LF||
'<li>Competitive Analysis</li>'||wwv_flow.LF||
'<li>Decision Manager</l';
wwv_flow_imp.g_varchar2_table(16) := 'i>'||wwv_flow.LF||
'<li>Incident Tracking</li>'||wwv_flow.LF||
'<li>Live Poll</li>'||wwv_flow.LF||
'<li>Meeting Minutes</li>'||wwv_flow.LF||
'<li>Script Planner</li>'||wwv_flow.LF||
'</';
wwv_flow_imp.g_varchar2_table(17) := 'ul>'||wwv_flow.LF||
'These apps will be removed in a future release.'''||wwv_flow.LF||
'                                   ,i_rn_chapte';
wwv_flow_imp.g_varchar2_table(18) := 'r_link          => ''https://docs.oracle.com/en/database/oracle/application-express/19.2/htmrn/index.';
wwv_flow_imp.g_varchar2_table(19) := 'html#GUID-17D53AD4-8C3B-4428-BD3D-713F4A5C4EF3'''||wwv_flow.LF||
'                                   ,i_check_integrat';
wwv_flow_imp.g_varchar2_table(20) := 'ed         => 0'||wwv_flow.LF||
'                                   ,i_check_needed             => 0'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(21) := '                   ,i_attribute_value          => null'||wwv_flow.LF||
'                                   ,i_migrati';
wwv_flow_imp.g_varchar2_table(22) := 'on_effort_in_days => null'||wwv_flow.LF||
'                                   ,i_migration_priority       => av_migra';
wwv_flow_imp.g_varchar2_table(23) := 'tion_pkg.c_migration_priotity_5_information'||wwv_flow.LF||
'                                   ,i_app_id            ';
wwv_flow_imp.g_varchar2_table(24) := '       => i_app_id);'||wwv_flow.LF||
'      pipe row(l_migration);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end f_dep_6_1_1;'||wwv_flow.LF||
''||wwv_flow.LF||
'  f';
wwv_flow_imp.g_varchar2_table(25) := 'unction f_dep_6_1_2'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(26) := '  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_m';
wwv_flow_imp.g_varchar2_table(27) := 'igration_priorities'||wwv_flow.LF||
'            ,av_migration_pkg.c_migration_priotity_5_information) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(28) := '     l_migration := av_migration_t(i_apex_version             => c_apex_version'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(29) := '               ,i_rn_type                  => av_migration_pkg.c_migration_type_deprecated'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(30) := '                          ,i_rn_chapter_no            => ''6.1.2'''||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(31) := ',i_rn_chapter_name          => ''Deprecated Sample Apps'''||wwv_flow.LF||
'                                   , i_rn_ch';
wwv_flow_imp.g_varchar2_table(32) := 'apter_text          => ''The following Sample Apps are deprecated as of this release:'||wwv_flow.LF||
'<ul>'||wwv_flow.LF||
'<li>Brooks';
wwv_flow_imp.g_varchar2_table(33) := 'trut</li>'||wwv_flow.LF||
'<li>Sample Projects</li>'||wwv_flow.LF||
'<li>Sample Websheet AnyCo IT Department</li>'||wwv_flow.LF||
'<li>Sample Websheet ';
wwv_flow_imp.g_varchar2_table(34) := 'Big Cats</li>'||wwv_flow.LF||
'</ul>'||wwv_flow.LF||
'These apps will be removed in a future release.'''||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(35) := '    ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/application-express/1';
wwv_flow_imp.g_varchar2_table(36) := '9.2/htmrn/index.html#GUID-B6BD67A4-999E-452C-BBAD-FDE23D977F42'''||wwv_flow.LF||
'                                   ,';
wwv_flow_imp.g_varchar2_table(37) := 'i_check_integrated         => 0'||wwv_flow.LF||
'                                   ,i_check_needed             => 0'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(38) := '                                   ,i_attribute_value          => null'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(39) := '      ,i_migration_effort_in_days => null'||wwv_flow.LF||
'                                   ,i_migration_priority  ';
wwv_flow_imp.g_varchar2_table(40) := '     => av_migration_pkg.c_migration_priotity_5_information'||wwv_flow.LF||
'                                   ,i_ap';
wwv_flow_imp.g_varchar2_table(41) := 'p_id                   => i_app_id);'||wwv_flow.LF||
'      pipe row(l_migration);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end f_de';
wwv_flow_imp.g_varchar2_table(42) := 'p_6_1_2;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_19_2_pkg;'||wwv_flow.LF||
'/';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(71861498466257526)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_19_2_pkg'
,p_sequence=>210
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(71861598497257526)
,p_script_id=>wwv_flow_imp.id(71861498466257526)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_MIGRATION_19_2_PKG'
);
wwv_flow_imp.component_end;
end;
/
