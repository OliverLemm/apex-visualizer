prompt --application/deployment/install/install_av_applications_v
begin
--   Manifest
--     INSTALL: INSTALL-av_applications_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(164062689573034752)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_applications_v'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_APPLICATIONS_V" ("APPLICATION_NAME", "APPLICATION_ID", "PAGE_FUNCTION", "PAGE_ID") AS ',
'  select p.application_name',
'      ,p.application_id',
'      ,case p.page_function',
'         when ''Unknown'' then',
'          max(r.source_type)',
'         else',
'          page_function',
'       end page_function',
'      ,p.page_id',
'from apex_application_pages p',
'join apex_application_page_regions r on r.application_id = p.application_id',
'                                 and p.page_id = r.page_id',
'group by p.application_name',
'        ,p.application_id',
'        ,p.page_id',
'        ,page_function',
'order by p.application_id',
'        ,p.page_id',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(164062816260034755)
,p_script_id=>wwv_flow_imp.id(164062689573034752)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_APPLICATIONS_V'
);
wwv_flow_imp.component_end;
end;
/
