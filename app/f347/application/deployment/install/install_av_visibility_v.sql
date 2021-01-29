prompt --application/deployment/install/install_av_visibility_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_v
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(143658376089181348)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_visibility_v'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE VIEW "AV_VISIBILITY_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_NAME", "PAGE_ID", "COMPONENT_TYPE", "VISIBILITY_NAME", "VISIBILITY_CATEGORY", "VISIBILITY_TYPE", "VISIBILITY_EXP1") AS ',
'  select aap.application_name',
'      ,p.application_id',
'      ,aap.page_name',
'      ,p.page_id',
'      ,p.component_type',
'      ,p.visibility_name',
'      ,p.visibility_category',
'      ,p.visibility_type',
'      ,p.visibility_exp1',
'from apex_application_pages aap',
'join (select a.application_id',
'            ,a.page_id',
'            ,''PAGE'' component_type',
'            ,a.authorization_scheme visibility_name',
'            ,''AUTHORIZATION_SCHEME'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_pages a',
'      union',
'      select a.application_id',
'            ,a.page_id',
'            ,''PAGE'' component_type',
'            ,a.build_option visibility_name',
'            ,''BUILD_OPTION'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_pages a',
'      union -- REGIONS',
'      select a.application_id',
'            ,a.page_id',
'            ,''REGION'' component_type',
'            ,a.authorization_scheme visibility_name',
'            ,''AUTHORIZATION_SCHEME'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_page_regions a',
'      union',
'      select a.application_id',
'            ,a.page_id',
'            ,''REGION'' component_type',
'            ,a.build_option visibility_name',
'            ,''BUILD_OPTION'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_page_regions a',
'      union',
'      select a.application_id',
'            ,a.page_id',
'            ,''REGION'' component_type',
'            ,nvl2(read_only_condition_type',
'                 ,''read only''',
'                 ,null) visibility_name',
'            ,''READ_ONLY'' visibility_category',
'            ,a.read_only_condition_type visibility_type',
'            ,a.read_only_condition_exp1 visibility_exp1',
'      from apex_application_page_regions a',
'      union',
'      select a.application_id',
'            ,a.page_id',
'            ,''REGION'' component_type',
'            ,nvl2(a.condition_type',
'                 ,''condition''',
'                 ,null) visibility_name',
'            ,''CONDITION'' visibility_category',
'            ,a.condition_type visibility_type',
'            ,a.condition_expression1 visibility_exp1',
'      from apex_application_page_regions a',
'      union all -- ITEMS',
'      select a.application_id',
'            ,a.page_id',
'            ,''ITEM'' component_type',
'            ,a.authorization_scheme visibility_name',
'            ,''AUTHORIZATION_SCHEME'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_page_items a',
'      union all',
'      select a.application_id',
'            ,a.page_id',
'            ,''ITEM'' component_type',
'            ,a.build_option visibility_name',
'            ,''BUILD_OPTION'' visibility_category',
'            ,'''' visibility_type',
'            ,'''' visibility_exp1',
'      from apex_application_page_items a',
'      union all',
'      select a.application_id',
'            ,a.page_id',
'            ,''ITEM'' component_type',
'            ,nvl2(read_only_condition_type',
'                 ,''read only''',
'                 ,null) visibility_name',
'            ,''READ_ONLY'' visibility_category',
'            ,a.read_only_condition_type visibility_type',
'            ,a.read_only_condition_exp1 visibility_exp1',
'      from apex_application_page_items a',
'      union all',
'      select a.application_id',
'            ,a.page_id',
'            ,''ITEM'' component_type',
'            ,nvl2(a.condition_type',
'                 ,''condition''',
'                 ,null) visibility_name',
'            ,''CONDITION'' visibility_category',
'            ,a.condition_type visibility_type',
'            ,a.condition_expression1 visibility_exp1',
'      from apex_application_page_items a) p on p.application_id = aap.application_id',
'                                        and p.page_id = aap.page_id',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(143658434170181348)
,p_script_id=>wwv_flow_api.id(143658376089181348)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_VISIBILITY_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125213000','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125213000','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
