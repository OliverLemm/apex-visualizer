prompt --application/deployment/install/install_av_javascript_v
begin
--   Manifest
--     INSTALL: INSTALL-av_javascript_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := ''||wwv_flow.LF||
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_JAVASCRIPT_V" ("APPLICATION_ID", "APPLICATION_NAME",';
wwv_flow_imp.g_varchar2_table(2) := ' "PAGE_ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "COMPONENT_NAME", "COMP';
wwv_flow_imp.g_varchar2_table(3) := 'ONENT_TYPE", "JS_CODE_TYPE", "BEST_PRACTICE", "JS_CODE", "JS_CODE_VC2", "JS_CODE_CLOB", "TOOLTIP", "';
wwv_flow_imp.g_varchar2_table(4) := 'JS_CODE_LINES", "JS_CODE_LENGTH") AS '||wwv_flow.LF||
'  select app.application_id'||wwv_flow.LF||
'      ,app.application_name'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(5) := ',app.page_id'||wwv_flow.LF||
'      ,app.page_name'||wwv_flow.LF||
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => ap';
wwv_flow_imp.g_varchar2_table(6) := 'p.application_id'||wwv_flow.LF||
'                                             ,pi_app_page_id => app.page_id) page_d';
wwv_flow_imp.g_varchar2_table(7) := 'esigner_url'||wwv_flow.LF||
'      ,nvl(app.page_group'||wwv_flow.LF||
'          ,''no page group'') page_group'||wwv_flow.LF||
'      ,app.page_functio';
wwv_flow_imp.g_varchar2_table(8) := 'n'||wwv_flow.LF||
'      ,j.component_name'||wwv_flow.LF||
'      ,j.component_type'||wwv_flow.LF||
'      ,j.js_code_type'||wwv_flow.LF||
'      ,case'||wwv_flow.LF||
'         when le';
wwv_flow_imp.g_varchar2_table(9) := 'ngth(j.js_code_clob) > 1000 then'||wwv_flow.LF||
'          0'||wwv_flow.LF||
'         else'||wwv_flow.LF||
'          j.best_practice'||wwv_flow.LF||
'       end best';
wwv_flow_imp.g_varchar2_table(10) := '_practice'||wwv_flow.LF||
'      ,j.js_code_vc2 js_code -- only for backwards compatibility'||wwv_flow.LF||
'      ,j.js_code_vc2'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(11) := '  ,j.js_code_clob'||wwv_flow.LF||
'      ,''<b>'' || j.component_name || '' ('' || j.component_type || '' - '' || js_code_t';
wwv_flow_imp.g_varchar2_table(12) := 'ype || '')</b><br>'' || j.js_code_vc2 tooltip'||wwv_flow.LF||
'      ,regexp_count(j.js_code_clob'||wwv_flow.LF||
'                   ,c';
wwv_flow_imp.g_varchar2_table(13) := 'hr(10)) + 1 js_code_lines'||wwv_flow.LF||
'      ,length(j.js_code_clob) js_code_length'||wwv_flow.LF||
'from apex_application_pages a';
wwv_flow_imp.g_varchar2_table(14) := 'pp'||wwv_flow.LF||
'join ( -- Page HTML Header'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''P';
wwv_flow_imp.g_varchar2_table(15) := 'age HTML Header'' component_name'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,''page_html_header''';
wwv_flow_imp.g_varchar2_table(16) := ' js_code_type'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,to_char(substr(p.page_html_header'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(17) := '                    ,0'||wwv_flow.LF||
'                            ,3900)) js_code_vc2'||wwv_flow.LF||
'             ,p.page_html_hea';
wwv_flow_imp.g_varchar2_table(18) := 'der js_code_clob'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.page_html_header is not null'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(19) := '  and instr(p.page_html_header'||wwv_flow.LF||
'              ,''<script'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page HTML onlo';
wwv_flow_imp.g_varchar2_table(20) := 'ad'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''Execute when Page Loads'' com';
wwv_flow_imp.g_varchar2_table(21) := 'ponent_name'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ,''page_html_onload'' js_code_type'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(22) := '       ,0 best_practice'||wwv_flow.LF||
'             ,p.page_html_onload js_code_vc2'||wwv_flow.LF||
'             ,to_clob(p.page_ht';
wwv_flow_imp.g_varchar2_table(23) := 'ml_onload) js_code_clob'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.page_html_onload is not nu';
wwv_flow_imp.g_varchar2_table(24) := 'll'||wwv_flow.LF||
'      and instr(p.page_html_onload'||wwv_flow.LF||
'              ,''<script'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page Ja';
wwv_flow_imp.g_varchar2_table(25) := 'vascript Code'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'             ,p.page_id'||wwv_flow.LF||
'             ,''JavaScript Functi';
wwv_flow_imp.g_varchar2_table(26) := 'on and Global Variable Declaration'' component_name'||wwv_flow.LF||
'             ,''page'' component_type'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(27) := ',''javascript_code'' js_code_type'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,to_char(substr(p.javascr';
wwv_flow_imp.g_varchar2_table(28) := 'ipt_code'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'                            ,3900)) js_code_vc2'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(29) := ' ,p.javascript_code js_code_clob'||wwv_flow.LF||
'      from apex_application_pages p'||wwv_flow.LF||
'      where p.javascript_code i';
wwv_flow_imp.g_varchar2_table(30) := 's not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Page Javascript Code onload'||wwv_flow.LF||
'      select p.application_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(31) := '       ,p.page_id'||wwv_flow.LF||
'             ,''JavaScript Execute when Page Loads'' component_name'||wwv_flow.LF||
'             ,''p';
wwv_flow_imp.g_varchar2_table(32) := 'age'' component_type'||wwv_flow.LF||
'             ,''javascript_code_onload'' js_code_type'||wwv_flow.LF||
'             ,1 best_practic';
wwv_flow_imp.g_varchar2_table(33) := 'e'||wwv_flow.LF||
'             ,to_char(substr(p.javascript_code_onload'||wwv_flow.LF||
'                            ,0'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(34) := '               ,3900)) js_code_vc2'||wwv_flow.LF||
'             ,p.javascript_code_onload js_code_clob'||wwv_flow.LF||
'      from ap';
wwv_flow_imp.g_varchar2_table(35) := 'ex_application_pages p'||wwv_flow.LF||
'      where p.javascript_code_onload is not null'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Reg';
wwv_flow_imp.g_varchar2_table(36) := 'ion - Header Text'||wwv_flow.LF||
'      select pr.application_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_na';
wwv_flow_imp.g_varchar2_table(37) := 'me || '' - Region Header Text'' component_name'||wwv_flow.LF||
'             ,''region'' component_type'||wwv_flow.LF||
'             ,''re';
wwv_flow_imp.g_varchar2_table(38) := 'gion_header_text'' js_code_type'||wwv_flow.LF||
'             ,0 best_practice'||wwv_flow.LF||
'             ,pr.region_header_text js_';
wwv_flow_imp.g_varchar2_table(39) := 'code_vc2'||wwv_flow.LF||
'             ,to_clob(pr.region_header_text) js_code_clob'||wwv_flow.LF||
'      from apex_application_page_';
wwv_flow_imp.g_varchar2_table(40) := 'regions pr'||wwv_flow.LF||
'      where pr.region_header_text is not null'||wwv_flow.LF||
'      and instr(lower(pr.region_header_text';
wwv_flow_imp.g_varchar2_table(41) := ')'||wwv_flow.LF||
'              ,''<script'') > 0'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      -- Region - Footer Text'||wwv_flow.LF||
'      select pr.applic';
wwv_flow_imp.g_varchar2_table(42) := 'ation_id'||wwv_flow.LF||
'             ,pr.page_id'||wwv_flow.LF||
'             ,pr.region_name || '' - Region Footer Text'' component_';
wwv_flow_imp.g_varchar2_table(43) := 'name'||wwv_flow.LF||
'             ,''region'' component_type'||wwv_flow.LF||
'             ,''region_footer_text'' js_code_type'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(44) := '    ,0 best_practice'||wwv_flow.LF||
'             ,pr.region_footer_text js_code_vc2'||wwv_flow.LF||
'             ,to_clob(pr.region';
wwv_flow_imp.g_varchar2_table(45) := '_footer_text) js_code_clob'||wwv_flow.LF||
'      from apex_application_page_regions pr'||wwv_flow.LF||
'      where pr.region_footer_';
wwv_flow_imp.g_varchar2_table(46) := 'text is not null'||wwv_flow.LF||
'      and instr(lower(pr.region_footer_text)'||wwv_flow.LF||
'              ,''<script'') > 0'||wwv_flow.LF||
'      un';
wwv_flow_imp.g_varchar2_table(47) := 'ion all'||wwv_flow.LF||
'      -- Dynamic Actions - JavaScript Expression'||wwv_flow.LF||
'      select pd.application_id'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(48) := ' ,pd.page_id'||wwv_flow.LF||
'             ,pd.dynamic_action_name component_name'||wwv_flow.LF||
'             ,''dynamic_action'' comp';
wwv_flow_imp.g_varchar2_table(49) := 'onent_type'||wwv_flow.LF||
'             ,''when_element'' js_code_type'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,pd.';
wwv_flow_imp.g_varchar2_table(50) := 'when_element js_code_vc2'||wwv_flow.LF||
'             ,to_clob(pd.when_element) js_code_clob'||wwv_flow.LF||
'      from apex_applica';
wwv_flow_imp.g_varchar2_table(51) := 'tion_page_da pd'||wwv_flow.LF||
'      where pd.when_selection_type_code = ''JAVASCRIPT_EXPRESSION'''||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(52) := '    -- Dynamic Actions - JavaScript Code'||wwv_flow.LF||
'      select pda.application_id'||wwv_flow.LF||
'             ,pda.page_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(53) := '            ,pda.dynamic_action_name || '' - '' || pda.dynamic_action_event_result || '' ('' || pda.acti';
wwv_flow_imp.g_varchar2_table(54) := 'on_sequence || '')'' component_name'||wwv_flow.LF||
'             ,''dynamic_action'' component_type'||wwv_flow.LF||
'             ,''nativ';
wwv_flow_imp.g_varchar2_table(55) := 'e_javascript_code'' js_code_type'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,pda.attribute_01 js_code';
wwv_flow_imp.g_varchar2_table(56) := '_vc2'||wwv_flow.LF||
'             ,to_clob(pda.attributes) js_code_clob'||wwv_flow.LF||
'      from apex_application_page_da_acts pda';
wwv_flow_imp.g_varchar2_table(57) := ''||wwv_flow.LF||
'      where pda.action_code = ''NATIVE_JAVASCRIPT_CODE'''||wwv_flow.LF||
'      -- Buttons'||wwv_flow.LF||
'      union all'||wwv_flow.LF||
'      selec';
wwv_flow_imp.g_varchar2_table(58) := 't b.application_id'||wwv_flow.LF||
'             ,b.page_id'||wwv_flow.LF||
'             ,b.button_name || '' ('' || b.button_sequence ';
wwv_flow_imp.g_varchar2_table(59) := '|| '')'' component_name'||wwv_flow.LF||
'             ,''button'' component_type'||wwv_flow.LF||
'             ,''redirect_url'' js_code_typ';
wwv_flow_imp.g_varchar2_table(60) := 'e'||wwv_flow.LF||
'             ,1 best_practice'||wwv_flow.LF||
'             ,b.redirect_url js_code_vc'||wwv_flow.LF||
'             ,to_clob(b.redi';
wwv_flow_imp.g_varchar2_table(61) := 'rect_url) js_code_clob'||wwv_flow.LF||
'      from apex_application_page_buttons b'||wwv_flow.LF||
'      where lower(b.redirect_url) ';
wwv_flow_imp.g_varchar2_table(62) := 'like ''%javascript:%'') j on j.application_id = app.application_id'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(63) := '                   and j.page_id = app.page_id'||wwv_flow.LF||
';';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164064889080051458)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_javascript_v'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164065061237051458)
,p_script_id=>wwv_flow_imp.id(164064889080051458)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_JAVASCRIPT_V'
);
wwv_flow_imp.component_end;
end;
/
