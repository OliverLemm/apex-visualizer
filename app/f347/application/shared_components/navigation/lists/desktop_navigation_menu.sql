prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(452440279475466179)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(452504942296429648)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'APEX'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(452538776854652078)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Applications'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-nav-left-header-header'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(452506165952441537)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Pages'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(291328116588371950)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(293408720997816411)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Visibility'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eye'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(293451767366398525)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Last Updated'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-clock'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(294215766296992610)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Templates'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-nav-left-cards'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'60'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(293335134729022457)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'JavaScript'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-repeat'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(293335881011024666)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'CSS'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-code-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'200'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(294498933510993254)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'PL/SQL'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-sql'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'300'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37651385965650354)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'Plugins'
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plug'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'400'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38833314477463243)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'Links'
,p_list_item_link_target=>'f?p=&APP_ID.:500:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'500'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38896522583463809)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'QA'
,p_list_item_link_target=>'f?p=&APP_ID.:600:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-check-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'600'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Migration'
,p_list_item_link_target=>'f?p=&APP_ID.:700:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'700,710'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16406329864879493)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'APEX 18.1'
,p_list_item_link_target=>'f?p=&APP_ID.:701:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'701'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16407278174882045)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'APEX 18.2'
,p_list_item_link_target=>'f?p=&APP_ID.:702:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'702'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16408165467884193)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'APEX 19.1'
,p_list_item_link_target=>'f?p=&APP_ID.:703:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'703'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16409061489886029)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'APEX 19.2'
,p_list_item_link_target=>'f?p=&APP_ID.:704:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_required_patch=>wwv_flow_imp.id(291318289212148547)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'704'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16409977362888764)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'APEX 20.1'
,p_list_item_link_target=>'f?p=&APP_ID.:705:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'705'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16410870801890950)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'APEX 20.2'
,p_list_item_link_target=>'f?p=&APP_ID.:706:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'706'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16411778583892676)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'APEX 21.1'
,p_list_item_link_target=>'f?p=&APP_ID.:707:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'707'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16412661838894615)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'APEX 21.2'
,p_list_item_link_target=>'f?p=&APP_ID.:708:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'708'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45129397329359590)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'APEX 22.1'
,p_list_item_link_target=>'f?p=&APP_ID.:709:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'709'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17832773868095406)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'APEX 22.2'
,p_list_item_link_target=>'f?p=&APP_ID.:710:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(16405035169854428)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'710'
);
wwv_flow_imp.component_end;
end;
/
