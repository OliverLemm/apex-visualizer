prompt --application/deployment/install/install_av_applications_v
begin
--   Manifest
--     INSTALL: INSTALL-av_applications_v
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
 p_id=>wwv_flow_api.id(143654115433153304)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_applications_v'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE VIEW "AV_APPLICATIONS_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_FUNCTION", "PAGE_ID") AS ',
'  select p.application_name',
'      ,p.application_id',
'      ,case p.page_function',
'         when ''Unknown'' then',
'          max(r.source_type)',
'         else',
'          page_function',
'       end page_function',
'      ,p.page_id',
'from apex_application_pages p',
'join apex_application_page_regions r on r.application_id = p.application_id',
'                                 and p.page_id = r.page_id',
'group by p.application_name',
'        ,p.application_id',
'        ,p.page_id',
'        ,page_function',
'order by p.application_id',
'        ,p.page_id',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(143654242120153307)
,p_script_id=>wwv_flow_api.id(143654115433153304)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_APPLICATIONS_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212519','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212519','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
