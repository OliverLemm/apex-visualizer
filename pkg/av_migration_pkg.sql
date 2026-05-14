create or replace package av_migration_pkg is

  c_migration_type_generally   constant varchar2(20 char) := 'generally';
  c_migration_type_new_feature constant varchar2(20 char) := 'new feature';
  c_migration_type_deprecated  constant varchar2(20 char) := 'deprecated';
  c_migration_type_desupported constant varchar2(20 char) := 'desupported';

  c_migration_priority_1_must           constant number := 1;
  c_migration_priority_2_should         constant number := 2;
  c_migration_priority_3_recommed       constant number := 3;
  c_migration_priority_4_best_practices constant number := 4;

  c_complexity_simple       constant varchar2(20 char) := 'simple';
  c_complexity_normal       constant varchar2(20 char) := 'normal';
  c_complexity_complex      constant varchar2(20 char) := 'complex';
  c_complexity_very_complex constant varchar2(20 char) := 'very complex';

  c_component_type_region         constant varchar2(20 char) := 'Region';
  c_component_type_item           constant varchar2(20 char) := 'Item';
  c_component_type_button         constant varchar2(20 char) := 'Button';
  c_component_type_dynamic_action constant varchar2(20 char) := 'Dynamic Action';


  c_apex_version_20_1   constant varchar2(20 char) := '20.1';
  c_apex_version_20_2   constant varchar2(20 char) := '20.2';
  c_apex_version_21_1   constant varchar2(20 char) := '21.1';
  c_apex_version_21_2   constant varchar2(20 char) := '21.2';
  c_apex_version_22_1   constant varchar2(20 char) := '22.1';
  c_apex_version_22_2   constant varchar2(20 char) := '22.2';
  c_apex_version_23_1   constant varchar2(20 char) := '23.1';
  c_apex_version_23_2   constant varchar2(20 char) := '23.2';
  c_apex_version_24_1   constant varchar2(20 char) := '24.1';
  c_apex_version_24_2   constant varchar2(20 char) := '24.2';
  c_apex_version_26_1   constant varchar2(20 char) := '26.1';
  c_apex_version_latest constant varchar2(20 char) := c_apex_version_26_1;

  c_comp_mode_latest            constant varchar2(20 char) := c_apex_version_latest;
  c_comp_mode_one_before_latest constant varchar2(20 char) := '21.2';

  c_effort_in_days_1_hour     constant number := 0.125;
  c_effort_in_days_10_minutes constant number := c_effort_in_days_1_hour / 6;
  c_effort_in_days_3_minutes  constant number := c_effort_in_days_1_hour / 20;

  -- Author  : Oliver Lemm
  -- Created : 06.05.2026
  -- Purpose : central function for migration

  /* Query Aggretated Effort in Days
  select apex_version
        ,rn_chapter_no
        ,rn_chapter_name
        ,round(sum(migration_effort_in_days)
              ,3)
  from av_migration_pkg.ptf_effort_calculation(i_app_id       => :i_app_id
                                              ,i_apex_version => :i_apex_version)
  group by apex_version
          ,rn_chapter_no
          ,rn_chapter_name
  order by apex_version
          ,rn_chapter_no 
  */

  function tf_apex_versions return av_varchar2s_t;

  function ptf_effort_general_app_settings
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_effort_page_complexity
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_effort_calculation
  (
    i_app_id               in number
   ,i_apex_versions        in varchar2 default null
   ,i_migration_priorities in varchar2 default null
  ) return av_migrations_t
    pipelined;

