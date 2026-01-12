prompt --application/pages/page_00710
begin
--   Manifest
--     PAGE: 00710
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.12'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>710
,p_name=>'APEX 22.2'
,p_alias=>'APEX-22-2'
,p_step_title=>'APEX 22.2'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36658381493372480)
,p_plug_name=>'6.1 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/22.2/htmrn/deprecated-features.html" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36658488305372481)
,p_name=>'6.1.3 Deprecated APIs and Parameters (PL/SQL API)'
,p_parent_plug_id=>wwv_flow_imp.id(36658381493372480)
,p_template=>2664334895415463485
,p_display_sequence=>30
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
'and (instr(upper(p.plsql_code_clob)',
'        ,''APEX_PAGE.IS_DESKTOP_UI'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_PAGE.GET_UI_TYPE'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_INSTANCE_ADMIN.ADD_WEB_ENTRY_POINT'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Deprecated public package APIs:<br>',
'- apex_page.is_desktop_ui function<br>',
'- apex_page.get_ui_type function<br>',
'<br>',
'Deprecated parameters:<br>',
'- For apex_instance_admin.add_web_entry_point, the parameter p_methods is deprecated.<br>',
'<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> This check only searches for the apex_instance_admin.add_web_entry_point. You have to check whether the parameter p_methods is used.</b>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no API calls used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36658627958372482)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36658772276372483)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36658822277372484)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36658960179372485)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36659058103372486)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36659102127372487)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_column_hit_highlight=>'APEX_PAGE.IS_DESKTOP_UI,APEX_PAGE.GET_UI_TYPE,APEX_INSTANCE_ADMIN.ADD_WEB_ENTRY_POINT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(95832256919494913)
,p_name=>'6.1.4 Deprecated jQuery/JET Date Pickers'
,p_parent_plug_id=>wwv_flow_imp.id(36658381493372480)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_id',
'      ,p.page_name',
'      ,p.region',
'      ,p.item_name',
'      ,p.label',
'      ,case p.display_as_code when ''NATIVE_DATE_PICKER_JET'' then ''JET Datepicker'' else ''jQuery Datepicker'' end display_as',
'from apex_application_page_items p',
'where p.display_as_code in (''NATIVE_DATE_PICKER_JET'',''NATIVE_DATE_PICKER'')',
'and p.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'jQuery/JET Date Pickers are now deprecated and cannot be used for new pages or applications. The old jQuery Date Picker JavaScript APIs are not supported.<br>',
'<br>',
'The JET Date Picker will be removed in a future release. Oracle recommends replacing all old Date Pickers with the new Date Picker.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no JET or jQuery Datepickers used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38477226988330707)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38477592785330707)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38478060865330707)
,p_query_column_id=>3
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38478797328330708)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Item Name'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38478377772330707)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36659433628372490)
,p_query_column_id=>6
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>60
,p_column_heading=>'Display As'
,p_column_hit_highlight=>'JET Datepicker,jQuery Datepicker'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(96308720702795989)
,p_name=>'6.1.2 Deprecated User Interfaces Removed'
,p_parent_plug_id=>wwv_flow_imp.id(36658381493372480)
,p_template=>2664334895415463485
,p_display_sequence=>20
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
'and (instr(upper(p.plsql_code_clob)',
'        ,''APEX_WORKSPACE_UI_TYPES'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_APPL_USER_INTERFACES'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''UI_DETECTION_CSS_URLS'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''USER_INTERFACE_ID'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''USER_INTERFACE_ID'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''PAGE_TRANSITION'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''POPUP_TRANSITION'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''UI_TYPE_ID'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''UI_TYPE_NAME'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''DEFAULT_PAGE_TRANSITION'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''DEFAULT_POPUP_TRANSITION'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''SUPPORTED_UI_TYPES'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''SUPPORTED_UI_TYPES'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX previously defined multiple users interfaces for each application. This is no longer the case. This release cleans up deprecated user interfaces, which impacts many APEX Dictionary Views.<br>',
'<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> This check uses only the column names while crawling your PL/SQL or SQL Code. If other tables than apex_applications, apex_appl_concatenated_files, apex_application_p'
||'ages, apex_application_themes, apex_appl_plugins, apex_appl_plugin_std_attrs, apex_appl_plugin_attributes are using the same column name you can ignore the findings.</b>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no tables or columns used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38459083682192774)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38459475549192776)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38459883652192776)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38460331107192776)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38460753851192776)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38461111083192776)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_column_hit_highlight=>'APEX_WORKSPACE_UI_TYPES,APEX_APPL_USER_INTERFACES,UI_DETECTION_CSS_URLS,USER_INTERFACE_ID,USER_INTERFACE_ID,PAGE_TRANSITION,POPUP_TRANSITION,UI_TYPE_ID,UI_TYPE_NAME,DEFAULT_PAGE_TRANSITION,DEFAULT_POPUP_TRANSITION,SUPPORTED_UI_TYPES,SUPPORTED_UI_TYPE'
||'S'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112225118395306621)
,p_plug_name=>'6.1.1 Deprecated APEX Item Markup'
,p_parent_plug_id=>wwv_flow_imp.id(36658381493372480)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Future releases of APEX may include fixes and improvements to the accessibility, usability, and functionality of various items that require changing the markup or using custom elements (web components). These changes may create more dynamic behaviors'
||' for items, and will be done in a way that minimizes impact to items and forms in existing apps.<br>',
'<br>',
'The apex.item namespace and item interface are the only supported APIs for customizing and programatically working with items. APEX discourages customizations that rely on undocumented item markup or CSS classes, as these may not work as expected in '
||'future releases.<br>',
'<br>',
'Assumptions about the HTML markup used by each of the native APEX items may not hold in the future. Item customization through Advanced attributes (CSS Classes), Custom Attributes, JavaScript code, and CSS rules that assumes particular markup could b'
||'reak.<br>',
'For example, you could make the text area item character counter bold by adding class important-text to the Advanced: CSS Classes attribute of a text area and then add a custom CSS rule like:<br>',
'<br>',
'<i>.important-text.apex-item-textarea + .apex-item-textarea-counter {',
'    font-weight: bold;',
'}</i><br>',
'<br>',
'This currently works, but may not in the future because it relies on undocumented class names and the counter element directly following the textarea element. It is also not a best practice to add event handlers in Custom Attributes.<br>',
'<br>',
'Future releases may document new custom element markup, classes, and CSS variables to allow more supportable customization.<br>',
'<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom page template and custom region templates with duplicated positions are considered deprecated. For example, a region template referencing position #CHANGE# twice is not recommended because that duplicate position causes duplicate DOM IDs.<br>',
'<br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(153799588483834963)
,p_name=>'6.1.3 Deprecated APIs and Parameters (JavaScript API) '
,p_parent_plug_id=>wwv_flow_imp.id(36658381493372480)
,p_template=>2664334895415463485
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.page_id',
'      ,j.page_name',
'      ,j.component_name',
'      ,j.component_type',
'      ,j.js_code_vc2',
'from av_javascript_v j',
'where instr(lower(j.js_code_clob)',
'           ,''apex.pwa.gettnstalltext'') > 0',
'and j.application_id = :P0_APP_ID'))
,p_header=>'JavaScript API apex.pwa.getInstallText is deprecated.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No calls like apex.theme42.util.mq found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38468168321268055)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38468480296268055)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38468924552268055)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38469294636268057)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38469735484268057)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Vc2'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36659478262372491)
,p_plug_name=>'8.1 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/22.2/htmrn/desupported-features.html" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36659596577372492)
,p_plug_name=>'8.1.5 App Builder Defaults Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Developers can no longer define App Builder Defaults from Workspace Utilities, App Builder Defaults. The Create Application Wizard no longer uses the defined attributes.<br> ',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36659770024372493)
,p_plug_name=>'8.1.6 Copying Legacy Themes Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Copy Theme Wizard no longer supports copying legacy themes. This includes Themes 1 - 26, and the jQuery Mobile theme.<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36659842541372494)
,p_plug_name=>'8.1.7 CKEditor4 Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rich Text Editor items based on CKEditor4, which are marked as deprecated since APEX 20.2, are now desupported and will be automatically converted to CKEditor5. CKEditor4 is removed from APEX completely.<br>',
'Converted items receive the following configuration:',
'<br>',
'- Format: HTML<br>',
'- Toolbar: unchanged<br>',
'- Toolbar Style: Multiline<br>',
'- Minimum Height: 180<br>',
'- Maximum Height: null<br>',
'- Allow Custom HTML: Enabled<br>',
'<br>',
'The properties Toolbar Position and Skin do not have a CKEditor5 equivalent, and are removed. Any code included in the JavaScript Initialization Code attribute is automatically commented out.<br>',
'Oracle recommends manually checking the functioning of each Rich Text Editor item.<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36659955304372495)
,p_name=>'8.1.8 Desupported Public Package APIs'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_template=>2664334895415463485
,p_display_sequence=>80
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
'and (instr(upper(p.plsql_code_clob)',
'        ,''APEX_PAGE.IS_DESKTOP_UI'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_PAGE.GET_UI_TYPE'') > 0',
'    )'))
,p_header=>'The APIs functions <b>apex_page.is_desktop_ui function</b> and <b>apex_page.get_ui_type</b> are desupported.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no API calls used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36659991889372496)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36660143518372497)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(36660252038372498)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38496435971539449)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38496559928539450)
,p_query_column_id=>5
,p_column_alias=>'PROCESS_POINT'
,p_column_display_sequence=>50
,p_column_heading=>'Process Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38496594977539451)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_column_hit_highlight=>'APEX_PAGE.IS_DESKTOP_UI,APEX_PAGE.GET_UI_TYPE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(96336752131018458)
,p_name=>'8.1.1 Desupported Attributes in App Builder'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url',
'from apex_applications a',
'where (a.app_builder_icon_name is not null or ',
'       a.favicons is not null or',
'       a.pwa_manifest_icon_url is not null)',
'and a.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'In Edit Application Definition: <b>Progressive Web App - Icon URL</b> and <b>Application Icon - Icon File Name</b><br>',
'In Edit User Interface: <b>Favicon</b>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Deprecated Attributes in App Builder used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38485715568415227)
,p_query_column_id=>1
,p_column_alias=>'APP_BUILDER_ICON_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'App Builder Icon Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38486091664415227)
,p_query_column_id=>2
,p_column_alias=>'FAVICONS'
,p_column_display_sequence=>20
,p_column_heading=>'Favicons'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38486526874415227)
,p_query_column_id=>3
,p_column_alias=>'PWA_MANIFEST_ICON_URL'
,p_column_display_sequence=>30
,p_column_heading=>'Pwa Manifest Icon Url'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(96340134613051302)
,p_name=>'8.1.2 Desupported Properties'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.page_id',
'      ,r.page_name',
'      ,r.region_name',
'      ,r.ascending_image',
'      ,r.ascending_image_attributes',
'      ,r.descending_image',
'      ,r.descending_image_attributes',
'from apex_application_page_regions r',
'where (r.ascending_image is not null',
'or r.ascending_image_attributes is not null',
'or r.descending_image is not null',
'or r.descending_image_attributes is not null)',
'and r.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The properties <b>Region Image</b> and <b>Image Tag Attributes</b> are desupported.',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Region Image and Image Tag Attributes used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38487697425448058)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38488076382448058)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38488506416448058)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Region Name'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38488905283448058)
,p_query_column_id=>4
,p_column_alias=>'ASCENDING_IMAGE'
,p_column_display_sequence=>40
,p_column_heading=>'Ascending Image'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38489349218448058)
,p_query_column_id=>5
,p_column_alias=>'ASCENDING_IMAGE_ATTRIBUTES'
,p_column_display_sequence=>50
,p_column_heading=>'Ascending Image Attributes'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38489746272448058)
,p_query_column_id=>6
,p_column_alias=>'DESCENDING_IMAGE'
,p_column_display_sequence=>60
,p_column_heading=>'Descending Image'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38490143515448060)
,p_query_column_id=>7
,p_column_alias=>'DESCENDING_IMAGE_ATTRIBUTES'
,p_column_display_sequence=>70
,p_column_heading=>'Descending Image Attributes'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(96345495180089304)
,p_plug_name=>'8.1.4 FullCalendar 3 Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FullCalendar v3 is desupported, including:<br>',
'- deprecated plug-in attributes<br>',
'- files and folders specific to v3 or jquery-fullcalendar<br>',
'- v3-specific logic in PL/SQL and JavaScript<br>',
'<br>',
'The used library version is now FullCalendar 5.11.2. APEX upgrades the library automatically.<br> ',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(96379832103830608)
,p_name=>'8.1.3 Desupported View Columns'
,p_parent_plug_id=>wwv_flow_imp.id(36659478262372491)
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.app_builder_icon_name, a.favicons, a.pwa_manifest_icon_url',
'from apex_applications a',
'where (a.app_builder_icon_name is not null or ',
'       a.favicons is not null or',
'       a.pwa_manifest_icon_url is not null)',
'and a.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following columns are marked as desupported in the <b>apex_applications</b> view: <b>app_builder_icon_name, favicons, pwa_manifest_icon_url</b>.',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Desupported View Columns used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38491327504469602)
,p_query_column_id=>1
,p_column_alias=>'APP_BUILDER_ICON_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'App Builder Icon Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38491691485469602)
,p_query_column_id=>2
,p_column_alias=>'FAVICONS'
,p_column_display_sequence=>20
,p_column_heading=>'Favicons'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38492122612469604)
,p_query_column_id=>3
,p_column_alias=>'PWA_MANIFEST_ICON_URL'
,p_column_display_sequence=>30
,p_column_heading=>'Pwa Manifest Icon Url'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38242096714976860)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38480062494344765)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38480452132344766)
,p_event_id=>wwv_flow_imp.id(38480062494344765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38480873260347173)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38481199745347174)
,p_event_id=>wwv_flow_imp.id(38480873260347173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp.component_end;
end;
/
