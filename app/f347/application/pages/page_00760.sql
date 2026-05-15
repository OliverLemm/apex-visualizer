prompt --application/pages/page_00760
begin
--   Manifest
--     PAGE: 00760
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
 p_id=>760
,p_name=>'Migration Effort'
,p_alias=>'MIGRATION-EFFORT'
,p_step_title=>'Migration Effort'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers=MIGRATION_PRIORITY],',
'td[headers=RN_CHAPTER_NAME]',
'{',
'  white-space: nowrap;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(71032515836091654)
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
 p_id=>wwv_flow_imp.id(71036156686110903)
,p_name=>'Migration Effort'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' apex_version',
',rn_type',
',rn_chapter_no',
',rn_chapter_name',
',rn_chapter_text',
',migration_priority',
',count(1) amount_of_objects',
',round(sum(migration_effort_in_days)',
'      ,3) migration_effort_in_days',
'from av_migration_pkg.ptf_effort_calculation(i_app_id               => :P0_APP_ID',
'                                            ,i_apex_versions        => :P760_APEX_VERSIONS',
'                                            ,i_migration_priorities => :P760_MIGRATION_PRIORITIES)',
'  group by apex_version',
'          ,rn_type',
'          ,rn_chapter_no',
'          ,rn_chapter_name',
'          ,rn_chapter_text',
'          ,migration_priority',
'  order by migration_priority',
'          ,replace(rn_chapter_no,''.'','''')',
'          ,rn_type',
'          ,apex_version',
'          '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID,P760_APEX_VERSIONS,P760_MIGRATION_PRIORITIES'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'1'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71036205802110904)
,p_query_column_id=>1
,p_column_alias=>'APEX_VERSION'
,p_column_display_sequence=>30
,p_column_heading=>'APEX Version'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71037072113110912)
,p_query_column_id=>2
,p_column_alias=>'RN_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71036330701110905)
,p_query_column_id=>3
,p_column_alias=>'RN_CHAPTER_NO'
,p_column_display_sequence=>40
,p_column_heading=>'Chapter No'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71036455609110906)
,p_query_column_id=>4
,p_column_alias=>'RN_CHAPTER_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Chapter Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71037713658110919)
,p_query_column_id=>5
,p_column_alias=>'RN_CHAPTER_TEXT'
,p_column_display_sequence=>60
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71036981630110911)
,p_query_column_id=>6
,p_column_alias=>'MIGRATION_PRIORITY'
,p_column_display_sequence=>10
,p_column_heading=>'Priority'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(71058072923988992)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71037101912110913)
,p_query_column_id=>7
,p_column_alias=>'AMOUNT_OF_OBJECTS'
,p_column_display_sequence=>70
,p_column_heading=>'# Objects'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71036873470110910)
,p_query_column_id=>8
,p_column_alias=>'MIGRATION_EFFORT_IN_DAYS'
,p_column_display_sequence=>80
,p_column_heading=>'Effort In Days'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71037587460110917)
,p_name=>'P760_MIGRATION_PRIORITIES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
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
'select ''4 - best practices'' d, 4 r from dual'))
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
 p_id=>wwv_flow_imp.id(71037610662110918)
,p_name=>'P760_APEX_VERSIONS'
,p_item_sequence=>50
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71036623265110908)
,p_name=>'click Refresh - Refresh Region Migration Effort'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71036778000110909)
,p_event_id=>wwv_flow_imp.id(71036623265110908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(71036156686110903)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
