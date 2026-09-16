  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_LINKS_NAV_STATIC_V" ("APPLICATION_ID", "APPLICATION_NAME", "LIST_ID", "LIST_NAME", "LIST_ENTRY_PARENT_ID", "ENTRY_PARENT_TEXT", "LIST_ENTRY_ID", "ENTRY_TEXT", "PAGE_ID", "ENTRY_TARGET") AS 
  select l.application_id
      ,l.application_name
      ,l.list_id
      ,l.list_name
       -- Parent Entry
      ,le.list_entry_parent_id
      ,le_parent.entry_text entry_parent_text
       -- List Entries
      ,le.list_entry_id
      ,le.entry_text
      ,case le.current_for_pages_type_code
         when 'TARGET_PAGE' then
          le.current_for_pages_expression
         when 'COLON_DELIMITED_PAGE_LIST' then
          le_colon.page_id
         else
          null -- other format
       end page_id
      ,le.entry_target -- Link to page
from apex_application_lists l
join apex_application_list_entries le on le.list_id = l.list_id
left join (select le.list_entry_id
                 ,pages.column_value page_id
           from apex_application_list_entries le
               ,table(apex_string.split(le.current_for_pages_expression
                                       ,',')) pages
           where le.current_for_pages_type_code = 'COLON_DELIMITED_PAGE_LIST') le_colon on le_colon.list_entry_id = le.list_entry_id
left join apex_application_list_entries le_parent on le_parent.list_entry_id = le.list_entry_parent_id

where l.list_type_code = 'STATIC'
; 