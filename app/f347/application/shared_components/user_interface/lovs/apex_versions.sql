prompt --application/shared_components/user_interface/lovs/apex_versions
begin
--   Manifest
--     APEX_VERSIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(71057235055972229)
,p_lov_name=>'APEX_VERSIONS'
,p_lov_query=>'select vc2 d, vc2 r from av_migration_pkg.tf_apex_versions()'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>130665055
);
wwv_flow_imp.component_end;
end;
/
