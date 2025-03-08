prompt --application/pages/page_00708
begin
--   Manifest
--     PAGE: 00708
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
 p_id=>708
,p_name=>'APEX 21.2'
,p_alias=>'APEX-21-2'
,p_step_title=>'APEX 21.2'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63779033471663973)
,p_plug_name=>'APEX 21.2'
,p_icon_css_classes=>'fa-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(472865265412347691)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(472901389022347808)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(472890780758347747)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66570737640285479)
,p_plug_name=>'7.1 Desupported Features -  <a href="https://docs.oracle.com/en/database/oracle/application-express/21.2/htmrn/index.html#HTMRN-GUID-CC4B5D70-22FD-45CA-8F6F-C34A91F1B5BD" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36834806315898781)
,p_plug_name=>'7.1.1 Component View Tab Desupported'
,p_parent_plug_id=>wwv_flow_imp.id(66570737640285479)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>40
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Component View tab in Page Designer is desupported and removed from Application Express as of this release.<br><br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> There is nothing to do as a developer. This change has no impact to your app users.</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66571031247285482)
,p_plug_name=>'5.1 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/application-express/21.2/htmrn/index.html#HTMRN-GUID-657FF369-756E-4F31-96F9-B2D92C3DE084" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36832201274898755)
,p_plug_name=>'5.1.3 Custom Page Region Templates with Duplicated Positions Deprecated'
,p_parent_plug_id=>wwv_flow_imp.id(66571031247285482)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(472863055415347688)
,p_plug_display_sequence=>40
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Custom page template and custom region templates with duplicated positions are considered deprecated. For example, a region template referencing position #CHANGE# twice is not recommended because that duplicate position causes duplicate DOM IDs.<br>',
'<br>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(36832289325898756)
,p_name=>'5.1.4 Legacy Substitution Strings Deprecated '
,p_parent_plug_id=>wwv_flow_imp.id(66571031247285482)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(36833229330898765)
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
 p_id=>wwv_flow_imp.id(36833368011898766)
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
 p_id=>wwv_flow_imp.id(36833388974898767)
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
 p_id=>wwv_flow_imp.id(36833535938898768)
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
 p_id=>wwv_flow_imp.id(36833636710898769)
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
 p_id=>wwv_flow_imp.id(66571234577285484)
,p_name=>'5.1.1 Deprecated Page Positions '
,p_parent_plug_id=>wwv_flow_imp.id(66571031247285482)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(36833796566898771)
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
 p_id=>wwv_flow_imp.id(36833876895898772)
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
 p_id=>wwv_flow_imp.id(36833976133898773)
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
 p_id=>wwv_flow_imp.id(36834165552898774)
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
 p_id=>wwv_flow_imp.id(66572226285285494)
,p_name=>'5.1.2 Deprecated Region Positions'
,p_parent_plug_id=>wwv_flow_imp.id(66571031247285482)
,p_template=>wwv_flow_imp.id(472863055415347688)
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(36834313825898776)
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
 p_id=>wwv_flow_imp.id(36834433964898777)
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
 p_id=>wwv_flow_imp.id(36834490044898778)
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
 p_id=>wwv_flow_imp.id(36834663737898779)
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
 p_id=>wwv_flow_imp.id(36834676444898780)
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
 p_id=>wwv_flow_imp.id(42878481946235353)
,p_query_column_id=>6
,p_column_alias=>'DISPLAY_POSITION'
,p_column_display_sequence=>60
,p_column_heading=>'Display Position'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66571797009285490)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66571901950285491)
,p_event_id=>wwv_flow_imp.id(66571797009285490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66571234577285484)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36832082951898754)
,p_event_id=>wwv_flow_imp.id(66571797009285490)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66572226285285494)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36833155464898764)
,p_event_id=>wwv_flow_imp.id(66571797009285490)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36832289325898756)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42878083345235349)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42878252140235350)
,p_event_id=>wwv_flow_imp.id(42878083345235349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66571234577285484)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42878341325235351)
,p_event_id=>wwv_flow_imp.id(42878083345235349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66572226285285494)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42878460677235352)
,p_event_id=>wwv_flow_imp.id(42878083345235349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36832289325898756)
);
wwv_flow_imp.component_end;
end;
/
