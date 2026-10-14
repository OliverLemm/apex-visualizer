prompt --application/deployment/install/install_av_p0300_plsql_code_by_page_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0300_plsql_code_by_page_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0300_PLSQL_CODE_BY_PAGE_V" ("APPLICATION_ID", "PAGE';
wwv_flow_imp.g_varchar2_table(2) := '_ID", "PAGE_NAME_AND_ID", "PAGE_GROUP", "PAGE_FUNCTION", "BEST_PRACTICE", "COMPONENTS_COUNT", "CODE_';
wwv_flow_imp.g_varchar2_table(3) := 'LENGTH_SUM", "CODE_LINES_SUM", "TOOLTIP") AS '||wwv_flow.LF||
'  select application_id'||wwv_flow.LF||
'      ,page_id'||wwv_flow.LF||
'      ,page_nam';
wwv_flow_imp.g_varchar2_table(4) := 'e || '' ('' || page_id || '')'' page_name_and_id'||wwv_flow.LF||
'      ,page_group'||wwv_flow.LF||
'      ,page_function'||wwv_flow.LF||
'      ,best_prac';
wwv_flow_imp.g_varchar2_table(5) := 'tice'||wwv_flow.LF||
'      ,components_count'||wwv_flow.LF||
'      ,code_length_sum'||wwv_flow.LF||
'      ,code_lines_sum'||wwv_flow.LF||
'      ,''<table>'' || --'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(6) := '    ''<tr><td>page name</td><td>'' || page_name || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''<tr><td>page id</td><td>';
wwv_flow_imp.g_varchar2_table(7) := ''' || page_id || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''<tr><td>page group</td><td>'' || page_group || ''</td></tr>';
wwv_flow_imp.g_varchar2_table(8) := ''' || --'||wwv_flow.LF||
'       ''<tr><td>page function</td><td>'' || page_function || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''<tr><';
wwv_flow_imp.g_varchar2_table(9) := 'td>number of plsql components</td><td>'' || components_count || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''<tr><td>ov';
wwv_flow_imp.g_varchar2_table(10) := 'erall lines of plsql code</td><td>'' || code_lines_sum || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''<tr><td>overall ';
wwv_flow_imp.g_varchar2_table(11) := 'character of plsql code</td><td>'' || code_length_sum || ''</td></tr>'' || --'||wwv_flow.LF||
'       ''</table>'' tooltip';
wwv_flow_imp.g_varchar2_table(12) := ''||wwv_flow.LF||
'from (select distinct application_id'||wwv_flow.LF||
'                     ,page_id'||wwv_flow.LF||
'                     ,page_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(13) := '                     ,page_group'||wwv_flow.LF||
'                     ,page_function'||wwv_flow.LF||
'                     ,best_prac';
wwv_flow_imp.g_varchar2_table(14) := 'tice'||wwv_flow.LF||
'                     ,count(*) over(partition by application_id, page_id) components_count'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(15) := '                 ,sum(code_length) over(partition by application_id, page_id) code_length_sum'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(16) := '               ,sum(code_lines) over(partition by application_id, page_id) code_lines_sum'||wwv_flow.LF||
'      from';
wwv_flow_imp.g_varchar2_table(17) := ' av_plsql_v)'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(165422255768448752)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_p0300_plsql_code_by_page_v'
,p_sequence=>110
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(165422318259448754)
,p_script_id=>wwv_flow_imp.id(165422255768448752)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0300_PLSQL_CODE_BY_PAGE_V'
);
wwv_flow_imp.component_end;
end;
/
