prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(50068568250634028)
,p_build_option_name=>'hide'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>110212890
,p_default_on_export=>'EXCLUDE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(311726863352029995)
,p_build_option_name=>'deactivated'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
