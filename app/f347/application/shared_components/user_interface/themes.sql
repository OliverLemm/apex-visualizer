prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(472891583772347768)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(472854826278347666)
,p_default_dialog_template=>wwv_flow_imp.id(472853465849347665)
,p_error_template=>wwv_flow_imp.id(472851675002347660)
,p_printer_friendly_template=>wwv_flow_imp.id(472850905594347657)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(472851675002347660)
,p_default_button_template=>wwv_flow_imp.id(472890295330347746)
,p_default_region_template=>wwv_flow_imp.id(472867437783347694)
,p_default_chart_template=>wwv_flow_imp.id(472867437783347694)
,p_default_form_template=>wwv_flow_imp.id(472867437783347694)
,p_default_reportr_template=>wwv_flow_imp.id(472867437783347694)
,p_default_tabform_template=>wwv_flow_imp.id(472867437783347694)
,p_default_wizard_template=>wwv_flow_imp.id(472867437783347694)
,p_default_menur_template=>wwv_flow_imp.id(472871837602347701)
,p_default_listr_template=>wwv_flow_imp.id(472867437783347694)
,p_default_irr_template=>wwv_flow_imp.id(472867031970347693)
,p_default_report_template=>wwv_flow_imp.id(472877522933347715)
,p_default_label_template=>wwv_flow_imp.id(472889740066347741)
,p_default_menu_template=>wwv_flow_imp.id(472890780758347747)
,p_default_calendar_template=>wwv_flow_imp.id(472890918370347749)
,p_default_list_template=>wwv_flow_imp.id(472888791676347738)
,p_default_nav_list_template=>wwv_flow_imp.id(472887651866347737)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(472887651866347737)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(472886827371347733)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(472857602558347677)
,p_default_dialogr_template=>wwv_flow_imp.id(472857468114347677)
,p_default_option_label=>wwv_flow_imp.id(472889740066347741)
,p_default_required_label=>wwv_flow_imp.id(472889958345347743)
,p_default_navbar_list_template=>wwv_flow_imp.id(472886643401347733)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
