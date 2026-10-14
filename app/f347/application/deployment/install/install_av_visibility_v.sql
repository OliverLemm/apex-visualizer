prompt --application/deployment/install/install_av_visibility_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_V" ("APPLICATION_NAME", "APPLICATION_ID",';
wwv_flow_imp.g_varchar2_table(2) := ' "PAGE_NAME", "PAGE_ID", "COMPONENT_TYPE", "COMPONENT_NAME", "VISIBILITY_NAME", "VISIBILITY_ID", "VI';
wwv_flow_imp.g_varchar2_table(3) := 'SIBILITY_CATEGORY", "VISIBILITY_TYPE", "VISIBILITY_EXP1") AS '||wwv_flow.LF||
'  select aap.application_name'||wwv_flow.LF||
'      ,p';
wwv_flow_imp.g_varchar2_table(4) := '.application_id'||wwv_flow.LF||
'      ,aap.page_name'||wwv_flow.LF||
'      ,p.page_id'||wwv_flow.LF||
'      ,p.component_type'||wwv_flow.LF||
'      ,p.component_nam';
wwv_flow_imp.g_varchar2_table(5) := 'e'||wwv_flow.LF||
'      ,p.visibility_name'||wwv_flow.LF||
'      ,p.visibility_id'||wwv_flow.LF||
'      ,p.visibility_category'||wwv_flow.LF||
'      ,p.visibility_t';
wwv_flow_imp.g_varchar2_table(6) := 'ype'||wwv_flow.LF||
'      ,p.visibility_exp1'||wwv_flow.LF||
'from apex_application_pages aap'||wwv_flow.LF||
'join ( -- PAGES'||wwv_flow.LF||
'      select a.applicat';
wwv_flow_imp.g_varchar2_table(7) := 'ion_id'||wwv_flow.LF||
'             ,a.page_id'||wwv_flow.LF||
'             ,''PAGE'' component_type'||wwv_flow.LF||
'             ,a.page_name compone';
wwv_flow_imp.g_varchar2_table(8) := 'nt_name'||wwv_flow.LF||
'             ,a.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,a.authorization_scheme_id';
wwv_flow_imp.g_varchar2_table(9) := ' visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility_';
wwv_flow_imp.g_varchar2_table(10) := 'type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_pages a'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      sele';
wwv_flow_imp.g_varchar2_table(11) := 'ct a.application_id'||wwv_flow.LF||
'             ,a.page_id'||wwv_flow.LF||
'             ,''PAGE'' component_type'||wwv_flow.LF||
'             ,a.page';
wwv_flow_imp.g_varchar2_table(12) := '_name component_name'||wwv_flow.LF||
'             ,a.build_option visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(13) := '            ,''BUILD_OPTION'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility_type'||wwv_flow.LF||
'             ,'''' vi';
wwv_flow_imp.g_varchar2_table(14) := 'sibility_exp1'||wwv_flow.LF||
'      from apex_application_pages a'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- REGIONS'||wwv_flow.LF||
'      select r.ap';
wwv_flow_imp.g_varchar2_table(15) := 'plication_id'||wwv_flow.LF||
'             ,r.page_id'||wwv_flow.LF||
'             ,''REGION'' component_type'||wwv_flow.LF||
'             ,r.region_na';
wwv_flow_imp.g_varchar2_table(16) := 'me component_name'||wwv_flow.LF||
'             ,r.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,r.authorization';
wwv_flow_imp.g_varchar2_table(17) := '_scheme_id visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'             ,'''' v';
wwv_flow_imp.g_varchar2_table(18) := 'isibility_type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_regions r'||wwv_flow.LF||
'      uni';
wwv_flow_imp.g_varchar2_table(19) := 'on all'||wwv_flow.LF||
'      select r.application_id'||wwv_flow.LF||
'             ,r.page_id'||wwv_flow.LF||
'             ,''REGION'' component_type'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(20) := '            ,r.region_name component_name'||wwv_flow.LF||
'             ,r.build_option visibility_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(21) := ',null visibility_id'||wwv_flow.LF||
'             ,''BUILD_OPTION'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility_typ';
wwv_flow_imp.g_varchar2_table(22) := 'e'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_regions r'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(23) := 'select r.application_id'||wwv_flow.LF||
'             ,r.page_id'||wwv_flow.LF||
'             ,''REGION'' component_type'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(24) := 'r.region_name component_name'||wwv_flow.LF||
'             ,nvl2(read_only_condition_type'||wwv_flow.LF||
'                  ,''read on';
wwv_flow_imp.g_varchar2_table(25) := 'ly'''||wwv_flow.LF||
'                  ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''READ_ON';
wwv_flow_imp.g_varchar2_table(26) := 'LY'' visibility_category'||wwv_flow.LF||
'             ,r.read_only_condition_type visibility_type'||wwv_flow.LF||
'             ,r.rea';
wwv_flow_imp.g_varchar2_table(27) := 'd_only_condition_exp1 visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_regions r'||wwv_flow.LF||
'      union'||wwv_flow.LF||
'      s';
wwv_flow_imp.g_varchar2_table(28) := 'elect r.application_id'||wwv_flow.LF||
'             ,r.page_id'||wwv_flow.LF||
'             ,''REGION'' component_type'||wwv_flow.LF||
'             ,r';
wwv_flow_imp.g_varchar2_table(29) := '.region_name component_name'||wwv_flow.LF||
'             ,nvl2(condition_type'||wwv_flow.LF||
'                  ,''condition'''||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(30) := '           ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''CONDITION'' visibil';
wwv_flow_imp.g_varchar2_table(31) := 'ity_category'||wwv_flow.LF||
'             ,r.condition_type visibility_type'||wwv_flow.LF||
'             ,r.condition_expression1 vi';
wwv_flow_imp.g_varchar2_table(32) := 'sibility_exp1'||wwv_flow.LF||
'      from apex_application_page_regions r'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- ITEMS'||wwv_flow.LF||
'      select';
wwv_flow_imp.g_varchar2_table(33) := ' i.application_id'||wwv_flow.LF||
'             ,i.page_id'||wwv_flow.LF||
'             ,''ITEM'' component_type'||wwv_flow.LF||
'             ,i.item_n';
wwv_flow_imp.g_varchar2_table(34) := 'ame component_name'||wwv_flow.LF||
'             ,i.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,i.authorizatio';
wwv_flow_imp.g_varchar2_table(35) := 'n_scheme_id visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'             ,'''' ';
wwv_flow_imp.g_varchar2_table(36) := 'visibility_type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_items i'||wwv_flow.LF||
'      unio';
wwv_flow_imp.g_varchar2_table(37) := 'n all'||wwv_flow.LF||
'      select i.application_id'||wwv_flow.LF||
'             ,i.page_id'||wwv_flow.LF||
'             ,''ITEM'' component_type'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '         ,i.item_name component_name'||wwv_flow.LF||
'             ,i.build_option visibility_name'||wwv_flow.LF||
'             ,null';
wwv_flow_imp.g_varchar2_table(39) := ' visibility_id'||wwv_flow.LF||
'             ,''BUILD_OPTION'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility_type'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(40) := '          ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_items i'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      select ';
wwv_flow_imp.g_varchar2_table(41) := 'i.application_id'||wwv_flow.LF||
'             ,i.page_id'||wwv_flow.LF||
'             ,''ITEM'' component_type'||wwv_flow.LF||
'             ,i.item_na';
wwv_flow_imp.g_varchar2_table(42) := 'me component_name'||wwv_flow.LF||
'             ,nvl2(read_only_condition_type'||wwv_flow.LF||
'                  ,''read only'''||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(43) := '           ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''READ_ONLY'' visibil';
wwv_flow_imp.g_varchar2_table(44) := 'ity_category'||wwv_flow.LF||
'             ,i.read_only_condition_type visibility_type'||wwv_flow.LF||
'             ,i.read_only_cond';
wwv_flow_imp.g_varchar2_table(45) := 'ition_exp1 visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_items i'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      select i.a';
wwv_flow_imp.g_varchar2_table(46) := 'pplication_id'||wwv_flow.LF||
'             ,i.page_id'||wwv_flow.LF||
'             ,''ITEM'' component_type'||wwv_flow.LF||
'             ,i.item_name ';
wwv_flow_imp.g_varchar2_table(47) := 'component_name'||wwv_flow.LF||
'             ,nvl2(condition_type'||wwv_flow.LF||
'                  ,''condition'''||wwv_flow.LF||
'                  ,n';
wwv_flow_imp.g_varchar2_table(48) := 'ull) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''CONDITION'' visibility_category'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(49) := '             ,i.condition_type visibility_type'||wwv_flow.LF||
'             ,i.condition_expression1 visibility_exp1';
wwv_flow_imp.g_varchar2_table(50) := ''||wwv_flow.LF||
'      from apex_application_page_items i'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- BUTTON'||wwv_flow.LF||
'      select b.application';
wwv_flow_imp.g_varchar2_table(51) := '_id'||wwv_flow.LF||
'             ,b.page_id'||wwv_flow.LF||
'             ,''BUTTON'' component_type'||wwv_flow.LF||
'             ,b.button_name compon';
wwv_flow_imp.g_varchar2_table(52) := 'ent_name'||wwv_flow.LF||
'             ,b.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,b.authorization_scheme_i';
wwv_flow_imp.g_varchar2_table(53) := 'd visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility';
wwv_flow_imp.g_varchar2_table(54) := '_type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_buttons b'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(55) := '    select b.application_id'||wwv_flow.LF||
'             ,b.page_id'||wwv_flow.LF||
'             ,''BUTTON'' component_type'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(56) := '   ,b.button_name component_name'||wwv_flow.LF||
'             ,nvl2(condition_type'||wwv_flow.LF||
'                  ,''condition'''||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(57) := '                ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''CONDITION'' vi';
wwv_flow_imp.g_varchar2_table(58) := 'sibility_category'||wwv_flow.LF||
'             ,b.condition_type visibility_type'||wwv_flow.LF||
'             ,b.condition_expressio';
wwv_flow_imp.g_varchar2_table(59) := 'n1 visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_buttons b'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- DYNAMIC_ACTIO';
wwv_flow_imp.g_varchar2_table(60) := 'NS'||wwv_flow.LF||
'      select d.application_id'||wwv_flow.LF||
'             ,d.page_id'||wwv_flow.LF||
'             ,''DYNAMIC_ACTION'' component_ty';
wwv_flow_imp.g_varchar2_table(61) := 'pe'||wwv_flow.LF||
'             ,d.dynamic_action_name component_name'||wwv_flow.LF||
'             ,d.authorization_scheme visibilit';
wwv_flow_imp.g_varchar2_table(62) := 'y_name'||wwv_flow.LF||
'             ,d.authorization_scheme_id visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' vi';
wwv_flow_imp.g_varchar2_table(63) := 'sibility_category'||wwv_flow.LF||
'             ,'''' visibility_type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_';
wwv_flow_imp.g_varchar2_table(64) := 'application_page_da d'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      select d.application_id'||wwv_flow.LF||
'             ,d.page_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(65) := '     ,''DYNAMIC_ACTION'' component_type'||wwv_flow.LF||
'             ,d.dynamic_action_name component_name'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(66) := '  ,nvl2(condition_type'||wwv_flow.LF||
'                  ,''condition'''||wwv_flow.LF||
'                  ,null) visibility_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(67) := '        ,null visibility_id'||wwv_flow.LF||
'             ,''CONDITION'' visibility_category'||wwv_flow.LF||
'             ,d.condition_';
wwv_flow_imp.g_varchar2_table(68) := 'type visibility_type'||wwv_flow.LF||
'             ,d.condition_expression1 visibility_exp1'||wwv_flow.LF||
'      from apex_applicati';
wwv_flow_imp.g_varchar2_table(69) := 'on_page_da d'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- PAGE_PROCESS'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.pag';
wwv_flow_imp.g_varchar2_table(70) := 'e_id'||wwv_flow.LF||
'             ,''PAGE_PROCESS'' component_type'||wwv_flow.LF||
'             ,p.process_name component_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(71) := '      ,p.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,p.authorization_scheme_id visibility_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(72) := '             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'             ,'''' visibility_type'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(73) := '   ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_proc p'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      select p.applic';
wwv_flow_imp.g_varchar2_table(74) := 'ation_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''PAGE_PROCESS'' component_type'||wwv_flow.LF||
'             ,p.process';
wwv_flow_imp.g_varchar2_table(75) := '_name component_name'||wwv_flow.LF||
'             ,nvl2(condition_type'||wwv_flow.LF||
'                  ,''condition'''||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(76) := '    ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id'||wwv_flow.LF||
'             ,''CONDITION'' visibility_cat';
wwv_flow_imp.g_varchar2_table(77) := 'egory'||wwv_flow.LF||
'             ,p.condition_type visibility_type'||wwv_flow.LF||
'             ,p.condition_expression1 visibilit';
wwv_flow_imp.g_varchar2_table(78) := 'y_exp1'||wwv_flow.LF||
'      from apex_application_page_proc p'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- REPORT_COLUMN'||wwv_flow.LF||
'      select c';
wwv_flow_imp.g_varchar2_table(79) := '.application_id'||wwv_flow.LF||
'             ,c.page_id'||wwv_flow.LF||
'             ,''REPORT_COLUMN'' component_type'||wwv_flow.LF||
'             ,c';
wwv_flow_imp.g_varchar2_table(80) := '.column_alias component_name'||wwv_flow.LF||
'             ,c.authorization_scheme visibility_name'||wwv_flow.LF||
'             ,c.au';
wwv_flow_imp.g_varchar2_table(81) := 'thorization_scheme_id visibility_id'||wwv_flow.LF||
'             ,''AUTHORIZATION_SCHEME'' visibility_category'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(82) := '      ,'''' visibility_type'||wwv_flow.LF||
'             ,'''' visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_rpt_cols';
wwv_flow_imp.g_varchar2_table(83) := ' c'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      select c.application_id'||wwv_flow.LF||
'             ,c.page_id'||wwv_flow.LF||
'             ,''REPORT_COLUM';
wwv_flow_imp.g_varchar2_table(84) := 'N'' component_type'||wwv_flow.LF||
'             ,c.column_alias component_name'||wwv_flow.LF||
'             ,nvl2(condition_type'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(85) := '              ,''condition'''||wwv_flow.LF||
'                  ,null) visibility_name'||wwv_flow.LF||
'             ,null visibility_id';
wwv_flow_imp.g_varchar2_table(86) := ''||wwv_flow.LF||
'             ,''CONDITION'' visibility_category'||wwv_flow.LF||
'             ,c.condition_type visibility_type'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(87) := '       ,c.condition_expression1 visibility_exp1'||wwv_flow.LF||
'      from apex_application_page_rpt_cols c) p on p.';
wwv_flow_imp.g_varchar2_table(88) := 'application_id = aap.application_id'||wwv_flow.LF||
'                                           and p.page_id = aap.p';
wwv_flow_imp.g_varchar2_table(89) := 'age_id'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164066950229062796)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_visibility_v'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164067008310062796)
,p_script_id=>wwv_flow_imp.id(164066950229062796)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_VISIBILITY_V'
);
wwv_flow_imp.component_end;
end;
/
