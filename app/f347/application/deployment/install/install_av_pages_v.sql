prompt --application/deployment/install/install_av_pages_v
begin
--   Manifest
--     INSTALL: INSTALL-av_pages_v
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.7'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(143656809123171918)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_pages_v'
,p_sequence=>50
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGES_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_MODE", "PAGE_ALIAS", "PAGE_FUNCTION", "PAGE_GROUP", "PAGE_TEMPLATE", "CREATED_BY", "CREATED_ON", "LAST_UPDATED_BY", "LAST_UPDAT'
||'ED_ON", "RELOAD_ON_SUBMIT", "WARN_ON_UNSAVED_CHANGES") AS ',
'  select aap.application_id',
'      ,aap.application_name',
'      ,aap.page_id',
'      ,aap.page_name',
'      ,aap.page_mode',
'      ,aap.page_alias',
'      ,aap.page_function',
'      ,aap.page_group',
'      ,aap.page_template',
'      ,aap.created_by',
'      ,aap.created_on',
'      ,aap.last_updated_by',
'      ,aap.last_updated_on',
'      ,aap.reload_on_submit',
'      ,aap.warn_on_unsaved_changes',
'from apex_application_pages aap',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(143656961660171918)
,p_script_id=>wwv_flow_api.id(143656809123171918)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGES_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212825','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212825','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
