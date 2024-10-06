prompt --application/shared_components/user_interface/templates/region/title_bar
begin
--   Manifest
--     REGION TEMPLATE: TITLE_BAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(472871837602347701)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2703016498287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2703511695287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2704025028287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2704531698287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2705018166287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2705555505287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2706025227287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2706569992287092)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2707002957287093)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2707547980287093)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2708083144287093)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2708509299287093)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2709065055287093)
,p_plug_template_id=>wwv_flow_imp.id(472871837602347701)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>false
);
wwv_flow_imp.component_end;
end;
/
