prompt --application/pages/page_00709
begin
--   Manifest
--     PAGE: 00709
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
 p_id=>709
,p_name=>'APEX 22.1'
,p_alias=>'APEX-22-1'
,p_step_title=>'APEX 22.1'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65514155065833973)
,p_plug_name=>'APEX 22.1'
,p_icon_css_classes=>'fa-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(472865265412347691)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(472901389022347808)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(472890780758347747)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78258359644484663)
,p_plug_name=>'6.1 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#HTMRN-GUID-657FF369-756E-4F31-96F9-B2D92C3DE084" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78258462823484664)
,p_name=>'6.1.1 Deprecated APIs '
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'and instr(upper(p.plsql_code_clob)',
'        ,''APEX_IR.GET_REPORT'') > 0'))
,p_header=>'The <b>APEX_IR.GET_REPORT</b> API is deprecated. Instead, use <b>APEX_REGION.OPEN_QUERY_CONTEXT</b> to get interactive report data.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no APEX_IR.GET_REPORT used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78258528608484665)
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
 p_id=>wwv_flow_imp.id(78258609929484666)
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
 p_id=>wwv_flow_imp.id(78258706611484667)
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
 p_id=>wwv_flow_imp.id(78258789039484668)
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
 p_id=>wwv_flow_imp.id(78258915487484669)
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
 p_id=>wwv_flow_imp.id(78259050931484670)
,p_query_column_id=>6
,p_column_alias=>'PLSQL_CODE_CLOB'
,p_column_display_sequence=>60
,p_column_heading=>'Plsql Code Clob'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'APEX_IR.GET_REPORT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78259117310484671)
,p_name=>'6.1.2 Deprecated JavaScript APIs'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.page_id',
'      ,j.page_name',
'      ,j.component_name',
'      ,j.component_type',
'      ,j.js_code_vc2',
'from av_javascript_v j',
'where (instr(lower(j.js_code_clob)',
'           ,''useIconList'') > 0 or',
'       instr(lower(j.js_code_clob)',
'           ,''iconListOptions'') > 0)',
'and j.application_id = :P0_APP_ID'))
,p_header=>'The <b>APEX_IR.GET_REPORT</b> API is deprecated. Instead, use <b>APEX_REGION.OPEN_QUERY_CONTEXT</b> to get interactive report data.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no APEX_IR.GET_REPORT used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78259239458484672)
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
 p_id=>wwv_flow_imp.id(78259365551484673)
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
 p_id=>wwv_flow_imp.id(78259382002484674)
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
 p_id=>wwv_flow_imp.id(78259484772484675)
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
 p_id=>wwv_flow_imp.id(78259871420484678)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Vc2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78259909986484679)
,p_name=>'6.1.3 Deprecated Attributes in App Builder'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Deprecated Attributes in App Builder used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78260508023484685)
,p_query_column_id=>1
,p_column_alias=>'APP_BUILDER_ICON_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'App Builder Icon Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78260642559484686)
,p_query_column_id=>2
,p_column_alias=>'FAVICONS'
,p_column_display_sequence=>20
,p_column_heading=>'Favicons'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297208794242453)
,p_query_column_id=>3
,p_column_alias=>'PWA_MANIFEST_ICON_URL'
,p_column_display_sequence=>30
,p_column_heading=>'Pwa Manifest Icon Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78260741069484687)
,p_plug_name=>'6.1.4 Deprecated Utilities'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>40
,p_plug_source=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The APEXExport utility is deprecated, and will be removed in a future release. Oracle recommends using <a href="https://www.oracle.com/de/database/sqldeveloper/technologies/sqlcl/" target="_blank">SQLcl</a> instead.<br>',
'<br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78260860725484688)
,p_name=>'6.1.5 Deprecated Legacy Web Service References'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select w.web_service_name',
'      ,w.url',
'      ,w.ACTION',
'from apex_application_web_services w',
'where w.application_id = :P0_APP_ID'))
,p_header=>'SOAP style Web Service references and legacy support for REST style Web Services references are deprecated.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Legacy Web Service References used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78260891460484689)
,p_query_column_id=>1
,p_column_alias=>'WEB_SERVICE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Web Service Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78261045832484690)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>20
,p_column_heading=>'Url'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78261080668484691)
,p_query_column_id=>3
,p_column_alias=>'ACTION'
,p_column_display_sequence=>30
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78261272134484692)
,p_name=>'6.1.6 Deprecated Properties '
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'The properties <b>Region Image</b> and <b>Image Tag Attributes</b> are deprecated.',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Region Image and Image Tag Attributes used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78261671405484696)
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
 p_id=>wwv_flow_imp.id(78261721269484697)
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
 p_id=>wwv_flow_imp.id(78261821493484698)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Region Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78296846368242449)
