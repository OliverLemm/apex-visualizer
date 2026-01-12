create or replace force view av_p0600_tabs_v as
select t.application_id
      ,t.tab_name
      ,t.tab_label
      ,nvl2(tab_also_current_for_pages
           ,(regexp_count(tab_also_current_for_pages
                         ,',') + 2)
           ,1) pages_count
      ,t.tab_page
      ,t.tab_also_current_for_pages
from apex_application_tabs t;
