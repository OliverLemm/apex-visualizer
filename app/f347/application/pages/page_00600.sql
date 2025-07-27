prompt --application/pages/page_00600
begin
--   Manifest
--     PAGE: 00600
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
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
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59246298485518465)
,p_plug_name=>'unused plugins'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
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
 p_id=>wwv_flow_imp.id(59246889446518471)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59247061367518472)
,p_name=>'DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Display Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59246444166518466)
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
 p_id=>wwv_flow_imp.id(59307700469563071)
,p_interactive_grid_id=>wwv_flow_imp.id(59246444166518466)
,p_static_id=>'388992'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59307959033563073)
,p_report_id=>wwv_flow_imp.id(59307700469563071)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59311983003563080)
,p_view_id=>wwv_flow_imp.id(59307959033563073)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(59246889446518471)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59312928584563083)
,p_view_id=>wwv_flow_imp.id(59307959033563073)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(59247061367518472)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59248532126518487)
,p_plug_name=>'unused authorization schemes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
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
 p_id=>wwv_flow_imp.id(59248749021518489)
,p_name=>'AUTHORIZATION_SCHEME_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHORIZATION_SCHEME_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Authorization Scheme Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59248575277518488)
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
 p_id=>wwv_flow_imp.id(59352442233657287)
,p_interactive_grid_id=>wwv_flow_imp.id(59248575277518488)
,p_static_id=>'389439'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59352592490657287)
,p_report_id=>wwv_flow_imp.id(59352442233657287)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59353146808657288)
,p_view_id=>wwv_flow_imp.id(59352592490657287)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(59248749021518489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59248874548518491)
,p_plug_name=>'never condition used'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
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
 p_id=>wwv_flow_imp.id(59249154051518493)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59249235908518494)
,p_name=>'PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Page Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(59249292447518495)
,p_name=>'COMPONENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPONENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Component Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59249389957518496)
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(59248976035518492)
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
 p_id=>wwv_flow_imp.id(59530764938199454)
,p_interactive_grid_id=>wwv_flow_imp.id(59248976035518492)
,p_static_id=>'391222'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59530942674199454)
,p_report_id=>wwv_flow_imp.id(59530764938199454)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59531412604199455)
,p_view_id=>wwv_flow_imp.id(59530942674199454)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(59249154051518493)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59532290720199458)
,p_view_id=>wwv_flow_imp.id(59530942674199454)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(59249235908518494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59533209376199460)
,p_view_id=>wwv_flow_imp.id(59530942674199454)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(59249292447518495)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59534152286199463)
,p_view_id=>wwv_flow_imp.id(59530942674199454)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(59249389957518496)
,p_is_visible=>true
,p_is_frozen=>false
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
'These Compatibility Modes are equal<br>',
'24.2<br>',
'21.2 / 22.1 / 22.2 / 23.1 / 23.2 / 24.1<br>',
'19.2 / 20.1 / 20.2 / 21.1<br>',
'19.1<br>',
'5.1 / 18.1 / 18.2<br>',
'5.0<br>',
'4.2<br>',
'4.1<br>',
'Pre 4.1'))
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
,p_name=>'P600_UT_VERSION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(59549424781320159)
,p_prompt=>'UT Version'
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
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59248874548518491)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59550901680320174)
,p_event_id=>wwv_flow_imp.id(59248189470518484)
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
 p_id=>wwv_flow_imp.id(59549896311320164)
,p_name=>'change P600_COMPATIBILITY_MODE - setColor'
,p_event_sequence=>20
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
'console.log("P600_COMPATIBILITY_MODE=" + val);',
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
,p_event_sequence=>30
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
,p_event_sequence=>40
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
,p_event_sequence=>50
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
,p_event_sequence=>60
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
,p_affected_elements=>'P600_UT_VERSION'
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
,p_affected_elements=>'P600_UT_VERSION'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P600_THEME_NAME'
,p_client_condition_expression=>'Universal Theme'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59552206358320187)
,p_name=>'change P600_UT_VERSION - setColor'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_UT_VERSION'
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
,p_affected_elements=>'P600_UT_VERSION'
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
