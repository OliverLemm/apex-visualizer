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
-- Page: 500 - Links > Region: Links to Page > Source > SQL Query

select PAGE_ID,
       PAGE_NAME,
       PAGE_GROUP,
       LINK_TYPE,
       LINK_NAME,
       LINK_LABEL,
       LINK_PAGE_ID,
       PAGE_DESIGNER_URL
  from AV_PAGE_LINKS_V
 where application_id = :P0_APP_ID and
(:P0_PAGE_ID is null or :P0_PAGE_ID = link_page_id);

-- ----------------------------------------
-- Page: 500 - Links > Region: Links from Page > Source > SQL Query

select PAGE_ID,
       PAGE_NAME,
       PAGE_GROUP,
       LINK_TYPE,
       LINK_NAME,
       LINK_LABEL,
       LINK_PAGE_ID,
       PAGE_DESIGNER_URL
  from AV_PAGE_LINKS_V
 where application_id = :P0_APP_ID and
(:P0_PAGE_ID is null or :P0_PAGE_ID = page_id);

