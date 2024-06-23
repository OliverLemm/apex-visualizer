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
-- Page: 709 - APEX 22.1 > Region: 8.1.5 Desupported JavaScript Functions  > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(lower(j.js_code_clob)
           ,'apex.theme42.util.mq') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.2 Desupported Region Positions > Source > SQL Query

select b.page_id
      ,b.page_name
      ,b.region
      ,b.button_name
      ,b.label
      ,b.display_position
from apex_application_page_buttons b
where b.display_position_code in ('TOP'
                                 ,'BOTTOM'
                                 ,'BELOW_BOX'
                                 ,'ABOVE_BOX')
and b.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.1 Desupported Page Positions  > Source > SQL Query

select page_id, page_name, region_name, display_position_code
from apex_application_page_regions r
where display_position_code in ( 'BODY_1', 'BODY_2', 'BODY_3', 'AFTER_HEADER', 'BEFORE_FOOTER' )
and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.4 Legacy Substitution Strings Desupported > Source > SQL Query

select page_id
      ,page_name
      ,component_name
      ,component_type
      ,code_vc2
from av_p0708_legacy_subst_strings_v
where application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.15 APEX-Based REST Services Desupported  > Source > SQL Query

select (select count(1)
        from apex_rest_resource_handlers) apex_rest_resource_handlers_cnt
      ,(select count(1)
        from apex_rest_resource_modules) apex_rest_resource_modules_cnt
      ,(select count(1)
        from apex_rest_resource_parameters) apex_rest_resource_parameters_cnt
      ,(select count(1)
        from apex_rest_resource_templates) apex_rest_resource_templates_cnt
from dual
where (select count(1)
       from apex_rest_resource_handlers) > 0
or (select count(1)
       from apex_rest_resource_modules) > 0
or (select count(1)
       from apex_rest_resource_parameters) > 0
or (select count(1)
       from apex_rest_resource_templates) > 0;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.14 Removed Content Delivery Network  > Source > SQL Query

select p.content_delivery_network
from apex_applications p
where p.application_id = :P0_APP_ID
and p.content_delivery_network is not null;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.13 Syntax {COLUMN_NAME}_LABEL in Interactive Grid Icon and Detail Views Desupported > Source > SQL Query

select page_id
      ,page_name
      ,region_name
      ,icon_view_custom
      ,detail_view_for_each_row
from apex_appl_page_igs
where application_id = :P0_APP_ID
and (regexp_like(icon_view_custom
               ,'&' || '\w+_LABEL\.'
               ,'i') or --
      regexp_like(detail_view_for_each_row
               ,'&' || '\w+_LABEL\.'
               ,'i'));

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.12 Date Picker (jQuery) Desupported  > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
      ,p.label
from apex_application_page_items p
where p.display_as_code = 'NATIVE_DATE_PICKER'
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.9 apex.widget.initPageItem Function Desupported  > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(lower(j.js_code_clob)
           ,'apex.widget.initPageItem') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.8 apex.server Plug-in and Process Function Async Option Desupported > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where instr(j.js_code_clob
           ,'async') > 0
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.7 Show / Hide All Page Items On Same Line Attributes Desupported  > Source > SQL Query

select d.page_id
      ,d.page_name
      ,d.dynamic_action_name
      ,d.affected_elements
from apex_application_page_da_acts d
where d.affected_elements_type_code = 'ITEM'
and d.action_code in ('NATIVE_SHOW'
                    ,'NATIVE_HIDE')
and d.attribute_01 = 'Y'
and d.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 8.1.6 Post Calculation for Page Items Desupported > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.region
      ,p.item_name
      ,p.label
from apex_application_page_items p
where p.source_post_computation is not null
and p.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 6.1.7 Deprecated View Columns > Source > SQL Query

select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url
from apex_applications a
where (a.app_builder_icon_name is not null or 
       a.favicons is not null or
       a.pwa_manifest_icon_url is not null)
and a.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 6.1.6 Deprecated Properties  > Source > SQL Query

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
-- Page: 709 - APEX 22.1 > Region: 6.1.5 Deprecated Legacy Web Service References > Source > SQL Query

select w.web_service_name
      ,w.url
      ,w.ACTION
from apex_application_web_services w
where w.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 6.1.3 Deprecated Attributes in App Builder > Source > SQL Query

select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url
from apex_applications a
where (a.app_builder_icon_name is not null or 
       a.favicons is not null or
       a.pwa_manifest_icon_url is not null)
and a.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 6.1.2 Deprecated JavaScript APIs > Source > SQL Query

select j.page_id
      ,j.page_name
      ,j.component_name
      ,j.component_type
      ,j.js_code_vc2
from av_javascript_v j
where (instr(lower(j.js_code_clob)
           ,'useIconList') > 0 or
       instr(lower(j.js_code_clob)
           ,'iconListOptions') > 0)
and j.application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 709 - APEX 22.1 > Region: 6.1.1 Deprecated APIs  > Source > SQL Query

select p.page_id
      ,p.page_name
      ,p.component_name
      ,p.component_type
      ,p.process_point
      ,p.plsql_code_clob
from av_plsql_v p
where application_id = :P0_APP_ID
and instr(upper(p.plsql_code_clob)
        ,'APEX_IR.GET_REPORT') > 0;

