prompt --application/deployment/install/install_av_components_v
begin
--   Manifest
--     INSTALL: INSTALL-av_components_v
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
 p_id=>wwv_flow_api.id(294519683661285858)
,p_install_id=>wwv_flow_api.id(294519018125278192)
,p_name=>'av_components_v'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view av_components_v as',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''regions'' component, regions amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''items'' component, items amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''buttons'' component, buttons amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''computations'' component, computations amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''validations'' component, validations amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''processes'' component, processes amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''branches'' component, branches amount',
'from apex_application_pages',
'union',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''dynamic_actions'' component, count(1) amount',
'from apex_application_page_da group by application_name, application_id, page_id,page_name;',
''))
);
wwv_flow_api.component_end;
end;
/
