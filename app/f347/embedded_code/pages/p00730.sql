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
-- Page: 730 - APEX 24.1 > Region: 5.1 Deprecated APIs > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(lower(p.plsql_code_clob)
        ,'approval') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_javascript.add_3rd_party_library_file') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_css.add_3rd_party_library_file') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_util.url_encode') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_plugin_util.print_display_only') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'apex_automation.abort') > 0
    );

-- ----------------------------------------
-- Page: 730 - APEX 24.1 > Region: 5.2 Deprecated Dynamic Action Event > Source > SQL Query

select d.page_id
      ,d.page_name
      ,'dynamic action' component_type
      ,d.dynamic_action_name
      ,d.when_event_name
from apex_application_page_da d
where d.application_id = :P0_APP_ID
and d.when_event_name = 'Page Unload';

-- ----------------------------------------
-- Page: 730 - APEX 24.1 > Region: 5.4 Number Field Substitutions > Source > SQL Query

select p.page_id, p.page_name, p.display_as, p.item_name, p.label, p.attribute_01 item_min, p.attribute_02 item_max
from apex_application_page_items p
where display_as_code = 'NATIVE_NUMBER_FIELD'
and p.application_id = :P0_APP_ID
and (instr(p.attribute_01,'&') > 0 or instr(p.attribute_02,'&') > 0);

-- ----------------------------------------
-- Page: 730 - APEX 24.1 > Region: 5.3 Deprecated Plugin Attribute > Source > SQL Query

select p.plugin_type, p.display_name, p.substitute_attributes
from apex_appl_plugins p
where p.plugin_type = 'Region Type'
and p.application_id = :P0_APP_ID
and p.substitute_attributes = 'Y';

