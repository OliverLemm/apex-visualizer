prompt --application/pages/page_00745
begin
--   Manifest
--     PAGE: 00745
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
 p_id=>wwv_flow_imp.id(9319076012183521)
,p_name=>'5.1 Cohere AI Models Deprecated'
,p_static_id=>'5-1'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>30
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
'AI models <b>cohere.command-r-08-2024</b>, <b>cohere.command-r-plus-08-2024</b>, <b>cohere.command-latest</b> and <b>cohere.command-plus-latest</b> are now deprecated for AI Services based on the OCI Generative AI Service. Oracle recommends switching'
||' to cohere.command-a-03-2025, which also allows you to leverage tools, attachments, and more.</br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> This setting is on Workspace Level</b>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Cohere AI Models found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9319819415183529)
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
 p_id=>wwv_flow_imp.id(9319767399183528)
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
 p_id=>wwv_flow_imp.id(9319907437183530)
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
 p_id=>wwv_flow_imp.id(337492568655592917)
,p_name=>'5.4 Deprecated PL/SQL APIs'
,p_static_id=>'5-1-deprecated-apis'
,p_region_name=>'av-deprecated-51'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>60
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
'        ,''APEX_UTIL.CACHE_GET_DATE_OF_PAGE_CACHE'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_UTIL.CACHE_GET_DATE_OF_REGION_CACHE'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_UTIL.PUBLIC_CHECK_AUTHORIZATION'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_UTIL.PURGE_REGIONS_BY_NAME'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_UTIL.PURGE_REGIONS_BY_PAGE'') > 0 or',
'     instr(upper(p.plsql_code_clob)',
'        ,''APEX_UTIL.PURGE_REGIONS_BY_APP'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>APEX_AI</h4>',
'The following procedures are deprecated: <b>generate</b> Function Signature 3, <b>chat</b> Function Signature 3<br>',
'Instead, use the two new signatures that contain a p_agent_static_id parameter instead of the deprecated p_config_static_id parameter.<br>',
'<h4>APEX_PLUGIN</h4>',
'The following fields in APEX_PLUGIN.T_REGION are deprecated: <b>static_id, filter_region_static_id</b><br>',
'Use dom_id and filter_region_dom_id for new development. The name member of the APEX_PLUGIN.t_plugin record is deprecated. Use the new static_id member instead. <br>',
'<h4>APEX_UTIL</h4>',
'In APEX_UTIL, the following APIs are deprecated: <br>',
'<b>CACHE_GET_DATE_OF_PAGE_CACHE Instead</b>, use APEX_PAGE.GET_CACHE_DATE<br>',
'<b>CACHE_GET_DATE_OF_REGION_CACHE</b> Instead, use APEX_REGION.GET_CACHE_DATE<br>',
'<b>PUBLIC_CHECK_AUTHORIZATION</b> Instead, use APEX_AUTHORIZATION.HAS_ACCESS<br>',
'<b>PURGE_REGIONS_BY_NAME, PURGE_REGIONS_BY_PAGE, PURGE_REGIONS_BY_APP</b>'))
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
,p_column_hit_highlight=>'apex_util.cache_get_date_of_page_cache,apex_util.cache_get_date_of_region_cache,apex_util.public_check_authorization,apex_util.purge_regions_by_name,apex_util.purge_regions_by_page,apex_util.purge_regions_by_app'
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9320078718183531)
,p_name=>'5.2 Legacy Calendar Templates Deprecated '
,p_static_id=>'5-2-legacy-calendar-templates-deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.page_id',
'      ,r.page_name',
'      ,r.region_name',
'      ,r.source_type',
'      ,r.source_type_code',
'from apex_application_page_regions r',
'where source_type_code = ''CALENDAR''',
'and r.application_id = :P0_APP_ID'))
,p_header=>'Legacy Calendar Templates are now deprecated. The Legacy Calendar template is no longer present in Universal Theme 26.1, and APEXlang exports raise an error if Legacy Calendar regions are present. When upgrading your application, APEX automatically r'
||'emoves unreferenced Legacy Calendar Templates. '
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Legacy Calendar Templates found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9320460306183535)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9320575261183536)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9320676248183537)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Region Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9320744945183538)
,p_query_column_id=>4
,p_column_alias=>'SOURCE_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Source Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9320817520183539)
,p_query_column_id=>5
,p_column_alias=>'SOURCE_TYPE_CODE'
,p_column_display_sequence=>50
,p_column_heading=>'Source Type Code'
,p_column_hit_highlight=>'CALENDAR'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9321076416183541)
,p_name=>'5.3 Deprecated Property'
,p_static_id=>'5-3-deprecated-property'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.page_id',
'      ,s.page_name',
'      ,s.region_name',
'      ,s.series_name',
'      ,s.js_static_id',
'from apex_application_page_chart_s s',
'where s.js_static_id is not null',
'and s.application_id = :P0_APP_ID;'))
,p_header=>'The JavaScript Static ID property, introduced for JET Chart Series components to maintain backward compatibility, is deprecated and displays in Page Designer only if it already has a value. Going forward, use the unique Static ID property in new appl'
||'ications.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated JavaScript Static IDs found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321738883183548)
,p_query_column_id=>5
,p_column_alias=>'JS_STATIC_ID'
,p_column_display_sequence=>50
,p_column_heading=>'JS Static Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321152246183542)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321226114183543)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321326749183544)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Region Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321674394183547)
,p_query_column_id=>4
,p_column_alias=>'SERIES_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Series Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9321875599183549)
,p_name=>'5.5 Deprecated JavaScript APIs'
,p_static_id=>'5-5-deprecated-javascript-apis'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>70
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
'      ,j.js_code_type',
'      ,j.js_code_clob',
'from av_javascript_v j',
'where application_id = :P0_APP_ID',
'and (instr(lower(j.js_code_clob)',
'        ,''apex.util.cancelinvokeafterpaint'') > 0 or',
'     instr(lower(j.js_code_clob)',
'        ,''apex.util.invokeafterpaint'') > 0 or',
'     instr(lower(j.js_code_clob)',
'        ,''widget.grid.getselectedrange'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>apex.util</b> functions <b>cancelInvokeAfterPaint</b> and <b>invokeAfterPaint</b> are now deprecated. Use the native browser functions requestAnimationFrame and cancelAnimationFrame instead.<br>',
'<b>widget.grid</b> method <b>getSelectedRange</b> is deprecated. Use <b>getSelectedRanges</b> instead. '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
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
 p_id=>wwv_flow_imp.id(11273860052807002)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11273914402807003)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274378161807007)
