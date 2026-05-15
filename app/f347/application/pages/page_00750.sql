prompt --application/pages/page_00750
begin
--   Manifest
--     PAGE: 00750
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>750
,p_name=>'Migration Details'
,p_alias=>'MIGRATION-DETAILS'
,p_step_title=>'Migration Details'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71034002800095987)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(472901389022347808)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(71037927717110921)
,p_name=>'Migration Details'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_version',
'      ,rn_type',
'      ,rn_chapter_no',
'      ,rn_chapter_name',
'      ,rn_chapter_text',
'      ,rn_chapter_link',
'      ,page_id',
'      ,page_name',
'      ,component_type',
'      ,component_name',
'      ,coalesce(plsql_code_vc2',
'               ,coalesce(js_code_vc2',
'                        ,css_code_vc2)) code',
'      ,migration_priority',
'      ,round(migration_effort_in_days,2) migration_effort_in_days',
'from av_migration_pkg.ptf_effort_calculation(i_app_id               => :P0_APP_ID',
'                                            ,i_apex_versions        => :P750_APEX_VERSIONS',
'                                            ,i_migration_priorities => :P750_MIGRATION_PRIORITIES',
'                                            ,i_migration_types      => :P750_MIGRATION_TYPES',
'                                            ,i_show_only_findings   => :P750_SHOW_ONLY_FINDINGS)',
'order by apex_version',
'        ,replace(rn_chapter_no',
'                ,''.''',
'                ,'''')',
'        ,page_id',
'        ,component_name',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID,P750_APEX_VERSIONS,P750_MIGRATION_PRIORITIES,P750_MIGRATION_TYPES,P750_SHOW_ONLY_FINDINGS'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038048762110922)
,p_query_column_id=>1
,p_column_alias=>'APEX_VERSION'
,p_column_display_sequence=>10
,p_column_heading=>'APEX Version'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038190194110923)
,p_query_column_id=>2
,p_column_alias=>'RN_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038265585110924)
,p_query_column_id=>3
,p_column_alias=>'RN_CHAPTER_NO'
,p_column_display_sequence=>30
,p_column_heading=>'Chapter No'
,p_column_html_expression=>'<a href="#RN_CHAPTER_LINK#" target="_blank">#RN_CHAPTER_NO#</a>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038312588110925)
,p_query_column_id=>4
,p_column_alias=>'RN_CHAPTER_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Chapter Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038444867110926)
,p_query_column_id=>5
,p_column_alias=>'RN_CHAPTER_TEXT'
,p_column_display_sequence=>60
,p_column_heading=>'Chapter Text'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71039789134110939)
,p_query_column_id=>6
,p_column_alias=>'RN_CHAPTER_LINK'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038552675110927)
,p_query_column_id=>7
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038679340110928)
,p_query_column_id=>8
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038754587110929)
,p_query_column_id=>9
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>90
,p_column_heading=>'Component Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038847089110930)
,p_query_column_id=>10
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>100
,p_column_heading=>'Component Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71038979148110931)
,p_query_column_id=>11
,p_column_alias=>'CODE'
,p_column_display_sequence=>110
,p_column_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71039011754110932)
,p_query_column_id=>12
,p_column_alias=>'MIGRATION_PRIORITY'
,p_column_display_sequence=>120
,p_column_heading=>'Migration Priority'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71039103965110933)
,p_query_column_id=>13
,p_column_alias=>'MIGRATION_EFFORT_IN_DAYS'
,p_column_display_sequence=>130
,p_column_heading=>'Migration Effort In Days'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71039294368110934)
,p_name=>'P750_APEX_VERSIONS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_prompt=>'APEX Versions'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'APEX_VERSIONS'
,p_lov=>'select vc2 d, vc2 r from av_migration_pkg.tf_apex_versions()'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71039372906110935)
,p_name=>'P750_MIGRATION_PRIORITIES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_item_default=>'1:2:3'
,p_prompt=>'Migration Priorities'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'MIGRATION_PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''1 - must'' d, 1 r from dual',
'union all',
'select ''2 - should'' d, 2 r from dual',
'union all',
'select ''3 - recommed'' d, 3 r from dual',
'union all',
'select ''4 - best practices'' d, 4 r from dual',
'union all',
'select ''5 - information'' d, 5 r from dual'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1 - must<br>without these changes application will crash or doesn''t work<br><br>',
'2 - should<br>with these changes application gets minimum changes to run in latest APEX release<br><br>',
'3 - recommed<br>mostly desupported and deprecated features that should be adjusted<br><br>',
'4 - best practices<br>only adjustments which will reduce effort for maintaining in future or would be faster'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71039686767110938)
,p_name=>'P750_MIGRATION_TYPES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_item_default=>'av_migration_pkg.c_migration_type_new_feature || '':'' || av_migration_pkg.c_migration_type_deprecated || '':'' || av_migration_pkg.c_migration_type_desupported'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Migration Types'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'MIGRATION_TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''generally'' d, ''generally'' r, 1 sort_by from dual',
'union all',
'select ''new feature'' d, ''new feature'' r, 2 sort_by from dual',
'union all',
'select ''deprecated'' d, ''deprecated'' r, 3 sort_by from dual',
'union all',
'select ''desupported'' d, ''desupported'' r, 4 sort_by from dual'))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71039864557110940)
,p_name=>'P750_SHOW_ONLY_FINDINGS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_item_default=>'1'
,p_prompt=>'Show Only Findings'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71039493414110936)
,p_name=>'click Button Refresh - refresh Region Migration Details'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71039542703110937)
,p_event_id=>wwv_flow_imp.id(71039493414110936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71037927717110921)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