,p_query_column_id=>4
,p_column_alias=>'ASCENDING_IMAGE'
,p_column_display_sequence=>40
,p_column_heading=>'Ascending Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78296972802242450)
,p_query_column_id=>5
,p_column_alias=>'ASCENDING_IMAGE_ATTRIBUTES'
,p_column_display_sequence=>50
,p_column_heading=>'Ascending Image Attributes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297073982242451)
,p_query_column_id=>6
,p_column_alias=>'DESCENDING_IMAGE'
,p_column_display_sequence=>60
,p_column_heading=>'Descending Image'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297108225242452)
,p_query_column_id=>7
,p_column_alias=>'DESCENDING_IMAGE_ATTRIBUTES'
,p_column_display_sequence=>70
,p_column_heading=>'Descending Image Attributes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78297356498242454)
,p_name=>'6.1.7 Deprecated View Columns'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'The following columns are marked as deprecated in the <b>apex_applications</b> view: <b>app_builder_icon_name, favicons, pwa_manifest_icon_url</b>.',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Deprecated View Columns used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297449211242455)
,p_query_column_id=>1
,p_column_alias=>'APP_BUILDER_ICON_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'App Builder Icon Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297555151242456)
,p_query_column_id=>2
,p_column_alias=>'FAVICONS'
,p_column_display_sequence=>20
,p_column_heading=>'Favicons'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297608939242457)
,p_query_column_id=>3
,p_column_alias=>'PWA_MANIFEST_ICON_URL'
,p_column_display_sequence=>30
,p_column_heading=>'Pwa Manifest Icon Url'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78297748694242458)
,p_plug_name=>'6.1.8 CKEditor4 Deprecation'
,p_parent_plug_id=>wwv_flow_imp.id(78258359644484663)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>80
,p_plug_source=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rich Text Editor items based on CKEditor4 are deprecated, and will be migrated to CKEditor5 automatically in the next APEX release.<br>',
'<br>',
'In the next APEX release, any custom code written against the CKEditor4 library will stop working, as CKEditor4 and CKEditor5 are not API-compatible. Any code included in the JavaScript Initialization Code attribute will be automatically commented ou'
||'t and ignored. To try and preserve any custom HTML content produced with CKEditor4, all migrated items will have the "General HTML Support" CKEditor5 plug-in enabled.<br>',
'<br>',
'Oracle recommends developers manually switch to CKEditor5 now. You can also consider a 3rd party replacement of CKEditor4, or wait for the automatic migration to CKEditor5 in the next APEX release.<br><br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(123915830767431541)
,p_plug_name=>'8.1 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/22.1/htmrn/index.html#HTMRN-GUID-4BCD1A37-908C-4770-8C3C-2F4F721E74A7" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(77763907484045654)
,p_name=>'8.1.6 Post Calculation for Page Items Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_id',
'      ,p.page_name',
'      ,p.region',
'      ,p.item_name',
'      ,p.label',
'from apex_application_page_items p',
'where p.source_post_computation is not null',
'and p.application_id = :P0_APP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Post Calculation for Page Items used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77764043542045655)
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
 p_id=>wwv_flow_imp.id(77764134347045656)
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
 p_id=>wwv_flow_imp.id(77764240137045657)
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
 p_id=>wwv_flow_imp.id(77764631320045661)
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
 p_id=>wwv_flow_imp.id(77764430979045659)
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
 p_id=>wwv_flow_imp.id(77765080315045666)
,p_name=>'8.1.7 Show / Hide All Page Items On Same Line Attributes Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.page_id',
'      ,d.page_name',
'      ,d.dynamic_action_name',
'      ,d.affected_elements',
'from apex_application_page_da_acts d',
'where d.affected_elements_type_code = ''ITEM''',
'and d.action_code in (''NATIVE_SHOW''',
'                    ,''NATIVE_HIDE'')',
'and d.attribute_01 = ''Y''',
'and d.application_id = :P0_APP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Dynamic Action with setting "Show all page items on same line" or "Hide all page items on same line" used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77765177186045667)
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
 p_id=>wwv_flow_imp.id(77765304091045668)
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
 p_id=>wwv_flow_imp.id(77765716622045672)
