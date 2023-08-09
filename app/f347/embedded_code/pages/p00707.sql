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
-- Page: 707 - APEX 21.1 > Region: 5.1.3 Date Picker (jQuery) Deprecated > Source > SQL Query

select 
pi.page_id, 
pi.page_name,
pi.item_name, 
pi.label
from apex_application_page_items pi
where pi.display_as_code = 'NATIVE_DATE_PICKER'
and pi.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 707 - APEX 21.1 > Region: 7.1.11 apex.navigation.dialog.fireCloseHandler function is Desupported > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(j.js_code_clob
           ,'apex.navigation.dialog.fireCloseHandler') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 707 - APEX 21.1 > Region: 7.1.9 afterModify is Desupported > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(j.js_code_clob
           ,'.afterModify') > 0
and j.application_id = :P0_APP_ID;

