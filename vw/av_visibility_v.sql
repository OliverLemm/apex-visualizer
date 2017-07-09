create or replace view av_visibility_v as
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'PAGE' component_type
      ,a.authorization_scheme visibility_name
      ,'AUTHORIZATION_SCHEME' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_pages a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'PAGE' component_type
      ,a.build_option visibility_name
      ,'BUILD_OPTION' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_pages a
union -- REGIONS
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'REGION' component_type
      ,a.authorization_scheme visibility_name
      ,'AUTHORIZATION_SCHEME' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_page_regions a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'REGION' component_type
      ,a.build_option visibility_name
      ,'BUILD_OPTION' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_page_regions a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'REGION' component_type
      ,nvl2(read_only_condition_type
           ,'read only'
           ,null) visibility_name
      ,'READ_ONLY' visibility_category
      ,a.read_only_condition_type visibility_type
      ,a.read_only_condition_exp1 visibility_exp1
from apex_application_page_regions a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'REGION' component_type
      ,nvl2(a.condition_type
           ,'condition'
           ,null) visibility_name
      ,'CONDITION' visibility_category
      ,a.condition_type visibility_type
      ,a.condition_expression1 visibility_exp1
from apex_application_page_regions a
union -- ITEMS
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'ITEM' component_type
      ,a.authorization_scheme visibility_name
      ,'AUTHORIZATION_SCHEME' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_page_items a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'ITEM' component_type
      ,a.build_option visibility_name
      ,'BUILD_OPTION' visibility_category
      ,'' visibility_type
      ,'' visibility_exp1
from apex_application_page_items a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'ITEM' component_type
      ,nvl2(read_only_condition_type
           ,'read only'
           ,null) visibility_name
      ,'READ_ONLY' visibility_category
      ,a.read_only_condition_type visibility_type
      ,a.read_only_condition_exp1 visibility_exp1
from apex_application_page_items a
union
select a.application_id
      ,a.application_name
      ,a.page_id
      ,'ITEM' component_type
      ,nvl2(a.condition_type
           ,'condition'
           ,null) visibility_name
      ,'CONDITION' visibility_category
      ,a.condition_type visibility_type
      ,a.condition_expression1 visibility_exp1
from apex_application_page_items a
;