,p_query_column_id=>3
,p_column_alias=>'DYNAMIC_ACTION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Dynamic Action Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77765785244045673)
,p_query_column_id=>4
,p_column_alias=>'AFFECTED_ELEMENTS'
,p_column_display_sequence=>40
,p_column_heading=>'Affected Elements'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(77765896342045674)
,p_name=>'8.1.8 apex.server Plug-in and Process Function Async Option Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.page_id',
'      ,j.page_name',
'      ,j.component_name',
'      ,j.component_type',
'      ,j.js_code_vc2',
'from av_javascript_v j',
'where instr(j.js_code_clob',
'           ,''async'') > 0',
'and j.application_id = :P0_APP_ID'))
,p_header=>'This check searches for async in JavaScript. The complete code like <i>async: false</i> will be ignored from APEX in future.'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No <i>async: false</i> found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77766061983045675)
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
 p_id=>wwv_flow_imp.id(77766128527045676)
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
 p_id=>wwv_flow_imp.id(77766196465045677)
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
 p_id=>wwv_flow_imp.id(77766314082045678)
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
 p_id=>wwv_flow_imp.id(77766383577045679)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Vc2'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'async'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(77766488535045680)
,p_name=>'8.1.9 apex.widget.initPageItem Function Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'           ,''apex.widget.initPageItem'') > 0',
'and j.application_id = :P0_APP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No <i>apex.widget.initPageItem</i> found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77766602338045681)
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
 p_id=>wwv_flow_imp.id(77766699890045682)
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
 p_id=>wwv_flow_imp.id(77766782563045683)
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
 p_id=>wwv_flow_imp.id(77766888293045684)
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
 p_id=>wwv_flow_imp.id(77767028276045685)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Vc2'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'apex.widget.initPageItem'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77767148378045686)
,p_plug_name=>'8.1.10 Popup LOV Template Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>100
,p_plug_source=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Popup LOV template type is desupported.<br>',
'<br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(77767273393045687)
,p_name=>'8.1.12 Date Picker (jQuery) Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_id',
'      ,p.page_name',
'      ,p.region',
'      ,p.item_name',
'      ,p.label',
'from apex_application_page_items p',
'where p.display_as_code = ''NATIVE_DATE_PICKER''',
'and p.application_id = :P0_APP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Date Picker (jQuery) used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77767369672045688)
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
 p_id=>wwv_flow_imp.id(77767412490045689)
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
 p_id=>wwv_flow_imp.id(77767559046045690)
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
 p_id=>wwv_flow_imp.id(77767604520045691)
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
 p_id=>wwv_flow_imp.id(77767698732045692)
