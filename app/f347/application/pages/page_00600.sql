prompt --application/pages/page_00600
begin
--   Manifest
--     PAGE: 00600
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
 p_id=>600
,p_name=>'QA'
,p_alias=>'QA'
,p_step_title=>'QA'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24445762168508420)
,p_name=>'legacy tabs'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'AV_P0600_TABS_V'
,p_query_where=>'application_id = :P0_APP_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24446533566508428)
,p_query_column_id=>1
,p_column_alias=>'APPLICATION_ID'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_required_patch=>wwv_flow_imp.id(50068568250634028)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445960812508422)
,p_query_column_id=>2
,p_column_alias=>'TAB_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Tab Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24446039542508423)
,p_query_column_id=>3
,p_column_alias=>'TAB_LABEL'
,p_column_display_sequence=>30
,p_column_heading=>'Tab Label'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24446312318508426)
,p_query_column_id=>4
,p_column_alias=>'PAGES_COUNT'
,p_column_display_sequence=>40
,p_column_heading=>'Pages Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24446132676508424)
,p_query_column_id=>5
,p_column_alias=>'TAB_PAGE'
,p_column_display_sequence=>50
,p_column_heading=>'Tab Page'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24446227180508425)
,p_query_column_id=>6
,p_column_alias=>'TAB_ALSO_CURRENT_FOR_PAGES'
,p_column_display_sequence=>60
,p_column_heading=>'Tab Also Current For Pages'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59246298485518465)
,p_name=>'unused plugins'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       DISPLAY_NAME',
'  from AV_PLUGINS_V',
' where application_id = :P0_APP_ID and',
'page_name is null'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24444920195508412)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445013302508413)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Display Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59248532126518487)
,p_name=>'unused authorization schemes'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'AV_P0600_NOT_USED_AUTH_SCHEMES_V'
,p_query_where=>'application_id = :P0_APP_ID'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445576687508418)
,p_query_column_id=>1
,p_column_alias=>'AUTHORIZATION_SCHEME_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Authorization Scheme Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24447216023508435)
,p_query_column_id=>2
,p_column_alias=>'APPLICATION_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_required_patch=>wwv_flow_imp.id(50068568250634028)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445649254508419)
,p_query_column_id=>3
,p_column_alias=>'SCHEME_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Scheme Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59248874548518491)
,p_name=>'never condition used'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.page_name',
'      ,v.page_id',
'      ,v.component_type',
'      ,v.component_name',
'from av_visibility_v v',
'where v.visibility_category = ''CONDITION''',
'and upper(v.visibility_type) = ''NEVER''',
'and v.application_id = :P0_APP_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445123397508414)
,p_query_column_id=>1
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445203822508415)
,p_query_column_id=>2
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445393037508416)
,p_query_column_id=>3
,p_column_alias=>'COMPONENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Component Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24445465876508417)
,p_query_column_id=>4
,p_column_alias=>'COMPONENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Component Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>2
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59549424781320159)
,p_plug_name=>'general application settings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59548661591320151)
,p_name=>'P600_COMPATIBILITY_MODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Compatibility Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Compatibility Mode <a href="https://docs.oracle.com/en/database/oracle/apex/24.2/htmrn/changed-behavior.html#GUID-712BE54F-08CD-43A3-A645-87B9360ED516" target="_blank">Releasenotes 24.2</a><br><br>',
'24.2 - APEX supports an extended substitution syntax for text messages.<br>',
'21.2 / 22.1 / 22.2 / 23.1 / 23.2 / 24.1 - all processes ... regardless of errors<br>',
'19.2 / 20.1 / 20.2 / 21.1 - Classic Reports render empty column values ...<br>',
'19.1 - Rich Text editor ... Max Length item<br>',
'5.1 / 18.1 / 18.2 - Ajax-based Dynamic Actions work asynchronous<br>',
'5.0 - WORKSPACE_IMAGES and API logout calls desupported<br>',
'4.2 - Grid Layout, Textarea Max Length, JavaScript<br>',
'4.1 - DML Error Handling<br>',
'Pre 4.1<br>',
''))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59549503313320160)
,p_name=>'P600_SESSION_STATE_PROTECTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Session State Protection'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To ensure the safety in your application, activate the Session State protection in your application. Keep in mind if you secure your items they cannot be changed inside JavaScript (Dynamic Actions).'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59549772042320162)
,p_name=>'P600_RUNTIME_API_USAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Runtime API Usage'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Runtime API Usage should be restricted as much as possible. If you have a standard Application with no custom API calls it should be completely disabled.<br>',
'The setting can be found in the shared components => Security in the section Database session. All Checkboxes should be uncheckd.<br>',
'If you are using API-Calls try to only check the "Modify This Application" Checkbox. '))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59550986941320175)
,p_name=>'P600_INCLUDE_LEGACY_JAVASCRIPT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Include Legacy Javascript'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Supporting legacy JavaScript means always to load more JavaScript as necessary.<br> ',
'This attribute can be found inside your application in the shared components => user interface page in the section "JavaScript". If one of the Checkboxes "Include Deprecated or Desupported Javascript Functions" is switched on it will return Yes.<br>',
'For best performance and up-to-date JS calls switch "Pre 18.1" and "18.x" off.'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59551169267320176)
,p_name=>'P600_INCLUDE_JQUERY_MIGRATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Include jQuery Migrate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Using jQuery Migrate means, to support old deprecated JavaScript Code.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59551609248320181)
,p_name=>'P600_THEME_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Theme Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If you don''t select Universal Theme for your application, not the full functionality is supported.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59551927538320184)
,p_name=>'P600_THEME_VERSION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'Theme Version'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If using Universal Theme, this information shows the version compared to the APEX version<br>',
'UT 24.2 = APEX 24.2<br>',
'UT 24.1 = APEX 24.1<br>',
'UT 23.2 = APEX 23.2<br>',
'UT 23.1 = APEX 23.1<br>',
'UT 22.2 = APEX 22.2<br>',
'UT 22.1 = APEX 22.1<br>',
'UT 21.2 = APEX 21.2<br>',
'UT 21.1 = APEX 21.1<br>',
'UT  1.6 = APEX 20.2<br>',
'UT  1.5 = APEX 20.1<br>',
'UT  1.4 = APEX 19.2<br>',
'UT  1.3 = APEX 19.1<br>',
'UT  1.2 = APEX 18.1 / 18.2 (not supported any more)<br>',
'UT  1.1 = APEX 5.1 (not supported any more)<br>',
'UT  1.0 = APEX 5.0 (not supported any more)'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59248189470518484)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59248281111518485)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59246298485518465)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59248816681518490)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59248532126518487)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59249500261518497)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - never condition used'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59248874548518491)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24446423033508427)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - legacy tabs'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24445762168508420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59550901680320174)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'av_general_pkg.p_qa_app_settings(',
'  pi_application_id            => :P0_APP_ID',
' ,po_compatibility_mode        => :P600_COMPATIBILITY_MODE',
' ,po_session_state_protection  => :P600_SESSION_STATE_PROTECTION',
' ,po_runtime_api_usage         => :P600_RUNTIME_API_USAGE',
' ,po_include_legacy_javascript => :P600_INCLUDE_LEGACY_JAVASCRIPT',
' ,po_include_jquery_migrate    => :P600_INCLUDE_JQUERY_MIGRATE',
' ,po_theme_name                => :P600_THEME_NAME',
' ,po_theme_version             => :P600_THEME_VERSION',
');'))
,p_attribute_02=>'P0_APP_ID,P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P0_APP_ID,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_THEME_VERSION'
,p_attribute_03=>'P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_THEME_VERSION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24446603788508429)
,p_name=>'click - button - Refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65476682361019079)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24446745990508430)
,p_event_id=>wwv_flow_imp.id(24446603788508429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - unused plugins'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59246298485518465)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24446812380508431)
,p_event_id=>wwv_flow_imp.id(24446603788508429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - unused authorization schemes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59248532126518487)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24446983554508432)
,p_event_id=>wwv_flow_imp.id(24446603788508429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - never condition used'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59248874548518491)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24447016418508433)
,p_event_id=>wwv_flow_imp.id(24446603788508429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'refresh - region - legacy tabs'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24445762168508420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24447199312508434)
,p_event_id=>wwv_flow_imp.id(24446603788508429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'av_general_pkg.p_qa_app_settings(',
'  pi_application_id            => :P0_APP_ID',
' ,po_compatibility_mode        => :P600_COMPATIBILITY_MODE',
' ,po_session_state_protection  => :P600_SESSION_STATE_PROTECTION',
' ,po_runtime_api_usage         => :P600_RUNTIME_API_USAGE',
' ,po_include_legacy_javascript => :P600_INCLUDE_LEGACY_JAVASCRIPT',
' ,po_include_jquery_migrate    => :P600_INCLUDE_JQUERY_MIGRATE',
' ,po_theme_name                => :P600_THEME_NAME',
' ,po_theme_version             => :P600_THEME_VERSION',
');'))
,p_attribute_02=>'P0_APP_ID,P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P0_APP_ID,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_THEME_VERSION'
,p_attribute_03=>'P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_THEME_VERSION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59549896311320164)
,p_name=>'change P600_COMPATIBILITY_MODE - setColor'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_COMPATIBILITY_MODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59550377280320169)
,p_event_id=>wwv_flow_imp.id(59549896311320164)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_COMPATIBILITY_MODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = apex.item("P600_COMPATIBILITY_MODE").getValue();',
'',
'// success - up-to-date => 21.2 / 22.1 / 22.2',
'if (val == ''24.2'') {',
'    $trigger.removeClass("u-danger");',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'',
'// warning - not up-to-date => only one version before 21.2-24.1',
'} else if (val == ''21.2'') {',
'    $trigger.removeClass("u-danger");',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-warning");',
'',
'// danger - older than 19.2',
'} else {',
'    $trigger.addClass("u-danger");',
'    $trigger.removeClass("u-success");',
'    $trigger.removeClass("u-warning");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59550515167320170)
,p_name=>'change P600_SESSION_STATE_PROTECTION - setColor'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_SESSION_STATE_PROTECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59550607127320171)
,p_event_id=>wwv_flow_imp.id(59550515167320170)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_SESSION_STATE_PROTECTION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'if (val == ''Enabled'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'} else {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-warning");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59550737883320172)
,p_name=>'change P600_RUNTIME_API_USAGE - setColor'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_RUNTIME_API_USAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59550791930320173)
,p_event_id=>wwv_flow_imp.id(59550737883320172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_RUNTIME_API_USAGE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'if (val == ''None'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'    $trigger.removeClass("u-danger");',
'} else if (val == ''This:Other:Workspace'') {',
'    $trigger.removeClass("u-success");',
'    $trigger.removeClass("u-warning");',
'    $trigger.addClass("u-danger");',
'} else {',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-warning");',
'    $trigger.removeClass("u-danger");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59551207759320177)
,p_name=>'change P600_INCLUDE_LEGACY_JAVASCRIPT - setColorl'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_INCLUDE_LEGACY_JAVASCRIPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59551278306320178)
,p_event_id=>wwv_flow_imp.id(59551207759320177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_INCLUDE_LEGACY_JAVASCRIPT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'if (val == ''No'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'} else {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-warning");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59551374594320179)
,p_name=>'change P600_INCLUDE_JQUERY_MIGRATE - setColorl'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_INCLUDE_JQUERY_MIGRATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59551565715320180)
,p_event_id=>wwv_flow_imp.id(59551374594320179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_INCLUDE_JQUERY_MIGRATE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'if (val == ''No'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-danger");',
'} else {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-danger");',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59551765652320182)
,p_name=>'change P600_THEME_NAME - setColor show/hide P600_UT_REFRESHED'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_THEME_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59551796504320183)
,p_event_id=>wwv_flow_imp.id(59551765652320182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_THEME_NAME'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'if (val == ''Universal Theme'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-danger");',
'} else {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-danger");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59552118197320186)
,p_event_id=>wwv_flow_imp.id(59551765652320182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_THEME_VERSION'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P600_THEME_NAME'
,p_client_condition_expression=>'Universal Theme'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59552027778320185)
,p_event_id=>wwv_flow_imp.id(59551765652320182)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_THEME_VERSION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P600_THEME_NAME'
,p_client_condition_expression=>'Universal Theme'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59552206358320187)
,p_name=>'change P600_THEME_VERSION - setColor'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_THEME_VERSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59552341969320188)
,p_event_id=>wwv_flow_imp.id(59552206358320187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_THEME_VERSION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'// success - up-to-date',
'if (val == ''24.2'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'    $trigger.removeClass("u-danger");',
'',
'// danger - old versions which are not supported any more',
'} else if ((val == ''1.0'') || (val == ''1.1'') || (val == ''1.2'')) {    ',
'    $trigger.addClass("u-danger");',
'    $trigger.removeClass("u-success");',
'    $trigger.removeClass("u-warning");   ',
'',
'// warning - versions not old and not the newest',
'} else {    ',
'    $trigger.addClass("u-warning");',
'    $trigger.removeClass("u-success");    ',
'    $trigger.removeClass("u-danger");',
'}'))
);
wwv_flow_imp.component_end;
end;
/
