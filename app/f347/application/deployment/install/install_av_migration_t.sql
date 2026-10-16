prompt --application/deployment/install/install_av_migration_t
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_t
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'create or replace type av_migration_t force as object'||wwv_flow.LF||
'('||wwv_flow.LF||
'-- Author  : oliver lemm'||wwv_flow.LF||
'-- Created : 07.01.';
wwv_flow_imp.g_varchar2_table(2) := '2024'||wwv_flow.LF||
'-- Purpose : type for migration table function'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Attributes'||wwv_flow.LF||
'  apex_version             varcha';
wwv_flow_imp.g_varchar2_table(3) := 'r2(20 char), -- 23.2,23.1,22.2,...'||wwv_flow.LF||
'  rn_type                  varchar(20 char), -- new feature,depre';
wwv_flow_imp.g_varchar2_table(4) := 'cated,desupported'||wwv_flow.LF||
'  rn_chapter_no            varchar2(10 char), -- 6.1.1,7.1.2,...'||wwv_flow.LF||
'  rn_chapter_name';
wwv_flow_imp.g_varchar2_table(5) := '          varchar2(100 char), -- Post Calculation for Page Items Deprecated,apexrefresh Event is Dep';
wwv_flow_imp.g_varchar2_table(6) := 'recated'||wwv_flow.LF||
'  rn_chapter_text          varchar2(4000 char), -- Text from the releasenotes'||wwv_flow.LF||
'  rn_chapter_l';
wwv_flow_imp.g_varchar2_table(7) := 'ink          varchar2(4000 char), -- Link to Releasenotes'||wwv_flow.LF||
'  check_integrated         number, -- 1 ye';
wwv_flow_imp.g_varchar2_table(8) := 's / 0 no'||wwv_flow.LF||
'  check_needed             number, -- 1 yes / 0 no'||wwv_flow.LF||
'  attribute_value          varchar2(4000';
wwv_flow_imp.g_varchar2_table(9) := '), -- value of setting or attribute'||wwv_flow.LF||
'  migration_effort_in_days number, -- effort to solve one findin';
wwv_flow_imp.g_varchar2_table(10) := 'g in days'||wwv_flow.LF||
'  migration_priority       number, -- 1 (critical / must), 2 (important / should), 3 (reco';
wwv_flow_imp.g_varchar2_table(11) := 'mmed), 4 (optional / best practices)'||wwv_flow.LF||
'  app_id                   number,'||wwv_flow.LF||
'  page_id                  n';
wwv_flow_imp.g_varchar2_table(12) := 'umber,'||wwv_flow.LF||
'  page_name                varchar2(200 char),'||wwv_flow.LF||
'  component_name           varchar2(200 char),';
wwv_flow_imp.g_varchar2_table(13) := ''||wwv_flow.LF||
'  component_type           varchar2(200 char), -- Page, Region, Item, Dynamic Action, Page Process'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(14) := '  region_name              varchar2(200 char),'||wwv_flow.LF||
'  item_name                varchar2(200 char),'||wwv_flow.LF||
'  item';
wwv_flow_imp.g_varchar2_table(15) := '_label               varchar2(200 char),'||wwv_flow.LF||
'  js_code_vc2              varchar2(4000),'||wwv_flow.LF||
'  plsql_code_vc2';
wwv_flow_imp.g_varchar2_table(16) := '           varchar2(4000),'||wwv_flow.LF||
'  css_code_vc2             varchar2(4000),'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Constructors'||wwv_flow.LF||
'  constructor';
wwv_flow_imp.g_varchar2_table(17) := ' function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type               ';
wwv_flow_imp.g_varchar2_table(18) := '   in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varchar2';
wwv_flow_imp.g_varchar2_table(19) := ''||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_check_i';
wwv_flow_imp.g_varchar2_table(20) := 'ntegrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in number'||wwv_flow.LF||
'   ,i_attribute_value          ';
wwv_flow_imp.g_varchar2_table(21) := 'in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'   ,i_';
wwv_flow_imp.g_varchar2_table(22) := 'app_id                   number'||wwv_flow.LF||
'  ) return self as result,'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(23) := '('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type                  in varchar2'||wwv_flow.LF||
'   ,i_rn_cha';
wwv_flow_imp.g_varchar2_table(24) := 'pter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text     ';
wwv_flow_imp.g_varchar2_table(25) := '     in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_attribute_value          in varcha';
wwv_flow_imp.g_varchar2_table(26) := 'r2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'   ,i_app_id   ';
wwv_flow_imp.g_varchar2_table(27) := '                in number'||wwv_flow.LF||
'   ,i_page_id                  in number'||wwv_flow.LF||
'   ,i_page_name                in';
wwv_flow_imp.g_varchar2_table(28) := ' varchar2'||wwv_flow.LF||
'  ) return self as result,'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version  ';
wwv_flow_imp.g_varchar2_table(29) := '           in varchar2'||wwv_flow.LF||
'   ,i_rn_type                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in ';
wwv_flow_imp.g_varchar2_table(30) := 'varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(31) := '_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed   ';
wwv_flow_imp.g_varchar2_table(32) := '          in number'||wwv_flow.LF||
'   ,i_attribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in num';
wwv_flow_imp.g_varchar2_table(33) := 'ber'||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id ';
wwv_flow_imp.g_varchar2_table(34) := '                 in number'||wwv_flow.LF||
'   ,i_page_name                in varchar2'||wwv_flow.LF||
'   ,i_component_name          ';
wwv_flow_imp.g_varchar2_table(35) := ' in varchar2'||wwv_flow.LF||
'   ,i_component_type           in varchar2'||wwv_flow.LF||
'   ,i_region_name              in varchar2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(36) := '  ,i_item_name                in varchar2'||wwv_flow.LF||
'   ,i_item_label               in varchar2'||wwv_flow.LF||
'   ,i_js_code_v';
wwv_flow_imp.g_varchar2_table(37) := 'c2              in varchar2'||wwv_flow.LF||
'   ,i_plsql_code_vc2           in varchar2'||wwv_flow.LF||
'   ,i_css_code_vc2           ';
wwv_flow_imp.g_varchar2_table(38) := '  in varchar2'||wwv_flow.LF||
'  ) return self as result,'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Member functions and procedures'||wwv_flow.LF||
'  member function to_st';
wwv_flow_imp.g_varchar2_table(39) := 'ring return varchar2'||wwv_flow.LF||
')'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace type body av_migration_t is'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Constructors'||wwv_flow.LF||
'  construc';
wwv_flow_imp.g_varchar2_table(40) := 'tor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type            ';
wwv_flow_imp.g_varchar2_table(41) := '      in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varch';
wwv_flow_imp.g_varchar2_table(42) := 'ar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_chec';
wwv_flow_imp.g_varchar2_table(43) := 'k_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in number'||wwv_flow.LF||
'   ,i_attribute_value       ';
wwv_flow_imp.g_varchar2_table(44) := '   in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(45) := ',i_app_id                   in number'||wwv_flow.LF||
'  ) return self as result is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    self.apex_version    ';
wwv_flow_imp.g_varchar2_table(46) := '         := i_apex_version;'||wwv_flow.LF||
'    self.rn_type                  := i_rn_type;'||wwv_flow.LF||
'    self.rn_chapter_no  ';
wwv_flow_imp.g_varchar2_table(47) := '          := i_rn_chapter_no;'||wwv_flow.LF||
'    self.rn_chapter_name          := i_rn_chapter_name;'||wwv_flow.LF||
'    self.rn_ch';
wwv_flow_imp.g_varchar2_table(48) := 'apter_text          := i_rn_chapter_text;'||wwv_flow.LF||
'    self.rn_chapter_link          := i_rn_chapter_link;'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(49) := '  self.check_integrated         := i_check_integrated;'||wwv_flow.LF||
'    self.check_needed             := i_check_';
wwv_flow_imp.g_varchar2_table(50) := 'needed;'||wwv_flow.LF||
'    self.attribute_value          := i_attribute_value;'||wwv_flow.LF||
'    self.migration_effort_in_days :=';
wwv_flow_imp.g_varchar2_table(51) := ' i_migration_effort_in_days;'||wwv_flow.LF||
'    self.migration_priority       := i_migration_priority;'||wwv_flow.LF||
'    self.app';
wwv_flow_imp.g_varchar2_table(52) := '_id                   := i_app_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructor function av_m';
wwv_flow_imp.g_varchar2_table(53) := 'igration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type                  in varchar2';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(55) := 'ter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_attribute_value      ';
wwv_flow_imp.g_varchar2_table(56) := '    in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(57) := ' ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id                  in number'||wwv_flow.LF||
'   ,i_page_name     ';
wwv_flow_imp.g_varchar2_table(58) := '           in varchar2'||wwv_flow.LF||
'  ) return self as result is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    self.apex_version             := i_a';
wwv_flow_imp.g_varchar2_table(59) := 'pex_version;'||wwv_flow.LF||
'    self.rn_type                  := i_rn_type;'||wwv_flow.LF||
'    self.rn_chapter_no            := i_';
wwv_flow_imp.g_varchar2_table(60) := 'rn_chapter_no;'||wwv_flow.LF||
'    self.rn_chapter_name          := i_rn_chapter_name;'||wwv_flow.LF||
'    self.rn_chapter_text     ';
wwv_flow_imp.g_varchar2_table(61) := '     := i_rn_chapter_text;'||wwv_flow.LF||
'    self.rn_chapter_link          := i_rn_chapter_link;'||wwv_flow.LF||
'    self.check_in';
wwv_flow_imp.g_varchar2_table(62) := 'tegrated         := 1;'||wwv_flow.LF||
'    self.check_needed             := 1;'||wwv_flow.LF||
'    self.attribute_value          := ';
wwv_flow_imp.g_varchar2_table(63) := 'i_attribute_value;'||wwv_flow.LF||
'    self.migration_effort_in_days := i_migration_effort_in_days;'||wwv_flow.LF||
'    self.migrati';
wwv_flow_imp.g_varchar2_table(64) := 'on_priority       := i_migration_priority;'||wwv_flow.LF||
'    self.app_id                   := i_app_id;'||wwv_flow.LF||
'    self.p';
wwv_flow_imp.g_varchar2_table(65) := 'age_id                  := i_page_id;'||wwv_flow.LF||
'    self.page_name                := i_page_name;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    retur';
wwv_flow_imp.g_varchar2_table(66) := 'n;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             i';
wwv_flow_imp.g_varchar2_table(67) := 'n varchar2'||wwv_flow.LF||
'   ,i_rn_type                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(68) := ',i_rn_chapter_name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(69) := 'link          in varchar2'||wwv_flow.LF||
'   ,i_check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in';
wwv_flow_imp.g_varchar2_table(70) := ' number'||wwv_flow.LF||
'   ,i_attribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_mi';
wwv_flow_imp.g_varchar2_table(71) := 'gration_priority       in number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id             ';
wwv_flow_imp.g_varchar2_table(72) := '     in number'||wwv_flow.LF||
'   ,i_page_name                in varchar2'||wwv_flow.LF||
'   ,i_component_name           in varchar2';
wwv_flow_imp.g_varchar2_table(73) := ''||wwv_flow.LF||
'   ,i_component_type           in varchar2'||wwv_flow.LF||
'   ,i_region_name              in varchar2'||wwv_flow.LF||
'   ,i_item_na';
wwv_flow_imp.g_varchar2_table(74) := 'me                in varchar2'||wwv_flow.LF||
'   ,i_item_label               in varchar2'||wwv_flow.LF||
'   ,i_js_code_vc2          ';
wwv_flow_imp.g_varchar2_table(75) := '    in varchar2'||wwv_flow.LF||
'   ,i_plsql_code_vc2           in varchar2'||wwv_flow.LF||
'   ,i_css_code_vc2             in varchar';
wwv_flow_imp.g_varchar2_table(76) := '2'||wwv_flow.LF||
'  ) return self as result is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    self.apex_version             := i_apex_version;'||wwv_flow.LF||
'    self';
wwv_flow_imp.g_varchar2_table(77) := '.rn_type                  := i_rn_type;'||wwv_flow.LF||
'    self.rn_chapter_no            := i_rn_chapter_no;'||wwv_flow.LF||
'    se';
wwv_flow_imp.g_varchar2_table(78) := 'lf.rn_chapter_name          := i_rn_chapter_name;'||wwv_flow.LF||
'    self.rn_chapter_text          := i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(79) := 'text;'||wwv_flow.LF||
'    self.rn_chapter_link          := i_rn_chapter_link;'||wwv_flow.LF||
'    self.check_integrated         := i';
wwv_flow_imp.g_varchar2_table(80) := '_check_integrated;'||wwv_flow.LF||
'    self.check_needed             := i_check_needed;'||wwv_flow.LF||
'    self.attribute_value    ';
wwv_flow_imp.g_varchar2_table(81) := '      := i_attribute_value;'||wwv_flow.LF||
'    self.migration_effort_in_days := i_migration_effort_in_days;'||wwv_flow.LF||
'    sel';
wwv_flow_imp.g_varchar2_table(82) := 'f.migration_priority       := i_migration_priority;'||wwv_flow.LF||
'    self.app_id                   := i_app_id;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(83) := '   self.page_id                  := i_page_id;'||wwv_flow.LF||
'    self.page_name                := i_page_name;'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(84) := ' self.component_name           := i_component_name;'||wwv_flow.LF||
'    self.component_type           := i_component';
wwv_flow_imp.g_varchar2_table(85) := '_type;'||wwv_flow.LF||
'    self.region_name              := i_region_name;'||wwv_flow.LF||
'    self.item_name                := i_it';
wwv_flow_imp.g_varchar2_table(86) := 'em_name;'||wwv_flow.LF||
'    self.item_label               := i_item_label;'||wwv_flow.LF||
'    self.js_code_vc2              := i_j';
wwv_flow_imp.g_varchar2_table(87) := 's_code_vc2;'||wwv_flow.LF||
'    self.plsql_code_vc2           := i_plsql_code_vc2;'||wwv_flow.LF||
'    self.css_code_vc2            ';
wwv_flow_imp.g_varchar2_table(88) := ' := i_css_code_vc2;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Member procedures and functions'||wwv_flow.LF||
'  mem';
wwv_flow_imp.g_varchar2_table(89) := 'ber function to_string return varchar2 is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    return self.apex_version || utl_tcp.crlf || se';
wwv_flow_imp.g_varchar2_table(90) := 'lf.app_id;'||wwv_flow.LF||
'  end to_string;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(79834337897826639)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_t'
,p_sequence=>1
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(79834426077826651)
,p_script_id=>wwv_flow_imp.id(79834337897826639)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TYPE'
,p_object_name=>'AV_MIGRATION_T'
);
wwv_flow_imp.component_end;
end;
/
