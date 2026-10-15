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
-- Page: 745 - APEX 26.1 > Region: 5.1 Cohere AI Models Deprecated > Source > SQL Query

select a.workspace, a.provider_type, model_name
from apex_workspace_ai_services a
where lower(a.model_name) in ('command-r-08-2024'
                             ,'command-r-plus-08-2024'
                             ,'command-latest'
                             ,'command-plus-latest');

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.4 Deprecated PL/SQL APIs > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.CACHE_GET_DATE_OF_PAGE_CACHE') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.CACHE_GET_DATE_OF_REGION_CACHE') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.PURGE_REGIONS_BY_NAME') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.PURGE_REGIONS_BY_PAGE') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_UTIL.PURGE_REGIONS_BY_APP') > 0
    );

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.2 Legacy Calendar Templates Deprecated  > Source > SQL Query

select r.page_id
      ,r.page_name
      ,r.region_name
      ,r.source_type
      ,r.source_type_code
from apex_application_page_regions r
where source_type_code = 'CALENDAR'
and r.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.3 Deprecated Property > Source > SQL Query

select s.page_id
      ,s.page_name
      ,s.region_name
      ,s.series_name
      ,s.js_static_id
from apex_application_page_chart_s s
where s.js_static_id is not null
and s.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.5 Deprecated JavaScript APIs > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_type
      ,j.js_code_clob
from av_javascript_v j
where application_id = :P0_APP_ID
and (instr(lower(j.js_code_clob)
        ,'apex.util.cancelinvokeafterpaint') > 0 or
     instr(lower(j.js_code_clob)
        ,'apex.util.invokeafterpaint') > 0 or
     instr(lower(j.js_code_clob)
        ,'widget.grid.getselectedrange') > 0
    );

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.8 Deprecated Substitution Strings  > Source > SQL Query

select t.component_type, 
t.component_name, 
t.template_clob1, 
t.template_clob2, 
t.template_clob3, 
t.template_vc1, 
t.template_vc2, 
t.template_vc3
from av_templates_v t
where t.application_id = :P0_APP_ID 
and (instr(upper(t.template_clob1)
           ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_clob2)
       ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_clob3)
       ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc1)
       ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc2)
       ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc3)
       ,'#REGION_STATIC_ID#') > 0
or instr(upper(t.template_clob1)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_clob2)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_clob3)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_vc1)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_vc2)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_vc3)
       ,'#BUTTON_ID#') > 0
or instr(upper(t.template_clob1)
       ,'#APP_REGION_STATIC_ID#') > 0
or instr(upper(t.template_clob2)
       ,'#APP_REGION_STATIC_ID#') > 0
or instr(upper(t.template_clob3)
       ,'#APP_REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc1)
       ,'#APP_REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc2)
       ,'#APP_REGION_STATIC_ID#') > 0
or instr(upper(t.template_vc3)
       ,'#APP_REGION_STATIC_ID#') > 0);

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 5.9 Deprecated Public Views and Public View Columns  > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(lower(p.plsql_code_clob)
        ,'apex_appl_ai_configs') > 0
    or instr(lower(p.plsql_code_clob)
        ,'apex_appl_ai_config_rag_srcs') > 0
    or instr(lower(p.plsql_code_clob)
        ,'ai_config_id') > 0
    or instr(lower(p.plsql_code_clob)
        ,'ai_config_name') > 0
    );

-- ----------------------------------------
-- Page: 745 - APEX 26.1 > Region: 7.1 Desupported Public View Columns > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(upper(p.plsql_code_clob)
        ,'COMPONENT_SIGNATURE') > 0);

