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
-- Page: 750 - Migration Details > Region: Migration Details > Source > SQL Query

select apex_version
      ,rn_type
      ,rn_chapter_no
      ,rn_chapter_name
      ,rn_chapter_text
      ,rn_chapter_link
      ,page_id
      ,page_name
      ,component_type
      ,component_name
      ,coalesce(plsql_code_vc2
               ,coalesce(js_code_vc2
                        ,css_code_vc2)) code
      ,migration_priority
      ,round(migration_effort_in_days,2) migration_effort_in_days
from av_migration_pkg.ptf_effort_calculation(i_app_id               => :P0_APP_ID
                                            ,i_apex_versions        => :P750_APEX_VERSIONS
                                            ,i_migration_priorities => :P750_MIGRATION_PRIORITIES
                                            ,i_migration_types      => :P750_MIGRATION_TYPES
                                            ,i_show_only_findings   => :P750_SHOW_ONLY_FINDINGS)
order by apex_version
        ,replace(rn_chapter_no
                ,'.'
                ,'')
        ,page_id
        ,component_name;

