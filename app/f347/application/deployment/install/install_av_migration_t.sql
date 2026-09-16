prompt --application/deployment/install/install_av_migration_t
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_t
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.4'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'create or replace type av_migration_t force as object'||wwv_flow.LF||
'('||wwv_flow.LF||
'-- Author  : oliver lemm'||wwv_flow.LF||
'-- Created : 07.';
wwv_flow_imp.g_varchar2_table(2) := '01.2024'||wwv_flow.LF||
'-- Purpose : type for migration table function'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Attributes'||wwv_flow.LF||
'  apex_version            ';
wwv_flow_imp.g_varchar2_table(3) := ' varchar2(20 char), -- 23.2,23.1,22.2,...'||wwv_flow.LF||
'  rn_type                  varchar(20 char), -- new featu';
wwv_flow_imp.g_varchar2_table(4) := 're,deprecated,desupported'||wwv_flow.LF||
'  rn_chapter_no            varchar2(10 char), -- 6.1.1,7.1.2,...'||wwv_flow.LF||
'  rn_ch';
wwv_flow_imp.g_varchar2_table(5) := 'apter_name          varchar2(100 char), -- Post Calculation for Page Items Deprecated,apexrefresh Ev';
wwv_flow_imp.g_varchar2_table(6) := 'ent is Deprecated'||wwv_flow.LF||
'  rn_chapter_text          varchar2(4000 char), -- Text from the releasenotes'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(7) := 'rn_chapter_link          varchar2(4000 char), -- Link to Releasenotes'||wwv_flow.LF||
'  check_integrated         nu';
wwv_flow_imp.g_varchar2_table(8) := 'mber, -- 1 yes / 0 no'||wwv_flow.LF||
'  check_needed             number, -- 1 yes / 0 no'||wwv_flow.LF||
'  attribute_value        ';
wwv_flow_imp.g_varchar2_table(9) := '  varchar2(4000), -- value of setting or attribute'||wwv_flow.LF||
'  migration_effort_in_days number, -- effort to ';
wwv_flow_imp.g_varchar2_table(10) := 'solve one finding in days'||wwv_flow.LF||
'  migration_priority       number, -- 1 (critical / must), 2 (important /';
wwv_flow_imp.g_varchar2_table(11) := ' should), 3 (recommed), 4 (optional / best practices)'||wwv_flow.LF||
'  app_id                   number,'||wwv_flow.LF||
'  page_id';
wwv_flow_imp.g_varchar2_table(12) := '                  number,'||wwv_flow.LF||
'  page_name                varchar2(200 char),'||wwv_flow.LF||
'  component_name         ';
wwv_flow_imp.g_varchar2_table(13) := '  varchar2(200 char),'||wwv_flow.LF||
'  component_type           varchar2(200 char), -- Page, Region, Item, Dynamic';
wwv_flow_imp.g_varchar2_table(14) := ' Action, Page Process'||wwv_flow.LF||
'  region_name              varchar2(200 char),'||wwv_flow.LF||
'  item_name                va';
wwv_flow_imp.g_varchar2_table(15) := 'rchar2(200 char),'||wwv_flow.LF||
'  item_label               varchar2(200 char),'||wwv_flow.LF||
'  js_code_vc2              varcha';
wwv_flow_imp.g_varchar2_table(16) := 'r2(4000),'||wwv_flow.LF||
'  plsql_code_vc2           varchar2(4000),'||wwv_flow.LF||
'  css_code_vc2             varchar2(4000),'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(17) := ''||wwv_flow.LF||
'-- Constructors'||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varc';
wwv_flow_imp.g_varchar2_table(18) := 'har2'||wwv_flow.LF||
'   ,i_rn_type                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_';
wwv_flow_imp.g_varchar2_table(19) := 'rn_chapter_name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_l';
wwv_flow_imp.g_varchar2_table(20) := 'ink          in varchar2'||wwv_flow.LF||
'   ,i_check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             i';
wwv_flow_imp.g_varchar2_table(21) := 'n number'||wwv_flow.LF||
'   ,i_attribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,';
wwv_flow_imp.g_varchar2_table(22) := 'i_migration_priority       in number'||wwv_flow.LF||
'   ,i_app_id                   number'||wwv_flow.LF||
'  ) return self as resu';
wwv_flow_imp.g_varchar2_table(23) := 'lt,'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(24) := '_rn_type                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(25) := 'name          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link        ';
wwv_flow_imp.g_varchar2_table(26) := '  in varchar2'||wwv_flow.LF||
'   ,i_attribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number';
wwv_flow_imp.g_varchar2_table(27) := ''||wwv_flow.LF||
'   ,i_migration_priority       in number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id  ';
wwv_flow_imp.g_varchar2_table(28) := '                in number'||wwv_flow.LF||
'   ,i_page_name                in varchar2'||wwv_flow.LF||
'  ) return self as result,'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(29) := ''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_ty';
wwv_flow_imp.g_varchar2_table(30) := 'pe                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name  ';
wwv_flow_imp.g_varchar2_table(31) := '        in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in v';
wwv_flow_imp.g_varchar2_table(32) := 'archar2'||wwv_flow.LF||
'   ,i_check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in number'||wwv_flow.LF||
'   ,i_a';
wwv_flow_imp.g_varchar2_table(33) := 'ttribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_prior';
wwv_flow_imp.g_varchar2_table(34) := 'ity       in number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id                  in num';
wwv_flow_imp.g_varchar2_table(35) := 'ber'||wwv_flow.LF||
'   ,i_page_name                in varchar2'||wwv_flow.LF||
'   ,i_component_name           in varchar2'||wwv_flow.LF||
'   ,i_c';
wwv_flow_imp.g_varchar2_table(36) := 'omponent_type           in varchar2'||wwv_flow.LF||
'   ,i_region_name              in varchar2'||wwv_flow.LF||
'   ,i_item_name    ';
wwv_flow_imp.g_varchar2_table(37) := '            in varchar2'||wwv_flow.LF||
'   ,i_item_label               in varchar2'||wwv_flow.LF||
'   ,i_js_code_vc2              ';
wwv_flow_imp.g_varchar2_table(38) := 'in varchar2'||wwv_flow.LF||
'   ,i_plsql_code_vc2           in varchar2'||wwv_flow.LF||
'   ,i_css_code_vc2             in varchar2';
wwv_flow_imp.g_varchar2_table(39) := ''||wwv_flow.LF||
'  ) return self as result,'||wwv_flow.LF||
''||wwv_flow.LF||
'-- Member functions and procedures'||wwv_flow.LF||
'  member function to_string retur';
wwv_flow_imp.g_varchar2_table(40) := 'n varchar2'||wwv_flow.LF||
')'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace type body av_migration_t is'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Constructors'||wwv_flow.LF||
'  constructor ';
wwv_flow_imp.g_varchar2_table(41) := 'function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type             ';
wwv_flow_imp.g_varchar2_table(42) := '     in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in varc';
wwv_flow_imp.g_varchar2_table(43) := 'har2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,i_';
wwv_flow_imp.g_varchar2_table(44) := 'check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in number'||wwv_flow.LF||
'   ,i_attribute_value ';
wwv_flow_imp.g_varchar2_table(45) := '         in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in nu';
wwv_flow_imp.g_varchar2_table(46) := 'mber'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'  ) return self as result is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    self.apex';
wwv_flow_imp.g_varchar2_table(47) := '_version             := i_apex_version;'||wwv_flow.LF||
'    self.rn_type                  := i_rn_type;'||wwv_flow.LF||
'    self.r';
wwv_flow_imp.g_varchar2_table(48) := 'n_chapter_no            := i_rn_chapter_no;'||wwv_flow.LF||
'    self.rn_chapter_name          := i_rn_chapter_name;';
wwv_flow_imp.g_varchar2_table(49) := ''||wwv_flow.LF||
'    self.rn_chapter_text          := i_rn_chapter_text;'||wwv_flow.LF||
'    self.rn_chapter_link          := i_rn';
wwv_flow_imp.g_varchar2_table(50) := '_chapter_link;'||wwv_flow.LF||
'    self.check_integrated         := i_check_integrated;'||wwv_flow.LF||
'    self.check_needed     ';
wwv_flow_imp.g_varchar2_table(51) := '        := i_check_needed;'||wwv_flow.LF||
'    self.attribute_value          := i_attribute_value;'||wwv_flow.LF||
'    self.migrat';
wwv_flow_imp.g_varchar2_table(52) := 'ion_effort_in_days := i_migration_effort_in_days;'||wwv_flow.LF||
'    self.migration_priority       := i_migration_';
wwv_flow_imp.g_varchar2_table(53) := 'priority;'||wwv_flow.LF||
'    self.app_id                   := i_app_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'  constructor function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_ty';
wwv_flow_imp.g_varchar2_table(55) := 'pe                  in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name  ';
wwv_flow_imp.g_varchar2_table(56) := '        in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in v';
wwv_flow_imp.g_varchar2_table(57) := 'archar2'||wwv_flow.LF||
'   ,i_attribute_value          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(58) := '_migration_priority       in number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id        ';
wwv_flow_imp.g_varchar2_table(59) := '          in number'||wwv_flow.LF||
'   ,i_page_name                in varchar2'||wwv_flow.LF||
'  ) return self as result is'||wwv_flow.LF||
'  beg';
wwv_flow_imp.g_varchar2_table(60) := 'in'||wwv_flow.LF||
'    self.apex_version             := i_apex_version;'||wwv_flow.LF||
'    self.rn_type                  := i_rn_';
wwv_flow_imp.g_varchar2_table(61) := 'type;'||wwv_flow.LF||
'    self.rn_chapter_no            := i_rn_chapter_no;'||wwv_flow.LF||
'    self.rn_chapter_name          := i';
wwv_flow_imp.g_varchar2_table(62) := '_rn_chapter_name;'||wwv_flow.LF||
'    self.rn_chapter_text          := i_rn_chapter_text;'||wwv_flow.LF||
'    self.rn_chapter_link';
wwv_flow_imp.g_varchar2_table(63) := '          := i_rn_chapter_link;'||wwv_flow.LF||
'    self.check_integrated         := 1;'||wwv_flow.LF||
'    self.check_needed     ';
wwv_flow_imp.g_varchar2_table(64) := '        := 1;'||wwv_flow.LF||
'    self.attribute_value          := i_attribute_value;'||wwv_flow.LF||
'    self.migration_effort_in';
wwv_flow_imp.g_varchar2_table(65) := '_days := i_migration_effort_in_days;'||wwv_flow.LF||
'    self.migration_priority       := i_migration_priority;'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(66) := '  self.app_id                   := i_app_id;'||wwv_flow.LF||
'    self.page_id                  := i_page_id;'||wwv_flow.LF||
'    s';
wwv_flow_imp.g_varchar2_table(67) := 'elf.page_name                := i_page_name;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  constructo';
wwv_flow_imp.g_varchar2_table(68) := 'r function av_migration_t'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_apex_version             in varchar2'||wwv_flow.LF||
'   ,i_rn_type           ';
wwv_flow_imp.g_varchar2_table(69) := '       in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_no            in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_name          in va';
wwv_flow_imp.g_varchar2_table(70) := 'rchar2'||wwv_flow.LF||
'   ,i_rn_chapter_text          in varchar2'||wwv_flow.LF||
'   ,i_rn_chapter_link          in varchar2'||wwv_flow.LF||
'   ,';
wwv_flow_imp.g_varchar2_table(71) := 'i_check_integrated         in number'||wwv_flow.LF||
'   ,i_check_needed             in number'||wwv_flow.LF||
'   ,i_attribute_valu';
wwv_flow_imp.g_varchar2_table(72) := 'e          in varchar2'||wwv_flow.LF||
'   ,i_migration_effort_in_days in number'||wwv_flow.LF||
'   ,i_migration_priority       in ';
wwv_flow_imp.g_varchar2_table(73) := 'number'||wwv_flow.LF||
'   ,i_app_id                   in number'||wwv_flow.LF||
'   ,i_page_id                  in number'||wwv_flow.LF||
'   ,i_pa';
wwv_flow_imp.g_varchar2_table(74) := 'ge_name                in varchar2'||wwv_flow.LF||
'   ,i_component_name           in varchar2'||wwv_flow.LF||
'   ,i_component_type';
wwv_flow_imp.g_varchar2_table(75) := '           in varchar2'||wwv_flow.LF||
'   ,i_region_name              in varchar2'||wwv_flow.LF||
'   ,i_item_name                i';
wwv_flow_imp.g_varchar2_table(76) := 'n varchar2'||wwv_flow.LF||
'   ,i_item_label               in varchar2'||wwv_flow.LF||
'   ,i_js_code_vc2              in varchar2'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(77) := '   ,i_plsql_code_vc2           in varchar2'||wwv_flow.LF||
'   ,i_css_code_vc2             in varchar2'||wwv_flow.LF||
'  ) return s';
wwv_flow_imp.g_varchar2_table(78) := 'elf as result is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    self.apex_version             := i_apex_version;'||wwv_flow.LF||
'    self.rn_type   ';
wwv_flow_imp.g_varchar2_table(79) := '               := i_rn_type;'||wwv_flow.LF||
'    self.rn_chapter_no            := i_rn_chapter_no;'||wwv_flow.LF||
'    self.rn_cha';
wwv_flow_imp.g_varchar2_table(80) := 'pter_name          := i_rn_chapter_name;'||wwv_flow.LF||
'    self.rn_chapter_text          := i_rn_chapter_text;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(81) := '   self.rn_chapter_link          := i_rn_chapter_link;'||wwv_flow.LF||
'    self.check_integrated         := i_check';
wwv_flow_imp.g_varchar2_table(82) := '_integrated;'||wwv_flow.LF||
'    self.check_needed             := i_check_needed;'||wwv_flow.LF||
'    self.attribute_value        ';
wwv_flow_imp.g_varchar2_table(83) := '  := i_attribute_value;'||wwv_flow.LF||
'    self.migration_effort_in_days := i_migration_effort_in_days;'||wwv_flow.LF||
'    self.';
wwv_flow_imp.g_varchar2_table(84) := 'migration_priority       := i_migration_priority;'||wwv_flow.LF||
'    self.app_id                   := i_app_id;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(85) := '   self.page_id                  := i_page_id;'||wwv_flow.LF||
'    self.page_name                := i_page_name;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(86) := '   self.component_name           := i_component_name;'||wwv_flow.LF||
'    self.component_type           := i_compon';
wwv_flow_imp.g_varchar2_table(87) := 'ent_type;'||wwv_flow.LF||
'    self.region_name              := i_region_name;'||wwv_flow.LF||
'    self.item_name                :=';
wwv_flow_imp.g_varchar2_table(88) := ' i_item_name;'||wwv_flow.LF||
'    self.item_label               := i_item_label;'||wwv_flow.LF||
'    self.js_code_vc2             ';
wwv_flow_imp.g_varchar2_table(89) := ' := i_js_code_vc2;'||wwv_flow.LF||
'    self.plsql_code_vc2           := i_plsql_code_vc2;'||wwv_flow.LF||
'    self.css_code_vc2   ';
wwv_flow_imp.g_varchar2_table(90) := '          := i_css_code_vc2;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end av_migration_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Member procedures and f';
wwv_flow_imp.g_varchar2_table(91) := 'unctions'||wwv_flow.LF||
'  member function to_string return varchar2 is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    return self.apex_version || u';
wwv_flow_imp.g_varchar2_table(92) := 'tl_tcp.crlf || self.app_id;'||wwv_flow.LF||
'  end to_string;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/ ';
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