,p_query_column_id=>6
,p_column_alias=>'JS_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Js Code Clob'
,p_column_hit_highlight=>'apex.util.cancelinvokeafterpaint,apex.util.invokeafterpaint,widget.grid.getselectedrange'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11274258520807006)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9321967103183550)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11273721752807001)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11274688523807010)
,p_plug_name=>'5.6 Export Repository Deprecated'
,p_static_id=>'5-6-export-repository-deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Export Repository is deprecated, and will be removed in a future release.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11274717746807011)
,p_plug_name=>'5.7 RESTful Services Feature in SQL Workshop '
,p_static_id=>'5-7-restful-services-feature-in-sql-workshop'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2665811232373458102
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The ability to define REST APIs via the RESTful Services feature in SQL Workshop is deprecated with APEX 26.1, and will be removed in a future release of APEX. The declarative specification of REST APIs remains supported via SQL Developer Web.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11274822410807012)
,p_name=>'5.8 Deprecated Substitution Strings '
,p_static_id=>'5-8-deprecated-substitution-strings'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.component_type, ',
't.component_name, ',
't.template_clob1, ',
't.template_clob2, ',
't.template_clob3, ',
't.template_vc1, ',
't.template_vc2, ',
't.template_vc3',
'from av_templates_v t',
'where t.application_id = :P0_APP_ID ',
'and (instr(upper(t.template_clob1)',
'           ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_clob2)',
'       ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_clob3)',
'       ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc1)',
'       ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc2)',
'       ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc3)',
'       ,''#REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_clob1)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_clob2)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_clob3)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_vc1)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_vc2)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_vc3)',
'       ,''#BUTTON_ID#'') > 0',
'or instr(upper(t.template_clob1)',
'       ,''#APP_REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_clob2)',
'       ,''#APP_REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_clob3)',
'       ,''#APP_REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc1)',
'       ,''#APP_REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc2)',
'       ,''#APP_REGION_STATIC_ID#'') > 0',
'or instr(upper(t.template_vc3)',
'       ,''#APP_REGION_STATIC_ID#'') > 0)'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'As of this release, the following substitution strings are deprecated: <b>&#35;REGION_STATIC_ID#</b>, <b>#BUTTON_ID#</b>, <b>APP_REGION_STATIC_ID</b><br>',
'While these substitutions still function, Oracle recommends developers update their environments to use the replacements below:<br>',
'For &#35;REGION_STATIC_ID# and #BUTTON_ID#, use &#35;DOM_ID#<br>',
'For APP_REGION_STATIC_ID, use APP_REGION_DOM_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>2540130677583398057
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No deprecated Substitution Strings found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275193160807015)
,p_query_column_id=>2
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275208031807016)
,p_query_column_id=>1
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275589537807019)
,p_query_column_id=>3
,p_column_alias=>'TEMPLATE_CLOB1'
,p_column_display_sequence=>50
,p_column_heading=>'Template Clob1'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275650233807020)
,p_query_column_id=>4
,p_column_alias=>'TEMPLATE_CLOB2'
,p_column_display_sequence=>60
,p_column_heading=>'Template Clob2'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275737210807021)
,p_query_column_id=>5
,p_column_alias=>'TEMPLATE_CLOB3'
,p_column_display_sequence=>70
,p_column_heading=>'Template Clob3'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275889492807022)
,p_query_column_id=>6
,p_column_alias=>'TEMPLATE_VC1'
,p_column_display_sequence=>80
,p_column_heading=>'Template Vc1'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11275910468807023)
,p_query_column_id=>7
,p_column_alias=>'TEMPLATE_VC2'
,p_column_display_sequence=>90
,p_column_heading=>'Template Vc2'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276081814807024)
,p_query_column_id=>8
,p_column_alias=>'TEMPLATE_VC3'
,p_column_display_sequence=>100
,p_column_heading=>'Template Vc3'
,p_column_hit_highlight=>'#REGION_STATIC_ID#,#BUTTON_ID#,#APP_REGION_STATIC_ID#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11276171173807025)
,p_name=>'5.9 Deprecated Public Views and Public View Columns '
,p_static_id=>'5-9-deprecated-public-views-and-public-view-columns'
,p_parent_plug_id=>wwv_flow_imp.id(240964173975165904)
,p_template=>2665811232373458102
,p_display_sequence=>120
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
'        ,''apex_appl_ai_configs'') > 0',
'    or instr(lower(p.plsql_code_clob)',
'        ,''apex_appl_ai_config_rag_srcs'') > 0',
'    or instr(lower(p.plsql_code_clob)',
'        ,''ai_config_id'') > 0',
'    or instr(lower(p.plsql_code_clob)',
'        ,''ai_config_name'') > 0',
'    )'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Public Views</h4>',
'The <b>apex_appl_ai_configs</b> and <b>apex_appl_ai_config_rag_srcs</b> views are deprecated, and will be removed in a future release. Instead, use apex_appl_ai_agents and apex_appl_ai_agent_tools.',
'<h4>AI Configuration Columns</h4>',
'With the rename of AI Configurations to AI Agents, the <b>ai_config_id</b> and <b>ai_config_name</b> columns are deprecated, and will be removed in a future release. Instead, use ai_agent_id and ai_agent_name.<br>',
'This change affects the following views: apex_application_page_items, apex_application_page_regions, apex_application_page_da_acts',
'<h4>STATIC_ID Column</h4>',
'The <b>STATIC_ID</b> column in the following public views is deprecated:',
'apex_application_page_regions, apex_application_page_rpt_cols, apex_application_page_buttons, apex_application_page_ir_col, apex_appl_page_ig_columns<br>',
'While APEX retains the STATIC_ID column for backward compatibility, Oracle recommends using the new HTML_DOM_ID column.'))
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
 p_id=>wwv_flow_imp.id(11276469756807028)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276504598807029)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276235551807026)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276395528807027)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276772066807031)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_column_hit_highlight=>'apex_appl_ai_configs,apex_appl_ai_config_rag_srcs,ai_config_id,ai_config_name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11276656268807030)
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
,p_plug_name=>'5 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/26.1/htmrn/deprecated-features.html" target="_blank">Link to Release Notes</a>'
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
'and (instr(upper(p.plsql_code_clob)',
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
,p_plug_display_sequence=>30
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
