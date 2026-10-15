prompt --application/deployment/install/install_av_templates_v
begin
--   Manifest
--     INSTALL: INSTALL-av_templates_v
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
wwv_flow_imp.g_varchar2_table(1) := '  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_TEMPLATES_V" ("APPLICATION_ID", "APPLICATION_NAME", "';
wwv_flow_imp.g_varchar2_table(2) := 'COMPONENT_TYPE", "COMPONENT_NAME", "TEMPLATE_CLOB1", "TEMPLATE_CLOB2", "TEMPLATE_CLOB3", "TEMPLATE_V';
wwv_flow_imp.g_varchar2_table(3) := 'C1", "TEMPLATE_VC2", "TEMPLATE_VC3") AS '||wwv_flow.LF||
'  select application_id'||wwv_flow.LF||
'      ,application_name'||wwv_flow.LF||
'      ,''';
wwv_flow_imp.g_varchar2_table(4) := 'Page Template'' component_type'||wwv_flow.LF||
'      ,template_name component_name'||wwv_flow.LF||
'      ,header_template template_';
wwv_flow_imp.g_varchar2_table(5) := 'clob1'||wwv_flow.LF||
'      ,page_body template_clob2'||wwv_flow.LF||
'      ,footer_template template_clob3'||wwv_flow.LF||
'      ,grid_template ';
wwv_flow_imp.g_varchar2_table(6) := 'template_vc1'||wwv_flow.LF||
'      ,grid_row_template template_vc2'||wwv_flow.LF||
'      ,grid_column_template template_vc3'||wwv_flow.LF||
'from ';
wwv_flow_imp.g_varchar2_table(7) := 'apex_application_temp_page tp'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select tr.application_id'||wwv_flow.LF||
'      ,tr.application_name'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(8) := '  ,''Region Template'' component_type'||wwv_flow.LF||
'      ,tr.template_name component_name'||wwv_flow.LF||
'      ,tr.template temp';
wwv_flow_imp.g_varchar2_table(9) := 'late_clob1'||wwv_flow.LF||
'      ,tr.template2 template_clob2'||wwv_flow.LF||
'      ,tr.template3 template_clob3'||wwv_flow.LF||
'      ,tr.sub_re';
wwv_flow_imp.g_varchar2_table(10) := 'gion_header_template template_vc1'||wwv_flow.LF||
'      ,tr.sub_region_header_entry_templ template_vc2'||wwv_flow.LF||
'      ,tr.s';
wwv_flow_imp.g_varchar2_table(11) := 'ub_region_template template_vc3'||wwv_flow.LF||
'from apex_application_temp_region tr'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select trep.applic';
wwv_flow_imp.g_varchar2_table(12) := 'ation_id'||wwv_flow.LF||
'      ,trep.application_name'||wwv_flow.LF||
'      ,''Report Template'' component_type'||wwv_flow.LF||
'      ,trep.templat';
wwv_flow_imp.g_varchar2_table(13) := 'e_name component_name'||wwv_flow.LF||
'      ,trep.col_template1 template_clob1'||wwv_flow.LF||
'      ,trep.col_template2 template_';
wwv_flow_imp.g_varchar2_table(14) := 'clob2'||wwv_flow.LF||
'      ,trep.col_template3 template_clob3'||wwv_flow.LF||
'      ,trep.before_column_heading template_vc1'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(15) := '   ,trep.column_heading_template template_vc2'||wwv_flow.LF||
'      ,trep.after_column_heading template_vc3'||wwv_flow.LF||
'from a';
wwv_flow_imp.g_varchar2_table(16) := 'pex_application_temp_report trep'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select tb.application_id'||wwv_flow.LF||
'      ,tb.application_name'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(17) := '     ,''Button Template'' component_type'||wwv_flow.LF||
'      ,tb.template_name component_name'||wwv_flow.LF||
'      ,tb.template t';
wwv_flow_imp.g_varchar2_table(18) := 'emplate_clob1'||wwv_flow.LF||
'      ,tb.hot_template template_clob2'||wwv_flow.LF||
'      ,null template_clob3'||wwv_flow.LF||
'      ,null templa';
wwv_flow_imp.g_varchar2_table(19) := 'te_vc1'||wwv_flow.LF||
'      ,null template_vc2'||wwv_flow.LF||
'      ,null template_vc3'||wwv_flow.LF||
'from apex_application_temp_button tb'||wwv_flow.LF||
'; ';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(11286842793223960)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_templates_v'
,p_sequence=>250
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(11286944085223964)
,p_script_id=>wwv_flow_imp.id(11286842793223960)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_TEMPLATES_V'
);
wwv_flow_imp.component_end;
end;
/
