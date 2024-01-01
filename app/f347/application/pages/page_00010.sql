prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.2'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Applications'
,p_step_title=>'Applications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20240101165548'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(293283138176929182)
,p_plug_name=>'Page Functions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_name app',
'      ,page_function',
'      ,count(page_id) amount',
'from av_applications_v',
'where application_id = :P0_APP_ID or :P0_APP_ID is null',
'group by application_name , page_function',
'order by count(page_id) desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(293283206865929183)
,p_region_id=>wwv_flow_imp.id(293283138176929182)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(293283368127929184)
,p_chart_id=>wwv_flow_imp.id(293283206865929183)
,p_seq=>10
,p_name=>'Applications'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APP'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'PAGE_FUNCTION'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'VALUE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(294199481042781289)
,p_plug_name=>'Code Complexity (characters by app and type)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P10_COMPLEXITY_CATEGORY'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(294199527605781290)
,p_region_id=>wwv_flow_imp.id(294199481042781289)
,p_chart_type=>'bar'
,p_animation_on_display=>'zoom'
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
 p_id=>wwv_flow_imp.id(10188491899098610)
,p_chart_id=>wwv_flow_imp.id(294199527605781290)
,p_seq=>10
,p_name=>'CSS'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_ID,',
'       APPLICATION_NAME,',
'       sum(CSS_CODE_LENGTH) code_length',
'  from AV_CSS_V',
' where (application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (''css'' = lower(:P10_COMPLEXITY_CATEGORY) or :P10_COMPLEXITY_CATEGORY is null)',
'group by application_id, application_name'))
,p_ajax_items_to_submit=>'P0_APP_ID,P10_COMPLEXITY_CATEGORY'
,p_items_value_column_name=>'CODE_LENGTH'
,p_items_label_column_name=>'APPLICATION_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10188311722098609)
,p_chart_id=>wwv_flow_imp.id(294199527605781290)
,p_seq=>20
,p_name=>'JavaScript'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_ID,',
'       APPLICATION_NAME,',
'       sum(JS_CODE_LENGTH) code_length',
'  from AV_JAVASCRIPT_V',
' where (application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (''javascript'' = lower(:P10_COMPLEXITY_CATEGORY) or :P10_COMPLEXITY_CATEGORY is null)',
'group by application_id, application_name'))
,p_ajax_items_to_submit=>'P0_APP_ID,P10_COMPLEXITY_CATEGORY'
,p_items_value_column_name=>'CODE_LENGTH'
,p_items_label_column_name=>'APPLICATION_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10188563425098611)
,p_chart_id=>wwv_flow_imp.id(294199527605781290)
,p_seq=>40
,p_name=>'PL/SQL'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPLICATION_ID,',
'       APPLICATION_NAME,',
'       sum(CODE_LENGTH) code_length',
'  from AV_PLSQL_V',
' where (application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (''css'' = lower(:P10_COMPLEXITY_CATEGORY) or :P10_COMPLEXITY_CATEGORY is null)',
'group by application_id, application_name'))
,p_ajax_items_to_submit=>'P0_APP_ID,P10_COMPLEXITY_CATEGORY'
,p_items_value_column_name=>'CODE_LENGTH'
,p_items_label_column_name=>'APPLICATION_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(294199864183781293)
,p_chart_id=>wwv_flow_imp.id(294199527605781290)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'thousand'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(294199791543781292)
,p_chart_id=>wwv_flow_imp.id(294199527605781290)
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
 p_id=>wwv_flow_imp.id(449531401127422725)
