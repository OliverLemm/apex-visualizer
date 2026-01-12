create or replace package av_general_pkg is

  function f_get_page_designer_url
  (
    pi_app_id      in number
   ,pi_app_page_id in number
  ) return varchar2;

  function f_get_page_designer_link
  (
    pi_app_id           in number
   ,pi_app_page_id      in number
   ,pi_link_label       in varchar2 default 'edit'
   ,pi_open_in_new_page in number default 1
  ) return varchar2;

  function f_get_page_id_from_target_link
  (
    pi_target_link                 in varchar2
   ,pi_page_id_when_target_is_null in number default null
  ) return number;

  procedure p_qa_app_settings
  (
    pi_application_id            in apex_applications.application_id%type
   ,po_compatibility_mode        out apex_applications.compatibility_mode%type
   ,po_session_state_protection  out apex_applications.session_state_protection%type
   ,po_runtime_api_usage         out varchar2
   ,po_include_legacy_javascript out apex_appl_user_interfaces.include_legacy_javascript%type
   ,po_include_jquery_migrate    out apex_appl_user_interfaces.include_jquery_migrate%type
   ,po_theme_name                out apex_application_themes.theme_name%type
   ,po_theme_version             out apex_application_themes.version%type
  );

end av_general_pkg;
/
create or replace package body av_general_pkg is
  -- Example url for editing page 100 in application 347
  -- f?p=4000:4500:5354232430661:::1,4150:FB_FLOW_ID,FB_FLOW_PAGE_ID,F4000_P1_FLOW,F4000_P4150_GOTO_PAGE,F4000_P1_PAGE:347,100,347,100,100
  function f_get_page_designer_url
  (
    pi_app_id      in number
   ,pi_app_page_id in number
  ) return varchar2 is
    c_unit constant varchar2(1000) := $$plsql_unit || '.f_get_page_designer_url';
  begin
    return 'f?p=4000:4500:' || nv('APP_BUILDER_SESSION') || '::::FB_FLOW_ID,FB_FLOW_PAGE_ID:' || pi_app_id || ',' || pi_app_page_id;
  end f_get_page_designer_url;
  function f_get_page_designer_link
  (
    pi_app_id           in number
   ,pi_app_page_id      in number
   ,pi_link_label       in varchar2 default 'edit'
   ,pi_open_in_new_page in number default 1
  ) return varchar2 is
    c_unit constant varchar2(1000) := $$plsql_unit || '.f_get_page_designer_link';
  begin
    return '<a href="' || f_get_page_designer_url(pi_app_id      => pi_app_id
                                                 ,pi_app_page_id => pi_app_page_id) || '" ' || case when pi_open_in_new_page = 1 then 'target="blank"' else '' end || '>' || pi_link_label || '</a>';
  end f_get_page_designer_link;
  -- %param pi_target_link f?p= APP_ID.:578: SESSION.:: DEBUG.:::
  -- %param pi_page_id 
  function f_get_page_id_from_target_link
  (
    pi_target_link                 in varchar2
   ,pi_page_id_when_target_is_null in number default null
  ) return number is
  
  begin
    if pi_target_link is null
    then
      return pi_page_id_when_target_is_null;
    else
      return to_number( -- replace APP_PAGE_ID with own page_id
                       replace(
                               -- pi_target_link is like f?p= APP_ID.:578: SESSION.:: DEBUG.:::
                               -- 578 has to be filtered for link target
                               substr(pi_target_link
                                     ,14
                                     ,instr(substr(pi_target_link
                                                  ,14)
                                           ,':') - 1)
                              ,'&' || 'APP_PAGE_ID.'
                              ,pi_page_id_when_target_is_null));
    end if;
  
  exception
    when others then
      -- issue 13 - when javascript is in target link, return page_id
      return pi_page_id_when_target_is_null;
  end f_get_page_id_from_target_link;

  procedure p_qa_app_settings
  (
    pi_application_id            in apex_applications.application_id%type
   ,po_compatibility_mode        out apex_applications.compatibility_mode%type
   ,po_session_state_protection  out apex_applications.session_state_protection%type
   ,po_runtime_api_usage         out varchar2
   ,po_include_legacy_javascript out apex_appl_user_interfaces.include_legacy_javascript%type
   ,po_include_jquery_migrate    out apex_appl_user_interfaces.include_jquery_migrate%type
   ,po_theme_name                out apex_application_themes.theme_name%type
   ,po_theme_version             out apex_application_themes.version%type
  ) is
  begin
    begin
      select a.compatibility_mode
            ,a.session_state_protection
            ,case a.runtime_api_usage
               when 'T' then
                'This'
               when 'O' then
                'Other'
               when 'W' then
                'Workspace'
               else
                'None'
             end
      into po_compatibility_mode
          ,po_session_state_protection
          ,po_runtime_api_usage
      from apex_applications a
      where a.application_id = pi_application_id;
    exception
      when no_data_found then
        po_compatibility_mode       := 'NA';
        po_session_state_protection := 'NA';
        po_runtime_api_usage        := 'NA';
    end;
  
    begin
      select ui.include_legacy_javascript
            ,ui.include_jquery_migrate
      into po_include_legacy_javascript
          ,po_include_jquery_migrate
      from apex_appl_user_interfaces ui
      where ui.application_id = pi_application_id;
    exception
      when no_data_found then
        po_include_legacy_javascript := 'NA';
        po_include_jquery_migrate    := 'NA';
    end;
  
    begin
      select t.theme_name
            ,t.version
      into po_theme_name
          ,po_theme_version
      from apex_application_themes t
      where t.application_id = pi_application_id
      and t.is_current = 'Yes';
    exception
      when no_data_found then
        po_theme_name    := 'NA';
        po_theme_version := 'NA';
    end;
  
  end p_qa_app_settings;

end av_general_pkg;
/
