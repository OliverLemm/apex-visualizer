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

end av_general_pkg;
/
