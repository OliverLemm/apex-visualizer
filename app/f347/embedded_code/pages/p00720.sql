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
-- Page: 720 - APEX 23.2 > Region: 7.2 Querying Template Component Metadata > Source > SQL Query

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

