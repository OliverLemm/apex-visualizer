prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(452492814882466360)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17833935019095414)
,p_short_name=>'APEX 22.2'
,p_link=>'f?p=&APP_ID.:710:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>710
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45075267156240114)
,p_parent_id=>wwv_flow_imp.id(45074919437235331)
,p_short_name=>'APEX 20.1'
,p_link=>'f?p=&APP_ID.:705:&SESSION.::&DEBUG.:::'
,p_page_id=>705
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45078786906683585)
,p_parent_id=>wwv_flow_imp.id(45074919437235331)
,p_short_name=>'APEX 20.2'
,p_link=>'f?p=&APP_ID.:706:&SESSION.::&DEBUG.:::'
,p_page_id=>706
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45078977558687609)
,p_parent_id=>wwv_flow_imp.id(45074919437235331)
,p_short_name=>'APEX 21.1'
,p_link=>'f?p=&APP_ID.:707:&SESSION.::&DEBUG.:::'
,p_page_id=>707
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45079183059690257)
,p_parent_id=>wwv_flow_imp.id(45074919437235331)
,p_short_name=>'APEX 21.2'
,p_link=>'f?p=&APP_ID.:708:&SESSION.::&DEBUG.:::'
,p_page_id=>708
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45130162949362695)
,p_parent_id=>wwv_flow_imp.id(45074919437235331)
,p_short_name=>'APEX 22.1'
,p_link=>'f?p=&APP_ID.:709:&SESSION.::&DEBUG.:::'
,p_page_id=>709
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(449487024914813011)
,p_parent_id=>0
,p_short_name=>'Apps'
,p_long_name=>'Applications'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(449487545049847382)
,p_parent_id=>0
,p_short_name=>'Pages'
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(45074919437235331)
,p_option_sequence=>70
,p_short_name=>'Migation'
,p_link=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.:::'
,p_page_id=>700
);
wwv_flow_imp.component_end;
end;
/
