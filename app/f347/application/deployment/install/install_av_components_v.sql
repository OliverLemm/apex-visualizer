prompt --application/deployment/install/install_av_components_v
begin
--   Manifest
--     INSTALL: INSTALL-av_components_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164063701828043594)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_components_v'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_COMPONENTS_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_ID", "PAGE_NAME", "PAGE", "COMPONENT", "AMOUNT") AS ',
'  select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''regions'' component, regions amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''items'' component, items amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''buttons'' component, buttons amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''computations'' component, computations amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''validations'' component, validations amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''processes'' component, processes amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''branches'' component, branches amount',
'from apex_application_pages',
'union all',
'select application_name, application_id, page_id, page_name, page_id || '' '' || page_name page, ''dynamic_actions'' component, count(1) amount',
'from apex_application_page_da',
'group by application_name, application_id, page_id,page_name',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164063849111043596)
,p_script_id=>wwv_flow_imp.id(164063701828043594)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_COMPONENTS_V'
);
wwv_flow_imp.component_end;
end;
/
