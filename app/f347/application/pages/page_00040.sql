prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'Visibility'
,p_step_title=>'Visibility'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(313823520444769894)
,p_plug_name=>'Objects conditioned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) amount_overall',
'      ,v.application_id',
'      ,v.component_type',
'      ,(select count (1) from av_visibility_v v1 where v1.application_id = v.application_id and v1.component_type = v.component_type and v1.visibility_name is not null group by v1.component_type,v1.application_id) amount',
'from av_visibility_v v',
'where v.application_id = :P0_APP_ID or :P0_APP_ID is null',
'group by application_id, component_type'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(313823653045769895)
,p_region_id=>wwv_flow_imp.id(313823520444769894)
,p_chart_type=>'funnel'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(313823752450769896)
,p_chart_id=>wwv_flow_imp.id(313823653045769895)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_ID'
,p_items_value_column_name=>'AMOUNT'
,p_items_target_value=>'AMOUNT_OVERALL'
,p_items_label_column_name=>'COMPONENT_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(313824270863769901)
,p_plug_name=>'Conditioned by'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.application_id',
'      ,v.visibility_category',
'      ,count(1) amount',
'from av_visibility_v v',
'where v.visibility_name is not null and (v.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'group by application_id, visibility_category'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(313824343558769902)
,p_region_id=>wwv_flow_imp.id(313824270863769901)
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
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(313824468099769903)
,p_chart_id=>wwv_flow_imp.id(313824343558769902)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_ID'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'VISIBILITY_CATEGORY'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(313824861931769907)
,p_plug_name=>'Condition Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(472867437783347694)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.application_id || '' - ''  || v.application_name app',
'      ,v.visibility_name',
'      ,v.visibility_category',
'      ,v.visibility_type',
'      ,v.visibility_exp1',
'      ,count(1) amount',
'      ,visibility_type || ''<br>amount='' || count(1) || ''<br>'' || visibility_exp1 tooltip',
'from av_visibility_v v',
'where v.visibility_name is not null',
'and v.application_id = :P0_APP_ID or :P0_APP_ID is null',
'group by v.application_id || '' - ''  || v.application_name',
'        ,v.visibility_category',
'        ,v.visibility_name',
'        ,visibility_type',
'        ,visibility_exp1',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(313824960977769908)
,p_region_id=>wwv_flow_imp.id(313824861931769907)
,p_chart_type=>'bar'
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
 p_id=>wwv_flow_imp.id(313825057757769909)
,p_chart_id=>wwv_flow_imp.id(313824960977769908)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APP'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'VISIBILITY_NAME'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(313825230326769911)
,p_chart_id=>wwv_flow_imp.id(313824960977769908)
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
 p_id=>wwv_flow_imp.id(313825093911769910)
,p_chart_id=>wwv_flow_imp.id(313824960977769908)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(313824043744769899)
,p_name=>'change P0_APP_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_condition_element=>'P0_APP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314603907228662696)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313824861931769907)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314603988630662697)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313824861931769907)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313824166502769900)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313823520444769894)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314604140736662698)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313824270863769901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(313824697775769906)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313824270863769901)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314604200650662699)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313823520444769894)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(314603801123662695)
,p_event_id=>wwv_flow_imp.id(313824043744769899)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(313824861931769907)
);
wwv_flow_imp.component_end;
end;
/
