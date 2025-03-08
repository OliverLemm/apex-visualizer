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
-- Page: 200 - CSS > Region: Place of CSS > Source > SQL Query

select application_name
      ,application_id
      ,component_type || ' - ' || css_code_type js_component
      ,sum(css_code_length) amount
from av_css_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)
group by application_name,application_id,component_type || ' - ' || css_code_type
order by sum(css_code_length) desc;

-- ----------------------------------------
-- Page: 200 - CSS > Page Item: P200_COMPONENT_TYPE > List of Values > SQL Query

select distinct component_type d, component_type r
from av_javascript_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID);

-- ----------------------------------------
-- Page: 200 - CSS > Region: CSS in Page > Source > SQL Query

select page_name || ' (' || v.page_id || ') - ' || v.component_name series_name, v.component_type, v.css_code, v.css_code_length, v.css_code_type, v.tooltip, v.page_designer_url
from av_css_v v
where v.application_id = :P0_APP_ID 
and (v.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)
and (v.component_type = :P200_COMPONENT_TYPE or :P200_COMPONENT_TYPE is null)
order by css_code_length desc;

-- ----------------------------------------
-- Page: 200 - CSS > Region: Characters of CSS Code per Page > Source > SQL Query

select page_id,
  page_name_and_id,
  page_group,
  page_function,
  components_count,
  code_length_sum,
  code_lines_sum,
  tooltip
from av_p0200_css_code_by_page_v t
where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)
and t.page_id is not null
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = t.best_practice);

