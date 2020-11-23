prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(452492531566466351)
,p_name=>'CSS'
,p_step_title=>'CSS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20170718170736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(455982233047916696)
,p_plug_name=>'CSS in Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(452458863643466246)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_name || '' - '' || v.component_name series_name, v.component_type, v.css_code, v.css_code_length, v.css_code_type',
'from av_css_v v',
'where v.application_id = :P0_APP_ID ',
'and (v.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)',
'and (v.component_type = :P200_COMPONENT_TYPE or :P200_COMPONENT_TYPE is null)',
'order by css_code_length desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE,P200_COMPONENT_TYPE'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(294254323259372766)
,p_region_id=>wwv_flow_api.id(455982233047916696)
,p_chart_type=>'bar'
,p_height=>'400'
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(294256079663372767)
,p_chart_id=>wwv_flow_api.id(294254323259372766)
,p_seq=>10
,p_name=>'CSS in Page'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES_NAME'
,p_items_value_column_name=>'CSS_CODE_LENGTH'
,p_items_label_column_name=>'COMPONENT_TYPE'
,p_items_short_desc_column_name=>'CSS_CODE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(294254842038372766)
,p_chart_id=>wwv_flow_api.id(294254323259372766)
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(294255421067372767)
,p_chart_id=>wwv_flow_api.id(294254323259372766)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(456042766579392916)
,p_plug_name=>'Characters of CSS Code per Page (d3 Bubble)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(452458863643466246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  application_id || '' ''  || page_id as id,',
'  page_id,',
'  page_name || '' ('' || page_id || '')'' label,',
'  application_name as colorgrp,',
'  sum(t.css_code_length) as bbsize',
'from av_css_v t',
'where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)',
'and t.page_id is not null',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = t.best_practice)',
'group by application_id, application_name , page_id, page_name',
'order by sum(t.css_code_length) desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BUBBLE'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_BEST_PRACTICE'
,p_plug_query_num_rows=>1000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'MODERN'
,p_attribute_12=>'LABEL'
,p_attribute_13=>'BBSIZE'
,p_attribute_14=>'ID'
,p_attribute_15=>'COLORGRP'
,p_attribute_18=>'javascript:apex.item( "P0_PAGE_ID" ).setValue( "&PAGE_ID." );'
,p_attribute_19=>'SERIES:CUSTOM:VALUE'
,p_attribute_20=>'LABEL'
,p_attribute_22=>'400'
,p_attribute_23=>'BOTTOM'
,p_attribute_24=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "trdur":                       500,',
'  "bubble_padding":              1.5,',
'  "opacity_normal":              "0.8",',
'  "opacity_highlight":           "1.0",',
'  "circle_highlight_radiusplus": 5 ',
'}'))
,p_attribute_25=>'D3ASCENDING'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(456113854637855984)
,p_plug_name=>'Place of CSS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(452458863643466246)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_name',
'      ,application_id',
'      ,component_type || '' - '' || css_code_type js_component',
'      ,sum(css_code_length) amount',
'from av_css_v',
'where (:P0_APP_ID is null or application_id = :P0_APP_ID)',
'and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)',
'and (:P0_BEST_PRACTICE = -1 or :P0_BEST_PRACTICE = best_practice)',
'group by application_name,application_id,component_type || '' - '' || css_code_type',
'order by sum(css_code_length) desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(294251580990352765)
,p_region_id=>wwv_flow_api.id(456113854637855984)
,p_chart_type=>'donut'
,p_height=>'330'
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
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
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
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(294252036312352766)
,p_chart_id=>wwv_flow_api.id(294251580990352765)
,p_seq=>10
,p_name=>'Place of CSS'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'APPLICATION_NAME'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'JS_COMPONENT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(294256717003379495)
,p_name=>'P200_COMPONENT_TYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_prompt=>'Component type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct component_type d, component_type r',
'from av_javascript_v',
'where (:P0_APP_ID is null or application_id = :P0_APP_ID)',
'and (:P0_PAGE_ID is null or page_id = :P0_PAGE_ID)',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_lov_cascade_parent_items=>'P0_APP_ID,P0_PAGE_ID'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(294195801218781252)
,p_name=>'Change P0_APP_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID,P0_BEST_PRACTICE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(294195822760781253)
,p_event_id=>wwv_flow_api.id(294195801218781252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(456042766579392916)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(294199041704781285)
,p_event_id=>wwv_flow_api.id(294195801218781252)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(456113854637855984)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(294269594869521550)
,p_event_id=>wwv_flow_api.id(294195801218781252)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(455982233047916696)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(294199135885781286)
,p_name=>'Change P200_COMPONENT_TYPE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_COMPONENT_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(294199210454781287)
,p_event_id=>wwv_flow_api.id(294199135885781286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(455982233047916696)
);
wwv_flow_api.component_end;
end;
/
