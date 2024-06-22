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
-- Page: 730 - APEX 24.1 > Region: 7.2 Querying Template Component Metadata > Source > SQL Query

select r.page_id
      ,r.page_name
      ,r.region_name
from apex_application_page_regions r
where r.application_id = :P0_APP_ID
and r.template_component_type_code is not null
and (r.attribute_01 is not null or --
      r.attribute_02 is not null or --
      r.attribute_03 is not null or --
      r.attribute_04 is not null or --
      r.attribute_05 is not null or --
      r.attribute_06 is not null or --
      r.attribute_07 is not null or --  
      r.attribute_08 is not null or --
      r.attribute_09 is not null or --  
      r.attribute_10 is not null or --
      r.attribute_11 is not null or --
      r.attribute_12 is not null or --
      r.attribute_13 is not null or --
      r.attribute_14 is not null or --
      r.attribute_15 is not null or --
      r.attribute_16 is not null or --
      r.attribute_17 is not null or --  
      r.attribute_18 is not null or --
      r.attribute_19 is not null or --  
      r.attribute_20 is not null or --
      r.attribute_21 is not null or --
      r.attribute_22 is not null or --
      r.attribute_23 is not null or --
      r.attribute_24 is not null or --
      r.attribute_25 is not null);

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

