prompt --application/deployment/install/install_av_plsql_v
begin
--   Manifest
--     INSTALL: INSTALL-av_plsql_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(143657339373176420)
,p_install_id=>wwv_flow_imp.id(294519018125278192)
,p_name=>'av_plsql_v'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PLSQL_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "BEST_PRACTICE", "COMPONENT_NAME", "COMPONENT_TYPE", "PROCESS_POINT", "CODE_TYP'
||'E", "PLSQL_CODE", "PLSQL_CODE_VC2", "PLSQL_CODE_CLOB", "TOOLTIP", "CODE_LINES", "CODE_LENGTH") AS ',
'  select app.application_id',
'      ,app.application_name',
'      ,p.page_id',
'      ,app.page_name',
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => app.application_id',
'                                             ,pi_app_page_id => app.page_id) page_designer_url',
'      ,nvl(app.page_group',
'          ,''no page group'') page_group',
'      ,app.page_function',
'      ,case',
'         when code_length > 2000 then',
'          0',
'         else',
'          best_practice',
'       end best_practice',
'      ,p.component_name',
'      ,p.component_type',
'      ,p.process_point',
'      ,p.code_type',
'      ,p.plsql_code_vc2 plsql_code -- only for backward compatibility',
'      ,p.plsql_code_vc2',
'      ,p.plsql_code_clob',
'      ,''<b>'' || p.component_name || '' ('' || p.component_type || '' - '' || p.code_type || '')</b><br>'' || p.plsql_code_vc2 tooltip',
'      ,regexp_count(p.plsql_code_clob',
'                   ,chr(10)) + 1 code_lines',
'      ,p.code_length',
'from apex_application_pages app',
'join (',
'      -- Application Process',
'      select p.application_id',
'             ,0 page_id',
'             ,p.process_name component_name',
'             ,''application_process'' component_type',
'             ,1 best_practice',
'             ,p.process_point',
'             ,p.process_type code_type',
'             ,to_char(substr(p.process',
'                            ,0',
'                            ,3900)) plsql_code_vc2',
'             ,p.process plsql_code_clob',
'             ,length(p.process) code_length',
'      from apex_application_processes p',
'      union all',
'      -- Page Process',
'      select pp.application_id',
'             ,pp.page_id',
'             ,pp.process_name component_name',
'             ,''page_process'' component_type',
'             ,1 best_practices',
'             ,pp.process_point',
'             ,pp.process_type code_type',
'             ,to_char(substr(pp.process_source',
'                            ,0',
'                            ,3900)) plsql_code_vc2',
'             ,pp.process_source plsql_code_clob',
'             ,length(pp.process_source) code_length',
'      from apex_application_page_proc pp',
'      where pp.process_type_code in (''DML_PROCESS_ROW''',
'                                    ,''NATIVE_IG_DML''',
'                                    ,''NATIVE_LOAD_UPLOADED_DATA''',
'                                    ,''MULTI_ROW_UPDATE''',
'                                    ,''NATIVE_PARSE_UPLOADED_DATA''',
'                                    ,''MULTI_ROW_UPDATE''',
'                                    ,''NATIVE_PARSE_UPLOADED_DATA''',
'                                    ,''NATIVE_PREPARE_UPLOADED_DATA''',
'                                    ,''PLSQL''',
'                                    ,''DML_FETCH_ROW'')',
'      union all',
'      -- page computation',
'      select pc.application_id',
'             ,pc.page_id',
'             ,pc.item_name component_name',
'             ,''computation'' component_type',
'             ,1 best_practices',
'             ,pc.computation_point process_point',
'             ,pc.computation_type code_type',
'             ,pc.computation plsql_code_vc',
'             ,to_clob(pc.computation) plsql_clode_clob',
'             ,length(pc.computation) code_length',
'      from apex_application_page_comp pc',
'      where pc.computation_type in (''PL/SQL Expression''',
'                                   ,''SQL Query (return single value)''',
'                                   ,''PL/SQL Function Body'')',
'      union all',
'      -- item default',
'      select pi.application_id',
'             ,pi.page_id',
'             ,pi.item_name component_name',
'             ,''item_default'' component_type',
'             ,0 best_practices',
'             ,''Rendering'' process_point',
'             ,pi.item_default_type code_type',
'             ,pi.item_default plsql_code_vc2',
'             ,to_clob(pi.item_default) plsql_code_clob',
'             ,length(pi.item_default) code_length',
'      from apex_application_page_items pi',
'      where pi.item_default is not null',
'      and pi.item_default_type = ''PLSQL_EXPRESSION''',
'      union all',
'      -- item source',
'      select pi.application_id',
'             ,pi.page_id',
'             ,pi.item_name component_name',
'             ,''item_source'' component_type',
'             ,0 best_practices',
'             ,''Rendering'' process_point',
'             ,pi.item_source_type code_type',
'             ,pi.item_source plsql_code_vc2',
'             ,to_clob(pi.item_source) plsql_code_clob',
'             ,length(pi.item_source) code_length',
'      from apex_application_page_items pi',
'      where pi.item_source is not null',
'      and pi.item_source_type in (''PL/SQL Function Body''',
'                                ,''SQL Query (return single value)''',
'                                ,''PL/SQL Expression or Function'')',
'      union all',
'      -- item lov',
'      select pi.application_id',
'             ,pi.page_id',
'             ,pi.item_name component_name',
'             ,''lov'' component_type',
'             ,case',
'                when pi.lov_named_lov is null then',
'                 0',
'                else',
'                 1',
'              end best_practice',
'             ,''Rendering'' process_point',
'             ,nvl2(pi.lov_named_lov',
'                  ,''named_lov''',
'                  ,''query'') code_type',
'             ,pi.lov_definition plsql_code_vc2',
'             ,to_clob(pi.lov_definition) plsql_code_clob',
'             ,length(pi.lov_definition) code_length',
'      from apex_application_page_items pi',
'      where pi.lov_definition is not null',
'      and instr(pi.lov_definition',
'              ,''STATIC2:'') = 0',
'      and instr(pi.lov_definition',
'              ,''STATIC:'') = 0',
'      union all',
'      -- item condition',
'      select pi.application_id',
'             ,pi.page_id',
'             ,pi.item_name component_name',
'             ,''condition'' component_type',
'             ,1 best_practice',
'             ,''Rendering'' process_point',
'             ,pi.condition_type code_type',
'             ,pi.condition_expression1 plsql_code_vc2',
'             ,to_clob(pi.condition_expression1) plsql_code_clob',
'             ,length(pi.condition_expression1) code_length',
'      from apex_application_page_items pi',
'      where pi.condition_type_code is not null',
'      and pi.condition_type_code in (''EXISTS''',
'                                   ,''FUNCTION_BODY''',
'                                   ,''NOT_EXISTS''',
'                                   ,''PLSQL_EXPRESSION'')',
'      union all',
'      -- Region source',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,''region_source'' component_type',
'             ,1 best_practice',
'             ,''Rendering'' process_point',
'             ,pr.source_type code_type',
'             ,to_char(substr(pr.region_source',
'                            ,0',
'                            ,3900)) plsql_code_vc2',
'             ,pr.region_source plsql_code_clob',
'             ,length(pr.region_source) code_length',
'      from apex_application_page_regions pr',
'      where source_type_code in (''DYNAMIC_QUERY''',
'                                ,''FUNCTION_RETURNING_SQL_QUERY''',
'                                ,''PLSQL_PROCEDURE''',
'                                ,''SQL_QUERY''',
'                                ,''UPDATABLE_SQL_QUERY'')',
'      union all',
'      -- chart series',
'      select pcs.application_id',
'             ,pcs.page_id',
'             ,pcs.series_name component_name',
'             ,''chart_series_source'' component_type',
'             ,1 best_practice',
'             ,''Rendering'' process_point',
'             ,pcs.data_source_type code_type',
'             ,to_char(substr(pcs.data_source',
'                            ,0',
'                            ,3900)) plsql_code_vc2',
'             ,pcs.data_source plsql_code_clob',
'             ,length(pcs.data_source) code_length',
'      from apex_application_page_chart_s pcs',
'      --',
'      ) p on p.application_id = app.application_id',
'      and p.page_id = app.page_id',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(143657485639176421)
,p_script_id=>wwv_flow_imp.id(143657339373176420)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PLSQL_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212910','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212910','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
