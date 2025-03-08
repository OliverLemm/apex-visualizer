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
-- Page: 740 - APEX 24.2 > Region: 7.3 TinyMCE-based Rich Text Editor Desupported > Source > SQL Query

select i.page_id
      ,i.page_name
      ,i.region
      ,i.label
      ,i.init_javascript_code
from apex_application_page_items i
where i.display_as = 'Rich Text Editor'
and i.init_javascript_code is not null
and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 740 - APEX 24.2 > Region: 7.1 Desupported APIs > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where (instr(lower(j.js_code_clob)
           ,'apex_javascript.add_3rd_party_library_file') > 0
       or
       instr(lower(j.js_code_clob)
           ,'apex_css.add_3rd_party_library_file') > 0
      )
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 740 - APEX 24.2 > Region: 5.1 Deprecated APIs > Source > SQL Query

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
-- Page: 740 - APEX 24.2 > Region: 7.2 Public Dictionary View Changes > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(lower(p.plsql_code_clob)
        ,'apex_application_page_items') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_appl_page_ig_columns') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_appl_plugin_settings') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_appl_page_filters') > 0)
and (instr(lower(p.plsql_code_clob)
        ,'attribute_01') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_02') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_03') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_04') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_05') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_06') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_07') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_08') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_09') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_10') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_11') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_12') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_13') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_14') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_15') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_16') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_17') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_18') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_19') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_20') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_21') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_22') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_23') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_24') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'attribute_25') > 0
    );

