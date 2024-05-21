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
-- Page: 100 - JavaScript > Region: Characters of JavaScript Code per Page > Source > SQL Query

select application_name, t.page_id,page_name || ' (' || page_id || ')'  page_name, sum(t.js_code_length) js_code_length
from av_javascript_v t
where t.application_id = :P0_APP_ID or :P0_APP_ID is null
group by application_id, application_name , page_id, page_name
order by sum(t.js_code_length) desc;

-- ----------------------------------------
-- Page: 100 - JavaScript > Page Item: P100_COMPONENT_TYPE > List of Values > SQL Query

select distinct component_type d, component_type r
from av_javascript_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID);

-- ----------------------------------------
-- Page: 100 - JavaScript > Region: JavaScript in Page > Source > SQL Query

select page_name || ' (' || v.page_id || ') - ' || v.component_name series_name, 
       v.component_type, 
       v.js_code, 
       v.js_code_length, 
       v.js_code_type, 
       v.tooltip, 
       v.page_designer_url
from av_javascript_v v
where v.application_id = :P0_APP_ID 
and (v.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = v.best_practice)
and (v.component_type = :P100_COMPONENT_TYPE or :P100_COMPONENT_TYPE is null)
order by js_code_length desc;

-- ----------------------------------------
-- Page: 100 - JavaScript > Region: Characters of JavaScript Code per Page > Source > SQL Query

select page_id
      ,page_name_and_id
      ,page_group
      ,page_function
      ,components_count
      ,code_length_sum
      ,code_lines_sum
      ,tooltip
from av_p0100_js_code_by_page_v t
where (t.application_id = :p0_app_id or :p0_app_id is null)
and t.page_id is not null
and (:p0_best_practice = -1 or :p0_best_practice = t.best_practice);

-- ----------------------------------------
-- Page: 100 - JavaScript > Region: Place of JavaScript > Source > SQL Query

select application_name
      ,application_id
      ,component_type || ' - ' || js_code_type js_component
      ,count(1) amount
from av_javascript_v
where (:P0_APP_ID is null or application_id = :P0_APP_ID)
and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)
and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)
group by application_name,application_id,component_type || ' - ' || js_code_type
order by count(1) desc;

