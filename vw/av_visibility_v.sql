create or replace view av_visibility_v as
select aap.application_name
      ,p.application_id
      ,aap.page_name
      ,p.page_id
      ,p.component_type
      ,p.visibility_name
      ,p.visibility_id
      ,p.visibility_category
      ,p.visibility_type
      ,p.visibility_exp1
from apex_application_pages aap
join ( -- PAGES
      select a.application_id
             ,a.page_id
             ,'PAGE' component_type
             ,a.authorization_scheme visibility_name
             ,to_number(a.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_pages a
      union all
      select a.application_id
             ,a.page_id
             ,'PAGE' component_type
             ,a.build_option visibility_name
             ,to_number(null) visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_pages a
      union all
      -- REGIONS
      select a.application_id
             ,a.page_id
             ,'REGION' component_type
             ,a.authorization_scheme visibility_name
             ,to_number(a.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_regions a
      union all
      select a.application_id
             ,a.page_id
             ,'REGION' component_type
             ,a.build_option visibility_name
             ,to_number(null) visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_regions a
      union all
      select a.application_id
             ,a.page_id
             ,'REGION' component_type
             ,nvl2(read_only_condition_type
                  ,'read only'
                  ,null) visibility_name
             ,to_number(null) visibility_id
             ,'READ_ONLY' visibility_category
             ,a.read_only_condition_type visibility_type
             ,a.read_only_condition_exp1 visibility_exp1
      from apex_application_page_regions a
      union
      select a.application_id
             ,a.page_id
             ,'REGION' component_type
             ,nvl2(a.condition_type
                  ,'condition'
                  ,null) visibility_name
             ,to_number(null) visibility_id
             ,'CONDITION' visibility_category
             ,a.condition_type visibility_type
             ,a.condition_expression1 visibility_exp1
      from apex_application_page_regions a
      union all
      -- ITEMS
      select a.application_id
             ,a.page_id
             ,'ITEM' component_type
             ,a.authorization_scheme visibility_name
             ,to_number(a.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_items a
      union all
      select a.application_id
             ,a.page_id
             ,'ITEM' component_type
             ,a.build_option visibility_name
             ,to_number(null) visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_items a
      union all
      select a.application_id
             ,a.page_id
             ,'ITEM' component_type
             ,nvl2(read_only_condition_type
                  ,'read only'
                  ,null) visibility_name
             ,to_number(null) visibility_id
             ,'READ_ONLY' visibility_category
             ,a.read_only_condition_type visibility_type
             ,a.read_only_condition_exp1 visibility_exp1
      from apex_application_page_items a
      union all
      select a.application_id
             ,a.page_id
             ,'ITEM' component_type
             ,nvl2(a.condition_type
                  ,'condition'
                  ,null) visibility_name
             ,to_number(null) visibility_id
             ,'CONDITION' visibility_category
             ,a.condition_type visibility_type
             ,a.condition_expression1 visibility_exp1
      from apex_application_page_items a
      union all
      -- BUTTON
      select b.application_id
             ,b.page_id
             ,'BUTTON' component_type
             ,b.authorization_scheme visibility_name
             ,to_number(b.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_buttons b
      union all
      -- DYNAMIC_ACTIONS
      select d.application_id
             ,d.page_id
             ,'DYNAMIC_ACTION' component_type
             ,d.authorization_scheme visibility_name
             ,to_number(d.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_da d
      union all
      -- PAGE_PROCESS
      select p.application_id
             ,p.page_id
             ,'PAGE_PROCESS' component_type
             ,p.authorization_scheme visibility_name
             ,to_number(p.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_proc p
      union all
      -- REPORT_COLUMN
      select c.application_id
             ,c.page_id
             ,'REPORT_COLUMN' component_type
             ,c.authorization_scheme visibility_name
             ,to_number(c.authorization_scheme_id) visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_rpt_cols c) p on p.application_id = aap.application_id
                                           and p.page_id = aap.page_id;
