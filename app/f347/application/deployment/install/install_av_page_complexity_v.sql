prompt --application/deployment/install/install_av_page_complexity_v
begin
--   Manifest
--     INSTALL: INSTALL-av_page_complexity_v
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(41113294940744258)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_page_complexity_v'
,p_sequence=>170
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGE_COMPLEXITY_V" ("APPLICATION_ID", "PAGE_ID", "COUNT_OBJECTS", "COMPLEXITY") AS ',
'  select p.application_id,',
'       p.page_id,',
'       sum(nvl(c.counts,0)) count_objects,',
'       case',
'         when sum(nvl(c.counts,0)) < 15 then ''simple''',
'         when sum(nvl(c.counts,0)) < 50 then ''normal''',
'         when sum(nvl(c.counts,0)) < 100 then ''complex''',
'         else ''very complex''',
'       end complexity',
'from apex_application_pages p',
'left join (select i1.application_id, i1.page_id, count(1) counts from apex_application_page_items i1 group by i1.application_id, i1.page_id',
'           union all',
'           select r1.application_id, r1.page_id, count(1) counts from apex_application_page_regions r1 group by r1.application_id, r1.page_id',
'           union all',
'           select b1.application_id, b1.page_id, count(1) counts from apex_application_page_buttons b1 group by b1.application_id, b1.page_id',
'           union all',
'           select p1.application_id, p1.page_id, count(1) counts from apex_application_page_proc p1 group by p1.application_id, p1.page_id',
'           union all',
'           select d1.application_id, d1.page_id, count(1) counts from apex_application_page_da_acts d1 group by d1.application_id, d1.page_id',
'           union all',
'           select c1.application_id, c1.page_id, count(1) counts from apex_application_page_comp c1 group by c1.application_id, c1.page_id',
'           union all',
'           select br1.application_id, br1.page_id, count(1) counts from apex_application_page_branches br1 group by br1.application_id, br1.page_id',
'           ) c on c.application_id = p.application_id and c.page_id = p.page_id',
'group by p.application_id, p.page_id',
';'))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(41113460691744263)
,p_script_id=>wwv_flow_imp.id(41113294940744258)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'AV_PAGE_COMPLEXITY_V'
);
wwv_flow_imp.component_end;
end;
/
