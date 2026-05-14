prompt --application/shared_components/user_interface/lovs/migration_priority
begin
--   Manifest
--     MIGRATION_PRIORITY
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
 p_id=>wwv_flow_imp.id(71058072923988992)
,p_lov_name=>'MIGRATION_PRIORITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''1 - must'' d, 1 r from dual',
'union all',
'select ''2 - should'' d, 2 r from dual',
'union all',
'select ''3 - recommed'' d, 3 r from dual',
'union all',
'select ''4 - best practices'' d, 4 r from dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>130665454
);
wwv_flow_imp.component_end;
end;
/