,p_plug_name=>'Shared Components'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(452454481275466240)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'    select aa.application_name, aa.application_id, ''Tabs'' series_name ,aa.tabs series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Application Items'' series_name ,aa.application_items series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Application Processes'' series_name ,aa.application_processes series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Application Computations'' series_name ,aa.application_computations series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Shortcuts'' series_name ,aa.shortcuts series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Web Services'' series_name ,aa.web_services series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Trees'' series_name ,aa.trees series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Build Options'' series_name ,aa.build_options series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Breadcrumbs'' series_name ,aa.Breadcrumbs series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Navbar Entries'' series_name ,aa.nav_bar_entries series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''Lists'' series_name ,aa.lists series_value from apex_applications aa',
'    union',
'    select aa.application_name, aa.application_id, ''List of Values'' series_name ,aa.lists_of_values series_value from apex_applications aa)',
'where (application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and (lower(series_name) = :P0_COMPONENT or :P0_COMPONENT is null)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_COMPONENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(449531518790422726)
,p_region_id=>wwv_flow_imp.id(449531401127422725)
,p_chart_type=>'bar'
,p_height=>'600'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(449531604590422727)
,p_chart_id=>wwv_flow_imp.id(449531518790422726)
,p_seq=>10
,p_name=>'Applications'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_NAME'
,p_items_value_column_name=>'SERIES_VALUE'
,p_items_label_column_name=>'SERIES_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(449531787774422729)
,p_chart_id=>wwv_flow_imp.id(449531518790422726)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(449531676107422728)
,p_chart_id=>wwv_flow_imp.id(449531518790422726)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'log'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(455561419078523493)
,p_plug_name=>'Applicatons'
,p_region_name=>'details'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452454481275466240)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.application_id app_id',
'      ,aa.application_name app_name',
'      ,aa.alias',
'      ,aa.owner',
'      ,aa.version',
'      ,(select count(1) from apex_application_pages p1 where p1.application_id = aa.application_id) pages_overall',
'      ,(select count(1) from av_page_complexity_v c1 where c1.application_id = aa.application_id and complexity = ''simple'') simple_pages',
'      ,(select count(1) from av_page_complexity_v c1 where c1.application_id = aa.application_id and complexity = ''normal'') normal_pages',
'      ,(select count(1) from av_page_complexity_v c1 where c1.application_id = aa.application_id and complexity = ''complex'') complex_pages',
'from apex_applications aa',
'where aa.application_id = :P0_APP_ID',
'or :P0_APP_ID is null'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Applicatons'
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
 p_id=>wwv_flow_imp.id(37290759188264649)
,p_max_row_count=>'1000000'
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
,p_internal_uid=>37290759188264649
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37290800102264650)
,p_db_column_name=>'APP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'App Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10187515473098601)
,p_db_column_name=>'APP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'App Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10187656689098602)
,p_db_column_name=>'ALIAS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10187776426098603)
,p_db_column_name=>'OWNER'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10187884589098604)
,p_db_column_name=>'VERSION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Version'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10187979678098605)
,p_db_column_name=>'PAGES_OVERALL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pages Overall'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10188038199098606)
,p_db_column_name=>'SIMPLE_PAGES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Simple Pages (less than 15 objects)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10188125155098607)
,p_db_column_name=>'NORMAL_PAGES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Normal Pages'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10188299446098608)
,p_db_column_name=>'COMPLEX_PAGES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Complex Pages (more than 50 objects)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10203699139099371)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102037'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'APP_ID:APP_NAME:ALIAS:OWNER:VERSION:PAGES_OVERALL:SIMPLE_PAGES:NORMAL_PAGES:COMPLEX_PAGES'
,p_sort_column_1=>'APP_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(294269251624521547)
,p_name=>'P10_COMPLEXITY_CATEGORY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(452496424516540365)
,p_prompt=>'Complexity category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CSS;CSS,JavaScript;JavaScript,Pages;Pages,PL/SQL;PL/SQL'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(449465803018677324)
,p_name=>'change P0_APP_ID - refresh charts'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37288646583264628)
,p_event_id=>wwv_flow_imp.id(449465803018677324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Details'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(455561419078523493)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294195118376781246)
,p_event_id=>wwv_flow_imp.id(449465803018677324)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Shared Components'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(449531401127422725)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294269154307521546)
,p_event_id=>wwv_flow_imp.id(449465803018677324)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Complexity'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294199481042781289)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294476643654578347)
,p_event_id=>wwv_flow_imp.id(449465803018677324)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Page Functions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(293283138176929182)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(293284377367929194)
,p_name=>'change P0_COMPONENT - refresh shared chart'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_COMPONENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(293284433520929195)
,p_event_id=>wwv_flow_imp.id(293284377367929194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(449531401127422725)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294269372701521548)
,p_name=>'change P10_COMPLEXITY_CATEGORY'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_COMPLEXITY_CATEGORY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294269478248521549)
,p_event_id=>wwv_flow_imp.id(294269372701521548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(294199481042781289)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294476816186578349)
,p_name=>'hide component'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294476954847578350)
,p_event_id=>wwv_flow_imp.id(294476816186578349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_COMPONENT'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
