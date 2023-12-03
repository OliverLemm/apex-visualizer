
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_NAME", "PAGE_ID", "COMPONENT_TYPE", "COMPONENT_NAME", "VISIBILITY_NAME", "VISIBILITY_ID", "VISIBILITY_CATEGORY", "VISIBILITY_TYPE", "VISIBILITY_EXP1") AS 
  select aap.application_name
      ,p.application_id
      ,aap.page_name
      ,p.page_id
      ,p.component_type
      ,p.component_name
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
             ,a.page_name component_name
             ,a.authorization_scheme visibility_name
             ,a.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_pages a
      union all
      select a.application_id
             ,a.page_id
             ,'PAGE' component_type
             ,a.page_name component_name
             ,a.build_option visibility_name
             ,null visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_pages a
      union all
      -- REGIONS
      select r.application_id
             ,r.page_id
             ,'REGION' component_type
             ,r.region_name component_name
             ,r.authorization_scheme visibility_name
             ,r.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_regions r
      union all
      select r.application_id
             ,r.page_id
             ,'REGION' component_type
             ,r.region_name component_name
             ,r.build_option visibility_name
             ,null visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_regions r
      union all
      select r.application_id
             ,r.page_id
             ,'REGION' component_type
             ,r.region_name component_name
             ,nvl2(read_only_condition_type
                  ,'read only'
                  ,null) visibility_name
             ,null visibility_id
             ,'READ_ONLY' visibility_category
             ,r.read_only_condition_type visibility_type
             ,r.read_only_condition_exp1 visibility_exp1
      from apex_application_page_regions r
      union
      select r.application_id
             ,r.page_id
             ,'REGION' component_type
             ,r.region_name component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,r.condition_type visibility_type
             ,r.condition_expression1 visibility_exp1
      from apex_application_page_regions r
      union all
      -- ITEMS
      select i.application_id
             ,i.page_id
             ,'ITEM' component_type
             ,i.item_name component_name
             ,i.authorization_scheme visibility_name
             ,i.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_items i
      union all
      select i.application_id
             ,i.page_id
             ,'ITEM' component_type
             ,i.item_name component_name
             ,i.build_option visibility_name
             ,null visibility_id
             ,'BUILD_OPTION' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_items i
      union all
      select i.application_id
             ,i.page_id
             ,'ITEM' component_type
             ,i.item_name component_name
             ,nvl2(read_only_condition_type
                  ,'read only'
                  ,null) visibility_name
             ,null visibility_id
             ,'READ_ONLY' visibility_category
             ,i.read_only_condition_type visibility_type
             ,i.read_only_condition_exp1 visibility_exp1
      from apex_application_page_items i
      union all
      select i.application_id
             ,i.page_id
             ,'ITEM' component_type
             ,i.item_name component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,i.condition_type visibility_type
             ,i.condition_expression1 visibility_exp1
      from apex_application_page_items i
      union all
      -- BUTTON
      select b.application_id
             ,b.page_id
             ,'BUTTON' component_type
             ,b.button_name component_name
             ,b.authorization_scheme visibility_name
             ,b.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_buttons b
      union all
      select b.application_id
             ,b.page_id
             ,'BUTTON' component_type
             ,b.button_name component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,b.condition_type visibility_type
             ,b.condition_expression1 visibility_exp1
      from apex_application_page_buttons b
      union all
      -- DYNAMIC_ACTIONS
      select d.application_id
             ,d.page_id
             ,'DYNAMIC_ACTION' component_type
             ,d.dynamic_action_name component_name
             ,d.authorization_scheme visibility_name
             ,d.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_da d
      union all
      select d.application_id
             ,d.page_id
             ,'DYNAMIC_ACTION' component_type
             ,d.dynamic_action_name component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,d.condition_type visibility_type
             ,d.condition_expression1 visibility_exp1
      from apex_application_page_da d
      union all
      -- PAGE_PROCESS
      select p.application_id
             ,p.page_id
             ,'PAGE_PROCESS' component_type
             ,p.process_name component_name
             ,p.authorization_scheme visibility_name
             ,p.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_proc p
      union all
      select p.application_id
             ,p.page_id
             ,'PAGE_PROCESS' component_type
             ,p.process_name component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,p.condition_type visibility_type
             ,p.condition_expression1 visibility_exp1
      from apex_application_page_proc p
      union all
      -- REPORT_COLUMN
      select c.application_id
             ,c.page_id
             ,'REPORT_COLUMN' component_type
             ,c.column_alias component_name
             ,c.authorization_scheme visibility_name
             ,c.authorization_scheme_id visibility_id
             ,'AUTHORIZATION_SCHEME' visibility_category
             ,'' visibility_type
             ,'' visibility_exp1
      from apex_application_page_rpt_cols c
      union all
      select c.application_id
             ,c.page_id
             ,'REPORT_COLUMN' component_type
             ,c.column_alias component_name
             ,nvl2(condition_type
                  ,'condition'
                  ,null) visibility_name
             ,null visibility_id
             ,'CONDITION' visibility_category
             ,c.condition_type visibility_type
             ,c.condition_expression1 visibility_exp1
      from apex_application_page_rpt_cols c) p on p.application_id = aap.application_id
                                           and p.page_id = aap.page_id
;