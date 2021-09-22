create or replace view av_javascript_v as
select app.application_id
      ,app.application_name
      ,app.page_id
      ,app.page_name
      ,apex_escape.html(av_general_pkg.f_get_page_designer_url(pi_app_id      => app.application_id
                                                              ,pi_app_page_id => app.page_id)) page_designer_url
      ,nvl(app.page_group
          ,'no page group') page_group
      ,app.page_function
      ,j.component_name
      ,j.component_type
      ,j.js_code_type
      ,case
         when length(j.js_code_clob) > 1000 then
          0
         else
          j.best_practice
       end best_practice
      ,j.js_code_vc2 js_code -- only for backwards compatibility
      ,j.js_code_vc2
      ,j.js_code_clob
      ,'<b>' || j.component_name || ' (' || j.component_type || ' - ' || js_code_type || ')</b><br>' || j.js_code_clob tooltip
      ,regexp_count(j.js_code_clob
                   ,chr(10)) + 1 js_code_lines
      ,length(j.js_code_clob) js_code_length
from apex_application_pages app
join ( -- Page HTML Header
      select p.application_id
             ,p.page_id
             ,p.page_name component_name
             ,'page' component_type
             ,'page_html_header' js_code_type
             ,0 best_practice
             ,to_char(substr(p.page_html_header
                            ,0
                            ,3900)) js_code_vc2
             ,p.page_html_header js_code_clob
      from apex_application_pages p
      where p.page_html_header is not null
      and instr(p.page_html_header
              ,'<script') > 0
      union all
      -- Page HTML onload
      select p.application_id
             ,p.page_id
             ,p.page_name component_name
             ,'page' component_type
             ,'page_html_onload' js_code_type
             ,0 best_practice
             ,p.page_html_onload js_code_vc2
             ,to_clob(p.page_html_onload) js_code_clob
      from apex_application_pages p
      where p.page_html_onload is not null
      and instr(p.page_html_onload
              ,'<script') > 0
      union all
      -- Page Javascript Code
      select p.application_id
             ,p.page_id
             ,p.page_name component_name
             ,'page' component_type
             ,'javascript_code' js_code_type
             ,1 best_practice
             ,to_char(substr(p.javascript_code
                            ,0
                            ,3900)) js_code_vc2
             ,p.javascript_code js_code_clob
      from apex_application_pages p
      where p.javascript_code is not null
      union all
      -- Page Javascript Code onload
      select p.application_id
             ,p.page_id
             ,p.page_name component_name
             ,'page' component_type
             ,'javascript_code_onload' js_code_type
             ,1 best_practice
             ,to_char(substr(p.javascript_code_onload
                            ,0
                            ,3900)) js_code_vc2
             ,p.javascript_code_onload js_code_clob
      from apex_application_pages p
      where p.javascript_code_onload is not null
      union all
      -- Region - Header Text
      select pr.application_id
             ,pr.page_id
             ,pr.region_name component_name
             ,'region' component_type
             ,'region_header_text' js_code_type
             ,0 best_practice
             ,pr.region_header_text js_code_vc2
             ,to_clob(pr.region_header_text) js_code_clob
      from apex_application_page_regions pr
      where pr.region_header_text is not null
      and instr(lower(pr.region_header_text)
              ,'<script') > 0
      union all
      -- Region - Footer Text
      select pr.application_id
             ,pr.page_id
             ,pr.region_name component_name
             ,'region' component_type
             ,'region_footer_text' js_code_type
             ,0 best_practice
             ,pr.region_footer_text js_code_vc2
             ,to_clob(pr.region_footer_text) js_code_clob
      from apex_application_page_regions pr
      where pr.region_footer_text is not null
      and instr(lower(pr.region_footer_text)
              ,'<script') > 0
      union all
      -- Dynamic Actions - JavaScript Expression
      select pd.application_id
             ,pd.page_id
             ,pd.dynamic_action_name component_name
             ,'dynamic_action' component_type
             ,'when_element' js_code_type
             ,1 best_practice
             ,pd.when_element js_code_vc2
             ,to_clob(pd.when_element) js_code_clob
      from apex_application_page_da pd
      where pd.when_selection_type_code = 'JAVASCRIPT_EXPRESSION'
      union all
      -- Dynamic Actions - JavaScript Code
      select pda.application_id
             ,pda.page_id
             ,pda.dynamic_action_name component_name
             ,'dynamic_action' component_type
             ,'native_javascript_code' js_code_type
             ,1 best_practice
             ,pda.attribute_01 js_code_vc2
             ,to_clob(pda.attribute_01) js_code_clob
      from apex_application_page_da_acts pda
      where pda.action_code = 'NATIVE_JAVASCRIPT_CODE'
      -- Buttons
      union all
      select b.application_id
             ,b.page_id
             ,b.button_name component_name
             ,'button' component_type
             ,'redirect_url' js_code_type
             ,1 best_practice
             ,b.redirect_url js_code_vc
             ,to_clob(b.redirect_url) js_code_clob
      from apex_application_page_buttons b
      where lower(b.redirect_url) like '%javascript:%') j on j.application_id = app.application_id
                                                      and j.page_id = app.page_id;
