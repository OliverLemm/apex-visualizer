prompt --application/deployment/install/install_av_plsql_v
begin
--   Manifest
--     INSTALL: INSTALL-av_plsql_v
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
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PLSQL_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAG';
wwv_flow_imp.g_varchar2_table(2) := 'E_ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "BEST_PRACTICE", "COMPONENT_';
wwv_flow_imp.g_varchar2_table(3) := 'NAME", "COMPONENT_TYPE", "PROCESS_POINT", "CODE_TYPE", "PLSQL_CODE", "PLSQL_CODE_VC2", "PLSQL_CODE_C';
wwv_flow_imp.g_varchar2_table(4) := 'LOB", "TOOLTIP", "CODE_LINES", "CODE_LENGTH") AS '||wwv_flow.LF||
'  select app.application_id'||wwv_flow.LF||
'      ,app.application';
wwv_flow_imp.g_varchar2_table(5) := '_name'||wwv_flow.LF||
'      ,p.page_id'||wwv_flow.LF||
'      ,app.page_name'||wwv_flow.LF||
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id ';
wwv_flow_imp.g_varchar2_table(6) := '     => app.application_id'||wwv_flow.LF||
'                                             ,pi_app_page_id => app.page_';
wwv_flow_imp.g_varchar2_table(7) := 'id) page_designer_url'||wwv_flow.LF||
'      ,nvl(app.page_group'||wwv_flow.LF||
'          ,''no page group'') page_group'||wwv_flow.LF||
'      ,app.pa';
wwv_flow_imp.g_varchar2_table(8) := 'ge_function'||wwv_flow.LF||
'      ,case'||wwv_flow.LF||
'         when code_length > 2000 then'||wwv_flow.LF||
'          0'||wwv_flow.LF||
'         else'||wwv_flow.LF||
'          be';
wwv_flow_imp.g_varchar2_table(9) := 'st_practice'||wwv_flow.LF||
'       end best_practice'||wwv_flow.LF||
'      ,p.component_name'||wwv_flow.LF||
'      ,p.component_type'||wwv_flow.LF||
'      ,p.proces';
wwv_flow_imp.g_varchar2_table(10) := 's_point'||wwv_flow.LF||
'      ,p.code_type'||wwv_flow.LF||
'      ,p.plsql_code_vc2 plsql_code -- only for backward compatibility'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(11) := '   ,p.plsql_code_vc2'||wwv_flow.LF||
'      ,p.plsql_code_clob'||wwv_flow.LF||
'      ,''<b>'' || p.component_name || '' ('' || p.componen';
wwv_flow_imp.g_varchar2_table(12) := 't_type || '' - '' || p.code_type || '')</b><br>'' || p.plsql_code_vc2 tooltip'||wwv_flow.LF||
'      ,regexp_count(p.plsq';
wwv_flow_imp.g_varchar2_table(13) := 'l_code_clob'||wwv_flow.LF||
'                   ,chr(10)) + 1 code_lines'||wwv_flow.LF||
'      ,p.code_length'||wwv_flow.LF||
'from apex_application_p';
wwv_flow_imp.g_varchar2_table(14) := 'ages app'||wwv_flow.LF||
'join ('||wwv_flow.LF||
'      -- Application Process'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,0 page_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(15) := '            ,p.process_name component_name'||wwv_flow.LF||
'             ,''application_process'' component_type'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(16) := '       ,1 best_practice'||wwv_flow.LF||
'             ,p.process_point'||wwv_flow.LF||
'             ,p.process_type code_type'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(17) := '      ,to_char(substr(p.process'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'                            ,3900)) p';
wwv_flow_imp.g_varchar2_table(18) := 'lsql_code_vc2'||wwv_flow.LF||
'             ,p.process plsql_code_clob'||wwv_flow.LF||
'             ,length(p.process) code_length'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(19) := '    from apex_application_processes p'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page Process'||wwv_flow.LF||
'      select pp.applicat';
wwv_flow_imp.g_varchar2_table(20) := 'ion_id'||wwv_flow.LF||
'             ,pp.page_id'||wwv_flow.LF||
'             ,pp.process_name component_name'||wwv_flow.LF||
'             ,''page_pro';
wwv_flow_imp.g_varchar2_table(21) := 'cess'' component_type'||wwv_flow.LF||
'             ,1 best_practices'||wwv_flow.LF||
'             ,pp.process_point'||wwv_flow.LF||
'             ,pp.';
wwv_flow_imp.g_varchar2_table(22) := 'process_type code_type'||wwv_flow.LF||
'             ,to_char(substr(pp.process_source'||wwv_flow.LF||
'                            ,0';
wwv_flow_imp.g_varchar2_table(23) := ''||wwv_flow.LF||
'                            ,3900)) plsql_code_vc2'||wwv_flow.LF||
'             ,pp.process_source plsql_code_clob'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(24) := '             ,length(pp.process_source) code_length'||wwv_flow.LF||
'      from apex_application_page_proc pp'||wwv_flow.LF||
'      w';
wwv_flow_imp.g_varchar2_table(25) := 'here pp.process_type_code in (''DML_PROCESS_ROW'''||wwv_flow.LF||
'                                    ,''NATIVE_IG_DML''';
wwv_flow_imp.g_varchar2_table(26) := ''||wwv_flow.LF||
'                                    ,''NATIVE_LOAD_UPLOADED_DATA'''||wwv_flow.LF||
'                                  ';
wwv_flow_imp.g_varchar2_table(27) := '  ,''MULTI_ROW_UPDATE'''||wwv_flow.LF||
'                                    ,''NATIVE_PARSE_UPLOADED_DATA'''||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(28) := '                        ,''MULTI_ROW_UPDATE'''||wwv_flow.LF||
'                                    ,''NATIVE_PARSE_UPLOA';
wwv_flow_imp.g_varchar2_table(29) := 'DED_DATA'''||wwv_flow.LF||
'                                    ,''NATIVE_PREPARE_UPLOADED_DATA'''||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(30) := '              ,''PLSQL'''||wwv_flow.LF||
'                                    ,''DML_FETCH_ROW'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -';
wwv_flow_imp.g_varchar2_table(31) := '- page computation'||wwv_flow.LF||
'      select pc.application_id'||wwv_flow.LF||
'             ,pc.page_id'||wwv_flow.LF||
'             ,pc.item_nam';
wwv_flow_imp.g_varchar2_table(32) := 'e component_name'||wwv_flow.LF||
'             ,''computation'' component_type'||wwv_flow.LF||
'             ,1 best_practices'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(33) := '    ,pc.computation_point process_point'||wwv_flow.LF||
'             ,pc.computation_type code_type'||wwv_flow.LF||
'             ,pc';
wwv_flow_imp.g_varchar2_table(34) := '.computation plsql_code_vc'||wwv_flow.LF||
'             ,to_clob(pc.computation) plsql_clode_clob'||wwv_flow.LF||
'             ,leng';
wwv_flow_imp.g_varchar2_table(35) := 'th(pc.computation) code_length'||wwv_flow.LF||
'      from apex_application_page_comp pc'||wwv_flow.LF||
'      where pc.computation_t';
wwv_flow_imp.g_varchar2_table(36) := 'ype in (''PL/SQL Expression'''||wwv_flow.LF||
'                                   ,''SQL Query (return single value)'''||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(37) := '                                 ,''PL/SQL Function Body'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- item default'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(38) := '  select pi.application_id'||wwv_flow.LF||
'             ,pi.page_id'||wwv_flow.LF||
'             ,pi.item_name component_name'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(39) := '       ,''item_default'' component_type'||wwv_flow.LF||
'             ,0 best_practices'||wwv_flow.LF||
'             ,''Rendering'' proce';
wwv_flow_imp.g_varchar2_table(40) := 'ss_point'||wwv_flow.LF||
'             ,pi.item_default_type code_type'||wwv_flow.LF||
'             ,pi.item_default plsql_code_vc2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(41) := '            ,to_clob(pi.item_default) plsql_code_clob'||wwv_flow.LF||
'             ,length(pi.item_default) code_len';
wwv_flow_imp.g_varchar2_table(42) := 'gth'||wwv_flow.LF||
'      from apex_application_page_items pi'||wwv_flow.LF||
'      where pi.item_default is not null'||wwv_flow.LF||
'      and pi.i';
wwv_flow_imp.g_varchar2_table(43) := 'tem_default_type = ''PLSQL_EXPRESSION'''||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- item source'||wwv_flow.LF||
'      select pi.applicati';
wwv_flow_imp.g_varchar2_table(44) := 'on_id'||wwv_flow.LF||
'             ,pi.page_id'||wwv_flow.LF||
'             ,pi.item_name component_name'||wwv_flow.LF||
'             ,''item_source''';
wwv_flow_imp.g_varchar2_table(45) := ' component_type'||wwv_flow.LF||
'             ,0 best_practices'||wwv_flow.LF||
'             ,''Rendering'' process_point'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(46) := ',pi.item_source_type code_type'||wwv_flow.LF||
'             ,pi.item_source plsql_code_vc2'||wwv_flow.LF||
'             ,to_clob(pi.';
wwv_flow_imp.g_varchar2_table(47) := 'item_source) plsql_code_clob'||wwv_flow.LF||
'             ,length(pi.item_source) code_length'||wwv_flow.LF||
'      from apex_applic';
wwv_flow_imp.g_varchar2_table(48) := 'ation_page_items pi'||wwv_flow.LF||
'      where pi.item_source is not null'||wwv_flow.LF||
'      and pi.item_source_type in (''PL/SQL';
wwv_flow_imp.g_varchar2_table(49) := ' Function Body'''||wwv_flow.LF||
'                                ,''SQL Query (return single value)'''||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(50) := '               ,''PL/SQL Expression or Function'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- item lov'||wwv_flow.LF||
'      select pi.a';
wwv_flow_imp.g_varchar2_table(51) := 'pplication_id'||wwv_flow.LF||
'             ,pi.page_id'||wwv_flow.LF||
'             ,pi.item_name component_name'||wwv_flow.LF||
'             ,''lov''';
wwv_flow_imp.g_varchar2_table(52) := ' component_type'||wwv_flow.LF||
'             ,case'||wwv_flow.LF||
'                when pi.lov_named_lov is null then'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(53) := '   0'||wwv_flow.LF||
'                else'||wwv_flow.LF||
'                 1'||wwv_flow.LF||
'              end best_practice'||wwv_flow.LF||
'             ,''Renderin';
wwv_flow_imp.g_varchar2_table(54) := 'g'' process_point'||wwv_flow.LF||
'             ,nvl2(pi.lov_named_lov'||wwv_flow.LF||
'                  ,''named_lov'''||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(55) := '  ,''query'') code_type'||wwv_flow.LF||
'             ,pi.lov_definition plsql_code_vc2'||wwv_flow.LF||
'             ,to_clob(pi.lov_de';
wwv_flow_imp.g_varchar2_table(56) := 'finition) plsql_code_clob'||wwv_flow.LF||
'             ,length(pi.lov_definition) code_length'||wwv_flow.LF||
'      from apex_applic';
wwv_flow_imp.g_varchar2_table(57) := 'ation_page_items pi'||wwv_flow.LF||
'      where pi.lov_definition is not null'||wwv_flow.LF||
'      and instr(pi.lov_definition'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(58) := '          ,''STATIC2:'') = 0'||wwv_flow.LF||
'      and instr(pi.lov_definition'||wwv_flow.LF||
'              ,''STATIC:'') = 0'||wwv_flow.LF||
'      uni';
wwv_flow_imp.g_varchar2_table(59) := 'on all'||wwv_flow.LF||
'      -- item condition'||wwv_flow.LF||
'      select pi.application_id'||wwv_flow.LF||
'             ,pi.page_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(60) := ',pi.item_name component_name'||wwv_flow.LF||
'             ,''condition'' component_type'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(61) := '             ,''Rendering'' process_point'||wwv_flow.LF||
'             ,pi.condition_type code_type'||wwv_flow.LF||
'             ,pi.c';
wwv_flow_imp.g_varchar2_table(62) := 'ondition_expression1 plsql_code_vc2'||wwv_flow.LF||
'             ,to_clob(pi.condition_expression1) plsql_code_clob'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(63) := '             ,length(pi.condition_expression1) code_length'||wwv_flow.LF||
'      from apex_application_page_items pi';
wwv_flow_imp.g_varchar2_table(64) := ''||wwv_flow.LF||
'      where pi.condition_type_code is not null'||wwv_flow.LF||
'      and pi.condition_type_code in (''EXISTS'''||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(65) := '                             ,''FUNCTION_BODY'''||wwv_flow.LF||
'                                   ,''NOT_EXISTS'''||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(66) := '                              ,''PLSQL_EXPRESSION'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region source'||wwv_flow.LF||
'      sele';
wwv_flow_imp.g_varchar2_table(67) := 'ct pr.application_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name component_name'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(68) := '   ,''region_source'' component_type'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,''Rendering'' process_p';
wwv_flow_imp.g_varchar2_table(69) := 'oint'||wwv_flow.LF||
'             ,pr.source_type code_type'||wwv_flow.LF||
'             ,to_char(substr(pr.region_source'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(70) := '                  ,0'||wwv_flow.LF||
'                            ,3900)) plsql_code_vc2'||wwv_flow.LF||
'             ,pr.region_sour';
wwv_flow_imp.g_varchar2_table(71) := 'ce plsql_code_clob'||wwv_flow.LF||
'             ,length(pr.region_source) code_length'||wwv_flow.LF||
'      from apex_application_pa';
wwv_flow_imp.g_varchar2_table(72) := 'ge_regions pr'||wwv_flow.LF||
'      where source_type_code in (''DYNAMIC_QUERY'''||wwv_flow.LF||
'                                ,''FUN';
wwv_flow_imp.g_varchar2_table(73) := 'CTION_RETURNING_SQL_QUERY'''||wwv_flow.LF||
'                                ,''PLSQL_PROCEDURE'''||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(74) := '          ,''SQL_QUERY'''||wwv_flow.LF||
'                                ,''UPDATABLE_SQL_QUERY'')'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(75) := ' -- chart series'||wwv_flow.LF||
'      select pcs.application_id'||wwv_flow.LF||
'             ,pcs.page_id'||wwv_flow.LF||
'             ,pcs.series_';
wwv_flow_imp.g_varchar2_table(76) := 'name component_name'||wwv_flow.LF||
'             ,''chart_series_source'' component_type'||wwv_flow.LF||
'             ,1 best_practice';
wwv_flow_imp.g_varchar2_table(77) := ''||wwv_flow.LF||
'             ,''Rendering'' process_point'||wwv_flow.LF||
'             ,pcs.data_source_type code_type'||wwv_flow.LF||
'             ,';
wwv_flow_imp.g_varchar2_table(78) := 'to_char(substr(pcs.data_source'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'                            ,3900)) pl';
wwv_flow_imp.g_varchar2_table(79) := 'sql_code_vc2'||wwv_flow.LF||
'             ,pcs.data_source plsql_code_clob'||wwv_flow.LF||
'             ,length(pcs.data_source) cod';
wwv_flow_imp.g_varchar2_table(80) := 'e_length'||wwv_flow.LF||
'      from apex_application_page_chart_s pcs'||wwv_flow.LF||
'      --'||wwv_flow.LF||
'      ) p on p.application_id = app.a';
wwv_flow_imp.g_varchar2_table(81) := 'pplication_id'||wwv_flow.LF||
'      and p.page_id = app.page_id'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164065913513057868)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_plsql_v'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164066059779057869)
,p_script_id=>wwv_flow_imp.id(164065913513057868)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PLSQL_V'
);
wwv_flow_imp.component_end;
end;
/
