
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_APPLICATIONS_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_FUNCTION", "PAGE_ID") AS 
  select p.application_name
      ,p.application_id
      ,case p.page_function
         when 'Unknown' then
          max(r.source_type)
         else
          page_function
       end page_function
      ,p.page_id
from apex_application_pages p
join apex_application_page_regions r on r.application_id = p.application_id
                                 and p.page_id = r.page_id
group by p.application_name
        ,p.application_id
        ,p.page_id
        ,page_function
order by p.application_id
        ,p.page_id
;
