prompt --application/deployment/install/install_av_css_v
begin
--   Manifest
--     INSTALL: INSTALL-av_css_v
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(294519886086287092)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_css_v'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view av_css_v as',
'select application_name, application_id, page_id, page_name, component_name, case when css_code_length > 1000 then 0 else best_practice end best_practice,',
'css_code, css_code_length, css_code_type, component_type',
'from (',
'-- Theme Roller Custom CSS',
'select application_name, application_id, null page_id, null page_name, ''Theme Roller Custom CSS'' component_name, 1 best_practice,',
'to_char(substr(''na'',0,4000)) css_code, length(tf.file_content) css_code_length, ''theme_roller_custom_css'' css_code_type, ''custom_css'' component_type',
'from apex_application_theme_files tf',
'union',
'-- PAGE - Header Text',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,',
'to_char(substr(p.header_text,0,4000)) css_code, length(p.header_text) css_code_length, ''header_text'' css_code_type, ''page'' component_type',
'from apex_application_pages p where p.header_text is not null and instr(p.header_text, ''css'') > 0',
'union',
'-- PAGE - Body Header',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,',
'to_char(substr(p.body_header,0,4000)) css_code, length(p.body_header) css_code_length, ''body_header'' css_code_type, ''page'' component_type',
'from apex_application_pages p where p.body_header is not null and instr(p.body_header, ''css'') > 0',
'union',
'-- PAGE - Footer Text',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,',
'to_char(substr(p.footer_text,0,4000)) css_code, length(p.footer_text) css_code_length, ''footer_text'' css_code_type, ''page'' component_type',
'from apex_application_pages p where p.body_header is not null and instr(p.footer_text, ''css'') > 0',
'union',
'-- Page - Page CSS Classes',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 1 best_practice,',
'to_char(substr(p.page_css_classes,0,4000)) css_code, length(p.page_css_classes) css_code_length, ''page_css_classes'' css_code_type , ''page'' component_type',
'from apex_application_pages p where p.page_css_classes is not null',
'union',
'-- Page - Page HTML Header',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,',
'to_char(substr(p.page_html_header,0,4000)) css_code, length(p.page_html_header) css_code_length, ''page_html_header'' css_code_type, ''page'' component_type',
'from apex_application_pages p where p.page_html_header is not null and instr(p.page_html_header, ''css'') > 0',
'union',
'-- Page - Page HTML onload',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice, ',
'p.page_html_onload js_code, length(p.page_html_onload) css_code_length, ''page_html_onload'' js_code_type , ''page'' component_type',
'from apex_application_pages p where p.page_html_onload is not null and instr(p.page_html_onload, ''css'') > 0',
'union',
'-- Page - CSS file URLS',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,',
'to_char(css_file_urls) css_code, length(p.css_file_urls) css_code_length, ''css_file_urls'' css_code_type , ''page'' component_type',
'from apex_application_pages p where p.css_file_urls is not null',
'union',
'-- Page - inline CSS',
'select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 1 best_practice,',
'to_char(substr(inline_css,0,4000)) css_code, length(p.inline_css) css_code_length, ''inline_css'' css_code_type , ''page'' component_type',
'from apex_application_pages p where p.inline_css is not null',
'union',
'-- Region - Header Text',
'select application_name, p.application_id, p.page_id, p.page_name, p.region_name component_name, 0 best_practice,',
'to_char(substr(p.region_header_text,0,4000)) css_code, length(p.region_header_text) css_code_length, ''region_header_text'' css_code_type , ''region'' component_type',
'from apex_application_page_regions p where p.region_header_text is not null and instr(lower(p.region_header_text),''css'') > 0',
'union',
'-- Region - Footer Text',
'select application_name, p.application_id, p.page_id, p.page_name, p.region_name component_name, 0 best_practice,',
'to_char(substr(p.region_footer_text,0,4000)) css_code, length(p.region_footer_text) css_code_length, ''region_footer_text'' css_code_type , ''region'' component_type',
'from apex_application_page_regions p where p.region_header_text is not null and instr(lower(p.region_footer_text),''css'') > 0',
'union',
'-- Dynamic Actions - set CSS',
'select d.application_name, d.application_id, d.page_id, d.page_name, d.dynamic_action_name component_name, 1 best_practice,',
'a.attribute_01 || '' '' || a.attribute_02 css_code, length(a.attribute_01 || '' '' || a.attribute_02) css_code_length, lower(a.action_code) css_code_type, ''dynamic_action'' component_type',
'from apex_application_page_da d join apex_application_page_da_acts a on a.dynamic_action_id = d.dynamic_action_id',
'where a.action_code = ''NATIVE_SET_CSS''',
'union',
'-- Dynamic Actions - add Class',
'select d.application_name, d.application_id, d.page_id, d.page_name, d.dynamic_action_name component_name, 1 best_practice, ',
'a.attribute_01 css_code, length(a.attribute_01) css_code_length, lower(a.action_code) css_code_type, ''dynamic_action'' component_type',
'from apex_application_page_da_acts d join apex_application_page_da_acts a on a.dynamic_action_id = d.dynamic_action_id',
'where a.action_code = ''NATIVE_ADD_CLASS''',
');',
''))
);
wwv_flow_api.component_end;
end;
/
