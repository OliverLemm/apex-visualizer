  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_COMPLEXITY_V" ("APPLICATION_ID", "PAGE_ID", "COUNT_OBJECTS", "COMPLEXITY") AS 
  select p.application_id,
       p.page_id,
       sum(nvl(c.counts,0)) count_objects,
       case when sum(nvl(c.counts,0)) < 15 then 'simple' when sum(nvl(c.counts,0)) < 50 then 'normal' else 'complex' end complexity
from apex_application_pages p
left join (select i1.application_id, i1.page_id, count(1) counts from apex_application_page_items i1 group by i1.application_id, i1.page_id
           union all
           select r1.application_id, r1.page_id, count(1) counts from apex_application_page_regions r1 group by r1.application_id, r1.page_id
           union all
           select b1.application_id, b1.page_id, count(1) counts from apex_application_page_buttons b1 group by b1.application_id, b1.page_id
           union all
           select p1.application_id, p1.page_id, count(1) counts from apex_application_page_proc p1 group by p1.application_id, p1.page_id
           union all
           select d1.application_id, d1.page_id, count(1) counts from apex_application_page_da_acts d1 group by d1.application_id, d1.page_id
           union all
           select c1.application_id, c1.page_id, count(1) counts from apex_application_page_comp c1 group by c1.application_id, c1.page_id
           union all
           select br1.application_id, br1.page_id, count(1) counts from apex_application_page_branches br1 group by br1.application_id, br1.page_id
           ) c on c.application_id = p.application_id and c.page_id = p.page_id
group by p.application_id, p.page_id
; 