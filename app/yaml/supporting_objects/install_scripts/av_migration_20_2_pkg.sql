create or replace package av_migration_20_2_pkg is

  c_apex_version constant varchar2(10 char) := '20.2';

  -- Author  : Oliver Lemm
  -- Created : 14.05.2025
  -- Purpose : checks for apex version 20.2

  function ptf_des_7_1_4
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_7_1_5
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_7_1_7
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_7_1_8
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

end av_migration_20_2_pkg;
/
create or replace package body av_migration_20_2_pkg is

  function ptf_des_7_1_4
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    if instr(i_migration_priorities
            ,av_migration_pkg.c_migration_priority_3_recommed) > 0
    then
      for m in (select p.page_id
                      ,p.page_name
                      ,p.component_name
                      ,p.component_type
                      ,p.plsql_code_vc2
                from av_plsql_v p
                where instr(upper(p.plsql_code_clob)
                           ,'APEX_UTIL.STRING_TO_TABLE') > 0
                and p.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '7.1.4'
                                     ,i_rn_chapter_name          => 'APEX_UTIL.STRING_TO_TABLE Function Desupported'
                                     ,i_rn_chapter_text          => 'APEX_UTIL.STRING_TO_TABLE is desupported. Use APEX_STRING.STRING_TO_TABLE instead.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-6709BB89-9E72-46DF-B6DB-B28E6F81827F'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.plsql_code_vc2
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.component_name
                                     ,i_component_type           => m.component_type
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => m.plsql_code_vc2
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_7_1_4;

  function ptf_des_7_1_5
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    if instr(i_migration_priorities
            ,av_migration_pkg.c_migration_priority_3_recommed) > 0
    then
      for m in (select p.page_id
                      ,p.page_name
                      ,p.component_name
                      ,p.component_type
                      ,p.plsql_code_vc2
                from av_plsql_v p
                where instr(upper(p.plsql_code_clob)
                           ,'APEX_UTIL.TABLE_TO_STRING') > 0
                and p.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '7.1.5'
                                     ,i_rn_chapter_name          => 'APEX_UTIL.TABLE_TO_STRING Function Desupported '
                                     ,i_rn_chapter_text          => 'APEX_UTIL.TABLE_TO_STRING is desupported. Use APEX_STRING.TABLE_TO_STRING instead.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-ABE4A449-842F-439F-B340-DBD623E67F69'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.plsql_code_vc2
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.component_name
                                     ,i_component_type           => m.component_type
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => m.plsql_code_vc2
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_7_1_5;

  function ptf_des_7_1_7
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    if instr(i_migration_priorities
            ,av_migration_pkg.c_migration_priority_3_recommed) > 0
    then
      for m in (select j.page_id
                      ,j.page_name
                      ,j.component_name
                      ,j.component_type
                      ,j.js_code_vc2
                from av_javascript_v j
                where (instr(lower(j.js_code_vc2)
                            ,'openmodal') > 0 or instr(lower(j.js_code_vc2)
                                                       ,'closemodal') > 0)
                and application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '7.1.7'
                                     ,i_rn_chapter_name          => 'openModal and closeModal are Desupported '
                                     ,i_rn_chapter_text          => 'The undocumented theme specific functions openModal and closeModal are desupported. Use the apex.theme.openRegion and apex.theme.closeRegion functions or the corresponding dynamic actions "Open Region" and "Close Region."'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-216EF074-6E0C-4CCC-BC39-AFECE3674305'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.js_code_vc2
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_10_minutes
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.component_name
                                     ,i_component_type           => m.component_type
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => m.js_code_vc2
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_7_1_7;

  function ptf_des_7_1_8
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  begin
    if instr(i_migration_priorities
            ,av_migration_pkg.c_migration_priority_2_should) > 0
    then
      for m in (select r.page_id
                      ,r.page_name
                      ,r.region_name
                      ,r.source_type
                from apex_application_page_regions r
                where r.source_type = 'Tabular Form'
                and r.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '7.1.8'
                                     ,i_rn_chapter_name          => 'Tabular Forms Desupported'
                                     ,i_rn_chapter_text          => 'Creation of new legacy tabular forms is no longer supported as of this release. The APEX_ITEM API is considered legacy code and should not be used for new development. Existing tabular forms continue to function. Use interactive grids instead of tabular forms.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/application-express/20.2/htmrn/index.html#GUID-881C02C3-211D-4FB3-8A02-F741FA1BBA35'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.source_type
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_4_hours
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_2_should
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.region_name
                                     ,i_component_type           => av_migration_pkg.c_component_type_region
                                     ,i_region_name              => m.region_name
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_7_1_8;

end av_migration_20_2_pkg;
/ 