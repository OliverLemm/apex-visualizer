prompt --application/shared_components/user_interface/lovs/components_chart
begin
--   Manifest
--     COMPONENTS (CHART)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(311721064277927858)
,p_lov_name=>'COMPONENTS (CHART)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(s.items_value_column_name) d, lower(s.items_value_column_name) r',
'from apex_application_page_chart_s s',
'where s.page_id = :APP_PAGE_ID',
'and s.items_value_column_name <> ''AMOUNT''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
