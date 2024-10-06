prompt --application/pages/page_00730
begin
--   Manifest
--     PAGE: 00730
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>730
,p_name=>'APEX 24.1'
,p_alias=>'APEX-24-1'
,p_step_title=>'APEX 24.1'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120322220144860378)
,p_plug_name=>'5 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/24.1/htmrn/deprecated-features.html#GUID-657FF369-756E-4F31-96F9-B2D92C3DE084" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22532874009388019)
,p_name=>'5.2 Deprecated Dynamic Action Event'
,p_parent_plug_id=>wwv_flow_imp.id(120322220144860378)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.page_id',
'      ,d.page_name',
'      ,''dynamic action'' component_type',
'      ,d.dynamic_action_name',
'      ,d.when_event_name',
'from apex_application_page_da d',
'where d.application_id = :P0_APP_ID',
'and d.when_event_name = ''Page Unload'''))
,p_header=>'The APEX Dynamic Action event "Page Unload" is deprecated because the underlying browser event unload is deprecated. For more information, see Window: unload event.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No Page Unload found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22532991658388020)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22533093025388021)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22533290910388023)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22533548197388026)
,p_query_column_id=>4
,p_column_alias=>'DYNAMIC_ACTION_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Dynamic Action Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22533619676388027)
,p_query_column_id=>5
,p_column_alias=>'WHEN_EVENT_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'When Event Name'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'Page Unload'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22533786060388028)
,p_name=>'5.3 Deprecated Plugin Attribute'
,p_parent_plug_id=>wwv_flow_imp.id(120322220144860378)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.plugin_type, p.display_name, p.substitute_attributes',
'from apex_appl_plugins p',
'where p.plugin_type = ''Region Type''',
'and p.application_id = :P0_APP_ID',
'and p.substitute_attributes = ''Y'''))
,p_header=>'When editing a region plug-in, the Substitute Attribute Values switch is now deprecated. When you move to the Procedure interface, this switch disappears. To perform substitutions on the attribute value, use apex_plugin_util.replace_substitutions.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Plugin Attribute found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22534370307388034)
,p_query_column_id=>1
,p_column_alias=>'PLUGIN_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Plugin Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22534466449388035)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Display Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22534518875388036)
,p_query_column_id=>3
,p_column_alias=>'SUBSTITUTE_ATTRIBUTES'
,p_column_display_sequence=>30
,p_column_heading=>'Substitute Attributes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22534780879388038)
,p_name=>'5.4 Number Field Substitutions'
,p_parent_plug_id=>wwv_flow_imp.id(120322220144860378)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_id, p.page_name, p.display_as, p.item_name, p.label, p.attribute_01 item_min, p.attribute_02 item_max',
'from apex_application_page_items p',
'where display_as_code = ''NATIVE_NUMBER_FIELD''',
'and p.application_id = :P0_APP_ID',
'and (instr(p.attribute_01,''&'') > 0 or instr(p.attribute_02,''&'') > 0)'))
,p_header=>'Dynamic substitutions for Min/Max Value attributes for the Number field page item, including &P1_MIN., are deprecated. This will be fixed in a future release by allowing developers to declaratively pick an item to use for Min/Max Value attributes.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Field Substitution in Number Fields found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535187653388042)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535285490388043)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535391567388044)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>30
,p_column_heading=>'Display As'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535463116388045)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535580252388046)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535686178388047)
,p_query_column_id=>6
,p_column_alias=>'ITEM_MIN'
,p_column_display_sequence=>60
,p_column_heading=>'Item Min'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22535761681388048)
,p_query_column_id=>7
,p_column_alias=>'ITEM_MAX'
,p_column_display_sequence=>70
,p_column_heading=>'Item Max'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(216850614825287391)
,p_name=>'5.1 Deprecated APIs'
,p_parent_plug_id=>wwv_flow_imp.id(120322220144860378)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_id',
'      ,p.page_name',
'      ,p.component_name',
'      ,p.component_type',
'      ,p.process_point',
'      ,p.plsql_code_clob',
'from av_plsql_v p',
'where application_id = :P0_APP_ID',
'and (instr(lower(p.plsql_code_clob)',
'        ,''approval'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_javascript.add_3rd_party_library_file'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_css.add_3rd_party_library_file'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_util.url_encode'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_plugin_util.print_display_only'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_automation.abort'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The <b>APEX_APPROVAL</b> package is deprecated. Use APEX_HUMAN_TASK instead.<br>',
'The PL/SQL APIs <b>apex_javascript.add_3rd_party_library_file</b> and <b>apex_css.add_3rd_party_library_file</b> are deprecated and will be removed in a future APEX release.<br>',
'The <b>URL_ENCODE</b> function in <b>APEX_UTIL/</b> is now deprecated. Instead, use the built-in database function UTL_URL.ESCAPE.<br>',
'The <b>apex_plugin_util.print_display_only</b> API is deprecated. Instead, use apex_plugin_util.print_read_only.<br>',
'The <b>ABORT</b> function in <b>APEX_AUTOMATION</b> is now deprecated. Instead, use TERMINATE to terminate a currently executing automation.<br>',
'Oracle recommends not relying on APEX''s 3rd party dependencies as they may change without notice. Instead, bundle your own dependencies or include them via a CDN.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated API calls found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27010545769072609)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27010923776072609)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27011345722072609)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27011702958072609)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27012133320072609)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27012554312072609)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120323316913860389)
,p_plug_name=>'7 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/24.1/htmrn/desupported-features.html#GUID-CC4B5D70-22FD-45CA-8F6F-C34A91F1B5BD" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(180000590782506356)
,p_plug_name=>'7.1 Removed JSON Application Export'
,p_region_name=>'av-region-desupported-71'
,p_parent_plug_id=>wwv_flow_imp.id(120323316913860389)
,p_region_css_classes=>'av-no-check-needed av-developer-functionality'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The JSON application export option is removed. The Export Readable Format option is now a switch. If off, the application exports in SQL form. If on, the export file contains a human-readable YAML version of the application metadata.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27006990928044553)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27007474639044553)
,p_event_id=>wwv_flow_imp.id(27006990928044553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27007832574044553)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27008335015044554)
,p_event_id=>wwv_flow_imp.id(27007832574044553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27008711206044554)
,p_name=>'page load - add icons by class'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27009255139044554)
,p_event_id=>wwv_flow_imp.id(27008711206044554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.av-no-check-needed,.av-developer-functionality'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''running DA'')',
'console.log(this.affectedElements);'))
);
wwv_flow_imp.component_end;
end;
/
