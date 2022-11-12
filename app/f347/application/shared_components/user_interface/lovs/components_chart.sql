prompt --application/shared_components/user_interface/lovs/components_chart
begin
--   Manifest
--     COMPONENTS (CHART)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.7'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(291312490138046410)
,p_lov_name=>'COMPONENTS (CHART)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(s.items_value_column_name) d, lower(s.items_value_column_name) r',
'from apex_application_page_chart_s s',
'where s.page_id = :APP_PAGE_ID',
'and s.items_value_column_name <> ''AMOUNT''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_imp.component_end;
end;
/
