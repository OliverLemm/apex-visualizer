prompt --application/deployment/install/install_av_page_links_nav_static_v
begin
--   Manifest
--     INSTALL: INSTALL-av_page_links_nav_static_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_LINKS_NAV_STATIC_V" ("APPLICATION_ID", "APPLICA';
wwv_flow_imp.g_varchar2_table(2) := 'TION_NAME", "LIST_ID", "LIST_NAME", "LIST_ENTRY_PARENT_ID", "ENTRY_PARENT_TEXT", "LIST_ENTRY_ID", "E';
wwv_flow_imp.g_varchar2_table(3) := 'NTRY_TEXT", "PAGE_ID", "ENTRY_TARGET") AS '||wwv_flow.LF||
'  select l.application_id'||wwv_flow.LF||
'      ,l.application_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(4) := ' ,l.list_id'||wwv_flow.LF||
'      ,l.list_name'||wwv_flow.LF||
'       -- Parent Entry'||wwv_flow.LF||
'      ,le.list_entry_parent_id'||wwv_flow.LF||
'      ,le_paren';
wwv_flow_imp.g_varchar2_table(5) := 't.entry_text entry_parent_text'||wwv_flow.LF||
'       -- List Entries'||wwv_flow.LF||
'      ,le.list_entry_id'||wwv_flow.LF||
'      ,le.entry_text'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(6) := '     ,case le.current_for_pages_type_code'||wwv_flow.LF||
'         when ''TARGET_PAGE'' then'||wwv_flow.LF||
'          le.current_for_';
wwv_flow_imp.g_varchar2_table(7) := 'pages_expression'||wwv_flow.LF||
'         when ''COLON_DELIMITED_PAGE_LIST'' then'||wwv_flow.LF||
'          le_colon.page_id'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(8) := 'else'||wwv_flow.LF||
'          null -- other format'||wwv_flow.LF||
'       end page_id'||wwv_flow.LF||
'      ,le.entry_target -- Link to page'||wwv_flow.LF||
'from a';
wwv_flow_imp.g_varchar2_table(9) := 'pex_application_lists l'||wwv_flow.LF||
'join apex_application_list_entries le on le.list_id = l.list_id'||wwv_flow.LF||
'left join (s';
wwv_flow_imp.g_varchar2_table(10) := 'elect le.list_entry_id'||wwv_flow.LF||
'                 ,pages.column_value page_id'||wwv_flow.LF||
'           from apex_application';
wwv_flow_imp.g_varchar2_table(11) := '_list_entries le'||wwv_flow.LF||
'               ,table(apex_string.split(le.current_for_pages_expression'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(12) := '                            ,'','')) pages'||wwv_flow.LF||
'           where le.current_for_pages_type_code = ''COLON_DE';
wwv_flow_imp.g_varchar2_table(13) := 'LIMITED_PAGE_LIST'') le_colon on le_colon.list_entry_id = le.list_entry_id'||wwv_flow.LF||
'left join apex_application';
wwv_flow_imp.g_varchar2_table(14) := '_list_entries le_parent on le_parent.list_entry_id = le.list_entry_parent_id'||wwv_flow.LF||
''||wwv_flow.LF||
'where l.list_type_code';
wwv_flow_imp.g_varchar2_table(15) := ' = ''STATIC'''||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(69265981124117500)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_page_links_nav_static_v'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(69266002930117501)
,p_script_id=>wwv_flow_imp.id(69265981124117500)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGE_LINKS_NAV_STATIC_V'
);
wwv_flow_imp.component_end;
end;
/
