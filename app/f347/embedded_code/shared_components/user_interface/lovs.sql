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
-- List of Values: APEX_VERSIONS > Source > SQL Query

select vc2 d, vc2 r from av_migration_pkg.tf_apex_versions();

-- ----------------------------------------
-- List of Values: APPLICATIONS > Source > SQL Query

select aa.application_id || ' - ' || aa.application_name app
      ,aa.application_id
from apex_applications aa
order by aa.application_id;

-- ----------------------------------------
-- List of Values: COMPONENTS (CHART) > Source > SQL Query

select lower(s.items_value_column_name) d, lower(s.items_value_column_name) r
from apex_application_page_chart_s s
where s.page_id = :APP_PAGE_ID
and s.items_value_column_name <> 'AMOUNT'
order by 1;

-- ----------------------------------------
-- List of Values: MIGRATION_PRIORITY > Source > SQL Query

select '1 - must' d, 1 r from dual
union all
select '2 - should' d, 2 r from dual
union all
select '3 - recommed' d, 3 r from dual
union all
select '4 - best practices' d, 4 r from dual
union all
select '5 - information' d, 5 r from dual;

-- ----------------------------------------
-- List of Values: MIGRATION_TYPES > Source > SQL Query

select 'generally' d, 'generally' r, 1 sort_by from dual
union all
select 'new feature' d, 'new feature' r, 2 sort_by from dual
union all
select 'deprecated' d, 'deprecated' r, 3 sort_by from dual
union all
select 'desupported' d, 'desupported' r, 4 sort_by from dual;

-- ----------------------------------------
-- List of Values: PAGES > Source > SQL Query

select  page_name || ' (' || page_id || ')' page,
       page_id 
  from apex_application_pages
where application_id = :P0_APP_ID
 order by 1;

