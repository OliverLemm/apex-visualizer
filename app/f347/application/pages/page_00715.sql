prompt --application/pages/page_00715
begin
--   Manifest
--     PAGE: 00715
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.6'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>715
,p_name=>'APEX 23.1'
,p_alias=>'APEX-23-1'
,p_step_title=>'APEX 23.1'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72699154823752301)
,p_plug_name=>'5 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/23.1/htmrn/deprecated-features.html#GUID-657FF369-756E-4F31-96F9-B2D92C3DE084" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53880063919651574)
,p_name=>'5.1 CKEditor5 Deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(72699154823752301)
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
'      ,p.region',
'      ,p.item_name',
'      ,p.label',
'from apex_application_page_items p',
'where p.display_as_code = (''NATIVE_RICH_TEXT_EDITOR'')',
'and p.application_id = :P0_APP_ID'))
,p_header=>'CKEditor5 is deprecated. Existing items based on the CKEditor5 library continue to work. However, these items will be automatically converted to TinyMCE in a future release. Any custom code using CKEditor5 APIs must be re-worked.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no CKEditor used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53880117942651575)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53880226304651576)
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
 p_id=>wwv_flow_imp.id(53880337865651577)
,p_query_column_id=>3
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53880388936651578)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53880548813651579)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(72699261635752302)
,p_name=>'5.4 Display Only Item with Format HTML (Unsafe) Deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(72699154823752301)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>40
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
'from apex_application_page_items p',
'where p.display_as_code = ''NATIVE_DISPLAY_ONLY''',
'and p.attribute_05 = ''HTML'' -- Format',
'and p.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'As of APEX 23.1, Format HTML sanitizes the HTML content on the client before displaying it. This simplifies the display of user-provided HTML, including the content of HTML-based rich text editors.<br>',
'<br>',
'To maintain backward compatibility with existing applications, all current Display Only page items using the Format HTML option will be migrated to HTML (Unsafe) to preserve their current behavior. However, going forward, this option is deprecated, a'
||'nd displaying "unsafe" HTML, such as script tags or javascript: expressions, onclick attributes, and others, is no longer possible, as this content is stripped away.<br>',
'<br>',
'Although it is not recommended to display unsafe HTML content, you can still choose to display it. For more information, see HTML Sanitization.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Display Only with HTML used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(56456647142261302)
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
 p_id=>wwv_flow_imp.id(56457004412261302)
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
 p_id=>wwv_flow_imp.id(53882444356651598)
,p_query_column_id=>3
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(57694511586146049)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(57694655254146050)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132349494033175810)
,p_name=>'5.3 Preventing Double Escaping of LOV Display Values'
,p_parent_plug_id=>wwv_flow_imp.id(72699154823752301)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 0 page_id',
'      ,''Shared Components'' page_name',
'      ,aal.list_of_values_name lov_or_item_name',
'      ,aal.list_of_values_query lov_query',
'from apex_application_lovs aal',
'where lov_type = ''Dynamic''',
'and (upper(list_of_values_query) like ''%HTF.ESCAPE_SC%'' --',
'      or upper(list_of_values_query) like ''%APEX_ESCAPE.HTML%'' --',
'      or upper(list_of_values_query) like ''%WWV_FLOW_ESCAPE.HTML%'') --',
'and aal.application_id = :p0_app_id',
'union all',
'select aapi.page_id',
'      ,aapi.page_name',
'      ,aapi.item_name      lov_or_item_name',
'      ,aapi.lov_definition lov_query',
'from apex_application_page_items aapi',
'where lov_named_lov is null',
'and (upper(lov_definition) like ''%HTF.ESCAPE_SC%'' --',
'      or upper(lov_definition) like ''%APEX_ESCAPE.HTML%'' --',
'      or upper(lov_definition) like ''%WWV_FLOW_ESCAPE.HTML%'') --',
'and aapi.application_id = :p0_app_id',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'By default, APEX automatically HTML-escapes Lists of Values (LOV) display values as necessary. To ensure backward compatibility with legacy apps, APEX checks whether the LOV query already includes a utility function to escape the display value. If it'
||' does, APEX avoids double-escaping the value when displaying it in a Select List, Popup LOV, Shuttle, Display Only item, or similar components.<br>',
'<br>',
'Oracle recommends removing redundant inline escaping calls from your LOVs. In a future version of APEX, this prevention mechanism may be removed, which could cause some display values to appear double-escaped. '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Double Escapes used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(56450956040261298)
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
 p_id=>wwv_flow_imp.id(56451349459261299)
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
 p_id=>wwv_flow_imp.id(53882077672651595)
,p_query_column_id=>3
,p_column_alias=>'LOV_OR_ITEM_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Lov Or Item Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53882210189651596)
,p_query_column_id=>4
,p_column_alias=>'LOV_QUERY'
,p_column_display_sequence=>40
,p_column_heading=>'Lov Query'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148265891725686442)
,p_plug_name=>'5.2 Deprecated Object Browser Features '
,p_parent_plug_id=>wwv_flow_imp.id(72699154823752301)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Some functionality in Object Browser is deprecated:',
'<ul><li>The Model tab for tables is removed.</li>',
'    <li>The Create Materialized View Wizard is removed.</li>',
'</ul> Create materialized views by using a CREATE MATERIALIZED VIEW statement in SQL Commands or SQL Scripts. You can still view materialized views in Object Browser.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no check needed / developer utilities</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(189840361814214784)
,p_name=>'5.5 Deprecated Functions and Procedures'
,p_parent_plug_id=>wwv_flow_imp.id(72699154823752301)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>50
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
'        ,''.set_build_option_status'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''.set_application_status'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''.get_application_status'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''.set_global_notification'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''.get_global_notification'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''.set_app_build_status'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'As part of moving existing APIs from APEX_UTIL to APEX_APPLICATION_ADMIN, some comments changed. The following functions and procedures are deprecated:',
'<ul><li>set_build_option_status</li>',
'    <li>get_build_option_status (two times, overloaded)</li>',
'    <li>set_application_status</li>',
'    <li>get_application_status</li>',
'    <li>set_global_notification</li>',
'    <li>get_global_notification</li>',
'    <li>set_app_build_status</li></ul>'))
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
 p_id=>wwv_flow_imp.id(56459350359261304)
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
 p_id=>wwv_flow_imp.id(56459766085261304)
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
 p_id=>wwv_flow_imp.id(56460147251261305)
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
 p_id=>wwv_flow_imp.id(56460558685261305)
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
 p_id=>wwv_flow_imp.id(57694712319146051)
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
 p_id=>wwv_flow_imp.id(57694797379146052)
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
 p_id=>wwv_flow_imp.id(72700251592752312)
