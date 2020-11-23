prompt --application/deployment/install/install_av_visibility_overview_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_overview_v
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
 p_id=>wwv_flow_api.id(294520490650291881)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_visibility_overview_v'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view av_visibility_overview_v as',
'select aaa.application_id            app_id',
'      ,aaa.application_name          app_name',
'      ,aaa.authorization_scheme_name visibilty_name',
'from apex_application_authorization aaa',
'union',
'select aa.application_id app_id',
'      ,aa.application_name app_name',
'      ,''condition'' visibilty_name',
'from apex_applications aa',
''))
);
wwv_flow_api.component_end;
end;
/
