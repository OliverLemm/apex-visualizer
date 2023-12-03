prompt --application/deployment/install/install_av_general_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_general_pkg
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
 p_id=>wwv_flow_imp.id(36635523234100810)
,p_install_id=>wwv_flow_imp.id(294519018125278192)
,p_name=>'av_general_pkg'
,p_sequence=>5
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package av_general_pkg is',
'',
'  function f_get_page_designer_url',
'  (',
'    pi_app_id      in number',
'   ,pi_app_page_id in number',
'  ) return varchar2;',
'',
'  function f_get_page_designer_link',
'  (',
'    pi_app_id           in number',
'   ,pi_app_page_id      in number',
'   ,pi_link_label       in varchar2 default ''edit''',
'   ,pi_open_in_new_page in number default 1',
'  ) return varchar2;',
'',
'  function f_get_page_id_from_target_link',
'  (',
'    pi_target_link                 in varchar2',
'   ,pi_page_id_when_target_is_null in number default null',
'  ) return number;',
'',
'end av_general_pkg;',
'/',
'create or replace package body av_general_pkg is',
'',
'  -- Example url for editing page 100 in application 347',
'  -- f?p=4000:4500:5354232430661:::1,4150:FB_FLOW_ID,FB_FLOW_PAGE_ID,F4000_P1_FLOW,F4000_P4150_GOTO_PAGE,F4000_P1_PAGE:347,100,347,100,100',
'  function f_get_page_designer_url',
'  (',
'    pi_app_id      in number',
'   ,pi_app_page_id in number',
'  ) return varchar2 is',
'    c_unit constant varchar2(1000) := $$plsql_unit || ''.f_get_page_designer_url'';',
'  begin',
'    return ''f?p=4000:4500:'' || nv(''APP_BUILDER_SESSION'') || ''::::FB_FLOW_ID,FB_FLOW_PAGE_ID:'' || pi_app_id || '','' || pi_app_page_id;',
'  end f_get_page_designer_url;',
'',
'',
'  function f_get_page_designer_link',
'  (',
'    pi_app_id           in number',
'   ,pi_app_page_id      in number',
'   ,pi_link_label       in varchar2 default ''edit''',
'   ,pi_open_in_new_page in number default 1',
'  ) return varchar2 is',
'    c_unit constant varchar2(1000) := $$plsql_unit || ''.f_get_page_designer_link'';',
'  begin',
'    return ''<a href="'' || f_get_page_designer_url(pi_app_id      => pi_app_id',
'                                                 ,pi_app_page_id => pi_app_page_id) || ''" '' || case when pi_open_in_new_page = 1 then ''target="blank"'' else '''' end || ''>'' || pi_link_label || ''</a>'';',
'  end f_get_page_designer_link;',
'',
'  -- %param pi_target_link f?p= APP_ID.:578: SESSION.:: DEBUG.:::',
'  -- %param pi_page_id ',
'  function f_get_page_id_from_target_link',
'  (',
'    pi_target_link                 in varchar2',
'   ,pi_page_id_when_target_is_null in number default null',
'  ) return number is',
'  ',
'  begin',
'    if pi_target_link is null',
'    then',
'      return pi_page_id_when_target_is_null;',
'    else',
'      return to_number( -- replace APP_PAGE_ID with own page_id',
'                       replace(',
'                               -- pi_target_link is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::',
'                               -- 578 has to be filtered for link target',
'                               substr(pi_target_link',
'                                     ,14',
'                                     ,instr(substr(pi_target_link',
'                                                  ,14)',
'                                           ,'':'') - 1)',
'                              ,''&'' || ''APP_PAGE_ID.''',
'                              ,pi_page_id_when_target_is_null));',
'    end if;',
'  end f_get_page_id_from_target_link;',
'',
'end av_general_pkg;',
'/'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(36635662461100812)
,p_script_id=>wwv_flow_imp.id(36635523234100810)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_GENERAL_PKG'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210922212149','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210922212149','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
