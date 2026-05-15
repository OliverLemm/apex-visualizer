prompt --application/shared_components/security/authentications/builder_extension_sign_in
begin
--   Manifest
--     AUTHENTICATION: Builder Extension Sign-In
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(71866764314578670)
,p_name=>'Builder Extension Sign-In'
,p_scheme_type=>'NATIVE_EXTENSION'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>131001767
);
wwv_flow_imp.component_end;
end;
/
