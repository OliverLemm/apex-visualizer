create or replace package av_migration_22_1_pkg is

  c_apex_version constant varchar2(10 char) := '22.1';

  -- Author  : Oliver Lemm
  -- Created : 12.05.2025
  -- Purpose : checks for apex version 22.1

  function ptf_des_8_1_1
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_8_1_2
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_8_1_4
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_8_1_6
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_8_1_7
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

  function ptf_des_8_1_13
  (
    i_app_id               in number
   ,i_migration_priorities in varchar2
  ) return av_migrations_t
    pipelined;

end av_migration_22_1_pkg;
/
create or replace package body av_migration_22_1_pkg is

  function ptf_des_8_1_1
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
      for m in (select page_id
                      ,page_name
                      ,region_name
                      ,display_position
                      ,display_position_code
                from apex_application_page_regions r
                where display_position_code in ('BODY_1'
                                               ,'BODY_2'
                                               ,'BODY_3'
                                               ,'AFTER_HEADER'
                                               ,'BEFORE_FOOTER')
                and application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_generally
                                     ,i_rn_chapter_no            => '8.1.1'
                                     ,i_rn_chapter_name          => 'Desupported Page Positions'
                                     ,i_rn_chapter_text          => 'The following page positions are desupported and display as Legacy in Page Designer: Body 1, Body 2, Body 3, After Header, Before Footer'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-379DEAC6-FE4D-44DE-A2E1-041DD648F8F4'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.display_position
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_10_minutes
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
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
  end ptf_des_8_1_1;

  function ptf_des_8_1_2
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
      for m in (select b.page_id
                      ,b.page_name
                      ,b.region
                      ,b.button_name
                      ,b.label
                      ,b.display_position
                from apex_application_page_buttons b
                where b.display_position_code in ('TOP'
                                                 ,'BOTTOM'
                                                 ,'BELOW_BOX'
                                                 ,'ABOVE_BOX')
                and b.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '8.1.2'
                                     ,i_rn_chapter_name          => 'Desupported Region Positions'
                                     ,i_rn_chapter_text          => 'The following region positions used for button positioning are desupported and display as Legacy in Page Designer: Top of Region, Bottom of Region, Above Region, Below Region'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-728F5525-51BD-429C-9651-5C53CB7CA14B'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.display_position
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_3_minutes
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.button_name
                                     ,i_component_type           => av_migration_pkg.c_component_type_button
                                     ,i_region_name              => m.region
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_8_1_2;

  function ptf_des_8_1_4
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
      for m in (select page_id
                      ,page_name
                      ,component_name
                      ,component_type
                      ,code_vc2
                from av_p0708_legacy_subst_strings_v
                where application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '8.1.4'
                                     ,i_rn_chapter_name          => 'Legacy Substitution Strings Desupported'
                                     ,i_rn_chapter_text          => 'As of this release, the following apex.env substitution strings are desupported: APP_IMAGES, IMAGE_PREFIX, THEME_DB_IMAGES, THEME_IMAGES, WORKSPACE_IMAGES. While the legacy substitutions still function, Oracle recommends developers update their environments to use updated substitutions (listed below).'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-206A76B3-1BE6-44B2-B54D-57494DEDEE0C'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.code_vc2
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_3_minutes
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
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_8_1_4;

  function ptf_des_8_1_6
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
                      ,p.region
                      ,p.item_name
                      ,p.label
                      ,p.source_post_computation
                from apex_application_page_items p
                where p.source_post_computation is not null
                and p.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '8.1.6'
                                     ,i_rn_chapter_name          => 'Post Calculation for Page Items Desupported '
                                     ,i_rn_chapter_text          => 'The Post Calculation functionality of page items is desupported. This functionality remains for existing page items where it has been used, but you can no longer set it for new page items nor add it to existing page items where it has not been used in the past.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-9EB2681D-0DD3-4CA6-AD8F-8EB276EE2581'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => m.source_post_computation
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.item_name
                                     ,i_component_type           => av_migration_pkg.c_component_type_item
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_8_1_6;

  function ptf_des_8_1_7
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
      for m in (select d.page_id
                      ,d.page_name
                      ,d.dynamic_action_name
                      ,d.affected_elements
                from apex_application_page_da_acts d
                where d.affected_elements_type_code = 'ITEM'
                and d.action_code in ('NATIVE_SHOW'
                                    ,'NATIVE_HIDE')
                and d.attribute_01 = 'Y'
                and d.application_id = i_app_id)
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '8.1.7'
                                     ,i_rn_chapter_name          => 'Show / Hide All Page Items On Same Line Attributes Desupported'
                                     ,i_rn_chapter_text          => 'In Dynamic Actions, the Show and Hide actions have attributes Show all page items on same line and Hide all page items on same line, respectively. These attributes were designed for forms with a table-based layout. Because Universal Theme no longer uses table-based layout, these attributes are desupported.This functionality remains for existing Dynamic Actions where it was set to Yes, but developers cannot select it for new Dynamic Actions.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-B4A888B4-AAFB-4556-8958-9644981301FC'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => null
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => m.dynamic_action_name
                                     ,i_component_type           => av_migration_pkg.c_component_type_dynamic_action
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_8_1_7;

  function ptf_des_8_1_13
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
      for m in (select page_id
                      ,page_name
                      ,region_name
                      ,icon_view_custom
                      ,detail_view_for_each_row
                from apex_appl_page_igs
                where application_id = i_app_id
                and (regexp_like(icon_view_custom
                               ,'&' || '\w+_LABEL\.'
                               ,'i') or --
                      regexp_like(detail_view_for_each_row
                               ,'&' || '\w+_LABEL\.'
                               ,'i')))
      loop
        l_migration := av_migration_t(i_apex_version             => c_apex_version
                                     ,i_rn_type                  => av_migration_pkg.c_migration_type_desupported
                                     ,i_rn_chapter_no            => '8.1.13'
                                     ,i_rn_chapter_name          => 'Syntax {COLUMN_NAME}_LABEL in Interactive Grid Icon and Detail Views Desupported'
                                     ,i_rn_chapter_text          => 'The &{COLUMN_NAME}_LABEL. syntax, which is used to reference the column label in Interactive Grid Detail and Icon views, is desupported. Instead, use &{COLUMN_NAME}%LABEL.'
                                     ,i_rn_chapter_link          => 'https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#GUID-F41C725D-0D28-4E1C-8786-BE986885C256'
                                     ,i_check_integrated         => 1
                                     ,i_check_needed             => 1
                                     ,i_attribute_value          => null
                                     ,i_migration_effort_in_days => av_migration_pkg.c_effort_in_days_1_hour
                                     ,i_migration_priority       => av_migration_pkg.c_migration_priority_3_recommed
                                     ,i_app_id                   => i_app_id
                                     ,i_page_id                  => m.page_id
                                     ,i_page_name                => m.page_name
                                     ,i_component_name           => null
                                     ,i_component_type           => av_migration_pkg.c_component_type_region
                                     ,i_region_name              => null
                                     ,i_item_name                => null
                                     ,i_item_label               => null
                                     ,i_js_code_vc2              => null
                                     ,i_plsql_code_vc2           => null
                                     ,i_css_code_vc2             => null);
        pipe row(l_migration);
      end loop;
    end if;
  
    return;
  end ptf_des_8_1_13;

end av_migration_22_1_pkg;
/
