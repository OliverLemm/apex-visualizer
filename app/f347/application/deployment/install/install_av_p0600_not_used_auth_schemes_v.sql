prompt --application/deployment/install/install_av_p0600_not_used_auth_schemes_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0600_not_used_auth_schemes_v
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
 p_id=>wwv_flow_imp.id(59790543015718060)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0600_not_used_auth_schemes_v'
,p_sequence=>150
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0600_NOT_USED_AUTH_SCHEMES_V" ("AUTHORIZATION_SCHEME_NAME", "APPLICATION_ID", "SCHEME_TYPE") AS ',
'  with auth as',
' (select v1.visibility_id',
'        ,v1.application_id',
'  from av_visibility_v v1',
'  where v1.visibility_category = ''AUTHORIZATION_SCHEME''',
'  and v1.visibility_name is not null)',
'select a.authorization_scheme_name',
'      ,a.application_id',
'      ,a.scheme_type',
'from apex_application_authorization a',
'where to_char(a.authorization_scheme_id) not in (select a1.visibility_id',
'                                                 from auth a1',
'                                                 where a1.application_id = a.application_id)',
'and to_char(''!'' || a.authorization_scheme_id) not in (select a1.visibility_id',
'                                                     from auth a1',
'                                                     where a1.application_id = a.application_id)',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59790606434718060)
,p_script_id=>wwv_flow_imp.id(59790543015718060)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0600_NOT_USED_AUTH_SCHEMES_V'
);
wwv_flow_imp.component_end;
end;
/
