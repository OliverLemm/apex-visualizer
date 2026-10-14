prompt --application/deployment/install/install_av_components_v
begin
--   Manifest
--     INSTALL: INSTALL-av_components_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_COMPONENTS_V" ("APPLICATION_NAME", "APPLICATION_ID",';
wwv_flow_imp.g_varchar2_table(2) := ' "PAGE_ID", "PAGE_NAME", "PAGE", "COMPONENT", "AMOUNT") AS '||wwv_flow.LF||
'  select application_name, application_i';
wwv_flow_imp.g_varchar2_table(3) := 'd, page_id, page_name, page_id || '' '' || page_name page, ''regions'' component, regions amount'||wwv_flow.LF||
'from ap';
wwv_flow_imp.g_varchar2_table(4) := 'ex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select application_name, application_id, page_id, page_name, page_id ';
wwv_flow_imp.g_varchar2_table(5) := '|| '' '' || page_name page, ''items'' component, items amount'||wwv_flow.LF||
'from apex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'sele';
wwv_flow_imp.g_varchar2_table(6) := 'ct application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''buttons''';
wwv_flow_imp.g_varchar2_table(7) := ' component, buttons amount'||wwv_flow.LF||
'from apex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select application_name, applicatio';
wwv_flow_imp.g_varchar2_table(8) := 'n_id, page_id, page_name, page_id || '' '' || page_name page, ''computations'' component, computations a';
wwv_flow_imp.g_varchar2_table(9) := 'mount'||wwv_flow.LF||
'from apex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select application_name, application_id, page_id, page_n';
wwv_flow_imp.g_varchar2_table(10) := 'ame, page_id || '' '' || page_name page, ''validations'' component, validations amount'||wwv_flow.LF||
'from apex_applica';
wwv_flow_imp.g_varchar2_table(11) := 'tion_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select application_name, application_id, page_id, page_name, page_id || '' '' || ';
wwv_flow_imp.g_varchar2_table(12) := 'page_name page, ''processes'' component, processes amount'||wwv_flow.LF||
'from apex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select';
wwv_flow_imp.g_varchar2_table(13) := ' application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''branches'' ';
wwv_flow_imp.g_varchar2_table(14) := 'component, branches amount'||wwv_flow.LF||
'from apex_application_pages'||wwv_flow.LF||
'union all'||wwv_flow.LF||
'select application_name, applicatio';
wwv_flow_imp.g_varchar2_table(15) := 'n_id, page_id, page_name, page_id || '' '' || page_name page, ''dynamic_actions'' component, count(1) am';
wwv_flow_imp.g_varchar2_table(16) := 'ount'||wwv_flow.LF||
'from apex_application_page_da'||wwv_flow.LF||
'group by application_name, application_id, page_id,page_name'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164063701828043594)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_components_v'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164063849111043596)
,p_script_id=>wwv_flow_imp.id(164063701828043594)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_COMPONENTS_V'
);
wwv_flow_imp.component_end;
end;
/
