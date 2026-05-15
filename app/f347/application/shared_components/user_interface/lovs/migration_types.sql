prompt --application/shared_components/user_interface/lovs/migration_types
begin
--   Manifest
--     MIGRATION_TYPES
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
 p_id=>wwv_flow_imp.id(71849559973810135)
,p_lov_name=>'MIGRATION_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''generally'' d, ''generally'' r, 1 sort_by from dual',
'union all',
'select ''new feature'' d, ''new feature'' r, 2 sort_by from dual',
'union all',
'select ''deprecated'' d, ''deprecated'' r, 3 sort_by from dual',
'union all',
'select ''desupported'' d, ''desupported'' r, 4 sort_by from dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SORT_BY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>130951161
);
wwv_flow_imp.component_end;
end;
/
