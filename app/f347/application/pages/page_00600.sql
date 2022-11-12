prompt --application/pages/page_00600
begin
--   Manifest
--     PAGE: 00600
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
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
,p_page_component_map=>'21'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20221112144240'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38837724345637017)
,p_plug_name=>'unused plugins'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,',
'       DISPLAY_NAME',
'  from AV_PLUGINS_V',
' where application_id = :P0_APP_ID and',
'page_name is null'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'unused plugins'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38838315306637023)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>45
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38838487227637024)
,p_name=>'DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Display Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(38837870026637018)
,p_internal_uid=>38837870026637018
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'no unused plugins found'
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(38899126329681623)
,p_interactive_grid_id=>wwv_flow_imp.id(38837870026637018)
,p_static_id=>'388992'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38899384893681625)
,p_report_id=>wwv_flow_imp.id(38899126329681623)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38903408863681632)
,p_view_id=>wwv_flow_imp.id(38899384893681625)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(38838315306637023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38904354444681635)
,p_view_id=>wwv_flow_imp.id(38899384893681625)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(38838487227637024)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38839957986637039)
,p_plug_name=>'unused authorization schemes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.authorization_scheme_name',
'from av_p0600_not_used_auth_schemes_v a',
'where a.application_id = :P0_APP_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'unused authorization schemes'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38840174881637041)
,p_name=>'AUTHORIZATION_SCHEME_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHORIZATION_SCHEME_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Authorization Scheme Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(38840001137637040)
,p_internal_uid=>38840001137637040
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(38943868093775839)
,p_interactive_grid_id=>wwv_flow_imp.id(38840001137637040)
,p_static_id=>'389439'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(38944018350775839)
,p_report_id=>wwv_flow_imp.id(38943868093775839)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(38944572668775840)
,p_view_id=>wwv_flow_imp.id(38944018350775839)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(38840174881637041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38840300408637043)
,p_plug_name=>'never condition used'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.page_name',
'      ,v.page_id',
'      ,v.component_type',
'      ,v.component_name',
'from av_visibility_v v',
'where v.visibility_category = ''CONDITION''',
'and upper(v.visibility_type) = ''NEVER''',
'and v.application_id = :P0_APP_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'never condition used'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38840579911637045)
,p_name=>'PAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38840661768637046)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Page Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38840718307637047)
,p_name=>'COMPONENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPONENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Component Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>14
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(38840815817637048)
,p_name=>'COMPONENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPONENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Component Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(38840401895637044)
,p_internal_uid=>38840401895637044
,p_is_editable=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(39122190798318006)
,p_interactive_grid_id=>wwv_flow_imp.id(38840401895637044)
,p_static_id=>'391222'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(39122368534318006)
,p_report_id=>wwv_flow_imp.id(39122190798318006)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39122838464318007)
,p_view_id=>wwv_flow_imp.id(39122368534318006)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(38840579911637045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39123716580318010)
,p_view_id=>wwv_flow_imp.id(39122368534318006)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(38840661768637046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39124635236318012)
,p_view_id=>wwv_flow_imp.id(39122368534318006)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(38840718307637047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(39125578146318015)
,p_view_id=>wwv_flow_imp.id(39122368534318006)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(38840815817637048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39140850641438711)
,p_plug_name=>'general application settings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39140087451438703)
,p_name=>'P600_COMPATIBILITY_MODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Compatibility Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'These Compatibility Modes are equal<br>',
'21.2 / 22.1 / 22.2<br>',
'19.2 / 20.1 / 20.2 / 21.1<br>',
'19.1<br>',
'5.1 / 18.1 / 18.2<br>',
'5.0<br>',
'4.2<br>',
'4.1<br>',
'Pre 4.1'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39140929173438712)
,p_name=>'P600_SESSION_STATE_PROTECTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Session State Protection'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To ensure the safety in your application, activate the Session State protection in your application. Keep in mind if you secure your items they cannot be changed inside JavaScript (Dynamic Actions).'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39141197902438714)
,p_name=>'P600_RUNTIME_API_USAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Runtime API Usage'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Runtime API Usage should be restricted as much as possible. If you have a standard Application with no custom API calls it should be completely disabled.<br>',
'The setting can be found in the shared components => Security in the section Database session. All Checkboxes should be uncheckd.<br>',
'If you are using API-Calls try to only check the "Modify This Application" Checkbox. '))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39142412801438727)
,p_name=>'P600_INCLUDE_LEGACY_JAVASCRIPT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Include Legacy Javascript'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Supporting legacy JavaScript means always to load more JavaScript as necessary.<br> ',
'This attribute can be found inside your application in the shared components => user interface page in the section "JavaScript". If one of the Checkboxes "Include Deprecated or Desupported Javascript Functions" is switched on it will return Yes.<br>',
'For best performance and up-to-date JS calls switch "Pre 18.1" and "18.x" off.'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39142595127438728)
,p_name=>'P600_INCLUDE_JQUERY_MIGRATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Include jQuery Migrate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Using jQuery Migrate means, to support old deprecated JavaScript Code.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39143035108438733)
,p_name=>'P600_THEME_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'Theme Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If you don''t select Universal Theme for your application, not the full functionality is supported.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39143353398438736)
,p_name=>'P600_UT_VERSION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(39140850641438711)
,p_prompt=>'UT Version'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If using Universal Theme, this information shows the version compared to the APEX version<br>',
'UT 22.2 = APEX 22.2<br>',
'UT 22.1 = APEX 22.1<br>',
'UT 21.2 = APEX 21.2<br>',
'UT 21.1 = APEX 21.1<br>',
'UT  1.6 = APEX 20.2<br>',
'UT  1.5 = APEX 20.1<br>',
'UT  1.4 = APEX 19.2<br>',
'UT  1.3 = APEX 19.1<br>',
'UT  1.2 = APEX 18.1 / 18.2<br>',
'UT  1.1 = APEX 5.1<br>',
'UT  1.0 = APEX 5.0',
''))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38839615330637036)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38839706971637037)
,p_event_id=>wwv_flow_imp.id(38839615330637036)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38837724345637017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38840242541637042)
,p_event_id=>wwv_flow_imp.id(38839615330637036)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38839957986637039)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38840926121637049)
,p_event_id=>wwv_flow_imp.id(38839615330637036)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38840300408637043)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39142327540438726)
,p_event_id=>wwv_flow_imp.id(38839615330637036)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' a.compatibility_mode',
',a.Session_State_Protection',
',nvl2(a.runtime_api_usage, replace(replace(replace(a.runtime_api_usage,''T'',''This''),''O'',''Other''),''W'',''Workspace''),''None'')',
'into',
' :P600_COMPATIBILITY_MODE',
',:P600_SESSION_STATE_PROTECTION',
',:P600_RUNTIME_API_USAGE',
'from apex_applications a',
'where a.application_id = :P0_APP_ID;',
'',
'select ',
' ui.include_legacy_javascript ',
',ui.include_jquery_migrate',
'into',
' :P600_INCLUDE_LEGACY_JAVASCRIPT',
',:P600_INCLUDE_JQUERY_MIGRATE',
'from apex_appl_user_interfaces ui ',
'where ui.application_id = :P0_APP_ID',
'and ui.ui_type_name = ''DESKTOP'';',
'',
'select ',
' t.theme_name ',
',replace(substr(t.file_prefix,instr(t.file_prefix,''theme_42'') + 9),''/'')',
'into ',
' :P600_THEME_NAME',
',:P600_UT_VERSION',
'from apex_application_themes t',
'where t.application_id = :P0_APP_ID',
'and t.ui_type_name = ''DESKTOP''',
'and t.is_current = ''Yes'';'))
,p_attribute_02=>'P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P0_APP_ID,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_UT_VERSION'
,p_attribute_03=>'P600_COMPATIBILITY_MODE,P600_SESSION_STATE_PROTECTION,P600_RUNTIME_API_USAGE,P600_INCLUDE_LEGACY_JAVASCRIPT,P600_INCLUDE_JQUERY_MIGRATE,P600_THEME_NAME,P600_UT_VERSION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39141322171438716)
,p_name=>'change P600_COMPATIBILITY_MODE - setColor'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_COMPATIBILITY_MODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39141803140438721)
,p_event_id=>wwv_flow_imp.id(39141322171438716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_COMPATIBILITY_MODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = apex.item("P600_COMPATIBILITY_MODE").getValue();',
'console.log("P600_COMPATIBILITY_MODE=" + val);',
'',
'// success - up-to-date => 21.2 / 22.1 / 22.2',
'if (val == ''21.2'') {',
'    $trigger.removeClass("u-danger");',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'',
'// warning - not up-to-date => only one version before 19.2 / 20.1 / 20.2 / 21.1',
'} else if (val == ''19.2'') {',
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
 p_id=>wwv_flow_imp.id(39141941027438722)
,p_name=>'change P600_SESSION_STATE_PROTECTION - setColor'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_SESSION_STATE_PROTECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39142032987438723)
,p_event_id=>wwv_flow_imp.id(39141941027438722)
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
 p_id=>wwv_flow_imp.id(39142163743438724)
