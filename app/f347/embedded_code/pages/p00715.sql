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
-- Page: 715 - APEX 23.1 > Region: 7.2 Desupported User Interfaces Removed > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(upper(p.plsql_code_clob)
        ,'APEX_WORKSPACE_UI_TYPES') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_APPL_USER_INTERFACES') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'ui_detection_css_urls') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'user_interface_id') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'page_transition') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'popup_transition') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'ui_type_id') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'ui_type_name') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'default_page_transition') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'default_popup_transition') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'supported_ui_types') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'supported_ui_types') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'supported_ui_types') > 0
    );

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 7.4 DOM Object Desupported > Source > SQL Query

select aap.page_id
      ,aap.page_name
      ,aap.dynamic_action_name
from apex_application_page_da aap
where aap.application_id = :P0_APP_ID
and aap.when_selection_type_code = 'DOM' -- not correct must be changed;

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 5.1 CKEditor5 Deprecated > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
      ,p.label
from apex_application_page_items p
where p.display_as_code = ('NATIVE_RICH_TEXT_EDITOR')
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 7.3 Desupported JET Date Picker Item Type Migrated > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
      ,p.label
      ,case p.display_as_code when 'NATIVE_DATE_PICKER_JET' then 'JET Datepicker' else 'jQuery Datepicker' end display_as
from apex_application_page_items p
where p.display_as_code in ('NATIVE_DATE_PICKER_JET','NATIVE_DATE_PICKER')
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 5.5 Deprecated Functions and Procedures > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(lower(p.plsql_code_clob)
        ,'.set_build_option_status') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'.set_application_status') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'.get_application_status') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'.set_global_notification') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'.get_global_notification') > 0 or
     instr(lower(p.plsql_code_clob)
        ,'.set_app_build_status') > 0
    );

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 5.4 Display Only Item with Format HTML (Unsafe) Deprecated > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
      ,p.label
from apex_application_page_items p
where p.display_as_code = 'NATIVE_DISPLAY_ONLY'
and p.attribute_05 = 'HTML' -- Format
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 715 - APEX 23.1 > Region: 5.3 Preventing Double Escaping of LOV Display Values > Source > SQL Query

select 0 page_id
      ,'Shared Components' page_name
      ,aal.list_of_values_name lov_or_item_name
      ,aal.list_of_values_query lov_query
from apex_application_lovs aal
where lov_type = 'Dynamic'
and (upper(list_of_values_query) like '%HTF.ESCAPE_SC%' --
      or upper(list_of_values_query) like '%APEX_ESCAPE.HTML%' --
      or upper(list_of_values_query) like '%WWV_FLOW_ESCAPE.HTML%') --
and aal.application_id = :p0_app_id
union all
select aapi.page_id
      ,aapi.page_name
      ,aapi.item_name      lov_or_item_name
      ,aapi.lov_definition lov_query
from apex_application_page_items aapi
where lov_named_lov is null
and (upper(lov_definition) like '%HTF.ESCAPE_SC%' --
      or upper(lov_definition) like '%APEX_ESCAPE.HTML%' --
      or upper(lov_definition) like '%WWV_FLOW_ESCAPE.HTML%') --
and aapi.application_id = :p0_app_id;

