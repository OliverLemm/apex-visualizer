prompt --application/deployment/install/install_av_visibility_overview_v
begin
--   Manifest
--     INSTALL: INSTALL-av_visibility_overview_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164066404159060573)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_visibility_overview_v'
,p_sequence=>80
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_OVERVIEW_V" ("APP_ID", "APP_NAME", "VISIBILTY_NAME") AS ',
'  select aaa.application_id            app_id',
'      ,aaa.application_name          app_name',
'      ,aaa.authorization_scheme_name visibilty_name',
'from apex_application_authorization aaa',
'union all',
'select aa.application_id app_id',
'      ,aa.application_name app_name',
'      ,''condition'' visibilty_name',
'from apex_applications aa',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164066547679060573)
,p_script_id=>wwv_flow_imp.id(164066404159060573)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_VISIBILITY_OVERVIEW_V'
);
wwv_flow_imp.component_end;
end;
/
