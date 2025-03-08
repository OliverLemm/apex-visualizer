prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_name=>'PLSQL'
,p_step_title=>'PLSQL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(639334989212406147)
,p_plug_name=>'PLSQL in Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select component_type || '' - '' || v.component_name series_name, v.component_type, v.plsql_code, v.code_length, v.code_type, v.tooltip, v.page_designer_url',
'from av_plsql_v v',
'where v.application_id = :P0_APP_ID ',
'and (v.page_id = :P0_PAGE_ID)',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = v.best_practice)',
'and (v.component_type = :P300_COMPONENT_TYPE or :P300_COMPONENT_TYPE is null)',
'order by code_length desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE,P300_COMPONENT_TYPE'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(314909631265874717)
,p_region_id=>wwv_flow_imp.id(639334989212406147)
,p_chart_type=>'bar'
,p_height=>'350'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(314911326628874719)
,p_chart_id=>wwv_flow_imp.id(314909631265874717)
,p_seq=>10
,p_name=>'PLSQL in Page'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES_NAME'
,p_items_value_column_name=>'CODE_LENGTH'
,p_items_label_column_name=>'COMPONENT_TYPE'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'&PAGE_DESIGNER_URL.'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(314910118538874718)
,p_chart_id=>wwv_flow_imp.id(314909631265874717)
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
 p_id=>wwv_flow_imp.id(314910684025874719)
,p_chart_id=>wwv_flow_imp.id(314909631265874717)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'log'
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
 p_id=>wwv_flow_imp.id(639395522743882367)
,p_plug_name=>'Characters of PLSQL Code per Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id,',
'  page_name_and_id,',
'  page_group,',
'  page_function,',
'  components_count,',
'  code_length_sum,',
'  code_lines_sum,',
'  tooltip',
'from av_p0300_plsql_code_by_page_v t',
'where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and t.page_id is not null',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = t.best_practice)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_BEST_PRACTICE'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(146579724197772549)
,p_region_id=>wwv_flow_imp.id(639395522743882367)
,p_chart_type=>'bubble'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
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
 p_id=>wwv_flow_imp.id(146579826369772550)
,p_chart_id=>wwv_flow_imp.id(146579724197772549)
,p_seq=>10
,p_name=>'Series 1'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'PAGE_GROUP'
,p_items_x_column_name=>'COMPONENTS_COUNT'
,p_items_y_column_name=>'CODE_LINES_SUM'
,p_items_z_column_name=>'CODE_LENGTH_SUM'
,p_items_label_column_name=>'PAGE_NAME_AND_ID'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_line_style=>'solid'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:$s("P0_PAGE_ID",''&PAGE_ID.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(146579909719772551)
,p_chart_id=>wwv_flow_imp.id(146579724197772549)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'number of plsql components'
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
 p_id=>wwv_flow_imp.id(146579990566772552)
,p_chart_id=>wwv_flow_imp.id(146579724197772549)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'code lines'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
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
 p_id=>wwv_flow_imp.id(639466610802345435)
,p_plug_name=>'Place of PLSQL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_name',
'      ,application_id',
'      ,component_type || '' - '' || code_type component',
'      ,sum(code_length) amount',
'from av_plsql_v',
'where (:P0_APP_ID is null or application_id = :P0_APP_ID)',
'and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)',
'group by application_name,application_id,component_type || '' - '' || code_type',
'order by sum(code_length) desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(314908226364874713)
,p_region_id=>wwv_flow_imp.id(639466610802345435)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(314908698995874714)
,p_chart_id=>wwv_flow_imp.id(314908226364874713)
,p_seq=>10
,p_name=>'Place of PLSQL'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_NAME'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'COMPONENT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314912185778874731)
,p_name=>'P300_COMPONENT_TYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_prompt=>'Component type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct component_type d, component_type r',
'from av_plsql_v',
'where (:P0_APP_ID is null or application_id = :P0_APP_ID)',
'and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_lov_cascade_parent_items=>'P0_APP_ID,P0_PAGE_ID'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(472889740066347741)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314912581585874733)
,p_name=>'Change P0_APP_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314913139615874734)
,p_event_id=>wwv_flow_imp.id(314912581585874733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639395522743882367)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314913662261874734)
,p_event_id=>wwv_flow_imp.id(314912581585874733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639466610802345435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314914095024874735)
,p_event_id=>wwv_flow_imp.id(314912581585874733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639334989212406147)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(314914494142874735)
,p_name=>'Change P300_COMPONENT_TYPE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_COMPONENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314915079102874735)
,p_event_id=>wwv_flow_imp.id(314914494142874735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(639334989212406147)
);
wwv_flow_imp.component_end;
end;
/
