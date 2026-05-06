prompt --application/deployment/install/install_av_page_links_nav_static_v
begin
--   Manifest
--     INSTALL: INSTALL-av_page_links_nav_static_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(69265981124117500)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_page_links_nav_static_v'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_LINKS_NAV_STATIC_V" ("APPLICATION_ID", "APPLICATION_NAME", "LIST_ID", "LIST_NAME", "LIST_ENTRY_PARENT_ID", "ENTRY_PARENT_TEXT", "LIST_ENTRY_ID", "ENTRY_TEXT", "PAGE_ID", "ENTRY_TARGET") AS ',
'  select l.application_id',
'      ,l.application_name',
'      ,l.list_id',
'      ,l.list_name',
'       -- Parent Entry',
'      ,le.list_entry_parent_id',
'      ,le_parent.entry_text entry_parent_text',
'       -- List Entries',
'      ,le.list_entry_id',
'      ,le.entry_text',
'      ,case le.current_for_pages_type_code',
'         when ''TARGET_PAGE'' then',
'          le.current_for_pages_expression',
'         when ''COLON_DELIMITED_PAGE_LIST'' then',
'          le_colon.page_id',
'         else',
'          null -- other format',
'       end page_id',
'      ,le.entry_target -- Link to page',
'from apex_application_lists l',
'join apex_application_list_entries le on le.list_id = l.list_id',
'left join (select le.list_entry_id',
'                 ,pages.column_value page_id',
'           from apex_application_list_entries le',
'               ,table(apex_string.split(le.current_for_pages_expression',
'                                       ,'','')) pages',
'           where le.current_for_pages_type_code = ''COLON_DELIMITED_PAGE_LIST'') le_colon on le_colon.list_entry_id = le.list_entry_id',
'left join apex_application_list_entries le_parent on le_parent.list_entry_id = le.list_entry_parent_id',
'',
'where l.list_type_code = ''STATIC''',
'; '))
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
