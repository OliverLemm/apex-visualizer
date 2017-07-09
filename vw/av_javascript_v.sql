create or replace view av_javascript_v as
select application_name, application_id, page_id, page_name, component_name, case when js_code_length > 1000 then 0 else best_practice end best_practice,
js_code, js_code_length, js_code_type, component_type
from (
-- Page HTML Header
select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,
to_char(substr(p.page_html_header,0,4000)) js_code, length(p.page_html_header) js_code_length, 'page_html_header' js_code_type, 'page' component_type
from apex_application_pages p where p.page_html_header is not null and instr(p.page_html_header, '<script') > 0
union
-- Page HTML onload
select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 0 best_practice,
p.page_html_onload js_code, length(p.page_html_onload) js_code_length, 'page_html_onload' js_code_type , 'page' component_type
from apex_application_pages p where p.page_html_onload is not null and instr(p.page_html_onload, '<script') > 0
union
-- Page Javascript Code
select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 1 best_practice,
to_char(substr(p.javascript_code,0,4000)) js_code, length(p.javascript_code) js_code_length, 'javascript_code' js_code_type , 'page' component_type
from apex_application_pages p where p.javascript_code is not null
union
-- Page Javascript Code onload
select application_name, p.application_id, p.page_id, p.page_name, p.page_name component_name, 1 best_practice,
to_char(substr(p.javascript_code_onload,0,4000)) js_code, length(p.javascript_code_onload) js_code_length, 'javascript_code_onload' js_code_type , 'page' component_type
from apex_application_pages p where p.javascript_code_onload is not null
union
-- Region - Header Text
select application_name, p.application_id, p.page_id, p.page_name, p.region_name component_name, 0 best_practice,
to_char(substr(p.region_header_text,0,4000)) js_code, length(p.region_header_text) js_code_length, 'region_header_text' js_code_type , 'region' component_type
from apex_application_page_regions p where p.region_header_text is not null and instr(lower(p.region_header_text),'<script') > 0
union
-- Region - Footer Text
select application_name, p.application_id, p.page_id, p.page_name, p.region_name component_name, 0 best_practice,
to_char(substr(p.region_footer_text,0,4000)) js_code, length(p.region_footer_text) js_code_length, 'region_footer_text' js_code_type , 'region' component_type
from apex_application_page_regions p where p.region_header_text is not null and instr(lower(p.region_footer_text),'<script') > 0
union
-- Dynamic Actions - JavaScript Expression
select application_name, p.application_id, p.page_id, p.page_name, p.dynamic_action_name component_name, 1 best_practice,
p.when_element js_code, length(p.when_element) js_code_length, 'when_element' js_code_type, 'dynamic_action' component_type
from apex_application_page_da p where p.when_selection_type_code = 'JAVASCRIPT_EXPRESSION'
union
-- Dynamic Actions - JavaScript Code
select application_name, p.application_id, p.page_id, p.page_name, p.dynamic_action_name component_name, 1 best_practice,
p.attribute_01 js_code, length(p.attribute_01) js_code_length, 'native_javascript_code' js_code_type, 'dynamic_action' component_type
from apex_application_page_da_acts p where p.action_code = 'NATIVE_JAVASCRIPT_CODE'
-- Buttons
union
select b.application_name, b.application_id, b.page_id, b.page_name, b.BUTTON_NAME component_name, 1 best_practice
, b.redirect_url js_code, length(b.redirect_url) js_code_length, 'redirect_url' js_code_type, 'button' component_type
from apex_application_page_buttons b where lower(b.redirect_url) like '%javascript:%'
)
;
