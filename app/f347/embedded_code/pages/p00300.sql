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
-- Page: 300 - PLSQL > Region: Place of PLSQL > Source > SQL Query

select application_name
      ,application_id
      ,component_type || ' - ' || code_type component
      ,sum(code_length) amount
from av_plsql_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)
group by application_name,application_id,component_type || ' - ' || code_type
order by sum(code_length) desc;

-- ----------------------------------------
-- Page: 300 - PLSQL > Page Item: P300_COMPONENT_TYPE > List of Values > SQL Query

select distinct component_type d, component_type r
from av_plsql_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID);

-- ----------------------------------------
-- Page: 300 - PLSQL > Region: Characters of PLSQL Code per Page > Source > SQL Query

select page_id,
  page_name_and_id,
  page_group,
  page_function,
  components_count,
  code_length_sum,
  code_lines_sum,
  tooltip
from av_p0300_plsql_code_by_page_v t
where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)
and t.page_id is not null
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = t.best_practice);

-- ----------------------------------------
-- Page: 300 - PLSQL > Region: PLSQL in Page > Source > SQL Query

select component_type || ' - ' || v.component_name series_name, v.component_type, v.plsql_code, v.code_length, v.code_type, v.tooltip, v.page_designer_url
from av_plsql_v v
where v.application_id = :P0_APP_ID 
and (v.page_id = :P0_PAGE_ID)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = v.best_practice)
and (v.component_type = :P300_COMPONENT_TYPE or :P300_COMPONENT_TYPE is null)
order by code_length desc;

