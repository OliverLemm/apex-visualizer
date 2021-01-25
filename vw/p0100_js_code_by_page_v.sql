create or replace force view p0100_js_code_by_page_v as
select application_id
      ,page_id
      ,page_name || ' (' || page_id || ')' page_name_and_id
      ,page_group
      ,page_function
      ,best_practice
      ,components_count
      ,code_length_sum
      ,code_lines_sum
      ,'<table>' || --
       '<tr><td>page name</td><td>' || page_name || '</td></tr>' || --
       '<tr><td>page id</td><td>' || page_id || '</td></tr>' || --
       '<tr><td>page group</td><td>' || page_group || '</td></tr>' || --
       '<tr><td>page function</td><td>' || page_function || '</td></tr>' || --
       '<tr><td>number of js components</td><td>' || components_count || '</td></tr>' || --
       '<tr><td>overall lines of js code</td><td>' || code_lines_sum || '</td></tr>' || --
       '<tr><td>overall character of js code</td><td>' || code_length_sum || '</td></tr>' || --
       '</table>' tooltip
from (select distinct application_id
                     ,page_id
                     ,page_name
                     ,page_group
                     ,page_function
                     ,best_practice
                     ,count(*) over(partition by application_id, page_id) components_count
                     ,sum(js_code_length) over(partition by application_id, page_id) code_length_sum
                     ,sum(js_code_lines) over(partition by application_id, page_id) code_lines_sum
      from av_javascript_v)
;
