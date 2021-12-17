prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.1'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(452492531566466351)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20210927111337'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(452496424516540365)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(452458863643466246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(449531905217422730)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(452496424516540365)
,p_button_name=>'SHOW_DETAILS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(452481802985466298)
,p_button_image_alt=>'Show Details'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-table'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32935929138378120)
,p_name=>'P0_PAGE_DESIGNER_LINK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'20,30,50,100,200,300,400'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>wwv_flow_api.id(452481109555466292)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(291318289212148547)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32937516050378136)
,p_name=>'P0_LINK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_prompt=>'Link'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(452481109555466292)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(291318289212148547)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(290526755762486790)
,p_name=>'P0_COMPONENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_prompt=>'Component'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPONENTS (CHART)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(s.items_value_column_name) d, lower(s.items_value_column_name) r',
'from apex_application_page_chart_s s',
'where s.page_id = :APP_PAGE_ID',
'and s.items_value_column_name <> ''AMOUNT''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_cHeight=>1
,p_display_when=>'10,20'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>wwv_flow_api.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(294476788366578348)
,p_name=>'P0_BEST_PRACTICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_item_default=>'-1'
,p_prompt=>'Filter'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:best practice;1,donts;0'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'no filter'
,p_lov_null_value=>'-1'
,p_display_when=>'100,200,300'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>wwv_flow_api.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If no filter is selected all components will be calculated.',
'When selecting bad components only data will be used which is not using best practices.',
'When best practices is selected the components with correct data will be show.'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(449531235326422723)
,p_name=>'P0_PAGE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  page_name || '' ('' || page_id || '')'' page,',
'       page_id ',
'  from apex_application_pages',
'where application_id = :P0_APP_ID',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_lov_cascade_parent_items=>'P0_APP_ID'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_display_when=>'20,30,50,100,200,300,500'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>wwv_flow_api.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(452496506236540366)
,p_name=>'P0_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(452496424516540365)
,p_item_default=>':APP_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Application'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPLICATIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select aa.application_id || '' - '' || aa.application_name app',
'      ,aa.application_id',
'from apex_applications aa',
'order by aa.application_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(452481165926466293)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(449532155105422733)
,p_name=>'Show Details'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(449531905217422730)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''#details'').is('':hidden'')'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(449532263751422734)
,p_event_id=>wwv_flow_api.id(449532155105422733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#details'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(449532619134422737)
,p_event_id=>wwv_flow_api.id(449532155105422733)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#details'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32936982364378130)
,p_name=>'change APP_ID,PAGE_ID - set P0_PAGE_DESIGNER_LINK'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID'
,p_condition_element=>'P0_PAGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(291318289212148547)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32937015388378131)
,p_event_id=>wwv_flow_api.id(32936982364378130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_PAGE_DESIGNER_LINK'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'av_general_pkg.f_get_page_designer_link(',
'    pi_app_id => :P0_APP_ID,',
'    pi_app_page_id => :P0_PAGE_ID,',
'    pi_open_in_new_page => 1',
')'))
,p_attribute_07=>'P0_APP_ID,P0_PAGE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32937155676378132)
,p_event_id=>wwv_flow_api.id(32936982364378130)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_PAGE_DESIGNER_LINK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32937249040378133)
,p_event_id=>wwv_flow_api.id(32936982364378130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_PAGE_DESIGNER_LINK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32937796691378138)
,p_event_id=>wwv_flow_api.id(32936982364378130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_LINK'
,p_attribute_01=>'$(''#P0_LINK_CONTAINER'').html(apex.item("P0_PAGE_DESIGNER_LINK").getValue());'
);
wwv_flow_api.component_end;
end;
/
