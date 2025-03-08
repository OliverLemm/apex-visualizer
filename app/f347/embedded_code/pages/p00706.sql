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
-- Page: 706 - APEX 20.2 > Region: 7.1.7 openModal and closeModal are Desupported > Source > SQL Query

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
-- Page: 706 - APEX 20.2 > Region: 7.1.8 Tabular Forms Desupported > Source > SQL Query

select 
 r.page_id
,r.page_name
,r.region_name 
from apex_application_page_regions r
where r.source_type = 'Tabular Form'
and r.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 706 - APEX 20.2 > Region: 7.1.2 apexrefresh Event is Desupported  > Source > SQL Query

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
-- Page: 706 - APEX 20.2 > Region: 7.1.1 Theme Style "Vista" Desupported in Universal Theme > Source > SQL Query

select ts.name, is_current
from apex_application_theme_styles ts
where ts.application_id = :P0_APP_ID
and ts.name = 'Vista'
and ts.is_current = 'Yes';

-- ----------------------------------------
-- Page: 706 - APEX 20.2 > Region: 7.1.13 Desupported JavaScript Functions > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(j.js_code_clob
           ,'.afterModify') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 706 - APEX 20.2 > Region: 7.1.4 APEX_UTIL.STRING_TO_TABLE Function Desupported  > Source > SQL Query

select p.page_id, p.page_name, p.component_name, p.plsql_code_vc2
from av_plsql_v p
where instr(upper(p.plsql_code_clob), 'APEX_UTIL.STRING_TO_TABLE') > 0
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 706 - APEX 20.2 > Region: 7.1.5 APEX_UTIL.TABLE_TO_STRING Function Desupported > Source > SQL Query

select p.page_id, p.page_name, p.component_name, p.plsql_code_vc2
from av_plsql_v p
where instr(upper(p.plsql_code_clob), 'APEX_UTIL.TABLE_TO_STRING') > 0
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 706 - APEX 20.2 > Region: 7.1.6 APEX_PAGE.IS_JQM_SMARTPHONE_UI is Desupported > Source > SQL Query

select p.page_id, p.page_name, p.component_name, p.plsql_code_vc2
from av_plsql_v p
where instr(upper(p.plsql_code_clob), 'APEX_PAGE.IS_JQM_SMARTPHONE_UI') > 0
and p.application_id = :P0_APP_ID;

