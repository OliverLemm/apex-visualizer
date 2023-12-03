prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Pages'
,p_step_title=>'Pages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20231203172258'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(290525748852486780)
,p_plug_name=>'Components per Page'
,p_region_name=>'horizontal'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.page',
'      ,t.component',
'      ,t.amount',
'from av_components_v t',
'where (application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)',
'and (component = :P0_COMPONENT or :P0_COMPONENT is null)',
'and t.amount > 0'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID,P0_COMPONENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(290525821072486781)
,p_region_id=>wwv_flow_imp.id(290525748852486780)
,p_chart_type=>'combo'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290525957537486782)
,p_chart_id=>wwv_flow_imp.id(290525821072486781)
,p_seq=>10
,p_name=>'Pages'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_series_name_column_name=>'PAGE'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'COMPONENT'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P0_APP_ID,P0_PAGE_ID:&APP_ID.,&APP_PAGE_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290526264023486785)
,p_chart_id=>wwv_flow_imp.id(290525821072486781)
,p_seq=>20
,p_name=>'Average Components over all Pages'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.component',
'      ,avg(t.amount) amount',
'from av_components_v t',
'where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (:P0_COMPONENT is null or component = :P0_COMPONENT)',
'group by component',
'',
''))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_COMPONENT'
,p_series_type=>'line'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'COMPONENT'
,p_color=>'#FF00FF'
,p_line_style=>'solid'
,p_line_type=>'centeredStepped'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(290526028539486783)
,p_chart_id=>wwv_flow_imp.id(290525821072486781)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(290526175295486784)
,p_chart_id=>wwv_flow_imp.id(290525821072486781)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291331283250200849)
,p_plug_name=>'Components Overall'
,p_region_name=>'overall'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_name, t.component, sum(t.amount) amount',
'from Av_COMPONENTS_V t ',
'where t.application_id = :P0_APP_ID or :P0_APP_ID is null',
'group by application_name, t.component'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(291331367864200850)
,p_region_id=>wwv_flow_imp.id(291331283250200849)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(291331486913200851)
,p_chart_id=>wwv_flow_imp.id(291331367864200850)
,p_seq=>10
,p_name=>'Components Overall'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_NAME'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'COMPONENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(291331853119200855)
,p_chart_id=>wwv_flow_imp.id(291331367864200850)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(291331758132200854)
,p_chart_id=>wwv_flow_imp.id(291331367864200850)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(291332488082200861)
,p_plug_name=>'Number of Components per Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_name, sum(amount) amount',
'from av_components_v',
'where :P0_APP_ID = application_id or :P0_APP_ID is null',
'group by page_name',
'order by 2 desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(291332546255200862)
,p_region_id=>wwv_flow_imp.id(291332488082200861)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(291332628954200863)
,p_chart_id=>wwv_flow_imp.id(291332546255200862)
,p_seq=>10
,p_name=>'Pages'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'PAGE_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P0_PAGE_ID:&P0_PAGE_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(449468052006677346)
,p_plug_name=>'Pages'
,p_region_name=>'details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(452458457830466245)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.application_id',
'      ,aap.application_name',
'      ,aap.page_id',
'      ,aap.page_name',
'      ,aap.page_mode',
'      ,aap.page_alias',
'      ,aap.page_function',
'      ,aap.page_group',
'      ,aap.page_template',
'      ,aap.created_by',
'      ,aap.created_on',
'      ,aap.last_updated_by',
'      ,aap.last_updated_on',
'      ,aap.reload_on_submit',
'      ,aap.warn_on_unsaved_changes',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (:P0_PAGE_ID is null or aap.page_id = :P0_PAGE_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pages'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(37286981320264611)
,p_max_rows_per_page=>'10'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OLEMM'
,p_internal_uid=>37286981320264611
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287031228264612)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287173688264613)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287256688264614)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287347330264615)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287481941264616)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287502305264617)
,p_db_column_name=>'PAGE_ALIAS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287608593264618)
,p_db_column_name=>'PAGE_FUNCTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Function'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287720649264619)
,p_db_column_name=>'PAGE_GROUP'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Page Group'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287800967264620)
,p_db_column_name=>'PAGE_TEMPLATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Template'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37287945785264621)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37288033693264622)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37288125268264623)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37288202339264624)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37288302565264625)
,p_db_column_name=>'RELOAD_ON_SUBMIT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Reload On Submit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37288499012264626)
,p_db_column_name=>'WARN_ON_UNSAVED_CHANGES'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Warn On Unsaved Changes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20679135579357148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'206792'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_ID:APPLICATION_NAME:PAGE_ID:PAGE_NAME:PAGE_MODE:PAGE_ALIAS:PAGE_FUNCTION:PAGE_GROUP:PAGE_TEMPLATE:CREATED_BY:CREATED_ON:LAST_UPDATED_BY:LAST_UPDATED_ON:RELOAD_ON_SUBMIT:WARN_ON_UNSAVED_CHANGES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(449530174836422713)
,p_plug_name=>'Chart'
,p_region_name=>'vertical'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(449530301766422714)
,p_region_id=>wwv_flow_imp.id(449530174836422713)
,p_chart_type=>'polar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_title=>'legend'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(449530368155422715)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_static_id=>'regions'
,p_seq=>10
,p_name=>'regions'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'aap.page_name,',
'aap.regions',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'REGIONS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(449531010656422721)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_static_id=>'items'
,p_seq=>20
,p_name=>'items'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.items',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'ITEMS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(449531076290422722)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>30
,p_name=>'buttons'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.buttons',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'BUTTONS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(449531320477422724)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>40
,p_name=>'computations'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.Computations',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'COMPUTATIONS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290525287471486775)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>50
,p_name=>'validations'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.validations',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'VALIDATIONS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290525355692486776)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>60
,p_name=>'processes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.processes',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'PROCESSES'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290525483439486777)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>70
,p_name=>'branches'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,aap.branches',
'from apex_application_pages aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(290525660904486779)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_seq=>90
,p_name=>'dynamic actions'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aap.page_name',
'      ,count(aap.page_id) dynamic_actions',
'from apex_application_page_da aap',
'where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)',
'group by application_id, page_id, page_name'))
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_series_type=>'bar'
,p_items_value_column_name=>'DYNAMIC_ACTIONS'
,p_items_label_column_name=>'PAGE_NAME'
,p_line_type=>'auto'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(449530539164422716)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(449530561505422717)
,p_chart_id=>wwv_flow_imp.id(449530301766422714)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449530736080422718)
,p_name=>'change P0_ITEMS'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID,P0_COMPONENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37288500508264627)
,p_event_id=>wwv_flow_imp.id(449530736080422718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(449468052006677346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(291332964336200866)
,p_event_id=>wwv_flow_imp.id(449530736080422718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(291332488082200861)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(291331927220200856)
,p_event_id=>wwv_flow_imp.id(449530736080422718)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(291331283250200849)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(291332339765200860)
,p_event_id=>wwv_flow_imp.id(449530736080422718)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(290525748852486780)
);
wwv_flow_imp.component_end;
end;
/
