prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(472901389022347808)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(38242509158976862)
,p_short_name=>'APEX 22.2'
,p_link=>'f?p=&APP_ID.:710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65483841296121562)
,p_parent_id=>wwv_flow_imp.id(65483493577116779)
,p_short_name=>'APEX 20.1'
,p_link=>'f?p=&APP_ID.:705:&SESSION.::&DEBUG.:::'
,p_page_id=>705
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65487361046565033)
,p_parent_id=>wwv_flow_imp.id(65483493577116779)
,p_short_name=>'APEX 20.2'
,p_link=>'f?p=&APP_ID.:706:&SESSION.::&DEBUG.:::'
,p_page_id=>706
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65487551698569057)
,p_parent_id=>wwv_flow_imp.id(65483493577116779)
,p_short_name=>'APEX 21.1'
,p_link=>'f?p=&APP_ID.:707:&SESSION.::&DEBUG.:::'
,p_page_id=>707
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65487757199571705)
,p_parent_id=>wwv_flow_imp.id(65483493577116779)
,p_short_name=>'APEX 21.2'
,p_link=>'f?p=&APP_ID.:708:&SESSION.::&DEBUG.:::'
,p_page_id=>708
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65538737089244143)
,p_parent_id=>wwv_flow_imp.id(65483493577116779)
,p_short_name=>'APEX 22.1'
,p_link=>'f?p=&APP_ID.:709:&SESSION.::&DEBUG.:::'
,p_page_id=>709
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(469895599054694459)
,p_short_name=>'Apps'
,p_long_name=>'Applications'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(469896119189728830)
,p_short_name=>'Pages'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65483493577116779)
,p_option_sequence=>70
,p_short_name=>'Migation'
,p_link=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp.component_end;
end;
/
