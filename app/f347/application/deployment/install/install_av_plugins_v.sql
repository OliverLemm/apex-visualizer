prompt --application/deployment/install/install_av_plugins_v
begin
--   Manifest
--     INSTALL: INSTALL-av_plugins_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PLUGINS_V" ("APPLICATION_ID", "APPLICATION_NAME", "P';
wwv_flow_imp.g_varchar2_table(2) := 'LUGIN_ID", "PLUGIN_TYPE", "NAME", "DISPLAY_NAME", "PLSQL_CODE", "API_VERSION", "RENDER_FUNCTION", "H';
wwv_flow_imp.g_varchar2_table(3) := 'ELP_TEXT", "VERSION_IDENTIFIER", "ABOUT_URL", "PAGE_ID", "PAGE_NAME", "OBJECT_NAME", "OBJECT_LABEL",';
wwv_flow_imp.g_varchar2_table(4) := ' "PAGE_DESIGNER_URL") AS '||wwv_flow.LF||
'  select p.application_id'||wwv_flow.LF||
'      ,p.application_name'||wwv_flow.LF||
'      ,p.plugin_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(5) := '   ,p.plugin_type'||wwv_flow.LF||
'      ,p.name'||wwv_flow.LF||
'      ,p.display_name'||wwv_flow.LF||
'      ,p.plsql_code'||wwv_flow.LF||
'      ,p.api_version'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(6) := ' ,p.render_function'||wwv_flow.LF||
'      ,p.help_text'||wwv_flow.LF||
'      ,p.version_identifier'||wwv_flow.LF||
'      ,p.about_url'||wwv_flow.LF||
'      ,o.page_';
wwv_flow_imp.g_varchar2_table(7) := 'id'||wwv_flow.LF||
'      ,o.page_name'||wwv_flow.LF||
'      ,o.object_name'||wwv_flow.LF||
'      ,o.object_label'||wwv_flow.LF||
'      ,av_general_pkg.f_get_page_de';
wwv_flow_imp.g_varchar2_table(8) := 'signer_url(pi_app_id => p.application_id, pi_app_page_id => o.page_id) page_designer_url'||wwv_flow.LF||
'from apex_a';
wwv_flow_imp.g_varchar2_table(9) := 'ppl_plugins p'||wwv_flow.LF||
'left join ( -- Item Plugins'||wwv_flow.LF||
'           select pi.application_id'||wwv_flow.LF||
'                  ,pi.';
wwv_flow_imp.g_varchar2_table(10) := 'page_id'||wwv_flow.LF||
'                  ,pi.page_name'||wwv_flow.LF||
'                  ,pi.display_as plugin_display_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(11) := '           ,''Item Type'' object_type'||wwv_flow.LF||
'                  ,pi.item_name object_name'||wwv_flow.LF||
'                  ,p';
wwv_flow_imp.g_varchar2_table(12) := 'i.label object_label'||wwv_flow.LF||
'           from apex_application_page_items pi'||wwv_flow.LF||
'           where pi.display_as_c';
wwv_flow_imp.g_varchar2_table(13) := 'ode like ''PLUGIN%'''||wwv_flow.LF||
'           union all'||wwv_flow.LF||
'           -- Region Plugins'||wwv_flow.LF||
'           select pr.applicatio';
wwv_flow_imp.g_varchar2_table(14) := 'n_id'||wwv_flow.LF||
'                  ,pr.page_id'||wwv_flow.LF||
'                  ,pr.page_name'||wwv_flow.LF||
'                  ,pr.source_type';
wwv_flow_imp.g_varchar2_table(15) := ' plugin_display_name'||wwv_flow.LF||
'                  ,''Region Type'' object_type'||wwv_flow.LF||
'                  ,pr.region_name ';
wwv_flow_imp.g_varchar2_table(16) := 'object_name'||wwv_flow.LF||
'                  ,pr.region_name object_label'||wwv_flow.LF||
'           from apex_application_page_reg';
wwv_flow_imp.g_varchar2_table(17) := 'ions pr'||wwv_flow.LF||
'           where pr.source_type_code like ''PLUGIN%'''||wwv_flow.LF||
'           union all'||wwv_flow.LF||
'           -- Dynam';
wwv_flow_imp.g_varchar2_table(18) := 'ic Action Plugins'||wwv_flow.LF||
'           select pd.application_id'||wwv_flow.LF||
'                  ,pd.page_id'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(19) := '  ,pd.page_name'||wwv_flow.LF||
'                  ,pda.action_name plugin_display_name'||wwv_flow.LF||
'                  ,''Dynamic A';
wwv_flow_imp.g_varchar2_table(20) := 'ction'' object_type'||wwv_flow.LF||
'                  ,pda.action_name object_name'||wwv_flow.LF||
'                  ,pd.dynamic_acti';
wwv_flow_imp.g_varchar2_table(21) := 'on_name object_label'||wwv_flow.LF||
'           from apex_application_page_da pd'||wwv_flow.LF||
'           join apex_application_pa';
wwv_flow_imp.g_varchar2_table(22) := 'ge_da_acts pda on pda.dynamic_action_id = pd.dynamic_action_id'||wwv_flow.LF||
'           where pda.action_code like';
wwv_flow_imp.g_varchar2_table(23) := ' ''PLUGIN%'''||wwv_flow.LF||
'           union all'||wwv_flow.LF||
'           -- Process Plugins'||wwv_flow.LF||
'           select pp.application_id'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(24) := '                ,pp.page_id'||wwv_flow.LF||
'                  ,pp.page_name'||wwv_flow.LF||
'                  ,pp.process_type plugi';
wwv_flow_imp.g_varchar2_table(25) := 'n_display_name'||wwv_flow.LF||
'                  ,''Process Type'' object_type'||wwv_flow.LF||
'                  ,pp.process_name obje';
wwv_flow_imp.g_varchar2_table(26) := 'ct_name'||wwv_flow.LF||
'                  ,pp.process_name object_label'||wwv_flow.LF||
'           from apex_application_page_proc p';
wwv_flow_imp.g_varchar2_table(27) := 'p'||wwv_flow.LF||
'           where pp.process_type_code like ''PLUGIN%'') o on o.application_id = p.application_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(28) := '                                                 and o.object_type = p.plugin_type'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(29) := '                                   and o.plugin_display_name = p.display_name'||wwv_flow.LF||
'where p.plugin_type <>';
wwv_flow_imp.g_varchar2_table(30) := ' ''Template Component'''||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59790134891714629)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_plugins_v'
,p_sequence=>140
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(59790190215714629)
,p_script_id=>wwv_flow_imp.id(59790134891714629)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PLUGINS_V'
);
wwv_flow_imp.component_end;
end;
/
