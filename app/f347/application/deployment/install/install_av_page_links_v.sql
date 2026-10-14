prompt --application/deployment/install/install_av_page_links_v
begin
--   Manifest
--     INSTALL: INSTALL-av_page_links_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_LINKS_V" ("APPLICATION_ID", "APPLICATION_NAME",';
wwv_flow_imp.g_varchar2_table(2) := ' "PAGE_ID", "PAGE_NAME", "PAGE_GROUP", "LINK_TYPE", "LINK_NAME", "LINK_LABEL", "LINK_PAGE_ID", "PAGE';
wwv_flow_imp.g_varchar2_table(3) := '_DESIGNER_URL") AS '||wwv_flow.LF||
'  select page.application_id'||wwv_flow.LF||
'      ,page.application_name'||wwv_flow.LF||
'      ,page.page_id'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(4) := '    ,page.page_name'||wwv_flow.LF||
'      ,nvl(page.page_group'||wwv_flow.LF||
'          ,''no page group'') page_group'||wwv_flow.LF||
'      ,l.link_';
wwv_flow_imp.g_varchar2_table(5) := 'type'||wwv_flow.LF||
'      ,l.link_name'||wwv_flow.LF||
'      ,l.link_label'||wwv_flow.LF||
'      ,l.link_page_id'||wwv_flow.LF||
'      ,null /*av_general_pkg.f_get';
wwv_flow_imp.g_varchar2_table(6) := '_page_designer_url(pi_app_id      => page.application_id'||wwv_flow.LF||
'                                           ';
wwv_flow_imp.g_varchar2_table(7) := '  ,pi_app_page_id => page.page_id)*/ page_designer_url'||wwv_flow.LF||
'from apex_application_pages page'||wwv_flow.LF||
'left join ( ';
wwv_flow_imp.g_varchar2_table(8) := '-- Branches'||wwv_flow.LF||
'           select ''Branch'' link_type'||wwv_flow.LF||
'                  ,br1.application_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(9) := '     ,br1.page_id'||wwv_flow.LF||
'                  ,br1.branch_name link_label'||wwv_flow.LF||
'                  ,br1.branch_name l';
wwv_flow_imp.g_varchar2_table(10) := 'ink_name'||wwv_flow.LF||
'                   -- target must be number if linking to a page'||wwv_flow.LF||
'                  ,to_numb';
wwv_flow_imp.g_varchar2_table(11) := 'er(nvl2(br1.branch_action'||wwv_flow.LF||
'                                  -- replace APP_PAGE_ID with own page_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(12) := '                                 ,replace('||wwv_flow.LF||
'                                          -- branch actio';
wwv_flow_imp.g_varchar2_table(13) := 'n is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::'||wwv_flow.LF||
'                                          -- 578 ha';
wwv_flow_imp.g_varchar2_table(14) := 's to be filtered for link target'||wwv_flow.LF||
'                                          substr(br1.branch_action'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(15) := '                                                ,14'||wwv_flow.LF||
'                                                ';
wwv_flow_imp.g_varchar2_table(16) := ',instr(substr(br1.branch_action'||wwv_flow.LF||
'                                                             ,14)'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(17) := '                                                    ,'':'') - 1)'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(18) := '    ,''&'' || ''APP_PAGE_ID.'''||wwv_flow.LF||
'                                         ,br1.page_id)'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(19) := '               ,br1.page_id)) link_page_id'||wwv_flow.LF||
'           from apex_application_page_branches br1'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(20) := '     -- Only targets which are number'||wwv_flow.LF||
'           where regexp_like(replace(substr(br1.branch_action'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(21) := '                                           ,14'||wwv_flow.LF||
'                                           ,instr(sub';
wwv_flow_imp.g_varchar2_table(22) := 'str(br1.branch_action'||wwv_flow.LF||
'                                                        ,14)'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(23) := '                                ,'':'') - 1)'||wwv_flow.LF||
'                                    ,''&'' || ''APP_PAGE_ID.';
wwv_flow_imp.g_varchar2_table(24) := ''''||wwv_flow.LF||
'                                    ,br1.page_id)'||wwv_flow.LF||
'                            ,''^[[:digit:]]+$'')'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(25) := '          union all'||wwv_flow.LF||
'           -- Breadcrumbs'||wwv_flow.LF||
'           select ''Breadcrumb'' link_type'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(26) := '     ,bce1.application_id'||wwv_flow.LF||
'                  ,region1.page_id'||wwv_flow.LF||
'                  ,bce1.entry_label lin';
wwv_flow_imp.g_varchar2_table(27) := 'k_label'||wwv_flow.LF||
'                  ,bce1.entry_label link_name'||wwv_flow.LF||
'                  ,bce1.defined_for_page link_';
wwv_flow_imp.g_varchar2_table(28) := 'page_id'||wwv_flow.LF||
'           from apex_application_bc_entries bce1'||wwv_flow.LF||
'           join apex_application_page_regio';
wwv_flow_imp.g_varchar2_table(29) := 'ns region1 on region1.breadcrumb_id = bce1.breadcrumb_id'||wwv_flow.LF||
'                                           ';
wwv_flow_imp.g_varchar2_table(30) := '       and region1.application_id = bce1.application_id'||wwv_flow.LF||
'                                            ';
wwv_flow_imp.g_varchar2_table(31) := '      and bce1.defined_for_page = region1.page_id'||wwv_flow.LF||
'           union all'||wwv_flow.LF||
'           -- Buttons'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(32) := '    select ''Button'' link_type'||wwv_flow.LF||
'                  ,b1.application_id'||wwv_flow.LF||
'                  ,b1.page_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(33) := '               ,b1.label link_label'||wwv_flow.LF||
'                  ,b1.button_name link_name'||wwv_flow.LF||
'                   -';
wwv_flow_imp.g_varchar2_table(34) := '- target must be number if linking to a page'||wwv_flow.LF||
'                  ,to_number( -- replace APP_PAGE_ID wi';
wwv_flow_imp.g_varchar2_table(35) := 'th own page_id'||wwv_flow.LF||
'                             replace('||wwv_flow.LF||
'                                     -- button ';
wwv_flow_imp.g_varchar2_table(36) := 'action is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::'||wwv_flow.LF||
'                                     -- 578 ha';
wwv_flow_imp.g_varchar2_table(37) := 's to be filtered for link target'||wwv_flow.LF||
'                                     substr(b1.redirect_url'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(38) := '                                    ,14'||wwv_flow.LF||
'                                           ,instr(substr(b1.';
wwv_flow_imp.g_varchar2_table(39) := 'redirect_url'||wwv_flow.LF||
'                                                        ,14)'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(40) := '                       ,'':'') - 1)'||wwv_flow.LF||
'                                    ,''&'' || ''APP_PAGE_ID.'''||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(41) := '                             ,b1.page_id)) link_page_id'||wwv_flow.LF||
'           from apex_application_page_button';
wwv_flow_imp.g_varchar2_table(42) := 's b1'||wwv_flow.LF||
'           where b1.button_action_code = ''REDIRECT_PAGE'''||wwv_flow.LF||
'                -- Only targets which ';
wwv_flow_imp.g_varchar2_table(43) := 'are number'||wwv_flow.LF||
'           and regexp_like(replace(substr(b1.redirect_url'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(44) := '         ,14'||wwv_flow.LF||
'                                        ,instr(substr(b1.redirect_url'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(45) := '                                    ,14)'||wwv_flow.LF||
'                                              ,'':'') - 1)'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(46) := '                               ,''&'' || ''APP_PAGE_ID.'''||wwv_flow.LF||
'                                 ,b1.page_id)'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(47) := '                         ,''^[[:digit:]]+$'')'||wwv_flow.LF||
'           union all'||wwv_flow.LF||
'           select ''Navigation Menu''';
wwv_flow_imp.g_varchar2_table(48) := ' link_type'||wwv_flow.LF||
'                  ,ui1.application_id'||wwv_flow.LF||
'                  ,to_number(lns1_parent.page_id) p';
wwv_flow_imp.g_varchar2_table(49) := 'age_id'||wwv_flow.LF||
'                  ,lns1.entry_text link_label'||wwv_flow.LF||
'                  ,lns1.entry_text link_name'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(50) := '                ,to_number(lns1.page_id) link_page_id'||wwv_flow.LF||
'           from apex_appl_user_interfaces ui1'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(51) := '           join av_page_links_nav_static_v lns1 on lns1.application_id = ui1.application_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(52) := '                                    and lns1.list_id = ui1.navigation_list_id'||wwv_flow.LF||
'           join av_pag';
wwv_flow_imp.g_varchar2_table(53) := 'e_links_nav_static_v lns1_parent on lns1_parent.list_entry_id = lns1.list_entry_parent_id'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(54) := '                                         and lns1_parent.list_id = lns1.list_id'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(55) := '                               and lns1_parent.application_id = lns1.application_id) l on l.applicat';
wwv_flow_imp.g_varchar2_table(56) := 'ion_id = page.application_id'||wwv_flow.LF||
'                                                                       ';
wwv_flow_imp.g_varchar2_table(57) := '                                and l.page_id = page.page_id'||wwv_flow.LF||
'-- Global Page must be excluded it cann';
wwv_flow_imp.g_varchar2_table(58) := 'ot be run alone'||wwv_flow.LF||
'where page.page_id not in (select page_id'||wwv_flow.LF||
'                           from apex_appli';
wwv_flow_imp.g_varchar2_table(59) := 'cation_pages p'||wwv_flow.LF||
'                           where p.page_function = ''Global Page'')'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59789598952706585)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_page_links_v'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59789733050706587)
,p_script_id=>wwv_flow_imp.id(59789598952706585)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGE_LINKS_V'
);
wwv_flow_imp.component_end;
end;
/
