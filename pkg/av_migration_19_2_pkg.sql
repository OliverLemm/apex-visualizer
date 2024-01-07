create or replace package av_migration_19_2_pkg is

  -- Author  : Oliver Lemm
  -- Created : 07.01.2024 20:40:30
  -- Purpose : checks for apex version 19.2

  function f_dep_6_1_1(i_app_id in number) return av_migrations_t
    pipelined;

  function f_dep_6_1_2(i_app_id in number) return av_migrations_t
    pipelined;

end av_migration_19_2_pkg;
/
create or replace package body av_migration_19_2_pkg is

  c_apex_version constant varchar2(10 char) := '19.2';

  function f_dep_6_1_1(i_app_id in number) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    l_migration := av_migration_t(i_apex_version     => c_apex_version
                                 ,i_rn_type          => av_general_pkg.c_migration_type_deprecated
                                 ,i_rn_chapter_no    => '6.1.1'
                                 ,i_rn_chapter_name  => 'Deprecated Productivity Apps'
                                 , i_rn_chapter_text  => 'The following Productivity Apps are deprecated as of this release:
<ul>
<li>Bug Tracking</li>
<li>Checklist Manager</li>
<li>Competitive Analysis</li>
<li>Decision Manager</li>
<li>Incident Tracking</li>
<li>Live Poll</li>
<li>Meeting Minutes</li>
<li>Script Planner</li>
</ul>
These apps will be removed in a future release.'
                                 ,i_rn_chapter_link  => 'https://docs.oracle.com/en/database/oracle/application-express/19.2/htmrn/index.html#GUID-17D53AD4-8C3B-4428-BD3D-713F4A5C4EF3'
                                 ,i_check_integrated => 0
                                 ,i_check_needed     => 0
                                 ,i_app_id           => i_app_id);
    pipe row(l_migration);
    return;
  end f_dep_6_1_1;

  function f_dep_6_1_2(i_app_id in number) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    l_migration := av_migration_t(i_apex_version     => c_apex_version
                                 ,i_rn_type          => av_general_pkg.c_migration_type_deprecated
                                 ,i_rn_chapter_no    => '6.1.2'
                                 ,i_rn_chapter_name  => 'Deprecated Sample Apps'
                                 , i_rn_chapter_text  => 'The following Sample Apps are deprecated as of this release:
<ul>
<li>Brookstrut</li>
<li>Sample Projects</li>
<li>Sample Websheet AnyCo IT Department</li>
<li>Sample Websheet Big Cats</li>
</ul>
These apps will be removed in a future release.'
                                 ,i_rn_chapter_link  => 'https://docs.oracle.com/en/database/oracle/application-express/19.2/htmrn/index.html#GUID-B6BD67A4-999E-452C-BBAD-FDE23D977F42'
                                 ,i_check_integrated => 0
                                 ,i_check_needed     => 0
                                 ,i_app_id           => i_app_id);
    pipe row(l_migration);
    return;
  end f_dep_6_1_2;

end av_migration_19_2_pkg;
/
