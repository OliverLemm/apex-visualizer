CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_COMPONENTS_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_ID", "PAGE_NAME", "PAGE", "COMPONENT", "AMOUNT") AS 
  select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'regions' component, regions amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'items' component, items amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'buttons' component, buttons amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'computations' component, computations amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'validations' component, validations amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'processes' component, processes amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'branches' component, branches amount
from apex_application_pages
union all
select application_name, application_id, page_id, page_name, page_id || ' ' || page_name page, 'dynamic_actions' component, count(1) amount
from apex_application_page_da
group by application_name, application_id, page_id,page_name
;

