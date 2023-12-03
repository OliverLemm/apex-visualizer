prompt --application/pages/page_00720
begin
--   Manifest
--     PAGE: 00720
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
 p_id=>720
,p_name=>'APEX 23.2'
,p_alias=>'APEX-23-2'
,p_step_title=>'APEX 23.2'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_last_updated_by=>'OLEMM'
,p_last_upd_yyyymmddhh24miss=>'20231203170902'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72910675567934407)
,p_plug_name=>'5 Deprecated Features - <a href="https://docs.oracle.com/en/database/oracle/apex/23.2/htmrn/deprecated-features.html#GUID-657FF369-756E-4F31-96F9-B2D92C3DE084" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54091584663833680)
,p_plug_name=>'5.1 Quick SQL Deprecated Functionality'
,p_parent_plug_id=>wwv_flow_imp.id(72910675567934407)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452454481275466240)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Deprecated Settings</b><br/>',
'The following Quick SQL settings are deprecated:<br/>',
'Data Language (<i>#language:"DE"</i>): No longer generates sample data into different languages (German, Korean, Japanese, Spanish).<br/>',
'Tags Framework (<i>#tags:true</i>): No longer generates tag framework objects (table, trigger, sync procedure).<br/>',
'On Delete (<i>#ondelete:"cascade"</i>): No longer supports system-wide ondelete settings. Handle these settings through the new /cascade column directive.<br/>',
'Longer Varchar2 (<i>#longVC:true</i>): No longer supports artificially shortening or increasing VARCHAR2 size.<br/>',
'Tenant ID (<i>#tenantID:true</i>): No longer supported.<br/>',
'<br/>',
'<b>Deprecated Directives</b><br/>',
'The following Quick SQL directives are deprecated:<br/>',
'<i>/select</i>: No longer generates a SQL SELECT statement after generating data for each table.<br/>',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> no check integrated</b>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72911772336934418)
,p_plug_name=>'7 Desupported Features - <a href="https://docs.oracle.com/en/database/oracle/apex/23.2/htmrn/desupported-features.html#GUID-CC4B5D70-22FD-45CA-8F6F-C34A91F1B5BD" target="_blank">Link to Release Notes</a>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452458863643466246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132589046205580385)
,p_plug_name=>'7.1 Desupported Utilities '
,p_region_name=>'av-region-desupported-71'
,p_parent_plug_id=>wwv_flow_imp.id(72911772336934418)
,p_region_css_classes=>'av-no-check-needed av-developer-functionality'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452454481275466240)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The APEXExport utility is desupported and is no longer included with Oracle APEX. Oracle recommends using SQLcl to perform export operations.<br>',
'<b><span aria-hidden="true" class="fa fa-check-circle u-success-text"></span> nothing to change / no check needed</b>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132592428687613229)
,p_plug_name=>'7.2 Querying Template Component Metadata'
,p_parent_plug_id=>wwv_flow_imp.id(72911772336934418)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(452454481275466240)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'For template components only, the ATTRIBUTE_01...ATTRIBUTE_25 columns of APEX_APPLICATION_PAGE_REGIONS and APEX_APPLICATION_PAGE_IR_COL public views now return null.<br />',
'Instead, use the new ATTRIBUTES column that stores a JSON object of all attribute values. Use the attribute''s Static ID as the object key. Note that a table alias is always needed when using the JSON dot notation.<br />',
'<b><span aria-hidden="true" class="fa fa-exclamation-circle u-warning-text"></span> for this check your APEX must be 23.2</b>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20639674970063631)
,p_name=>'change P0_APP_ID - refresh regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20640128089063632)
,p_event_id=>wwv_flow_imp.id(20639674970063631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20641461359063634)
,p_name=>'click refresh - refresh regions'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45068108221137631)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20641974120063634)
,p_event_id=>wwv_flow_imp.id(20641461359063634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'av_refresh_hide_show_regions()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20640522029063634)
,p_name=>'page load - add icons by class'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20641035999063634)
,p_event_id=>wwv_flow_imp.id(20640522029063634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.av-no-check-needed,.av-developer-functionality'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''running DA'')',
'console.log(this.affectedElements);'))
);
wwv_flow_imp.component_end;
end;
/
