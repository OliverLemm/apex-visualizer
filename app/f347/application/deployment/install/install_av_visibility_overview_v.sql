prompt --application/deployment/install/install_av_visibility_overview_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_overview_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.5'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(143657830019179125)
,p_install_id=>wwv_flow_imp.id(294519018125278192)
,p_name=>'av_visibility_overview_v'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_OVERVIEW_V" ("APP_ID", "APP_NAME", "VISIBILTY_NAME") AS ',
'  select aaa.application_id            app_id',
'      ,aaa.application_name          app_name',
'      ,aaa.authorization_scheme_name visibilty_name',
'from apex_application_authorization aaa',
'union all',
'select aa.application_id app_id',
'      ,aa.application_name app_name',
'      ,''condition'' visibilty_name',
'from apex_applications aa',
';',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(143657973539179125)
,p_script_id=>wwv_flow_imp.id(143657830019179125)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_VISIBILITY_OVERVIEW_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212937','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212937','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
