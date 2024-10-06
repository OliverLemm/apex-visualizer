prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 347
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(347)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:10:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(472848853615347627)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(472886827371347733)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--classic'
,p_css_file_urls=>'#APP_FILES#av#MIN#.css'
,p_javascript_file_urls=>'#APP_FILES#av#MIN#.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(472901013601347796)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(472886643401347733)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
