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
-- Page: 708 - APEX 21.2 > Region: 5.1.4 Legacy Substitution Strings Deprecated  > Source > SQL Query

select page_id
      ,page_name
      ,component_name
      ,component_type
      ,code_vc2
from av_p0708_legacy_subst_strings_v
where application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 708 - APEX 21.2 > Region: 5.1.1 Deprecated Page Positions  > Source > SQL Query

select page_id, page_name, region_name, display_position_code
from apex_application_page_regions r
where display_position_code in ( 'BODY_1', 'BODY_2', 'BODY_3', 'AFTER_HEADER', 'BEFORE_FOOTER' )
and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 708 - APEX 21.2 > Region: 5.1.2 Deprecated Region Positions > Source > SQL Query

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

