prompt --application/deployment/install/install_av_applications_v
begin
--   Manifest
--     INSTALL: INSTALL-av_applications_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_APPLICATIONS_V" ("APPLICATION_NAME", "APPLICATION_ID';
wwv_flow_imp.g_varchar2_table(2) := '", "PAGE_FUNCTION", "PAGE_ID") AS '||wwv_flow.LF||
'  select p.application_name'||wwv_flow.LF||
'      ,p.application_id'||wwv_flow.LF||
'      ,case p';
wwv_flow_imp.g_varchar2_table(3) := '.page_function'||wwv_flow.LF||
'         when ''Unknown'' then'||wwv_flow.LF||
'          max(r.source_type)'||wwv_flow.LF||
'         else'||wwv_flow.LF||
'          pag';
wwv_flow_imp.g_varchar2_table(4) := 'e_function'||wwv_flow.LF||
'       end page_function'||wwv_flow.LF||
'      ,p.page_id'||wwv_flow.LF||
'from apex_application_pages p'||wwv_flow.LF||
'join apex_applica';
wwv_flow_imp.g_varchar2_table(5) := 'tion_page_regions r on r.application_id = p.application_id'||wwv_flow.LF||
'                                 and p.pa';
wwv_flow_imp.g_varchar2_table(6) := 'ge_id = r.page_id'||wwv_flow.LF||
'group by p.application_name'||wwv_flow.LF||
'        ,p.application_id'||wwv_flow.LF||
'        ,p.page_id'||wwv_flow.LF||
'        ,';
wwv_flow_imp.g_varchar2_table(7) := 'page_function'||wwv_flow.LF||
'order by p.application_id'||wwv_flow.LF||
'        ,p.page_id'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164062689573034752)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_applications_v'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164062816260034755)
,p_script_id=>wwv_flow_imp.id(164062689573034752)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_APPLICATIONS_V'
);
wwv_flow_imp.component_end;
end;
/
