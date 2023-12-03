prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(452483009632466320)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(452446252138466218)
,p_default_dialog_template=>wwv_flow_imp.id(452444891709466217)
,p_error_template=>wwv_flow_imp.id(452443100862466212)
,p_printer_friendly_template=>wwv_flow_imp.id(452442331454466209)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(452443100862466212)
,p_default_button_template=>wwv_flow_imp.id(452481721190466298)
,p_default_region_template=>wwv_flow_imp.id(452458863643466246)
,p_default_chart_template=>wwv_flow_imp.id(452458863643466246)
,p_default_form_template=>wwv_flow_imp.id(452458863643466246)
,p_default_reportr_template=>wwv_flow_imp.id(452458863643466246)
,p_default_tabform_template=>wwv_flow_imp.id(452458863643466246)
,p_default_wizard_template=>wwv_flow_imp.id(452458863643466246)
,p_default_menur_template=>wwv_flow_imp.id(452463263462466253)
,p_default_listr_template=>wwv_flow_imp.id(452458863643466246)
,p_default_irr_template=>wwv_flow_imp.id(452458457830466245)
,p_default_report_template=>wwv_flow_imp.id(452468948793466267)
,p_default_label_template=>wwv_flow_imp.id(452481165926466293)
,p_default_menu_template=>wwv_flow_imp.id(452482206618466299)
,p_default_calendar_template=>wwv_flow_imp.id(452482344230466301)
,p_default_list_template=>wwv_flow_imp.id(452480217536466290)
,p_default_nav_list_template=>wwv_flow_imp.id(452479077726466289)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(452479077726466289)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(452478253231466285)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(452449028418466229)
,p_default_dialogr_template=>wwv_flow_imp.id(452448893974466229)
,p_default_option_label=>wwv_flow_imp.id(452481165926466293)
,p_default_required_label=>wwv_flow_imp.id(452481384205466295)
,p_default_navbar_list_template=>wwv_flow_imp.id(452478069261466285)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
