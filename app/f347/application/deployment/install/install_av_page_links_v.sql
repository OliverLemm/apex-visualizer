prompt --application/deployment/install/install_av_page_links_v
begin
--   Manifest
--     INSTALL: INSTALL-av_page_links_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59789598952706585)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_page_links_v'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_LINKS_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_GROUP", "LINK_TYPE", "LINK_NAME", "LINK_LABEL", "LINK_PAGE_ID", "PAGE_DESIGNER_URL") AS ',
'  select page.application_id',
'      ,page.application_name',
'      ,page.page_id',
'      ,page.page_name',
'      ,nvl(page.page_group',
'          ,''no page group'') page_group',
'      ,l.link_type',
'      ,l.link_name',
'      ,l.link_label',
'      ,l.link_page_id',
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => page.application_id',
'                                             ,pi_app_page_id => page.page_id) page_designer_url',
'from apex_application_pages page',
'left join ( -- Branches',
'           select ''Branch'' link_type',
'                  ,br1.application_id',
'                  ,br1.page_id',
'                  ,br1.branch_name link_label',
'                  ,br1.branch_name link_name',
'                   -- target must be number if linking to a page',
'                  ,to_number(nvl2(br1.branch_action',
'                                  -- replace APP_PAGE_ID with own page_id',
'                                 ,replace(',
'                                          -- branch action is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::',
'                                          -- 578 has to be filtered for link target',
'                                          substr(br1.branch_action',
'                                                ,14',
'                                                ,instr(substr(br1.branch_action',
'                                                             ,14)',
'                                                      ,'':'') - 1)',
'                                         ,''&'' || ''APP_PAGE_ID.''',
'                                         ,br1.page_id)',
'                                 ,br1.page_id)) link_page_id',
'           from apex_application_page_branches br1',
'           -- Only targets which are number',
'           where regexp_like(replace(substr(br1.branch_action',
'                                           ,14',
'                                           ,instr(substr(br1.branch_action',
'                                                        ,14)',
'                                                 ,'':'') - 1)',
'                                    ,''&'' || ''APP_PAGE_ID.''',
'                                    ,br1.page_id)',
'                            ,''^[[:digit:]]+$'')',
'           union all',
'           -- Breadcrumbs',
'           select ''Breadcrumb'' link_type',
'                  ,bce1.application_id',
'                  ,region1.page_id',
'                  ,bce1.entry_label link_label',
'                  ,bce1.entry_label link_name',
'                  ,bce1.defined_for_page link_page_id',
'           from apex_application_bc_entries bce1',
'           join apex_application_page_regions region1 on region1.breadcrumb_id = bce1.breadcrumb_id',
'                                                  and region1.application_id = bce1.application_id',
'                                                  and bce1.defined_for_page = region1.page_id',
'           union all',
'           -- Buttons',
'           select ''Button'' link_type',
'                  ,b1.application_id',
'                  ,b1.page_id',
'                  ,b1.label link_label',
'                  ,b1.button_name link_name',
'                   -- target must be number if linking to a page',
'                  ,to_number( -- replace APP_PAGE_ID with own page_id',
'                             replace(',
'                                     -- button action is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::',
'                                     -- 578 has to be filtered for link target',
'                                     substr(b1.redirect_url',
'                                           ,14',
'                                           ,instr(substr(b1.redirect_url',
'                                                        ,14)',
'                                                 ,'':'') - 1)',
'                                    ,''&'' || ''APP_PAGE_ID.''',
'                                    ,b1.page_id)) link_page_id',
'           from apex_application_page_buttons b1',
'           where b1.button_action_code = ''REDIRECT_PAGE''',
'                -- Only targets which are number',
'           and regexp_like(replace(substr(b1.redirect_url',
'                                        ,14',
'                                        ,instr(substr(b1.redirect_url',
'                                                     ,14)',
'                                              ,'':'') - 1)',
'                                 ,''&'' || ''APP_PAGE_ID.''',
'                                 ,b1.page_id)',
'                         ,''^[[:digit:]]+$'')',
'           union all',
'           select ''Navigation Menu'' link_type',
'                  ,ui1.application_id',
'                  ,page1.page_id',
'                  ,lie1.entry_text link_label',
'                  ,lie1.entry_text link_name',
'                  ,av_general_pkg.f_get_page_id_from_target_link(pi_target_link => lie1.entry_target) link_page_id',
'           from apex_application_pages page1',
'           join apex_appl_user_interfaces ui1 on ui1.application_id = page1.application_id',
'           join apex_application_list_entries lie1 on lie1.application_id = ui1.application_id',
'                                               and lie1.list_id = ui1.navigation_list_id',
'           where page1.page_function not in (''Global Page''',
'                                            ,''Login'')) l on l.application_id = page.application_id',
'                                                     and l.page_id = page.page_id',
'-- Global Page must be excluded it cannot be run alone',
'where page.page_id not in (select page_id',
'                           from apex_application_pages p',
'                           where p.page_function = ''Global Page'')',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59789733050706587)
,p_script_id=>wwv_flow_imp.id(59789598952706585)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGE_LINKS_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210927224901','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210927224901','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
