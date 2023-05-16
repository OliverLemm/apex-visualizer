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
-- Page: 0 - Global Page - Desktop > Button: Refresh > Server-side Condition (Rows returned) > SQL Query

select le.entry_text
from apex_application_list_entries le
where le.application_id = :APP_ID
and le.list_name = 'Desktop Navigation Menu'
and le.parent_entry_text = 'Migration'

