prompt --application/pages/page_00745
begin
--   Manifest
--     PAGE: 00745
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>745
,p_name=>'APEX 26.1'
,p_alias=>'APEX-26-1'
,p_step_title=>'APEX 26.1'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2528123255985761961
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(337492568655592917)
,p_name=>'5.1 Deprecated APIs'
,p_static_id=>'5-1-deprecated-apis'
,p_region_name=>'av-deprecated-51'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
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
'        ,''apex_lang.message'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_plugin_util.execute_plsql_code'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_util.custom_calendar'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''apex_util.increment_calendar'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>APEX_LANG</h4>',
'<b>APEX_LANG.MESSAGE</b> is deprecated. Instead, use APEX_LANG.GET_MESSAGE to support named substitution parameters.<br>',
'<h4>APEX_PLUGIN_UTIL</h4>',
'<b>APEX_PLUGIN_UTIL.EXECUTE_PLSQL_CODE</b> is now deprecated. Instead, use APEX_EXEC.EXECUTE_PLSQL Signature 1 or Signature 2.<br>',
'<h4>APEX_UTIL</h4>',
'<b>APEX_UTIL.CUSTOM_CALENDAR</b> and <b>APEX_UTIL.INCREMENT_CALENDAR</b> are deprecated.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_fixed_header=>'PAGE'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated API calls found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79839416982931384)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79839059419931384)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79840236363931384)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79839813192931384)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79838228995931382)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(79838671309931382)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(240964173975165904)
,p_plug_name=>'5 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/24.2/htmrn/deprecated-features.html" target="_blank">Link to Release Notes</a>'
,p_static_id=>'5-deprecated-features-a-href-https-docs-oracle-com-en-database-oracle-apex-24-2-htmrn-deprecated-features-html-target-blank-link-to-release-notes-a'
,p_region_name=>'av-deprecated-5'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(71039919371110941)
,p_name=>'7.1 Desupported Public View Columns'
,p_static_id=>'7-1-desupported-public-view-columns'
,p_region_name=>'av-261-des71'
,p_parent_plug_id=>wwv_flow_imp.id(240965270744165915)
,p_template=>2665811232373458102
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
'        ,''COMPONENT_SIGNATURE'') > 0)'))
,p_header=>'The COMPONENT_SIGNATURE column is nullified in all public views, and the column comment is marked obsolete. The Application Comparison and Component Summary Count utilities are now removed.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> Column COMPONENT_SIGNATURE not used.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040250490110944)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040309499110945)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040078420110942)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040123752110943)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040595510110947)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71040404453110946)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(314048174904884099)
,p_plug_name=>'7.2 iOS Status Bar Style Desupported'
,p_static_id=>'7-2-ios-status-bar-style-desupported'
,p_region_name=>'av-desupported-72'
,p_parent_plug_id=>wwv_flow_imp.id(240965270744165915)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The iOS status bar style (apple_status_bar_style) is no longer rendered.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(240965270744165915)
,p_plug_name=>'7 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/26.1/htmrn/desupported-features.html" target="_blank">Link to Release Notes</a>'
,p_static_id=>'7-desupported-features-a-href-https-docs-oracle-com-en-database-oracle-apex-26-1-htmrn-desupported-features-html-target-blank-link-to-release-notes-a'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79851016764931409)
,p_name=>'change P0_APP_ID - refresh regions'
,p_static_id=>'change-p0-app-id-refresh-regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79851545432931409)
,p_event_id=>wwv_flow_imp.id(79851016764931409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'av_refresh_hide_show_regions()')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79849283020931406)
,p_name=>'click refresh - refresh regions'
,p_static_id=>'click-refresh-refresh-regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79849764704931407)
,p_event_id=>wwv_flow_imp.id(79849283020931406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'av_refresh_hide_show_regions()')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79850136542931407)
,p_name=>'page load - add icons by class'
,p_static_id=>'page-load-add-icons-by-class'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79850678275931407)
,p_event_id=>wwv_flow_imp.id(79850136542931407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.av-no-check-needed,.av-developer-functionality'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'console.log(''running DA'')',
    'console.log(this.affectedElements);')))).to_clob
);
wwv_flow_imp.component_end;
end;
/