,p_query_column_id=>5
,p_column_alias=>'LABEL'
,p_column_display_sequence=>50
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77767860562045693)
,p_plug_name=>'8.1.11 Based On - Output of PL/SQL Code attribute Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>110
,p_plug_source=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The selection Output of PL/SQL Code of the attribute Based On is now desupported. <br>',
'<br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(77767933427045694)
,p_name=>'8.1.13 Syntax {COLUMN_NAME}_LABEL in Interactive Grid Icon and Detail Views Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id',
'      ,page_name',
'      ,region_name',
'      ,icon_view_custom',
'      ,detail_view_for_each_row',
'from apex_appl_page_igs',
'where application_id = :P0_APP_ID',
'and (regexp_like(icon_view_custom',
'               ,''&'' || ''\w+_LABEL\.''',
'               ,''i'') or --',
'      regexp_like(detail_view_for_each_row',
'               ,''&'' || ''\w+_LABEL\.''',
'               ,''i''))'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The &{COLUMN_NAME}_LABEL. syntax which is used to reference the column label in Interactive Grid Detail and Icon views is desupported.<br><br>',
'Instead use &{COLUMN_NAME}%LABEL.'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no &{COLUMN_NAME}_LABEL. used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77768223800045697)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Page Id'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77768345303045698)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78256927427484649)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Region Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78257046481484650)
,p_query_column_id=>4
,p_column_alias=>'ICON_VIEW_CUSTOM'
,p_column_display_sequence=>60
,p_column_heading=>'Icon View Custom'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'_LABEL.'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78257091517484651)
,p_query_column_id=>5
,p_column_alias=>'DETAIL_VIEW_FOR_EACH_ROW'
,p_column_display_sequence=>70
,p_column_heading=>'Detail View For Each Row'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'_LABEL.'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78257181440484652)
,p_name=>'8.1.14 Removed Content Delivery Network '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>140
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.content_delivery_network',
'from apex_applications p',
'where p.application_id = :P0_APP_ID',
'and p.content_delivery_network is not null'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The attribute Content Delivery Network that could be found under User Interface Attributes, Javascript with options None, Google, Microsoft, and jQuery, has been removed. Enabling this option was only relevant for pulling in a few of the JavaScript l'
||'ibraries that APEX needs.<br>',
'<br>',
'If you were using this option, it''s recommended to instead use the more modern, Oracle-provided CDN approach. For further information, see <a href="https://blogs.oracle.com/apex/post/announcing-oracle-apex-static-resources-on-content-delivery-network'
||'" target="_blank">Announcing Oracle APEX Static Resources on Content Delivery Network</a>. '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Content Delivery Network used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78257812278484658)
,p_query_column_id=>1
,p_column_alias=>'CONTENT_DELIVERY_NETWORK'
,p_column_display_sequence=>10
,p_column_heading=>'Content Delivery Network'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(78257953378484659)
,p_name=>'8.1.15 APEX-Based REST Services Desupported '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select count(1)',
'        from apex_rest_resource_handlers) apex_rest_resource_handlers_cnt',
'      ,(select count(1)',
'        from apex_rest_resource_modules) apex_rest_resource_modules_cnt',
'      ,(select count(1)',
'        from apex_rest_resource_parameters) apex_rest_resource_parameters_cnt',
'      ,(select count(1)',
'        from apex_rest_resource_templates) apex_rest_resource_templates_cnt',
'from dual',
'where (select count(1)',
'       from apex_rest_resource_handlers) > 0',
'or (select count(1)',
'       from apex_rest_resource_modules) > 0',
'or (select count(1)',
'       from apex_rest_resource_parameters) > 0',
'or (select count(1)',
'       from apex_rest_resource_templates) > 0'))
,p_footer=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> The instance parameter APEX_REST_PATH-PREFIX is desupported. (check must be done separately)</b>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no APEX-Based REST Services used</b>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297811077242459)
,p_query_column_id=>1
,p_column_alias=>'APEX_REST_RESOURCE_HANDLERS_CNT'
,p_column_display_sequence=>10
,p_column_heading=>'APEX Rest Resource Handlers Cnt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78297956615242460)
,p_query_column_id=>2
,p_column_alias=>'APEX_REST_RESOURCE_MODULES_CNT'
,p_column_display_sequence=>20
,p_column_heading=>'APEX Rest Resource Modules Cnt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78298010281242461)
,p_query_column_id=>3
,p_column_alias=>'APEX_REST_RESOURCE_PARAMETERS_CNT'
,p_column_display_sequence=>30
,p_column_heading=>'APEX Rest Resource Parameters Cnt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(78298165520242462)
,p_query_column_id=>4
,p_column_alias=>'APEX_REST_RESOURCE_TEMPLATES_CNT'
,p_column_display_sequence=>40
,p_column_heading=>'APEX Rest Resource Templates Cnt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94177000795044814)
,p_plug_name=>'8.1.3 Custom Page Region Templates with Duplicated Positions Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>30
,p_plug_source=>'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom page template and custom region templates with duplicated positions are considered deprecated. For example, a region template referencing position #CHANGE# twice is not recommended because that duplicate position causes duplicate DOM IDs.<br>',
'<br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(94177088846044815)
,p_name=>'8.1.4 Legacy Substitution Strings Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id',
'      ,page_name',
'      ,component_name',
'      ,component_type',
'      ,code_vc2',
'from av_p0708_legacy_subst_strings_v',
'where application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'As of this release, the following apex.env substitution strings are deprecated and considered legacy: <b>APP_IMAGES, IMAGE_PREFIX, THEME_DB_IMAGES, THEME_IMAGES, WORKSPACE_IMAGES</b><br>',
'While the legacy substitutions still function, Oracle recommends developers update their environments to use updated substitutions (listed below).',
'<ul>',
'    <li>IMAGE_PREFIX => APEX_FILES</li>',
'    <li>WORKSPACE_IMAGES => WORKSPACE_FILES</li>',
'    <li>APP_IMAGES => APP_FILES</li>',
'    <li>THEME_IMAGES => THEME_FILES</li>',
'    <li>THEME_DB_IMAGES => THEME_DB_FILES</li>',
'</ul>'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Legacy Substitution Strings Deprecated used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'5.1.4 Legacy Substitution Strings Deprecated '
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77758844956027516)
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
 p_id=>wwv_flow_imp.id(77759218648027518)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77759640542027518)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77760013142027518)
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
 p_id=>wwv_flow_imp.id(77760398425027518)
