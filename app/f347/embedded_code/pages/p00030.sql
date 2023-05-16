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
-- Page: 30 - Page > Region: Page > Source > SQL Query

select aap.application_id
      ,aap.application_name
      ,aap.page_id
      ,aap.page_name
      ,aap.page_mode
      ,aap.page_alias
      ,aap.page_function
      ,aap.page_group
      ,aap.page_template
      ,aap.created_by
      ,aap.created_on
      ,aap.last_updated_by
      ,aap.last_updated_on
      ,aap.reload_on_submit
      ,aap.warn_on_unsaved_changes
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)

