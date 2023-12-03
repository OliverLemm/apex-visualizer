prompt --application/deployment/install/install_av_javascript_v
begin
--   Manifest
--     INSTALL: INSTALL-av_javascript_v
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
 p_id=>wwv_flow_imp.id(143656314940170010)
,p_install_id=>wwv_flow_imp.id(294519018125278192)
,p_name=>'av_javascript_v'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_JAVASCRIPT_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "COMPONENT_NAME", "COMPONENT_TYPE", "JS_CODE_TYPE", "BEST_PRACTICE", "JS_C'
||'ODE", "JS_CODE_VC2", "JS_CODE_CLOB", "TOOLTIP", "JS_CODE_LINES", "JS_CODE_LENGTH") AS ',
'  select app.application_id',
'      ,app.application_name',
'      ,app.page_id',
'      ,app.page_name',
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => app.application_id',
'                                             ,pi_app_page_id => app.page_id) page_designer_url',
'      ,nvl(app.page_group',
'          ,''no page group'') page_group',
'      ,app.page_function',
'      ,j.component_name',
'      ,j.component_type',
'      ,j.js_code_type',
'      ,case',
'         when length(j.js_code_clob) > 1000 then',
'          0',
'         else',
'          j.best_practice',
'       end best_practice',
'      ,j.js_code_vc2 js_code -- only for backwards compatibility',
'      ,j.js_code_vc2',
'      ,j.js_code_clob',
'      ,''<b>'' || j.component_name || '' ('' || j.component_type || '' - '' || js_code_type || '')</b><br>'' || j.js_code_vc2 tooltip',
'      ,regexp_count(j.js_code_clob',
'                   ,chr(10)) + 1 js_code_lines',
'      ,length(j.js_code_clob) js_code_length',
'from apex_application_pages app',
'join ( -- Page HTML Header',
'      select p.application_id',
'             ,p.page_id',
'             ,''Page HTML Header'' component_name',
'             ,''page'' component_type',
'             ,''page_html_header'' js_code_type',
'             ,0 best_practice',
'             ,to_char(substr(p.page_html_header',
'                            ,0',
'                            ,3900)) js_code_vc2',
'             ,p.page_html_header js_code_clob',
'      from apex_application_pages p',
'      where p.page_html_header is not null',
'      and instr(p.page_html_header',
'              ,''<script'') > 0',
'      union all',
'      -- Page HTML onload',
'      select p.application_id',
'             ,p.page_id',
'             ,''Execute when Page Loads'' component_name',
'             ,''page'' component_type',
'             ,''page_html_onload'' js_code_type',
'             ,0 best_practice',
'             ,p.page_html_onload js_code_vc2',
'             ,to_clob(p.page_html_onload) js_code_clob',
'      from apex_application_pages p',
'      where p.page_html_onload is not null',
'      and instr(p.page_html_onload',
'              ,''<script'') > 0',
'      union all',
'      -- Page Javascript Code',
'      select p.application_id',
'             ,p.page_id',
'             ,''JavaScript Function and Global Variable Declaration'' component_name',
'             ,''page'' component_type',
'             ,''javascript_code'' js_code_type',
'             ,1 best_practice',
'             ,to_char(substr(p.javascript_code',
'                            ,0',
'                            ,3900)) js_code_vc2',
'             ,p.javascript_code js_code_clob',
'      from apex_application_pages p',
'      where p.javascript_code is not null',
'      union all',
'      -- Page Javascript Code onload',
'      select p.application_id',
'             ,p.page_id',
'             ,''JavaScript Execute when Page Loads'' component_name',
'             ,''page'' component_type',
'             ,''javascript_code_onload'' js_code_type',
'             ,1 best_practice',
'             ,to_char(substr(p.javascript_code_onload',
'                            ,0',
'                            ,3900)) js_code_vc2',
'             ,p.javascript_code_onload js_code_clob',
'      from apex_application_pages p',
'      where p.javascript_code_onload is not null',
'      union all',
'      -- Region - Header Text',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name || '' - Region Header Text'' component_name',
'             ,''region'' component_type',
'             ,''region_header_text'' js_code_type',
'             ,0 best_practice',
'             ,pr.region_header_text js_code_vc2',
'             ,to_clob(pr.region_header_text) js_code_clob',
'      from apex_application_page_regions pr',
'      where pr.region_header_text is not null',
'      and instr(lower(pr.region_header_text)',
'              ,''<script'') > 0',
'      union all',
'      -- Region - Footer Text',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name || '' - Region Footer Text'' component_name',
'             ,''region'' component_type',
'             ,''region_footer_text'' js_code_type',
'             ,0 best_practice',
'             ,pr.region_footer_text js_code_vc2',
'             ,to_clob(pr.region_footer_text) js_code_clob',
'      from apex_application_page_regions pr',
'      where pr.region_footer_text is not null',
'      and instr(lower(pr.region_footer_text)',
'              ,''<script'') > 0',
'      union all',
'      -- Dynamic Actions - JavaScript Expression',
'      select pd.application_id',
'             ,pd.page_id',
'             ,pd.dynamic_action_name component_name',
'             ,''dynamic_action'' component_type',
'             ,''when_element'' js_code_type',
'             ,1 best_practice',
'             ,pd.when_element js_code_vc2',
'             ,to_clob(pd.when_element) js_code_clob',
'      from apex_application_page_da pd',
'      where pd.when_selection_type_code = ''JAVASCRIPT_EXPRESSION''',
'      union all',
'      -- Dynamic Actions - JavaScript Code',
'      select pda.application_id',
'             ,pda.page_id',
'             ,pda.dynamic_action_name || '' - '' || pda.dynamic_action_event_result || '' ('' || pda.action_sequence || '')'' component_name',
'             ,''dynamic_action'' component_type',
'             ,''native_javascript_code'' js_code_type',
'             ,1 best_practice',
'             ,pda.attribute_01 js_code_vc2',
'             ,to_clob(pda.attribute_01) js_code_clob',
'      from apex_application_page_da_acts pda',
'      where pda.action_code = ''NATIVE_JAVASCRIPT_CODE''',
'      -- Buttons',
'      union all',
'      select b.application_id',
'             ,b.page_id',
'             ,b.button_name || '' ('' || b.button_sequence || '')'' component_name',
'             ,''button'' component_type',
'             ,''redirect_url'' js_code_type',
'             ,1 best_practice',
'             ,b.redirect_url js_code_vc',
'             ,to_clob(b.redirect_url) js_code_clob',
'      from apex_application_page_buttons b',
'      where lower(b.redirect_url) like ''%javascript:%'') j on j.application_id = app.application_id',
'                                                      and j.page_id = app.page_id',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(143656487097170010)
,p_script_id=>wwv_flow_imp.id(143656314940170010)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_JAVASCRIPT_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212806','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212806','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
