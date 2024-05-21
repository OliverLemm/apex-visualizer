-- --------------------------------------------------------------------------------
-- 
-- Oracle APEX source export file
-- 
-- The contents of this file are intended for review and analysis purposes only.
-- Developers must use the Application Builder to make modifications to an
-- application. Changes to this file will not be reflected in the application.
-- 
-- --------------------------------------------------------------------------------

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 7.1.2 Desupported JavaScript Functions > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where (instr(lower(j.js_code_vc2)
           ,'openmodal') > 0
or instr(lower(j.js_code_vc2)
       ,'closemodal') > 0)
and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.1 Deprecated JavaScript Functions > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(lower(j.js_code_vc2)
           ,'apex.theme42.util.mq') > 0
and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.10 apexrefresh Event is Deprecated > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where regexp_like(j.js_code_vc2
                 ,'apex.event.trigger.*apexrefresh'
                 ,'i')
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.5 Tabular Forms Deprecated  > Source > SQL Query

select 
 r.page_id
,r.page_name
,r.region_name 
from apex_application_page_regions r
where r.source_type = 'Tabular Form'
and r.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.7 Theme Style "Vista" Deprecated in Universal Theme > Source > SQL Query

select ty.name 
from apex_application_theme_styles ty
where ty.name = 'Vista'
and ty.is_current = 'Yes'
and ty.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.8 Post Calculation for Page Items Deprecated  > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
from apex_application_page_items p
where p.source_post_computation is not null
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.9 Show / Hide All Page Items On Same Line attributes deprecated > Source > SQL Query

select a.page_id
      ,a.page_name
      ,a.dynamic_action_name
      ,a.action_name
from apex_application_page_da_acts a
where a.action_name in ('Hide'
                       ,'Show')
and a.attribute_01 = 'Y'
and a.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 705 - APEX 20.1 > Region: 6.1.14 apex.widget.initPageItem Function Deprecated  > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(lower(j.js_code_vc2)
           ,'apex.widget.initPageItem') > 0
and application_id = :P0_APP_ID;

