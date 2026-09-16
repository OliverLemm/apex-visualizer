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
-- Page: 745 - APEX 26.1 > Region: 5.1 Deprecated APIs > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(lower(p.plsql_code_clob)
        ,'apex_lang.message') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_plugin_util.execute_plsql_code') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_util.custom_calendar') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_util.increment_calendar') > 0
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
and (instr(lower(p.plsql_code_clob)
        ,'COMPONENT_SIGNATURE') > 0);