,p_query_column_id=>5
,p_column_alias=>'CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Code Vc2'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'IMAGE_PREFIX,WORKSPACE_IMAGES,APP_IMAGES,THEME_IMAGES,THEME_DB_IMAGES'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(123916034097431543)
,p_name=>'8.1.1 Desupported Page Positions '
,p_region_name=>'8_1_1'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id, page_name, region_name, display_position_code',
'from apex_application_page_regions r',
'where display_position_code in ( ''BODY_1'', ''BODY_2'', ''BODY_3'', ''AFTER_HEADER'', ''BEFORE_FOOTER'' )',
'and application_id = :P0_APP_ID'))
,p_header=>'The following page positions are marked as deprecated and display as "Legacy" in Page Designer: Body 1, Body 2, Body 3, After Header, Before Footer'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Deprecated Page Positions used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77753967876027512)
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
 p_id=>wwv_flow_imp.id(77754372058027513)
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
 p_id=>wwv_flow_imp.id(77754742937027513)
,p_query_column_id=>3
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Region Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77755147791027513)
,p_query_column_id=>4
,p_column_alias=>'DISPLAY_POSITION_CODE'
,p_column_display_sequence=>40
,p_column_heading=>'Display Position Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(123917025805431553)
,p_name=>'8.1.2 Desupported Region Positions'
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.page_id',
'      ,b.page_name',
'      ,b.region',
'      ,b.button_name',
'      ,b.label',
'      ,b.display_position',
'from apex_application_page_buttons b',
'where b.display_position_code in (''TOP''',
'                                 ,''BOTTOM''',
'                                 ,''BELOW_BOX''',
'                                 ,''ABOVE_BOX'')',
'and b.application_id = :P0_APP_ID'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following region positions are marked as deprecated and display as "Legacy" in Page Designer: Top, Bottom, Above and Below (used for button positioning within a region)',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> no Deprecated Region Positions used</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77756247815027513)
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
 p_id=>wwv_flow_imp.id(77756649934027515)
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
 p_id=>wwv_flow_imp.id(77757037315027515)
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
 p_id=>wwv_flow_imp.id(77757407059027515)
,p_query_column_id=>4
,p_column_alias=>'BUTTON_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Button Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>3
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77757853530027515)
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
 p_id=>wwv_flow_imp.id(77755826954027513)
,p_query_column_id=>6
,p_column_alias=>'DISPLAY_POSITION'
,p_column_display_sequence=>60
,p_column_heading=>'Display Position'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(135740316206448356)
,p_name=>'8.1.5 Desupported JavaScript Functions '
,p_parent_plug_id=>wwv_flow_imp.id(123915830767431541)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'           ,''apex.theme42.util.mq'') > 0',
'and j.application_id = :P0_APP_ID'))
,p_header=>'Use apex.theme.mq instead of apex.theme42.util.mq'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(472877522933347715)
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> No calls like apex.theme42.util.mq found.</b>'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(77771616227089943)
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
 p_id=>wwv_flow_imp.id(77772070544089943)
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
 p_id=>wwv_flow_imp.id(77772383646089943)
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
 p_id=>wwv_flow_imp.id(77772871399089943)
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
 p_id=>wwv_flow_imp.id(77773254803089943)
,p_query_column_id=>5
,p_column_alias=>'JS_CODE_VC2'
,p_column_display_sequence=>50
,p_column_heading=>'Js Code Vc2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65516239722833994)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77764945474045664)
,p_event_id=>wwv_flow_imp.id(65516239722833994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65516639213833998)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77765071563045665)
,p_event_id=>wwv_flow_imp.id(65516639213833998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp.component_end;
end;
/
