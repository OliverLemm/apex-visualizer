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

select name
      ,display_name
      ,plugin_type
      ,(select count(1)
        from av_plugins_v p1
        where p1.page_id is not null
        and p1.name = p.name
        and p1.application_id = p.application_id) plugin_references
      ,render_function
      ,api_version
      ,help_text
      ,version_identifier
      ,about_url
from apex_appl_plugins p
where p.application_id = :P0_APP_ID
and p.plugin_type <> 'Template Component';

-- ----------------------------------------
-- Page: 400 - Plugins > Page Item: P400_PLUGIN_ID > List of Values > SQL Query

select display_name, plugin_id 
from av_plugins_v
where application_id = :P0_APP_ID
group by display_name, plugin_id
order by display_name;

