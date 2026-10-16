prompt --application/deployment/install/install_av_general_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_general_pkg
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
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_general_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_get_page_designer_url'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi_app_id   ';
wwv_flow_imp.g_varchar2_table(2) := '   in number'||wwv_flow.LF||
'   ,pi_app_page_id in number'||wwv_flow.LF||
'  ) return varchar2;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_get_page_designer_link'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(3) := '  ('||wwv_flow.LF||
'    pi_app_id           in number'||wwv_flow.LF||
'   ,pi_app_page_id      in number'||wwv_flow.LF||
'   ,pi_link_label       in v';
wwv_flow_imp.g_varchar2_table(4) := 'archar2 default ''edit'''||wwv_flow.LF||
'   ,pi_open_in_new_page in number default 1'||wwv_flow.LF||
'  ) return varchar2;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ';
wwv_flow_imp.g_varchar2_table(5) := 'f_get_page_id_from_target_link'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi_target_link                 in varchar2'||wwv_flow.LF||
'   ,pi_page_id_whe';
wwv_flow_imp.g_varchar2_table(6) := 'n_target_is_null in number default null'||wwv_flow.LF||
'  ) return number;'||wwv_flow.LF||
''||wwv_flow.LF||
'  procedure p_qa_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi';
wwv_flow_imp.g_varchar2_table(7) := '_application_id            in apex_applications.application_id%type'||wwv_flow.LF||
'   ,po_compatibility_mode       ';
wwv_flow_imp.g_varchar2_table(8) := ' out apex_applications.compatibility_mode%type'||wwv_flow.LF||
'   ,po_session_state_protection  out apex_application';
wwv_flow_imp.g_varchar2_table(9) := 's.session_state_protection%type'||wwv_flow.LF||
'   ,po_runtime_api_usage         out varchar2'||wwv_flow.LF||
'   ,po_include_legacy_';
wwv_flow_imp.g_varchar2_table(10) := 'javascript out apex_appl_user_interfaces.include_legacy_javascript%type'||wwv_flow.LF||
'   ,po_include_jquery_migrat';
wwv_flow_imp.g_varchar2_table(11) := 'e    out apex_appl_user_interfaces.include_jquery_migrate%type'||wwv_flow.LF||
'   ,po_theme_name                out ';
wwv_flow_imp.g_varchar2_table(12) := 'apex_application_themes.theme_name%type'||wwv_flow.LF||
'   ,po_theme_version             out apex_application_themes';
wwv_flow_imp.g_varchar2_table(13) := '.version%type'||wwv_flow.LF||
'  );'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_general_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body av_general_pkg is'||wwv_flow.LF||
'  -- Exam';
wwv_flow_imp.g_varchar2_table(14) := 'ple url for editing page 100 in application 347'||wwv_flow.LF||
'  -- f?p=4000:4500:5354232430661:::1,4150:FB_FLOW_ID';
wwv_flow_imp.g_varchar2_table(15) := ',FB_FLOW_PAGE_ID,F4000_P1_FLOW,F4000_P4150_GOTO_PAGE,F4000_P1_PAGE:347,100,347,100,100'||wwv_flow.LF||
'  function f_';
wwv_flow_imp.g_varchar2_table(16) := 'get_page_designer_url'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi_app_id      in number'||wwv_flow.LF||
'   ,pi_app_page_id in number'||wwv_flow.LF||
'  ) return varch';
wwv_flow_imp.g_varchar2_table(17) := 'ar2 is'||wwv_flow.LF||
'    c_unit constant varchar2(1000) := $$plsql_unit || ''.f_get_page_designer_url'';'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(18) := ' return ''f?p=4000:4500:'' || nv(''APP_BUILDER_SESSION'') || ''::::FB_FLOW_ID,FB_FLOW_PAGE_ID:'' || pi_app';
wwv_flow_imp.g_varchar2_table(19) := '_id || '','' || pi_app_page_id;'||wwv_flow.LF||
'  end f_get_page_designer_url;'||wwv_flow.LF||
'  function f_get_page_designer_link'||wwv_flow.LF||
'  (';
wwv_flow_imp.g_varchar2_table(20) := ''||wwv_flow.LF||
'    pi_app_id           in number'||wwv_flow.LF||
'   ,pi_app_page_id      in number'||wwv_flow.LF||
'   ,pi_link_label       in varc';
wwv_flow_imp.g_varchar2_table(21) := 'har2 default ''edit'''||wwv_flow.LF||
'   ,pi_open_in_new_page in number default 1'||wwv_flow.LF||
'  ) return varchar2 is'||wwv_flow.LF||
'    c_unit co';
wwv_flow_imp.g_varchar2_table(22) := 'nstant varchar2(1000) := $$plsql_unit || ''.f_get_page_designer_link'';'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    return ''<a href="''';
wwv_flow_imp.g_varchar2_table(23) := ' || f_get_page_designer_url(pi_app_id      => pi_app_id'||wwv_flow.LF||
'                                            ';
wwv_flow_imp.g_varchar2_table(24) := '     ,pi_app_page_id => pi_app_page_id) || ''" '' || case when pi_open_in_new_page = 1 then ''target="b';
wwv_flow_imp.g_varchar2_table(25) := 'lank"'' else '''' end || ''>'' || pi_link_label || ''</a>'';'||wwv_flow.LF||
'  end f_get_page_designer_link;'||wwv_flow.LF||
'  -- %param pi';
wwv_flow_imp.g_varchar2_table(26) := '_target_link f?p= APP_ID.:578: SESSION.:: DEBUG.:::'||wwv_flow.LF||
'  -- %param pi_page_id '||wwv_flow.LF||
'  function f_get_page_id';
wwv_flow_imp.g_varchar2_table(27) := '_from_target_link'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi_target_link                 in varchar2'||wwv_flow.LF||
'   ,pi_page_id_when_target_is_n';
wwv_flow_imp.g_varchar2_table(28) := 'ull in number default null'||wwv_flow.LF||
'  ) return number is'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if pi_target_link is null'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(29) := '    return pi_page_id_when_target_is_null;'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'      return to_number( -- replace APP_PAGE_ID w';
wwv_flow_imp.g_varchar2_table(30) := 'ith own page_id'||wwv_flow.LF||
'                       replace('||wwv_flow.LF||
'                               -- pi_target_link is ';
wwv_flow_imp.g_varchar2_table(31) := 'like f?p= APP_ID.:578: SESSION.:: DEBUG.:::'||wwv_flow.LF||
'                               -- 578 has to be filtered';
wwv_flow_imp.g_varchar2_table(32) := ' for link target'||wwv_flow.LF||
'                               substr(pi_target_link'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(33) := '       ,14'||wwv_flow.LF||
'                                     ,instr(substr(pi_target_link'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(34) := '                           ,14)'||wwv_flow.LF||
'                                           ,'':'') - 1)'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(35) := '                ,''&'' || ''APP_PAGE_ID.'''||wwv_flow.LF||
'                              ,pi_page_id_when_target_is_null';
wwv_flow_imp.g_varchar2_table(36) := '));'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  exception'||wwv_flow.LF||
'    when others then'||wwv_flow.LF||
'      -- issue 13 - when javascript is in target';
wwv_flow_imp.g_varchar2_table(37) := ' link, return page_id'||wwv_flow.LF||
'      return pi_page_id_when_target_is_null;'||wwv_flow.LF||
'  end f_get_page_id_from_target_l';
wwv_flow_imp.g_varchar2_table(38) := 'ink;'||wwv_flow.LF||
''||wwv_flow.LF||
'  procedure p_qa_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    pi_application_id            in apex_applications.applic';
wwv_flow_imp.g_varchar2_table(39) := 'ation_id%type'||wwv_flow.LF||
'   ,po_compatibility_mode        out apex_applications.compatibility_mode%type'||wwv_flow.LF||
'   ,po_';
wwv_flow_imp.g_varchar2_table(40) := 'session_state_protection  out apex_applications.session_state_protection%type'||wwv_flow.LF||
'   ,po_runtime_api_usa';
wwv_flow_imp.g_varchar2_table(41) := 'ge         out varchar2'||wwv_flow.LF||
'   ,po_include_legacy_javascript out apex_appl_user_interfaces.include_legac';
wwv_flow_imp.g_varchar2_table(42) := 'y_javascript%type'||wwv_flow.LF||
'   ,po_include_jquery_migrate    out apex_appl_user_interfaces.include_jquery_migr';
wwv_flow_imp.g_varchar2_table(43) := 'ate%type'||wwv_flow.LF||
'   ,po_theme_name                out apex_application_themes.theme_name%type'||wwv_flow.LF||
'   ,po_theme_v';
wwv_flow_imp.g_varchar2_table(44) := 'ersion             out apex_application_themes.version%type'||wwv_flow.LF||
'  ) is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    begin'||wwv_flow.LF||
'      select a.';
wwv_flow_imp.g_varchar2_table(45) := 'compatibility_mode'||wwv_flow.LF||
'            ,a.session_state_protection'||wwv_flow.LF||
'            ,case a.runtime_api_usage'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(46) := '            when ''T'' then'||wwv_flow.LF||
'                ''This'''||wwv_flow.LF||
'               when ''O'' then'||wwv_flow.LF||
'                ''Other';
wwv_flow_imp.g_varchar2_table(47) := ''''||wwv_flow.LF||
'               when ''W'' then'||wwv_flow.LF||
'                ''Workspace'''||wwv_flow.LF||
'               else'||wwv_flow.LF||
'                ''None';
wwv_flow_imp.g_varchar2_table(48) := ''''||wwv_flow.LF||
'             end'||wwv_flow.LF||
'      into po_compatibility_mode'||wwv_flow.LF||
'          ,po_session_state_protection'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(49) := ' ,po_runtime_api_usage'||wwv_flow.LF||
'      from apex_applications a'||wwv_flow.LF||
'      where a.application_id = pi_application_';
wwv_flow_imp.g_varchar2_table(50) := 'id;'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'      when no_data_found then'||wwv_flow.LF||
'        po_compatibility_mode       := ''NA'';'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(51) := ' po_session_state_protection := ''NA'';'||wwv_flow.LF||
'        po_runtime_api_usage        := ''NA'';'||wwv_flow.LF||
'    end;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    b';
wwv_flow_imp.g_varchar2_table(52) := 'egin'||wwv_flow.LF||
'      select ui.include_legacy_javascript'||wwv_flow.LF||
'            ,ui.include_jquery_migrate'||wwv_flow.LF||
'      into po_';
wwv_flow_imp.g_varchar2_table(53) := 'include_legacy_javascript'||wwv_flow.LF||
'          ,po_include_jquery_migrate'||wwv_flow.LF||
'      from apex_appl_user_interfaces ';
wwv_flow_imp.g_varchar2_table(54) := 'ui'||wwv_flow.LF||
'      where ui.application_id = pi_application_id;'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'      when no_data_found then'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(55) := '      po_include_legacy_javascript := ''NA'';'||wwv_flow.LF||
'        po_include_jquery_migrate    := ''NA'';'||wwv_flow.LF||
'    end;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := ' '||wwv_flow.LF||
'    begin'||wwv_flow.LF||
'      select t.theme_name'||wwv_flow.LF||
'            ,t.version'||wwv_flow.LF||
'      into po_theme_name'||wwv_flow.LF||
'          ,po_';
wwv_flow_imp.g_varchar2_table(57) := 'theme_version'||wwv_flow.LF||
'      from apex_application_themes t'||wwv_flow.LF||
'      where t.application_id = pi_application_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(58) := '      and t.is_current = ''Yes'';'||wwv_flow.LF||
'    exception'||wwv_flow.LF||
'      when no_data_found then'||wwv_flow.LF||
'        po_theme_name   ';
wwv_flow_imp.g_varchar2_table(59) := ' := ''NA'';'||wwv_flow.LF||
'        po_theme_version := ''NA'';'||wwv_flow.LF||
'    end;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  end p_qa_app_settings;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_general_pkg';
wwv_flow_imp.g_varchar2_table(60) := ';'||wwv_flow.LF||
'/';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(57044097373982258)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_general_pkg'
,p_sequence=>5
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(57044236600982260)
,p_script_id=>wwv_flow_imp.id(57044097373982258)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_GENERAL_PKG'
);
wwv_flow_imp.component_end;
end;
/
