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
-- Page: 710 - APEX 22.2 > Region: 8.1.1 Desupported Attributes in App Builder > Source > SQL Query

select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url
from apex_applications a
where (a.app_builder_icon_name is not null or 
       a.favicons is not null or
       a.pwa_manifest_icon_url is not null)
and a.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 8.1.2 Desupported Properties > Source > SQL Query

select r.page_id
      ,r.page_name
      ,r.region_name
      ,r.ascending_image
      ,r.ascending_image_attributes
      ,r.descending_image
      ,r.descending_image_attributes
from apex_application_page_regions r
where (r.ascending_image is not null
or r.ascending_image_attributes is not null
or r.descending_image is not null
or r.descending_image_attributes is not null)
and r.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 8.1.3 Desupported View Columns > Source > SQL Query

select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url
from apex_applications a
where (a.app_builder_icon_name is not null or 
       a.favicons is not null or
       a.pwa_manifest_icon_url is not null)
and a.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 6.1.3 Deprecated APIs and Parameters (PL/SQL API) > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(upper(p.plsql_code_clob)
        ,'APEX_PAGE.IS_DESKTOP_UI') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_PAGE.GET_UI_TYPE') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_INSTANCE_ADMIN.ADD_WEB_ENTRY_POINT') > 0
    );

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 6.1.4 Deprecated jQuery/JET Date Pickers > Source > SQL Query

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
-- Page: 710 - APEX 22.2 > Region: 6.1.2 Deprecated User Interfaces Removed > Source > SQL Query

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
     instr(upper(p.plsql_code_clob)
        ,'UI_DETECTION_CSS_URLS') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'USER_INTERFACE_ID') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'USER_INTERFACE_ID') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'PAGE_TRANSITION') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'POPUP_TRANSITION') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'UI_TYPE_ID') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'UI_TYPE_NAME') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'DEFAULT_PAGE_TRANSITION') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'DEFAULT_POPUP_TRANSITION') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'SUPPORTED_UI_TYPES') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'SUPPORTED_UI_TYPES') > 0
    );

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 6.1.3 Deprecated APIs and Parameters (JavaScript API)  > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(lower(j.js_code_clob)
           ,'apex.pwa.gettnstalltext') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 710 - APEX 22.2 > Region: 8.1.8 Desupported Public Package APIs > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and (instr(upper(p.plsql_code_clob)
        ,'APEX_PAGE.IS_DESKTOP_UI') > 0 or
     instr(upper(p.plsql_code_clob)
        ,'APEX_PAGE.GET_UI_TYPE') > 0
    );

