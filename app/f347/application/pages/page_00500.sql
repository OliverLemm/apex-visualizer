prompt --application/pages/page_00500
begin
--   Manifest
--     PAGE: 00500
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_page.create_page(
 p_id=>500
,p_name=>'Links'
,p_alias=>'LINKS'
,p_step_title=>'Links'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(58068369767606090)
,p_name=>'Links to Page'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PAGE_ID,',
'       PAGE_NAME,',
'       PAGE_GROUP,',
'       LINK_TYPE,',
'       LINK_NAME,',
'       LINK_LABEL,',
'       LINK_PAGE_ID',
'  from AV_PAGE_LINKS_V',
' where application_id = :P0_APP_ID and',
'(:P0_PAGE_ID is null or :P0_PAGE_ID = link_page_id)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_imp.id(311726863352029995)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685449539903331)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685573437903332)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685605602903333)
,p_query_column_id=>3
,p_column_alias=>'PAGE_GROUP'
,p_column_display_sequence=>30
,p_column_heading=>'Page Group'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685709345903334)
,p_query_column_id=>4
,p_column_alias=>'LINK_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Link Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685885226903335)
,p_query_column_id=>5
,p_column_alias=>'LINK_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Link Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62685977184903336)
,p_query_column_id=>6
,p_column_alias=>'LINK_LABEL'
,p_column_display_sequence=>60
,p_column_heading=>'Link Label'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686008690903337)
,p_query_column_id=>7
,p_column_alias=>'LINK_PAGE_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Link Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(59245254577518454)
,p_name=>'Links from Page'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PAGE_ID,',
'       PAGE_NAME,',
'       LINK_TYPE,',
'       LINK_NAME,',
'       LINK_LABEL,',
'       LINK_PAGE_ID',
'  from AV_PAGE_LINKS_V',
' where application_id = :P0_APP_ID ',
' and (:P0_PAGE_ID is null or :P0_PAGE_ID = page_id)',
' and page_id <> coalesce(link_page_id,-1)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_lazy_loading=>true
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>99999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686235610903339)
,p_query_column_id=>1
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686394624903340)
,p_query_column_id=>2
,p_column_alias=>'PAGE_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Page Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686570818903342)
,p_query_column_id=>3
,p_column_alias=>'LINK_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Link Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686689382903343)
,p_query_column_id=>4
,p_column_alias=>'LINK_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Link Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686719789903344)
,p_query_column_id=>5
,p_column_alias=>'LINK_LABEL'
,p_column_display_sequence=>60
,p_column_heading=>'Link Label'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62686844975903345)
,p_query_column_id=>6
,p_column_alias=>'LINK_PAGE_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Link Page Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62687002037903347)
,p_plug_name=>'Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'AV_PAGE_LINKS_V'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'application_id = :P0_APP_ID and',
'(:P0_PAGE_ID is null or :P0_PAGE_ID = link_page_id)'))
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_ajax_items_to_submit=>'P0_APP_ID,P0_PAGE_ID'
,p_required_patch=>wwv_flow_imp.id(311726863352029995)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'icon_type_css_class', 'a-Icon',
  'node_id_column', 'PAGE_ID',
  'node_label_column', 'PAGE_NAME',
  'order_siblings_by', 'PAGE_NAME',
  'parent_key_column', 'LINK_PAGE_ID',
  'start_tree_with', 'NULL',
  'tree_hierarchy', 'SQL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62687154705903348)
,p_plug_name=>'D3 Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'nodes AS ( --> START YOUR NODES QUERY HERE',
'  SELECT XMLELEMENT( "nodes", xmlattributes(',
'         l.page_id    AS id',
'       , l.page_name  AS label',
'       , 1            AS sizevalue',
'       , l.page_id    AS colorvalue',
'       , l.page_name || '' - '' || page_id  AS colorlabel    -- optional, used for the graph legend',
'     --, ''http://...'' AS link          -- optional',
'     --, ''some text''  AS infostring    -- optional, rendered as tooltip',
'     --, ''false''      AS labelcircular -- optional, overwrites the global labelsCircular',
'     --, ''http://...'' AS image         -- optional, background image for a node instead of a fill color',
'     --, ''true''       AS "fixed"       -- optional | fixed, x and y are native D3 attributes',
'     --, 100          AS "x"           -- optional | they must be lowercase',
'     --, 100          AS "y"           -- optional | you can predefine a layout with these attributes',
'         ) ) AS xml_nodes',
'    FROM av_page_links_v l ',
'    where l.application_id = :P0_APP_ID --< STOP YOUR NODES QUERY HERE',
'),',
'links AS ( --> START YOUR LINKS QUERY HERE',
'  SELECT XMLELEMENT( "links", xmlattributes(',
'         l.page_id      AS fromid',
'        ,l.link_page_id AS toid',
'     --, ''dashed''       AS style       -- optional, can be solid (default), dotted or dashed',
'     --, ''red''          AS color       -- optional, must be a HTML color code like green or #00ff00',
'     --, ''some text''    AS infostring  -- optional, rendered as tooltip',
'         ) ) AS xml_links',
'    FROM av_page_links_v l ',
'    where l.page_id <> coalesce(l.link_page_id,-1)',
'    and l.application_id = :P0_APP_ID --< STOP YOUR LINKS QUERY HERE',
')',
'SELECT XMLSERIALIZE( DOCUMENT( XMLELEMENT( "data",',
'        ( SELECT XMLAGG( xml_nodes ) FROM nodes ),',
'        ( SELECT XMLAGG( xml_links ) FROM links ) ) ) INDENT ) AS single_clob_result',
'  FROM DUAL'))
,p_plug_source_type=>'PLUGIN_NET.GOBRECHTS.D3.FORCE'
,p_ajax_items_to_submit=>'P0_APP_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "width": 1000,',
    '  "height": 666.6666666666666,',
    '  "transform": {',
    '    "translate": [',
    '      109.12512502182429,',
    '      80.2006741692939',
    '    ],',
    '    "scale": 0.7902975555470355',
    '  }',
    '}')))).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59245008625518452)
,p_name=>'change P0_APP_ID,P0_PAGE_ID - refresh Regions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_APP_ID,P0_PAGE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59245089701518453)
,p_event_id=>wwv_flow_imp.id(59245008625518452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58068369767606090)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59246226324518464)
,p_event_id=>wwv_flow_imp.id(59245008625518452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(59245254577518454)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62687289975903349)
,p_event_id=>wwv_flow_imp.id(59245008625518452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62687154705903348)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
