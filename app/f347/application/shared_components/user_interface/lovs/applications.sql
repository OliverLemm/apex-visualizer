prompt --application/shared_components/user_interface/lovs/applications
begin
--   Manifest
--     APPLICATIONS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.8'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(452494392205483479)
,p_lov_name=>'APPLICATIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.application_id || '' - '' || aa.application_name app',
'      ,aa.application_id',
'from apex_applications aa',
'order by aa.application_id'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
