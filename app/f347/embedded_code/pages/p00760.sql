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
-- Page: 760 - Migration Effort > Region: Migration Effort > Source > SQL Query

select 
 apex_version
,rn_type
,rn_chapter_no
,rn_chapter_name
,rn_chapter_text
,migration_priority
,count(1) amount_of_objects
,round(sum(migration_effort_in_days)
      ,3) migration_effort_in_days
from av_migration_pkg.ptf_effort_calculation(i_app_id               => :P0_APP_ID
                                            ,i_apex_versions        => :P760_APEX_VERSIONS
                                            ,i_migration_priorities => :P760_MIGRATION_PRIORITIES)
  group by apex_version
          ,rn_type
          ,rn_chapter_no
          ,rn_chapter_name
          ,rn_chapter_text
          ,migration_priority
  order by migration_priority
          ,replace(rn_chapter_no,'.','')
          ,rn_type
          ,apex_version;

