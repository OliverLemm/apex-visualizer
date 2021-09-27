create or replace view av_page_links_v as
select page.application_id
      ,page.application_name
      ,page.page_id
      ,page.page_name
      ,nvl(page.page_group
          ,'no page group') page_group
      ,bc.link_type
      ,bc.target_page_name
      ,bc.target_page_id
from apex_application_pages page
left join ( -- Branches
           select 'Branch' link_type
                  ,br1.application_id
                  ,br1.page_id
                  ,br1.branch_name target_page_name
                   -- target must be number if linking to a page
                  ,to_number(nvl2(br1.branch_action
                                  -- replace APP_PAGE_ID with own page_id
                                 ,replace(
                                          -- branch action is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::
                                          -- 578 has to be filtered for link target
                                          substr(br1.branch_action
                                                ,14
                                                ,instr(substr(br1.branch_action
                                                             ,14)
                                                      ,':') - 1)
                                         ,'&' || 'APP_PAGE_ID.'
                                         ,br1.page_id)
                                 ,br1.page_id)) target_page_id
           from apex_application_page_branches br1
           where regexp_like(replace(substr(br1.branch_action
                                           ,14
                                           ,instr(substr(br1.branch_action
                                                        ,14)
                                                 ,':') - 1)
                                    ,'&' || 'APP_PAGE_ID.'
                                    ,br1.page_id)
                            ,'^[[:digit:]]+$')
           union all
           -- Breadcrumbs
           select 'Breadcrumb' link_type
                  ,bce1.application_id
                  ,region1.page_id
                  ,bce1.entry_label target_page_name
                  ,bce1.defined_for_page target_page_id
           from apex_application_bc_entries bce1
           join apex_application_page_regions region1 on region1.breadcrumb_id = bce1.breadcrumb_id
                                                  and region1.application_id = bce1.application_id) bc on bc.application_id = page.application_id
                                                                                                   and bc.page_id = page.page_id
