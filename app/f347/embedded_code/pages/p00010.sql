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
-- Page: 10 - Applications > Region: Page Functions > Source > SQL Query

select application_name app
      ,page_function
      ,count(page_id) amount
from av_applications_v
where application_id = :P0_APP_ID or :P0_APP_ID is null
group by application_name , page_function
order by count(page_id) desc;

-- ----------------------------------------
-- Page: 10 - Applications > Region: Complexity > Source > SQL Query

select * from (
    select aa.application_name, aa.application_id, 'Pages' series_name ,aa.pages series_value from apex_applications aa
    union
    select j.application_name, j.application_id, 'JavaScript', sum(j.js_code_length) series_value 
    from av_javascript_v j group by application_id,application_name
    union
    select c.application_name, c.application_id, 'CSS', sum(c.css_code_length) series_value 
    from av_css_v c group by application_id,application_name
    union
    select p.application_name, p.application_id, 'PL/SQL', sum(p.code_length) series_value 
    from av_plsql_v p group by application_id,application_name
)
where (application_id = :P0_APP_ID or :P0_APP_ID is null)
and (lower(series_name) = lower(:P10_COMPLEXITY_CATEGORY) or :P10_COMPLEXITY_CATEGORY is null)
order by series_value desc;

-- ----------------------------------------
-- Page: 10 - Applications > Region: Shared Components > Source > SQL Query

select * from (
    select aa.application_name, aa.application_id, 'Tabs' series_name ,aa.tabs series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Application Items' series_name ,aa.application_items series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Application Processes' series_name ,aa.application_processes series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Application Computations' series_name ,aa.application_computations series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Shortcuts' series_name ,aa.shortcuts series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Web Services' series_name ,aa.web_services series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Trees' series_name ,aa.trees series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Build Options' series_name ,aa.build_options series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Breadcrumbs' series_name ,aa.Breadcrumbs series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Navbar Entries' series_name ,aa.nav_bar_entries series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'Lists' series_name ,aa.lists series_value from apex_applications aa
    union
    select aa.application_name, aa.application_id, 'List of Values' series_name ,aa.lists_of_values series_value from apex_applications aa)
where (application_id = :P0_APP_ID or :P0_APP_ID is null)
and (lower(series_name) = :P0_COMPONENT or :P0_COMPONENT is null);

-- ----------------------------------------
-- Page: 10 - Applications > Region: Details > Source > SQL Query

select aa.application_id app_id
      ,aa.application_name app_name
      ,aa.alias
      ,aa.owner
      ,aa.version
      ,aa.availability_status availability
      ,aa.build_status
      ,aa.last_updated_by
      ,aa.last_updated_on
      ,aa.compatibility_mode
      ,aa.page_template
from apex_applications aa
where aa.application_id = :P0_APP_ID
or :P0_APP_ID is null;

