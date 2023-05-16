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
-- Page: 50 - Last Updated > Region: Application changes > Source > SQL Query

select l.application_id
      ,l.application_name
      ,l.audit_action
      ,trunc(audit_date)
      ,count(1) amount
from apex_developer_activity_log l
where (l.application_id = :P0_APP_ID or :P0_APP_ID is null)
and l.page_id is not null
and (l.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
group by trunc(audit_date), audit_action, application_name, application_id

-- ----------------------------------------
-- Page: 50 - Last Updated > Page Item: P50_DATE > List of Values > SQL Query

select to_char(trunc(audit_date), 'dd.mm.yyyy') d, to_char(trunc(audit_date), 'dd.mm.yyyy') r
from apex_developer_activity_log l
where (l.application_id = :P0_APP_ID or :P0_APP_ID is null)
and l.page_id is not null
and (l.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
group by trunc(audit_date)

-- ----------------------------------------
-- Page: 50 - Last Updated > Region: Changes on Components > Source > SQL Query

select l.application_id
      ,l.application_name
      ,l.page_name
      ,l.page_id
      ,l.audit_action
      ,l.component_name
      ,l.component
      ,trunc(audit_date)
      ,count(1) amount
      ,'page: ' || page_name || '<br>component name: ' || component_name || '<br>component type: ' || component tooltip
from apex_developer_activity_log l
where (l.application_id = :p0_app_id or :p0_app_id is null)
and l.page_id is not null and component_name is not null
and (l.page_id = :p0_page_id or :p0_page_id is null)
and (trunc(audit_date) = to_date(:p50_date
                               ,'dd.mm.yyyy') or :p50_date is null)
group by trunc(audit_date)
        ,audit_action
        ,application_name
        ,application_id
        ,l.component_name
        ,component
        ,page_name
        ,page_id
order by count(1) desc

