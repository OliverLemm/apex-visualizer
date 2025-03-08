prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.3'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(472904998656421813)
,p_plug_name=>'Filter'
,p_region_name=>'av-region-right-column'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(469940479357304178)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_button_name=>'SHOW_DETAILS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Show Details'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'10'
,p_button_condition_type=>'CURRENT_PAGE_EQUALS_CONDITION'
,p_icon_css_classes=>'fa-table'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65476682361019079)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_button_name=>'Refresh'
,p_button_static_id=>'P0_BUTTON_REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'HELP'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select le.entry_text',
'from apex_application_list_entries le',
'where le.application_id = :APP_ID',
'and le.list_name = ''Desktop Navigation Menu''',
'and le.parent_entry_text = ''Migration'''))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53344503278259568)
,p_name=>'P0_PAGE_DESIGNER_LINK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'20,30,50,100,200,300,400'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(311726863352029995)
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML_UNSAFE',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(53346090190259584)
,p_name=>'P0_LINK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_prompt=>'Link'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(311726863352029995)
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(310935329902368238)
,p_name=>'P0_COMPONENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
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
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(314885362506459796)
,p_name=>'P0_BEST_PRACTICE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
,p_item_default=>'-1'
,p_prompt=>'Filter'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:best practice;1,donts;0'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'no filter'
,p_lov_null_value=>'-1'
,p_display_when=>'100,200,300'
,p_display_when_type=>'CURRENT_PAGE_IN_CONDITION'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If no filter is selected all components will be calculated.',
'When selecting bad components only data will be used which is not using best practices.',
'When best practices is selected the components with correct data will be show.'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(469939809466304171)
,p_name=>'P0_PAGE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
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
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(472905080376421814)
,p_name=>'P0_APP_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(472904998656421813)
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
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(469940729245304181)
,p_name=>'Show Details'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(469940479357304178)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''#details'').is('':hidden'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469940837891304182)
,p_event_id=>wwv_flow_imp.id(469940729245304181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#details'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(469941193274304185)
,p_event_id=>wwv_flow_imp.id(469940729245304181)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#details'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(53345556504259578)
,p_name=>'change APP_ID,PAGE_ID - set P0_PAGE_DESIGNER_LINK'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID'
,p_condition_element=>'P0_PAGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(311726863352029995)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53345589528259579)
,p_event_id=>wwv_flow_imp.id(53345556504259578)
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53345729816259580)
,p_event_id=>wwv_flow_imp.id(53345556504259578)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_PAGE_DESIGNER_LINK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53345823180259581)
,p_event_id=>wwv_flow_imp.id(53345556504259578)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_PAGE_DESIGNER_LINK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(53346370831259586)
,p_event_id=>wwv_flow_imp.id(53345556504259578)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_LINK'
,p_attribute_01=>'$(''#P0_LINK_CONTAINER'').html(apex.item("P0_PAGE_DESIGNER_LINK").getValue());'
);
wwv_flow_imp.component_end;
end;
/
