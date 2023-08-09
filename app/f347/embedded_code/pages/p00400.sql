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
-- Page: 400 - Plugins > Region: Plugins > Source > SQL Query

select distinct 
DISPLAY_NAME,
PLUGIN_TYPE,
NAME,       
API_VERSION,
RENDER_FUNCTION,
HELP_TEXT,
VERSION_IDENTIFIER,
ABOUT_URL
from AV_PLUGINS_V
where application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 400 - Plugins > Page Item: P400_PLUGIN_ID > List of Values > SQL Query

select display_name, plugin_id 
from av_plugins_v
where application_id = :P0_APP_ID
group by display_name, plugin_id
order by display_name;