,p_plug_name=>'7 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/23.1/htmrn/desupported-features.html#GUID-CC4B5D70-22FD-45CA-8F6F-C34A91F1B5BD" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(53879304352651567)
,p_name=>'7.4 DOM Object Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(72700251592752312)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_id',
'      ,aap.page_name',
'      ,aap.dynamic_action_name',
'from apex_application_page_da aap',
'where aap.application_id = :P0_APP_ID',
'and aap.when_selection_type_code = ''DOM'' -- not correct must be changed'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The DOM Object Dynamic Action selector type is desupported. Any page that uses this type for an action now throws an exception in the browser console, and the action does not execute.<br>',
'Use the JavaScript Expression type instead of DOM Object.',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> check needs to be implemented</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53879408745651568)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53879474325651569)
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
 p_id=>wwv_flow_imp.id(53881878399651593)
,p_query_column_id=>3
,p_column_alias=>'DYNAMIC_ACTION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Dynamic Action Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132377525461398279)
,p_plug_name=>'7.1 Desupported Query Builder'
,p_region_name=>'av-region-desupported-71'
,p_parent_plug_id=>wwv_flow_imp.id(72700251592752312)
,p_region_css_classes=>'av-no-check-needed av-developer-functionality'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SQL Workshop Query Builder is now desupported, and will be removed in a future release.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132380907943431123)
,p_name=>'7.2 Desupported User Interfaces Removed'
,p_parent_plug_id=>wwv_flow_imp.id(72700251592752312)
,p_template=>wwv_flow_imp.id(472863055415347688)
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
'     instr(lower(p.plsql_code_clob)',
'        ,''ui_detection_css_urls'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''user_interface_id'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''page_transition'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''popup_transition'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''ui_type_id'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''ui_type_name'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''default_page_transition'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''default_popup_transition'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''supported_ui_types'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''supported_ui_types'') > 0 or',
'     instr(lower(p.plsql_code_clob)',
'        ,''supported_ui_types'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX previously defined multiple users interfaces for each application. This is no longer the case. This release cleans up desupported user interfaces, which impacts many APEX Dictionary Views:<br>',
'Obsolete views:<br>',
'<ul><li>apex_workspace_ui_types</li>',
'    <li>apex_appl_user_interfaces</li>',
'</ul>',
'Multiple columns are also desupported. For details look into the release notes.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no APEX Views or columns which are removed are used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(56461918483261305)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(56462286667261305)
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
 p_id=>wwv_flow_imp.id(53880964342651583)
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
 p_id=>wwv_flow_imp.id(53881006410651584)
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
 p_id=>wwv_flow_imp.id(53881120617651585)
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
 p_id=>wwv_flow_imp.id(53881224073651586)
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
 p_id=>wwv_flow_imp.id(132386268510469125)
,p_plug_name=>'7.5 Legacy Bulk Utilities Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(72700251592752312)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Grid Edit tools are now desupported. This includes grid edit tools available in:<br>',
'<ul>',
'<li>Cross Page Utilities</li>',
'<li>Region Utilities</li>',
'<li>Button Utilities</li>',
'<li>Item Utilities</li>',
'<li>Computation Utilities</li>',
'<li>Validation Utilities</li>',
'<li>Process Utilities</li>',
'<li>Dynamic Action Utilities</li>',
'<li>Branch Utilities</li>',
'</ul>',
'You can edit items individually through Page Designer, or view them in bulk through the appropriate Utility area.<br> ',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no check needed / developer utilities</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132420605434210429)
,p_name=>'7.3 Desupported JET Date Picker Item Type Migrated'
,p_parent_plug_id=>wwv_flow_imp.id(72700251592752312)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>30
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
'The Date Picker (JET) item type is now removed. Existing page items and interactive grid columns are automatically migrated to the new Date Picker item type introduced in APEX 22.2.<br>',
'This impacts any JavaScript customizations made for the JET Date Picker component.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no JET or old Datepicker are used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53878757792651561)
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
 p_id=>wwv_flow_imp.id(53878867107651562)
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
 p_id=>wwv_flow_imp.id(53878905996651563)
,p_query_column_id=>3
,p_column_alias=>'REGION'
,p_column_display_sequence=>30
,p_column_heading=>'Region'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53879054610651564)
,p_query_column_id=>4
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53879104784651565)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53879214709651566)
,p_query_column_id=>6
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>60
,p_column_heading=>'Display As'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56471926495261323)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56472413373261323)
,p_event_id=>wwv_flow_imp.id(56471926495261323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(56472847546261324)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(56473274731261324)
,p_event_id=>wwv_flow_imp.id(56472847546261324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53880703298651581)
,p_name=>'page load - add icons by class'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53880790296651582)
,p_event_id=>wwv_flow_imp.id(53880703298651581)
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
