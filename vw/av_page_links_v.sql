create or replace force view av_page_links_v as
select page.application_id
      ,page.application_name
      ,page.page_id
      ,page.page_name
      ,nvl(page.page_group
          ,'no page group') page_group
      ,l.link_type
      ,l.link_name
      ,l.link_label
      ,l.link_page_id
      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => page.application_id
                                             ,pi_app_page_id => page.page_id) page_designer_url
from apex_application_pages page
left join ( -- Branches
           select 'Branch' link_type
                  ,br1.application_id
                  ,br1.page_id
                  ,br1.branch_name link_label
                  ,br1.branch_name link_name
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
                                 ,br1.page_id)) link_page_id
           from apex_application_page_branches br1
           -- Only targets which are number
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
                  ,bce1.entry_label link_label
                  ,bce1.entry_label link_name
                  ,bce1.defined_for_page link_page_id
           from apex_application_bc_entries bce1
           join apex_application_page_regions region1 on region1.breadcrumb_id = bce1.breadcrumb_id
                                                  and region1.application_id = bce1.application_id
           union all
           -- Buttons
           select 'Button' link_type
                  ,b1.application_id
                  ,b1.page_id
                  ,b1.label link_label
                  ,b1.button_name link_name
                   -- target must be number if linking to a page
                  ,to_number( -- replace APP_PAGE_ID with own page_id
                             replace(
                                     -- button action is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::
                                     -- 578 has to be filtered for link target
                                     substr(b1.redirect_url
                                           ,14
                                           ,instr(substr(b1.redirect_url
                                                        ,14)
                                                 ,':') - 1)
                                    ,'&' || 'APP_PAGE_ID.'
                                    ,b1.page_id)) link_page_id
           from apex_application_page_buttons b1
           where b1.button_action_code = 'REDIRECT_PAGE') l on l.application_id = page.application_id
                                                        and l.page_id = page.page_id