,p_name=>'change P600_RUNTIME_API_USAGE - setColor'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_RUNTIME_API_USAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39142217790438725)
,p_event_id=>wwv_flow_imp.id(39142163743438724)
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
 p_id=>wwv_flow_imp.id(39142633619438729)
,p_name=>'change P600_INCLUDE_LEGACY_JAVASCRIPT - setColorl'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_INCLUDE_LEGACY_JAVASCRIPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39142704166438730)
,p_event_id=>wwv_flow_imp.id(39142633619438729)
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
 p_id=>wwv_flow_imp.id(39142800454438731)
,p_name=>'change P600_INCLUDE_JQUERY_MIGRATE - setColorl'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_INCLUDE_JQUERY_MIGRATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39142991575438732)
,p_event_id=>wwv_flow_imp.id(39142800454438731)
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
 p_id=>wwv_flow_imp.id(39143191512438734)
,p_name=>'change P600_THEME_NAME - setColor show/hide P600_UT_REFRESHED'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_THEME_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39143222364438735)
,p_event_id=>wwv_flow_imp.id(39143191512438734)
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
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39143544057438738)
,p_event_id=>wwv_flow_imp.id(39143191512438734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_UT_VERSION'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P600_THEME_NAME'
,p_client_condition_expression=>'Universal Theme'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39143453638438737)
,p_event_id=>wwv_flow_imp.id(39143191512438734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_UT_VERSION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P600_THEME_NAME'
,p_client_condition_expression=>'Universal Theme'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39143632218438739)
,p_name=>'change P600_UT_VERSION - setColor'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_UT_VERSION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39143767829438740)
,p_event_id=>wwv_flow_imp.id(39143632218438739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_UT_VERSION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $trigger = $(this.triggeringElement);',
'var val = $trigger.val();',
'',
'// success - up-to-date',
'if (val == ''22.2'') {    ',
'    $trigger.addClass("u-success");',
'    $trigger.removeClass("u-warning");',
'    $trigger.removeClass("u-danger");',
'',
'// danger - old versions which are not supported any more',
'} else if ((val == ''1.0'') || (val == ''1.1'')) {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.removeClass("u-warning");',
'    $trigger.addClass("u-danger");',
'',
'// warning - versions not old and not the newest',
'} else {    ',
'    $trigger.removeClass("u-success");',
'    $trigger.addClass("u-warning");',
'    $trigger.removeClass("u-danger");',
'}'))
);
wwv_flow_imp.component_end;
end;
/
