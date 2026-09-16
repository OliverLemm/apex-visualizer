  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0600_TABS_V" ("APPLICATION_ID", "TAB_NAME", "TAB_LABEL", "PAGES_COUNT", "TAB_PAGE", "TAB_ALSO_CURRENT_FOR_PAGES") AS 
  select t.application_id
      ,t.tab_name
      ,t.tab_label
      ,nvl2(tab_also_current_for_pages
           ,(regexp_count(tab_also_current_for_pages
                         ,',') + 2)
           ,1) pages_count
      ,t.tab_page
      ,t.tab_also_current_for_pages
from apex_application_tabs t
; 