end av_migration_pkg;
/
create or replace package body av_migration_pkg is

  procedure p_merge_migrations
  (
    io_migrations    in out av_migrations_t
   ,i_migrations_add in av_migrations_t
  ) is
    l_next number;
  begin
    -- falls bisheriges Fehlerarray nicht vorhanden ist oder keine Einträge enthält
    -- direkt das komplette neue verwenden
    if io_migrations is null or
       io_migrations.count = 0
    then
      io_migrations := i_migrations_add;
    
      -- Fehler sind bereits im bisherigen Array vorhanden
    else
      -- Sind im neuen Array Fehler vorhanden
      if i_migrations_add is not null and
         i_migrations_add.count > 0
      then
        for i in 1 .. i_migrations_add.count
        loop
          io_migrations.extend; -- erweitern
          l_next := io_migrations.last; -- zaehler vom letzten ermitteln
          io_migrations(l_next) := i_migrations_add(i); -- Fehler in neues Array schreiben
        end loop;
      end if;
    end if;
  end p_merge_migrations;


  function tf_apex_versions return av_varchar2s_t is
    l_apex_versions av_varchar2s_t := new av_varchar2s_t();
  begin
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_20_1);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_20_2);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_21_1);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_21_2);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_22_1);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_22_2);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_1);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_2);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_24_1);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_24_2);
    l_apex_versions.extend;
    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_26_1);
  
    return l_apex_versions;
  end tf_apex_versions;


  function f_app_has_universal_theme(i_app_id in number) return boolean is
    l_count number;
  
  begin
    select count(1)
    into l_count
    from apex_application_themes t
    where t.is_current = 'Yes'
    and t.theme_internal_name = 'UNIVERSAL_THEME'
    and t.application_id = i_app_id;
  
    return sys.diutil.int_to_bool(l_count);
  end f_app_has_universal_theme;


  function ptf_effort_general_app_settings
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_compatibility_mode          apex_applications.compatibility_mode%type;
    l_po_session_state_protection apex_applications.session_state_protection%type;
    l_po_runtime_api_usage        varchar2(100 char);
    l_include_legacy_javascript   apex_appl_user_interfaces.include_legacy_javascript%type;
    l_include_jquery_migrate      apex_appl_user_interfaces.include_jquery_migrate%type;
    l_theme_name                  apex_application_themes.theme_name%type;
    l_theme_version               apex_application_themes.version%type;
  
    l_migration av_migration_t;
  begin
    if instr(i_migration_priorities
            ,'2') > 0
    then
      av_general_pkg.p_qa_app_settings(pi_application_id            => i_app_id
                                      ,po_compatibility_mode        => l_compatibility_mode
                                      ,po_session_state_protection  => l_po_session_state_protection
                                      ,po_runtime_api_usage         => l_po_runtime_api_usage
                                      ,po_include_legacy_javascript => l_include_legacy_javascript
                                      ,po_include_jquery_migrate    => l_include_jquery_migrate
                                      ,po_theme_name                => l_theme_name
                                      ,po_theme_version             => l_theme_version);
    
    
    
      l_migration := av_migration_t(i_apex_version             => c_apex_version_latest
                                   ,i_rn_type                  => av_migration_pkg.c_migration_type_generally
                                   ,i_rn_chapter_no            => '3.18'
                                   ,i_rn_chapter_name          => 'Compatibility Mode'
                                   ,i_rn_chapter_text          => l_compatibility_mode
                                   ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/24.2/htmrn/changed-behavior.html#GUID-712BE54F-08CD-43A3-A645-87B9360ED516'
                                   ,i_check_integrated         => 1
                                   ,i_check_needed             => 1
                                   ,i_attribute_value          => l_compatibility_mode
                                   ,i_migration_effort_in_days => case l_compatibility_mode
                                                                    when c_comp_mode_latest then -- latest version
                                                                     0 -- no effort
                                                                    when c_comp_mode_one_before_latest then
                                                                     0.125 -- minimal effort
                                                                    else
                                                                     0.5 -- more effort but hard to calculate
                                                                  end
                                   ,i_migration_priority       => 2
                                   ,i_app_id                   => i_app_id);
      pipe row(l_migration);
    end if;
  
    return;
  end ptf_effort_general_app_settings;


  function ptf_effort_page_complexity
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined is
    l_migration av_migration_t;
  
    l_effort_simple       number := 0.125;
    l_effort_normal       number := 0.25;
    l_effort_complex      number := 1;
    l_effort_very_complex number := 2;
    l_sub_chapter         number;
    l_effort              number;
  begin
    if instr(i_migration_priorities
            ,'2') > 0
    then
      if f_app_has_universal_theme(i_app_id => i_app_id)
      then
        l_effort_simple       := l_effort_simple / 10;
        l_effort_normal       := l_effort_normal / 10;
        l_effort_complex      := l_effort_complex / 10;
        l_effort_very_complex := l_effort_very_complex / 10;
      end if;
    
      for c in (select p.complexity
                      ,p.count_objects
                from av_page_complexity_v p
                where p.application_id = i_app_id
                order by p.complexity)
      loop
        if c.complexity = c_complexity_simple
        then
          l_sub_chapter := 1;
          l_effort      := l_effort_simple;
        
        elsif c.complexity = c_complexity_normal
        then
          l_sub_chapter := 2;
          l_effort      := l_effort_normal;
        
        elsif c.complexity = c_complexity_complex
        then
          l_sub_chapter := 3;
          l_effort      := l_effort_complex;
        
        elsif c.complexity = c_complexity_very_complex
        then
          l_sub_chapter := 4;
          l_effort      := l_effort_very_complex;
        
        end if;
      
      
      
        l_migration := av_migration_t(i_apex_version             => c_apex_version_latest
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_generally
                                     ,i_rn_chapter_no            => '0.2.' || l_sub_chapter
                                     ,i_rn_chapter_name          => 'Migration Effort for ' || c.complexity || ' Page(s)'
                                     ,i_rn_chapter_text          => null
                                     ,i_rn_chapter_link          => null
                                     ,i_check_integrated         => 0
                                     ,i_check_needed             => 0
                                     ,i_attribute_value          => c.count_objects
                                     ,i_migration_effort_in_days => l_effort
                                     ,i_migration_priority       => 2
                                     ,i_app_id                   => i_app_id);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_effort_page_complexity;

  function ptf_effort_calculation
  (
    i_app_id               in number
   ,i_apex_versions        in varchar2 default null
   ,i_migration_priorities in varchar2 default null
  ) return av_migrations_t
    pipelined is
  begin
    -- General
    for p in (select *
              from av_migration_pkg.ptf_effort_general_app_settings(i_app_id               => i_app_id
                                                                   ,i_migration_priorities => i_migration_priorities))
    loop
      pipe row(av_migration_t(i_apex_version             => p.apex_version
                             ,i_rn_type                  => p.rn_type
                             ,i_rn_chapter_no            => p.rn_chapter_no
                             ,i_rn_chapter_name          => p.rn_chapter_name
                             ,i_rn_chapter_text          => p.rn_chapter_text
                             ,i_rn_chapter_link          => p.rn_chapter_link
                             ,i_check_integrated         => p.check_integrated
                             ,i_check_needed             => p.check_needed
                             ,i_attribute_value          => p.attribute_value
                             ,i_migration_effort_in_days => p.migration_effort_in_days
                             ,i_migration_priority       => p.migration_priority
                             ,i_app_id                   => p.app_id
                             ,i_page_id                  => p.page_id
                             ,i_page_name                => p.page_name
                             ,i_component_name           => p.component_name
                             ,i_component_type           => p.component_type
                             ,i_region_name              => p.region_name
                             ,i_item_name                => p.item_name
                             ,i_item_label               => p.item_label
                             ,i_js_code_vc2              => p.js_code_vc2
                             ,i_plsql_code_vc2           => p.plsql_code_vc2
                             ,i_css_code_vc2             => p.css_code_vc2));
    end loop;
  
    for p in (select *
              from av_migration_pkg.ptf_effort_page_complexity(i_app_id               => i_app_id
                                                              ,i_migration_priorities => i_migration_priorities))
    loop
      pipe row(av_migration_t(i_apex_version             => p.apex_version
                             ,i_rn_type                  => p.rn_type
                             ,i_rn_chapter_no            => p.rn_chapter_no
                             ,i_rn_chapter_name          => p.rn_chapter_name
                             ,i_rn_chapter_text          => p.rn_chapter_text
                             ,i_rn_chapter_link          => p.rn_chapter_link
                             ,i_check_integrated         => p.check_integrated
                             ,i_check_needed             => p.check_needed
                             ,i_attribute_value          => p.attribute_value
                             ,i_migration_effort_in_days => p.migration_effort_in_days
                             ,i_migration_priority       => p.migration_priority
                             ,i_app_id                   => p.app_id
                             ,i_page_id                  => p.page_id
                             ,i_page_name                => p.page_name
                             ,i_component_name           => p.component_name
                             ,i_component_type           => p.component_type
                             ,i_region_name              => p.region_name
                             ,i_item_name                => p.item_name
                             ,i_item_label               => p.item_label
                             ,i_js_code_vc2              => p.js_code_vc2
                             ,i_plsql_code_vc2           => p.plsql_code_vc2
                             ,i_css_code_vc2             => p.css_code_vc2));
    end loop;
  
    -- APEX 22.1
    if i_apex_versions is null or
       instr(i_apex_versions
            ,av_migration_22_1_pkg.c_apex_version) > 0
    then
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_1(i_app_id               => i_app_id
                                                        ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_2(i_app_id               => i_app_id
                                                        ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_4(i_app_id               => i_app_id
                                                        ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_6(i_app_id               => i_app_id
                                                        ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_7(i_app_id               => i_app_id
                                                        ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    
      for p in (select *
                from av_migration_22_1_pkg.ptf_des_8_1_13(i_app_id               => i_app_id
                                                         ,i_migration_priorities => i_migration_priorities))
      loop
        pipe row(av_migration_t(i_apex_version             => p.apex_version
                               ,i_rn_type                  => p.rn_type
                               ,i_rn_chapter_no            => p.rn_chapter_no
                               ,i_rn_chapter_name          => p.rn_chapter_name
                               ,i_rn_chapter_text          => p.rn_chapter_text
                               ,i_rn_chapter_link          => p.rn_chapter_link
                               ,i_check_integrated         => p.check_integrated
                               ,i_check_needed             => p.check_needed
                               ,i_attribute_value          => p.attribute_value
                               ,i_migration_effort_in_days => p.migration_effort_in_days
                               ,i_migration_priority       => p.migration_priority
                               ,i_app_id                   => p.app_id
                               ,i_page_id                  => p.page_id
                               ,i_page_name                => p.page_name
                               ,i_component_name           => p.component_name
                               ,i_component_type           => p.component_type
                               ,i_region_name              => p.region_name
                               ,i_item_name                => p.item_name
                               ,i_item_label               => p.item_label
                               ,i_js_code_vc2              => p.js_code_vc2
                               ,i_plsql_code_vc2           => p.plsql_code_vc2
                               ,i_css_code_vc2             => p.css_code_vc2));
      end loop;
    end if;
  
    return;
  end ptf_effort_calculation;

end av_migration_pkg;
/
