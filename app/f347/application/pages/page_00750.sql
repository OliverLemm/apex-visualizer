prompt --application/pages/page_00750
begin
--   Manifest
--     PAGE: 00750
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>750
,p_name=>'APEX 26.2'
,p_alias=>'APEX-26-2'
,p_step_title=>'APEX 26.2'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2528123255985761961
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11303160892631745)
,p_plug_name=>'1. Deprecated Data Generator'
,p_static_id=>'1-deprecated-data-generator'
,p_parent_plug_id=>wwv_flow_imp.id(252467345882736950)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Data Generator utility in SQL Workshop is deprecated, and will be removed in a future release.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11303612687631750)
,p_plug_name=>'3. APEX Advisor'
,p_static_id=>'3-apex-advisor'
,p_parent_plug_id=>wwv_flow_imp.id(252467345882736950)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX Advisor is deprecated, and will be removed in a future release. With SQLcl 26.3.0, the built-in CODESCAN utility is significantly enhanced to introduce native code quality and security rules specifically for APEXlang applications.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11303006026631744)
,p_plug_name=>'3. Query Builder Desupported'
,p_static_id=>'3-query-builder-desupported'
,p_parent_plug_id=>wwv_flow_imp.id(252468442651736961)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SQL Workshop Query Builder is desupported, including the Query Builder pages in SQL Workshop and the Query Builder action in SQL code editors.<br>',
'When upgrading to APEX 26.2 or importing a workspace export from an earlier release, saved visual Query Builder queries are converted to SQL Commands saved queries. The generated SQL text is preserved and can be opened and run from SQL Workshop, SQL '
||'Commands, Saved SQL.<br>',
'Visual Query Builder layout metadata is not preserved.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11578274000205901)
,p_plug_name=>'4. Deprecated PL/SQL APIs - APEX_AI'
,p_static_id=>'4-deprecated-pl-sql-apis-apex-ai'
,p_parent_plug_id=>wwv_flow_imp.id(252467345882736950)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following record members are deprecated in APEX 26.2:<br>',
'<i>type t_chat_message is record (<br>',
'    ...<br>',
'    tool_calls t_chat_message_tool_calls, -- Deprecated: 26.2<br>',
'    ... );</i><br>',
'Use individual T_CHAT_MESSAGE entries with CHAT_ROLE set to C_ROLE_TOOL_CALL and the tool call stored in TOOL_CALL.<br>',
'<i>type t_chat_response is record (<br>',
'    ...<br>',
'    message  t_chat_message, -- Deprecated: 26.2<br>',
'    ... );</i><br>',
'Use T_CHAT_RESPONSE.MESSAGES to access all normalized messages returned by the AI provider.<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated, you need to check it yourself</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20822247919754567)
,p_name=>'2. OCI Generative AI Model Retirement Migration'
,p_static_id=>'5-1'
,p_parent_plug_id=>wwv_flow_imp.id(252468442651736961)
,p_template=>2665811232373458102
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.workspace, a.provider_type, model_name',
'from apex_workspace_ai_services a',
'where lower(a.model_name) in (''command-r-08-2024''',
'                             ,''command-r-plus-08-2024''',
'                             ,''command-latest''',
'                             ,''command-plus-latest'')'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following retired models are no longer supported: <b>cohere.command-r-08-2024, cohere.command-r-plus-08-2024, cohere.command-latest, cohere.command-plus-latest</b><br>',
'On upgrade or legacy application import, APEX migrates these models to cohere.command-a-03-2025.<br>',
'For more information, see <a href="https://docs.oracle.com/en-us/iaas/Content/generative-ai/deprecating-on-demand.htm" target="_blank">Model Retirement Dates (On-Demand Mode)</a> in Oracle Cloud Infrastructure Documentation.<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> This setting is on Workspace Level</b>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No desupported Cohere AI Models found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11505106288571050)
,p_query_column_id=>3
,p_column_alias=>'MODEL_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Model Name'
,p_column_hit_highlight=>'command-r-08-2024,command-r-plus-08-2024,command-latest,command-plus-latest'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11504799300571050)
,p_query_column_id=>2
,p_column_alias=>'PROVIDER_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Provider Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11504316267571048)
,p_query_column_id=>1
,p_column_alias=>'WORKSPACE'
,p_column_display_sequence=>10
,p_column_heading=>'Workspace'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20823250625754577)
,p_name=>'2. Deprecated Authentication Scheme'
,p_static_id=>'5-2-legacy-calendar-templates-deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(252467345882736950)
,p_template=>2665811232373458102
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.workspace',
'      ,a.authentication_scheme_name',
'      ,a.scheme_type_code',
'      ,a.is_current_authentication',
'from apex_application_auth a',
'where a.scheme_type_code in (''OSSO''',
'                            ,''NATIVE_OSSO'')',
'and a.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Oracle Application Server Single Sign-On authentication scheme is deprecated, and will be removed in a future release.<br>',
'Anyone using this scheme should switch to Social Sign-In or SAML authentication.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Oracle Application Server Single Sign-On found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303384225631747)
,p_query_column_id=>2
,p_column_alias=>'AUTHENTICATION_SCHEME_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Authentication Scheme Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303593033631749)
,p_query_column_id=>4
,p_column_alias=>'IS_CURRENT_AUTHENTICATION'
,p_column_display_sequence=>40
,p_column_heading=>'Is Current Authentication'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303488449631748)
,p_query_column_id=>3
,p_column_alias=>'SCHEME_TYPE_CODE'
,p_column_display_sequence=>30
,p_column_heading=>'Scheme Type Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11303222427631746)
,p_query_column_id=>1
,p_column_alias=>'WORKSPACE'
,p_column_display_sequence=>10
,p_column_heading=>'Workspace'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22777860431378056)
,p_plug_name=>'1. Export Repository'
,p_static_id=>'5-6-export-repository-deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(252468442651736961)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Export Repository is no longer supported.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22777889654378057)
,p_plug_name=>'4. RESTful Services Feature in SQL Workshop'
,p_static_id=>'5-7-restful-services-feature-in-sql-workshop'
,p_parent_plug_id=>wwv_flow_imp.id(252468442651736961)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The ability to define REST APIs via the RESTful Services feature in SQL Workshop, deprecated in APEX 26.1, is now desupported.<br>',
'The declarative specification of REST APIs remains supported via SQL Developer Web. Existing ORDS REST modules and metadata remain available, but Legacy REST Workshop import/export and sample-service workflows are removed.<br>',
'APEX retains legacy APEX_REST_RESOURCE_* views for compatibility, but no longer exposes REST Workshop data. If you rely on these views, migrate to supported ORDS metadata/tools.<br>',
'Fresh APEX 26.2 installations no longer create or configure APEX_LISTENER. If upgrading from a previous release, existing APEX_LISTENER users are not dropped, but any objects or dependencies should be assessed.<br>',
'The Swagger UI URL instance setting is removed, and is not carried forward during upgrade.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252467345882736950)
,p_plug_name=>'Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/26.2/htmrn/deprecated-features.html" target="_blank">Link to Release Notes</a>'
,p_static_id=>'5-deprecated-features-a-href-https-docs-oracle-com-en-database-oracle-apex-24-2-htmrn-deprecated-features-html-target-blank-link-to-release-notes-a'
,p_region_name=>'av-deprecated-5'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252468442651736961)
,p_plug_name=>'Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/26.2/htmrn/desupported-features.html" target="_blank">Link to Release Notes</a>'
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
 p_id=>wwv_flow_imp.id(11528091269571070)
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
 p_id=>wwv_flow_imp.id(11528488747571071)
,p_event_id=>wwv_flow_imp.id(11528091269571070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'av_refresh_hide_show_regions()')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11528986426571073)
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
 p_id=>wwv_flow_imp.id(11529367375571073)
,p_event_id=>wwv_flow_imp.id(11528986426571073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'av_refresh_hide_show_regions()')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11529845061571073)
,p_name=>'page load - add icons by class'
,p_static_id=>'page-load-add-icons-by-class'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11530243881571073)
,p_event_id=>wwv_flow_imp.id(11529845061571073)
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
