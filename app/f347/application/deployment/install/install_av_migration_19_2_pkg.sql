prompt --application/deployment/install/install_av_migration_19_2_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_19_2_pkg
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(71861498466257526)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_19_2_pkg'
,p_sequence=>210
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package av_migration_19_2_pkg is',
'',
'  -- Author  : Oliver Lemm',
'  -- Created : 07.01.2024 20:40:30',
'  -- Purpose : checks for apex version 19.2',
'',
'  function f_dep_6_1_1',
'  (',
'    i_app_id               in number',
'   ,i_migration_priorities in varchar2',
'  ) return av_migrations_t',
'    pipelined;',
'',
'  function f_dep_6_1_2',
'  (',
'    i_app_id               in number',
'   ,i_migration_priorities in varchar2',
'  ) return av_migrations_t',
'    pipelined;',
'',
'end av_migration_19_2_pkg;',
'/',
'create or replace package body av_migration_19_2_pkg is',
'',
'  c_apex_version constant varchar2(10 char) := ''19.2'';',
'',
'  function f_dep_6_1_1',
'  (',
'    i_app_id               in number',
'   ,i_migration_priorities in varchar2',
'  ) return av_migrations_t',
'    pipelined is',
'    l_migration av_migration_t;',
'  begin',
'    if instr(i_migration_priorities',
'            ,av_migration_pkg.c_migration_priotity_5_information) > 0',
'    then',
'      l_migration := av_migration_t(i_apex_version             => c_apex_version',
'                                   ,i_rn_type                  => av_migration_pkg.c_migration_type_deprecated',
'                                   ,i_rn_chapter_no            => ''6.1.1''',
'                                   ,i_rn_chapter_name          => ''Deprecated Productivity Apps''',
'                                   , i_rn_chapter_text          => ''The following Productivity Apps are deprecated as of this release:',
'<ul>',
'<li>Bug Tracking</li>',
'<li>Checklist Manager</li>',
'<li>Competitive Analysis</li>',
'<li>Decision Manager</li>',
'<li>Incident Tracking</li>',
'<li>Live Poll</li>',
'<li>Meeting Minutes</li>',
'<li>Script Planner</li>',
'</ul>',
'These apps will be removed in a future release.''',
'                                   ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/application-express/19.2/htmrn/index.html#GUID-17D53AD4-8C3B-4428-BD3D-713F4A5C4EF3''',
'                                   ,i_check_integrated         => 0',
'                                   ,i_check_needed             => 0',
'                                   ,i_attribute_value          => null',
'                                   ,i_migration_effort_in_days => null',
'                                   ,i_migration_priority       => av_migration_pkg.c_migration_priotity_5_information',
'                                   ,i_app_id                   => i_app_id);',
'      pipe row(l_migration);',
'    end if;',
'  ',
'    return;',
'  end f_dep_6_1_1;',
'',
'  function f_dep_6_1_2',
'  (',
'    i_app_id               in number',
'   ,i_migration_priorities in varchar2',
'  ) return av_migrations_t',
'    pipelined is',
'    l_migration av_migration_t;',
'  begin',
'    if instr(i_migration_priorities',
'            ,av_migration_pkg.c_migration_priotity_5_information) > 0',
'    then',
'      l_migration := av_migration_t(i_apex_version             => c_apex_version',
'                                   ,i_rn_type                  => av_migration_pkg.c_migration_type_deprecated',
'                                   ,i_rn_chapter_no            => ''6.1.2''',
'                                   ,i_rn_chapter_name          => ''Deprecated Sample Apps''',
'                                   , i_rn_chapter_text          => ''The following Sample Apps are deprecated as of this release:',
'<ul>',
'<li>Brookstrut</li>',
'<li>Sample Projects</li>',
'<li>Sample Websheet AnyCo IT Department</li>',
'<li>Sample Websheet Big Cats</li>',
'</ul>',
'These apps will be removed in a future release.''',
'                                   ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/application-express/19.2/htmrn/index.html#GUID-B6BD67A4-999E-452C-BBAD-FDE23D977F42''',
'                                   ,i_check_integrated         => 0',
'                                   ,i_check_needed             => 0',
'                                   ,i_attribute_value          => null',
'                                   ,i_migration_effort_in_days => null',
'                                   ,i_migration_priority       => av_migration_pkg.c_migration_priotity_5_information',
'                                   ,i_app_id                   => i_app_id);',
'      pipe row(l_migration);',
'    end if;',
'    return;',
'  end f_dep_6_1_2;',
'',
'end av_migration_19_2_pkg;',
'/ '))
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
