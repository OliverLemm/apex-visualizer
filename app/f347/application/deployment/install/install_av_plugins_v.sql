prompt --application/deployment/install/install_av_plugins_v
begin
--   Manifest
--     INSTALL: INSTALL-av_plugins_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(59790134891714629)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_plugins_v'
,p_sequence=>140
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PLUGINS_V" ("APPLICATION_ID", "APPLICATION_NAME", "PLUGIN_ID", "PLUGIN_TYPE", "NAME", "DISPLAY_NAME", "PLSQL_CODE", "API_VERSION", "RENDER_FUNCTION", "HELP_TEXT", "VERSION_IDENTIFIER", "ABOUT_URL", "PAGE'
||'_ID", "PAGE_NAME", "OBJECT_NAME", "OBJECT_LABEL", "PAGE_DESIGNER_URL") AS ',
'  select p.application_id',
'      ,p.application_name',
'      ,p.plugin_id',
'      ,p.plugin_type',
'      ,p.name',
'      ,p.display_name',
'      ,p.plsql_code',
'      ,p.api_version',
'      ,p.render_function',
'      ,p.help_text',
'      ,p.version_identifier',
'      ,p.about_url',
'      ,o.page_id',
'      ,o.page_name',
'      ,o.object_name',
'      ,o.object_label',
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id => p.application_id, pi_app_page_id => o.page_id) page_designer_url',
'from apex_appl_plugins p',
'left join ( -- Item Plugins',
'           select pi.application_id',
'                  ,pi.page_id',
'                  ,pi.page_name',
'                  ,pi.display_as plugin_display_name',
'                  ,''Item Type'' object_type',
'                  ,pi.item_name object_name',
'                  ,pi.label object_label',
'           from apex_application_page_items pi',
'           where pi.display_as_code like ''PLUGIN%''',
'           union all',
'           -- Region Plugins',
'           select pr.application_id',
'                  ,pr.page_id',
'                  ,pr.page_name',
'                  ,pr.source_type plugin_display_name',
'                  ,''Region Type'' object_type',
'                  ,pr.region_name object_name',
'                  ,pr.region_name object_label',
'           from apex_application_page_regions pr',
'           where pr.source_type_code like ''PLUGIN%''',
'           union all',
'           -- Dynamic Action Plugins',
'           select pd.application_id',
'                  ,pd.page_id',
'                  ,pd.page_name',
'                  ,pda.action_name plugin_display_name',
'                  ,''Dynamic Action'' object_type',
'                  ,pda.action_name object_name',
'                  ,pd.dynamic_action_name object_label',
'           from apex_application_page_da pd',
'           join apex_application_page_da_acts pda on pda.dynamic_action_id = pd.dynamic_action_id',
'           where pda.action_code like ''PLUGIN%''',
'           union all',
'           -- Process Plugins',
'           select pp.application_id',
'                  ,pp.page_id',
'                  ,pp.page_name',
'                  ,pp.process_type plugin_display_name',
'                  ,''Process Type'' object_type',
'                  ,pp.process_name object_name',
'                  ,pp.process_name object_label',
'           from apex_application_page_proc pp',
'           where pp.process_type_code like ''PLUGIN%'') o on o.application_id = p.application_id',
'                                                    and o.object_type = p.plugin_type',
'                                                    and o.plugin_display_name = p.display_name',
'where p.plugin_type <> ''Template Component''',
';'))
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
