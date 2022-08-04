prompt --application/deployment/install/install_av_p0200_css_code_by_page_v
begin
--   Manifest
--     INSTALL: INSTALL-av_p0200_css_code_by_page_v
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.8'
,p_default_workspace_id=>125633378786110814
,p_default_application_id=>347
,p_default_id_offset=>125634094441118325
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(145013191338565770)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_p0200_css_code_by_page_v'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0200_CSS_CODE_BY_PAGE_V" ("APPLICATION_ID", "PAGE_ID", "PAGE_NAME_AND_ID", "PAGE_GROUP", "PAGE_FUNCTION", "BEST_PRACTICE", "COMPONENTS_COUNT", "CODE_LENGTH_SUM", "CODE_LINES_SUM", "TOOLTIP") AS ',
'  select application_id',
'      ,page_id',
'      ,page_name || '' ('' || page_id || '')'' page_name_and_id',
'      ,page_group',
'      ,page_function',
'      ,best_practice',
'      ,components_count',
'      ,code_length_sum',
'      ,code_lines_sum',
'      ,''<table>'' || --',
'       ''<tr><td>page name</td><td>'' || page_name || ''</td></tr>'' || --',
'       ''<tr><td>page id</td><td>'' || page_id || ''</td></tr>'' || --',
'       ''<tr><td>page group</td><td>'' || page_group || ''</td></tr>'' || --',
'       ''<tr><td>page function</td><td>'' || page_function || ''</td></tr>'' || --',
'       ''<tr><td>number of css components</td><td>'' || components_count || ''</td></tr>'' || --',
'       ''<tr><td>overall lines of css code</td><td>'' || code_lines_sum || ''</td></tr>'' || --',
'       ''<tr><td>overall character of css code</td><td>'' || code_length_sum || ''</td></tr>'' || --',
'       ''</table>'' tooltip',
'from (select distinct application_id',
'                     ,page_id',
'                     ,page_name',
'                     ,page_group',
'                     ,page_function',
'                     ,best_practice',
'                     ,count(*) over(partition by application_id, page_id) components_count',
'                     ,sum(css_code_length) over(partition by application_id, page_id) code_length_sum',
'                     ,sum(css_code_lines) over(partition by application_id, page_id) code_lines_sum',
'      from av_css_v)',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(145013290061565770)
,p_script_id=>wwv_flow_api.id(145013191338565770)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_P0200_CSS_CODE_BY_PAGE_V'
,p_last_updated_by=>'OLEMM'
,p_last_updated_on=>to_date('20210129124043','YYYYMMDDHH24MISS')
,p_created_by=>'OLEMM'
,p_created_on=>to_date('20210129124043','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
