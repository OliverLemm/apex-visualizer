prompt --application/shared_components/security/authentications/apex
begin
--   Manifest
--     AUTHENTICATION: APEX
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(38869726273053514)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
