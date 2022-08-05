prompt --application/deployment/install/install_av_css_v
begin
--   Manifest
--     INSTALL: INSTALL-av_css_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.3'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(143655838191166975)
,p_install_id=>wwv_flow_imp.id(294519018125278192)
,p_name=>'av_css_v'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_CSS_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_DESIGNER_URL", "PAGE_GROUP", "PAGE_FUNCTION", "COMPONENT_NAME", "COMPONENT_TYPE", "CSS_CODE_TYPE", "BEST_PRACTICE", "CSS_CODE", "'
||'CSS_CODE_VC2", "CSS_CODE_CLOB", "TOOLTIP", "CSS_CODE_LINES", "CSS_CODE_LENGTH") AS ',
'  select app.application_id',
'      ,app.application_name',
'      ,app.page_id',
'      ,app.page_name',
'      ,av_general_pkg.f_get_page_designer_url(pi_app_id      => app.application_id',
'                                             ,pi_app_page_id => app.page_id) page_designer_url',
'      ,nvl(app.page_group',
'          ,''no page group'') page_group',
'      ,app.page_function',
'      ,c.component_name',
'      ,c.component_type',
'      ,c.css_code_type',
'      ,case',
'         when length(c.css_code_clob) > 1000 then',
'          0',
'         else',
'          c.best_practice',
'       end best_practice',
'      ,c.css_code_vc2 css_code -- only for backward compatibility',
'      ,c.css_code_vc2',
'      ,c.css_code_clob',
'      ,''<b>'' || c.component_name || '' ('' || c.component_type || '' - '' || c.css_code_type || '')</b><br>'' || c.css_code_vc2 tooltip',
'      ,regexp_count(c.css_code_clob',
'                   ,chr(10)) + 1 css_code_lines',
'      ,length(c.css_code_clob) css_code_length',
'from apex_application_pages app',
'join ( -- Theme Roller Custom CSS',
'      select application_id',
'             ,0 page_id',
'             ,''Theme Roller Custom CSS'' component_name',
'             ,1 best_practice',
'             ,cast(substr(to_clob(tf.file_content)',
'                         ,0',
'                         ,3900) as varchar2(4000)) css_code_vc2',
'             ,to_clob(tf.file_content) css_code_clob',
'             ,''theme_roller_custom_css'' css_code_type',
'             ,''custom_css'' component_type',
'      from apex_application_theme_files tf',
'      union all',
'      -- PAGE - Header Text',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,0 best_practice',
'             ,p.header_text css_code_vc2',
'             ,to_clob(p.header_text) css_code_clob',
'             ,''header_text'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.header_text is not null',
'      and instr(p.header_text',
'              ,''css'') > 0',
'      union all',
'      -- PAGE - Body Header',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,0 best_practice',
'             ,p.body_header css_code',
'             ,to_clob(p.body_header) css_code_clob',
'             ,''body_header'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.body_header is not null',
'      and instr(p.body_header',
'              ,''css'') > 0',
'      union all',
'      -- PAGE - Footer Text',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,0 best_practice',
'             ,p.footer_text css_code_vc2',
'             ,to_clob(p.footer_text) css_code_clob',
'             ,''footer_text'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.body_header is not null',
'      and instr(p.footer_text',
'              ,''css'') > 0',
'      union all',
'      -- Page - Page CSS Classes',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,1 best_practice',
'             ,p.page_css_classes css_code_vc2',
'             ,to_clob(p.page_css_classes) css_code_clob',
'             ,''page_css_classes'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.page_css_classes is not null',
'      union all',
'      -- Page - Page HTML Header',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,0 best_practice',
'             ,to_char(substr(p.page_html_header',
'                            ,0',
'                            ,3900)) css_code_vc2',
'             ,to_clob(p.page_html_header) css_code_clob',
'             ,''page_html_header'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.page_html_header is not null',
'      and instr(p.page_html_header',
'              ,''css'') > 0',
'      union all',
'      -- Page - Page HTML onload',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,0 best_practice',
'             ,p.page_html_onload css_code',
'             ,to_clob(p.page_html_onload) css_code_clob',
'             ,''page_html_onload'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.page_html_onload is not null',
'      and instr(p.page_html_onload',
'              ,''css'') > 0',
'      union all',
'      -- Page - CSS file URLS',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,1 best_practice',
'             ,css_file_urls css_code_vc2',
'             ,to_clob(css_file_urls) css_code_clob',
'             ,''css_file_urls'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.css_file_urls is not null',
'      union all',
'      -- Page - inline CSS',
'      select p.application_id',
'             ,p.page_id',
'             ,p.page_name component_name',
'             ,1 best_practice',
'             ,to_char(substr(inline_css',
'                            ,0',
'                            ,3900)) css_code_vc2',
'             ,p.inline_css css_code_clob',
'             ,''inline_css'' css_code_type',
'             ,''page'' component_type',
'      from apex_application_pages p',
'      where p.inline_css is not null',
'      union all',
'      -- Region - grid_column_css_classes',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,1 best_practice',
'             ,pr.grid_column_css_classes css_code_vc2',
'             ,to_clob(pr.grid_column_css_classes) css_code_clob',
'             ,''grid_column_css_classes'' css_code_type',
'             ,''region'' component_type',
'      from apex_application_page_regions pr',
'      where pr.grid_column_css_classes is not null',
'      union all',
'      -- Region - region_css_classes',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,1 best_practice',
'             ,pr.region_css_classes css_code_vc2',
'             ,to_clob(pr.region_css_classes) css_code_clob',
'             ,''region_css_classes'' css_code_type',
'             ,''region'' component_type',
'      from apex_application_page_regions pr',
'      where pr.region_css_classes is not null',
'      union all',
'      -- Region - icon_css_classes',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,1 best_practice',
'             ,pr.icon_css_classes css_code_vc2',
'             ,to_clob(pr.icon_css_classes) css_code_clob',
'             ,''icon_css_classes'' css_code_type',
'             ,''region'' component_type',
'      from apex_application_page_regions pr',
'      where pr.icon_css_classes is not null',
'      union all',
'      -- Region - Header Text',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,0 best_practice',
'             ,pr.region_header_text css_code_vc2',
'             ,to_clob(pr.region_header_text) css_code_clob',
'             ,''region_header_text'' css_code_type',
'             ,''region'' component_type',
'      from apex_application_page_regions pr',
'      where pr.region_header_text is not null',
'      and instr(lower(pr.region_header_text)',
'              ,''css'') > 0',
'      union all',
'      -- Region - Footer Text',
'      select pr.application_id',
'             ,pr.page_id',
'             ,pr.region_name component_name',
'             ,0 best_practice',
'             ,pr.region_footer_text css_code_vc2',
'             ,to_clob(pr.region_footer_text) css_code_clob',
'             ,''region_footer_text'' css_code_type',
'             ,''region'' component_type',
'      from apex_application_page_regions pr',
'      where pr.region_header_text is not null',
'      and instr(lower(pr.region_footer_text)',
'              ,''css'') > 0',
'      union all',
'      -- Dynamic Actions - set CSS',
'      select d.application_id',
'             ,d.page_id',
'             ,d.dynamic_action_name component_name',
'             ,1 best_practice',
'             ,a.attribute_01 || '' '' || a.attribute_02 css_code_vc2',
'             ,to_clob(a.attribute_01 || '' '' || a.attribute_02) css_code_clob',
'             ,lower(a.action_code) css_code_type',
'             ,''dynamic_action'' component_type',
'      from apex_application_page_da d',
'      join apex_application_page_da_acts a on a.dynamic_action_id = d.dynamic_action_id',
'      where a.action_code = ''NATIVE_SET_CSS''',
'      union all',
'      -- Dynamic Actions - add Class',
'      select d.application_id',
'             ,d.page_id',
'             ,d.dynamic_action_name component_name',
'             ,1 best_practice',
'             ,a.attribute_01 css_code_vc2',
'             ,to_clob(a.attribute_01) css_code_clob',
'             ,lower(a.action_code) css_code_type',
'             ,''dynamic_action'' component_type',
'      from apex_application_page_da_acts d',
'      join apex_application_page_da_acts a on a.dynamic_action_id = d.dynamic_action_id',
'      where a.action_code = ''NATIVE_ADD_CLASS'') c on c.application_id = app.application_id',
'                                              and c.page_id = app.page_id',
';',
'',
''))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(143655908421166976)
,p_script_id=>wwv_flow_imp.id(143655838191166975)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_CSS_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210125212736','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210125212736','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
