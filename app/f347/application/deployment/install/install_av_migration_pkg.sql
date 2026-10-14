prompt --application/deployment/install/install_av_migration_pkg
begin
--   Manifest
--     INSTALL: INSTALL-av_migration_pkg
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.5'
,p_default_workspace_id=>100001
,p_default_application_id=>347
,p_default_id_offset=>20408574139881448
,p_default_owner=>'APEX_VISUALIZER'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := 'create or replace package av_migration_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_migration_type_generally   constant varchar2(20';
wwv_flow_imp.g_varchar2_table(2) := ' char) := ''generally'';'||wwv_flow.LF||
'  c_migration_type_new_feature constant varchar2(20 char) := ''new feature'';';
wwv_flow_imp.g_varchar2_table(3) := ''||wwv_flow.LF||
'  c_migration_type_deprecated  constant varchar2(20 char) := ''deprecated'';'||wwv_flow.LF||
'  c_migration_type_desu';
wwv_flow_imp.g_varchar2_table(4) := 'pported constant varchar2(20 char) := ''desupported'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_migration_priority_1_must           cons';
wwv_flow_imp.g_varchar2_table(5) := 'tant number := 1;'||wwv_flow.LF||
'  c_migration_priority_2_should         constant number := 2;'||wwv_flow.LF||
'  c_migration_prio';
wwv_flow_imp.g_varchar2_table(6) := 'rity_3_recommed       constant number := 3;'||wwv_flow.LF||
'  c_migration_priority_4_best_practices constant number';
wwv_flow_imp.g_varchar2_table(7) := ' := 4;'||wwv_flow.LF||
'  c_migration_priotity_5_information    constant number := 5;'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_complexity_simple      ';
wwv_flow_imp.g_varchar2_table(8) := ' constant varchar2(20 char) := ''simple'';'||wwv_flow.LF||
'  c_complexity_normal       constant varchar2(20 char) := ';
wwv_flow_imp.g_varchar2_table(9) := '''normal'';'||wwv_flow.LF||
'  c_complexity_complex      constant varchar2(20 char) := ''complex'';'||wwv_flow.LF||
'  c_complexity_very';
wwv_flow_imp.g_varchar2_table(10) := '_complex constant varchar2(20 char) := ''very complex'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_component_type_page           constant';
wwv_flow_imp.g_varchar2_table(11) := ' varchar2(20 char) := ''Page'';'||wwv_flow.LF||
'  c_component_type_region         constant varchar2(20 char) := ''Regi';
wwv_flow_imp.g_varchar2_table(12) := 'on'';'||wwv_flow.LF||
'  c_component_type_item           constant varchar2(20 char) := ''Item'';'||wwv_flow.LF||
'  c_component_type_bu';
wwv_flow_imp.g_varchar2_table(13) := 'tton         constant varchar2(20 char) := ''Button'';'||wwv_flow.LF||
'  c_component_type_dynamic_action constant var';
wwv_flow_imp.g_varchar2_table(14) := 'char2(20 char) := ''Dynamic Action'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version_19_2   constant varchar2(20 char) := ''19.2'';';
wwv_flow_imp.g_varchar2_table(15) := ''||wwv_flow.LF||
'  c_apex_version_20_1   constant varchar2(20 char) := ''20.1'';'||wwv_flow.LF||
'  c_apex_version_20_2   constant va';
wwv_flow_imp.g_varchar2_table(16) := 'rchar2(20 char) := ''20.2'';'||wwv_flow.LF||
'  c_apex_version_21_1   constant varchar2(20 char) := ''21.1'';'||wwv_flow.LF||
'  c_apex_';
wwv_flow_imp.g_varchar2_table(17) := 'version_21_2   constant varchar2(20 char) := ''21.2'';'||wwv_flow.LF||
'  c_apex_version_22_1   constant varchar2(20 c';
wwv_flow_imp.g_varchar2_table(18) := 'har) := ''22.1'';'||wwv_flow.LF||
'  c_apex_version_22_2   constant varchar2(20 char) := ''22.2'';'||wwv_flow.LF||
'  c_apex_version_23_';
wwv_flow_imp.g_varchar2_table(19) := '1   constant varchar2(20 char) := ''23.1'';'||wwv_flow.LF||
'  c_apex_version_23_2   constant varchar2(20 char) := ''23';
wwv_flow_imp.g_varchar2_table(20) := '.2'';'||wwv_flow.LF||
'  c_apex_version_24_1   constant varchar2(20 char) := ''24.1'';'||wwv_flow.LF||
'  c_apex_version_24_2   constan';
wwv_flow_imp.g_varchar2_table(21) := 't varchar2(20 char) := ''24.2'';'||wwv_flow.LF||
'  c_apex_version_26_1   constant varchar2(20 char) := ''26.1'';'||wwv_flow.LF||
'  c_a';
wwv_flow_imp.g_varchar2_table(22) := 'pex_version_latest constant varchar2(20 char) := c_apex_version_26_1;'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_comp_mode_latest       ';
wwv_flow_imp.g_varchar2_table(23) := '     constant varchar2(20 char) := c_apex_version_latest;'||wwv_flow.LF||
'  c_comp_mode_one_before_latest constant ';
wwv_flow_imp.g_varchar2_table(24) := 'varchar2(20 char) := ''21.2'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_effort_in_days_1_day      constant number := 1;'||wwv_flow.LF||
'  c_effort_in_d';
wwv_flow_imp.g_varchar2_table(25) := 'ays_4_hours    constant number := 0.5;'||wwv_flow.LF||
'  c_effort_in_days_1_hour     constant number := 0.125;'||wwv_flow.LF||
'  c';
wwv_flow_imp.g_varchar2_table(26) := '_effort_in_days_15_minutes constant number := c_effort_in_days_1_hour / 4;'||wwv_flow.LF||
'  c_effort_in_days_10_mi';
wwv_flow_imp.g_varchar2_table(27) := 'nutes constant number := c_effort_in_days_1_hour / 6;'||wwv_flow.LF||
'  c_effort_in_days_5_minutes  constant number';
wwv_flow_imp.g_varchar2_table(28) := ' := c_effort_in_days_1_hour / 12;'||wwv_flow.LF||
'  c_effort_in_days_3_minutes  constant number := c_effort_in_days';
wwv_flow_imp.g_varchar2_table(29) := '_1_hour / 20;'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- Created : 06.05.2026'||wwv_flow.LF||
'  -- Purpose : central funct';
wwv_flow_imp.g_varchar2_table(30) := 'ion for migration'||wwv_flow.LF||
''||wwv_flow.LF||
'  /* Query Aggretated Effort in Days'||wwv_flow.LF||
'  select '||wwv_flow.LF||
'   apex_version'||wwv_flow.LF||
'  ,rn_type'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(31) := ' ,rn_chapter_no'||wwv_flow.LF||
'  ,rn_chapter_name'||wwv_flow.LF||
'  ,migration_priority'||wwv_flow.LF||
'  ,count(1) amount_of_objects'||wwv_flow.LF||
'  ,round(';
wwv_flow_imp.g_varchar2_table(32) := 'sum(migration_effort_in_days)'||wwv_flow.LF||
'        ,3) migration_effort_in_days'||wwv_flow.LF||
'  from av_migration_pkg.ptf_eff';
wwv_flow_imp.g_varchar2_table(33) := 'ort_calculation(i_app_id               => :P0_APP_ID'||wwv_flow.LF||
'                                              ';
wwv_flow_imp.g_varchar2_table(34) := ',i_apex_versions        => :P760_APEX_VERSIONS'||wwv_flow.LF||
'                                              ,i_mig';
wwv_flow_imp.g_varchar2_table(35) := 'ration_priorities => :P760_MIGRATION_PRIORITIES)'||wwv_flow.LF||
'    group by apex_version'||wwv_flow.LF||
'            ,rn_type'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(36) := '           ,rn_chapter_no'||wwv_flow.LF||
'            ,rn_chapter_name'||wwv_flow.LF||
'            ,migration_priority'||wwv_flow.LF||
'    order ';
wwv_flow_imp.g_varchar2_table(37) := 'by rn_type'||wwv_flow.LF||
'            ,apex_version'||wwv_flow.LF||
'            ,rn_chapter_no '||wwv_flow.LF||
'  */'||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_apex_versi';
wwv_flow_imp.g_varchar2_table(38) := 'ons return av_varchar2s_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_migration_priorities return av_varchar2s_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  functio';
wwv_flow_imp.g_varchar2_table(39) := 'n ptf_effort_general_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priori';
wwv_flow_imp.g_varchar2_table(40) := 'ties in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_page_complexit';
wwv_flow_imp.g_varchar2_table(41) := 'y'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_';
wwv_flow_imp.g_varchar2_table(42) := 'migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_javascript'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in';
wwv_flow_imp.g_varchar2_table(43) := ' number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  fun';
wwv_flow_imp.g_varchar2_table(44) := 'ction ptf_effort_plsql'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in var';
wwv_flow_imp.g_varchar2_table(45) := 'char2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_plugins'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_i';
wwv_flow_imp.g_varchar2_table(46) := 'd               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    p';
wwv_flow_imp.g_varchar2_table(47) := 'ipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_never_conditions'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,';
wwv_flow_imp.g_varchar2_table(48) := 'i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_eff';
wwv_flow_imp.g_varchar2_table(49) := 'ort_unused_auth_schemes'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in va';
wwv_flow_imp.g_varchar2_table(50) := 'rchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_upgrade_application'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i';
wwv_flow_imp.g_varchar2_table(51) := '_workspace_id         in number'||wwv_flow.LF||
'   ,i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in';
wwv_flow_imp.g_varchar2_table(52) := ' varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_calculation'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(53) := ' i_app_id               in number'||wwv_flow.LF||
'   ,i_apex_versions        in varchar2 default null'||wwv_flow.LF||
'   ,i_migrat';
wwv_flow_imp.g_varchar2_table(54) := 'ion_priorities in varchar2 default null'||wwv_flow.LF||
'   ,i_migration_types      in varchar2 default null'||wwv_flow.LF||
'   ,i_';
wwv_flow_imp.g_varchar2_table(55) := 'show_only_findings   in number default null'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_mi';
wwv_flow_imp.g_varchar2_table(56) := 'gration_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body av_migration_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  procedure p_merge_migration';
wwv_flow_imp.g_varchar2_table(57) := 's'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    io_migrations    in out av_migrations_t'||wwv_flow.LF||
'   ,i_migrations_add in av_migrations_t'||wwv_flow.LF||
'  ) is';
wwv_flow_imp.g_varchar2_table(58) := ''||wwv_flow.LF||
'    l_next number;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    -- falls bisheriges Fehlerarray nicht vorhanden ist oder keine Ei';
wwv_flow_imp.g_varchar2_table(59) := unistr('ntr\00E4ge enth\00E4lt'||wwv_flow.LF||
'    -- direkt das komplette neue verwenden'||wwv_flow.LF||
'    if io_migrations is null or'||wwv_flow.LF||
'       ');
wwv_flow_imp.g_varchar2_table(60) := 'io_migrations.count = 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      io_migrations := i_migrations_add;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Fehler s';
wwv_flow_imp.g_varchar2_table(61) := 'ind bereits im bisherigen Array vorhanden'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'      -- Sind im neuen Array Fehler vorhanden'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(62) := '      if i_migrations_add is not null and'||wwv_flow.LF||
'         i_migrations_add.count > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(63) := 'for i in 1 .. i_migrations_add.count'||wwv_flow.LF||
'        loop'||wwv_flow.LF||
'          io_migrations.extend; -- erweitern'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(64) := '        l_next := io_migrations.last; -- zaehler vom letzten ermitteln'||wwv_flow.LF||
'          io_migrations(l_ne';
wwv_flow_imp.g_varchar2_table(65) := 'xt) := i_migrations_add(i); -- Fehler in neues Array schreiben'||wwv_flow.LF||
'        end loop;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(66) := '  end if;'||wwv_flow.LF||
'  end p_merge_migrations;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_apex_versions return av_varchar2s_t is'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(67) := 'l_apex_versions av_varchar2s_t := new av_varchar2s_t();'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l';
wwv_flow_imp.g_varchar2_table(68) := '_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_20_1);'||wwv_flow.LF||
'    l_apex_versions';
wwv_flow_imp.g_varchar2_table(69) := '.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_20_2);'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(70) := 'l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_versi';
wwv_flow_imp.g_varchar2_table(71) := 'on_21_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2';
wwv_flow_imp.g_varchar2_table(72) := '_t(c_apex_version_21_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := ';
wwv_flow_imp.g_varchar2_table(73) := 'new av_varchar2_t(c_apex_version_22_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_ver';
wwv_flow_imp.g_varchar2_table(74) := 'sions.last) := new av_varchar2_t(c_apex_version_22_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_vers';
wwv_flow_imp.g_varchar2_table(75) := 'ions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(76) := '    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_2);'||wwv_flow.LF||
'    l_apex_ver';
wwv_flow_imp.g_varchar2_table(77) := 'sions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_24_1);';
wwv_flow_imp.g_varchar2_table(78) := ''||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_';
wwv_flow_imp.g_varchar2_table(79) := 'version_24_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_var';
wwv_flow_imp.g_varchar2_table(80) := 'char2_t(c_apex_version_26_1);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return l_apex_versions;'||wwv_flow.LF||
'  end tf_apex_versions;'||wwv_flow.LF||
''||wwv_flow.LF||
'  functio';
wwv_flow_imp.g_varchar2_table(81) := 'n tf_migration_priorities return av_varchar2s_t is'||wwv_flow.LF||
'    l_migration_priorities av_varchar2s_t := new';
wwv_flow_imp.g_varchar2_table(82) := ' av_varchar2s_t();'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migrat';
wwv_flow_imp.g_varchar2_table(83) := 'ion_priorities.last) := new av_varchar2_t(c_migration_priority_1_must);'||wwv_flow.LF||
'    l_migration_priorities.';
wwv_flow_imp.g_varchar2_table(84) := 'extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priorities.last) := new av_varchar2_t(c_migration_pr';
wwv_flow_imp.g_varchar2_table(85) := 'iority_2_should);'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priori';
wwv_flow_imp.g_varchar2_table(86) := 'ties.last) := new av_varchar2_t(c_migration_priority_3_recommed);'||wwv_flow.LF||
'    l_migration_priorities.extend';
wwv_flow_imp.g_varchar2_table(87) := ';'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priorities.last) := new av_varchar2_t(c_migration_priority';
wwv_flow_imp.g_varchar2_table(88) := '_4_best_practices);'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_prio';
wwv_flow_imp.g_varchar2_table(89) := 'rities.last) := new av_varchar2_t(c_migration_priotity_5_information);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return l_migration_p';
wwv_flow_imp.g_varchar2_table(90) := 'riorities;'||wwv_flow.LF||
'  end tf_migration_priorities;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_app_has_universal_theme(i_app_id in num';
wwv_flow_imp.g_varchar2_table(91) := 'ber) return boolean is'||wwv_flow.LF||
'    l_count number;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    select count(1)'||wwv_flow.LF||
'    into l_count'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(92) := ' from apex_application_themes t'||wwv_flow.LF||
'    where t.is_current = ''Yes'''||wwv_flow.LF||
'    and t.theme_internal_name = ''UN';
wwv_flow_imp.g_varchar2_table(93) := 'IVERSAL_THEME'''||wwv_flow.LF||
'    and t.application_id = i_app_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return sys.diutil.int_to_bool(l_count)';
wwv_flow_imp.g_varchar2_table(94) := ';'||wwv_flow.LF||
'  end f_app_has_universal_theme;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_general_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_';
wwv_flow_imp.g_varchar2_table(95) := 'id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(96) := 'pipelined is'||wwv_flow.LF||
'    l_compatibility_mode        apex_applications.compatibility_mode%type;'||wwv_flow.LF||
'    l_sess';
wwv_flow_imp.g_varchar2_table(97) := 'ion_state_protection  apex_applications.session_state_protection%type;'||wwv_flow.LF||
'    l_runtime_api_usage     ';
wwv_flow_imp.g_varchar2_table(98) := '    varchar2(100 char);'||wwv_flow.LF||
'    l_include_legacy_javascript apex_appl_user_interfaces.include_legacy_ja';
wwv_flow_imp.g_varchar2_table(99) := 'vascript%type;'||wwv_flow.LF||
'    l_include_jquery_migrate    apex_appl_user_interfaces.include_jquery_migrate%typ';
wwv_flow_imp.g_varchar2_table(100) := 'e;'||wwv_flow.LF||
'    l_theme_name                apex_application_themes.theme_name%type;'||wwv_flow.LF||
'    l_theme_version   ';
wwv_flow_imp.g_varchar2_table(101) := '          apex_application_themes.version%type;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    a';
wwv_flow_imp.g_varchar2_table(102) := 'v_general_pkg.p_qa_app_settings(pi_application_id            => i_app_id'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(103) := '          ,po_compatibility_mode        => l_compatibility_mode'||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(104) := ' ,po_session_state_protection  => l_session_state_protection'||wwv_flow.LF||
'                                    ,p';
wwv_flow_imp.g_varchar2_table(105) := 'o_runtime_api_usage         => l_runtime_api_usage'||wwv_flow.LF||
'                                    ,po_include_';
wwv_flow_imp.g_varchar2_table(106) := 'legacy_javascript => l_include_legacy_javascript'||wwv_flow.LF||
'                                    ,po_include_jq';
wwv_flow_imp.g_varchar2_table(107) := 'uery_migrate    => l_include_jquery_migrate'||wwv_flow.LF||
'                                    ,po_theme_name     ';
wwv_flow_imp.g_varchar2_table(108) := '           => l_theme_name'||wwv_flow.LF||
'                                    ,po_theme_version             => l_t';
wwv_flow_imp.g_varchar2_table(109) := 'heme_version);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_migration_priority_2_should)';
wwv_flow_imp.g_varchar2_table(110) := ' > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      -- Compatibility Mode'||wwv_flow.LF||
'      l_migration := av_migration_t(i_apex_version     ';
wwv_flow_imp.g_varchar2_table(111) := '        => c_apex_version_latest'||wwv_flow.LF||
'                                   ,i_rn_type                  => ';
wwv_flow_imp.g_varchar2_table(112) := 'c_migration_type_generally'||wwv_flow.LF||
'                                   ,i_rn_chapter_no            => ''3.18''';
wwv_flow_imp.g_varchar2_table(113) := ''||wwv_flow.LF||
'                                   ,i_rn_chapter_name          => ''Compatibility Mode'''||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(114) := '                         ,i_rn_chapter_text          => ''For supporting the latest functionality inc';
wwv_flow_imp.g_varchar2_table(115) := 'luding Universal Theme, switch to latest compatibility mode.'''||wwv_flow.LF||
'                                   ,i';
wwv_flow_imp.g_varchar2_table(116) := '_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/24.2/htmrn/changed-beh';
wwv_flow_imp.g_varchar2_table(117) := 'avior.html#GUID-712BE54F-08CD-43A3-A645-87B9360ED516'''||wwv_flow.LF||
'                                   ,i_check_i';
wwv_flow_imp.g_varchar2_table(118) := 'ntegrated         => 1'||wwv_flow.LF||
'                                   ,i_check_needed             => 1'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(119) := '                            ,i_attribute_value          => l_compatibility_mode'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(120) := '                ,i_migration_effort_in_days => case l_compatibility_mode'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(121) := '                                          when c_comp_mode_latest then -- latest version'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(122) := '                                                           0 -- no effort'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(123) := '                                           when c_comp_mode_one_before_latest then'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(124) := '                                                     0.125 -- minimal effort'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(125) := '                                              else'||wwv_flow.LF||
'                                                ';
wwv_flow_imp.g_varchar2_table(126) := '                     0.5 -- more effort but hard to calculate'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(127) := '                             end'||wwv_flow.LF||
'                                   ,i_migration_priority       => ';
wwv_flow_imp.g_varchar2_table(128) := 'c_migration_priority_2_should'||wwv_flow.LF||
'                                   ,i_app_id                   => i_a';
wwv_flow_imp.g_varchar2_table(129) := 'pp_id);'||wwv_flow.LF||
'      pipe row(l_migration);'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Universal Theme'||wwv_flow.LF||
'      if l_theme_name <> ''Uni';
wwv_flow_imp.g_varchar2_table(130) := 'versal Theme'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_ape';
wwv_flow_imp.g_varchar2_table(131) := 'x_version_latest'||wwv_flow.LF||
'                                     ,i_rn_type                  => c_migration_ty';
wwv_flow_imp.g_varchar2_table(132) := 'pe_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.1'''||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(133) := '                            ,i_rn_chapter_name          => ''Universal Theme usage'''||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(134) := '                     ,i_rn_chapter_text          => ''Universal Theme should be used in APEX Apps, tr';
wwv_flow_imp.g_varchar2_table(135) := 'y to map your theme to Universal Theme.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link   ';
wwv_flow_imp.g_varchar2_table(136) := '       => null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(137) := '                        ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_at';
wwv_flow_imp.g_varchar2_table(138) := 'tribute_value          => l_theme_name'||wwv_flow.LF||
'                                     ,i_migration_effort_in_';
wwv_flow_imp.g_varchar2_table(139) := 'days => c_effort_in_days_1_day'||wwv_flow.LF||
'                                     ,i_migration_priority       => ';
wwv_flow_imp.g_varchar2_table(140) := 'c_migration_priority_2_should'||wwv_flow.LF||
'                                     ,i_app_id                   => i';
wwv_flow_imp.g_varchar2_table(141) := '_app_id);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      elsif l_theme_version <> c_apex_version_lat';
wwv_flow_imp.g_varchar2_table(142) := 'est'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version_';
wwv_flow_imp.g_varchar2_table(143) := 'latest'||wwv_flow.LF||
'                                     ,i_rn_type                  => c_migration_type_general';
wwv_flow_imp.g_varchar2_table(144) := 'ly'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.2'''||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(145) := '                  ,i_rn_chapter_name          => ''Universal Theme refresh'''||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(146) := '             ,i_rn_chapter_text          => ''Universal Theme should always be refreshed to the lates';
wwv_flow_imp.g_varchar2_table(147) := 't version of the theme.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => null'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(148) := '                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(149) := '        ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value   ';
wwv_flow_imp.g_varchar2_table(150) := '       => l_theme_version'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => c_eff';
wwv_flow_imp.g_varchar2_table(151) := 'ort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => c_migration_';
wwv_flow_imp.g_varchar2_table(152) := 'priority_2_should'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id);'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(153) := '       pipe row(l_migration);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    '||wwv_flow.LF||
'    '||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_migr';
wwv_flow_imp.g_varchar2_table(154) := 'ation_priorities'||wwv_flow.LF||
'            ,c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      -- JavaScript'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(155) := '      if l_include_legacy_javascript = ''No'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_ape';
wwv_flow_imp.g_varchar2_table(156) := 'x_version             => c_apex_version_latest'||wwv_flow.LF||
'                                     ,i_rn_type     ';
wwv_flow_imp.g_varchar2_table(157) := '             => c_migration_type_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no   ';
wwv_flow_imp.g_varchar2_table(158) := '         => ''0.3.3'''||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Deactivate';
wwv_flow_imp.g_varchar2_table(159) := ' Legacy Javascript'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''Switch off';
wwv_flow_imp.g_varchar2_table(160) := ' the support for legacy JavaScript for faster and more stable JavaScript.'''||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(161) := '             ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                                     ,i_check_inte';
wwv_flow_imp.g_varchar2_table(162) := 'grated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(163) := '                             ,i_attribute_value          => l_include_legacy_javascript'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(164) := '                          ,i_migration_effort_in_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(165) := '                   ,i_migration_priority       => c_migration_priority_3_recommed'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(166) := '                    ,i_app_id                   => i_app_id);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(167) := ' end if;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- jQuery Migrate'||wwv_flow.LF||
'      if l_include_jquery_migrate = ''No'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(168) := '   l_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(169) := '                       ,i_rn_type                  => c_migration_type_generally'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(170) := '                   ,i_rn_chapter_no            => ''0.3.4'''||wwv_flow.LF||
'                                     ,i_r';
wwv_flow_imp.g_varchar2_table(171) := 'n_chapter_name          => ''Deactivate jQuery Migrate'''||wwv_flow.LF||
'                                     ,i_rn_c';
wwv_flow_imp.g_varchar2_table(172) := 'hapter_text          => ''Switch off the support for jQuery Migrate for faster and more stable JavaSc';
wwv_flow_imp.g_varchar2_table(173) := 'ript.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(174) := '                   ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_n';
wwv_flow_imp.g_varchar2_table(175) := 'eeded             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => l_includ';
wwv_flow_imp.g_varchar2_table(176) := 'e_jquery_migrate'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => c_effort_in_da';
wwv_flow_imp.g_varchar2_table(177) := 'ys_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       => c_migration_priority_';
wwv_flow_imp.g_varchar2_table(178) := '3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id);'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(179) := 'pipe row(l_migration);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(180) := '     ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select *'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(181) := '  from apex_application_page_items i'||wwv_flow.LF||
'                where i.encrypt_session_state = ''No'''||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(182) := '        and i.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        -- Session State Protection'||wwv_flow.LF||
'        l';
wwv_flow_imp.g_varchar2_table(183) := '_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(184) := '                   ,i_rn_type                  => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(185) := '                                ,i_rn_chapter_no            => ''0.3.5'''||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(186) := '         ,i_rn_chapter_name          => ''Session State Protection'''||wwv_flow.LF||
'                                ';
wwv_flow_imp.g_varchar2_table(187) := '     ,i_rn_chapter_text          => l_session_state_protection'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(188) := ' ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                                     ,i_check_integrated      ';
wwv_flow_imp.g_varchar2_table(189) := '   => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(190) := '                 ,i_attribute_value          => m.encrypt_session_state'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(191) := '          ,i_migration_effort_in_days => c_effort_in_days_15_minutes'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(192) := '       ,i_migration_priority       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(193) := '              ,i_app_id                   => m.application_id'||wwv_flow.LF||
'                                     ';
wwv_flow_imp.g_varchar2_table(194) := ',i_page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name         ';
wwv_flow_imp.g_varchar2_table(195) := '       => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.item_na';
wwv_flow_imp.g_varchar2_table(196) := 'me'||wwv_flow.LF||
'                                     ,i_component_type           => c_component_type_item'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(197) := '                                ,i_region_name              => m.region'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(198) := '          ,i_item_name                => m.item_name'||wwv_flow.LF||
'                                     ,i_item_l';
wwv_flow_imp.g_varchar2_table(199) := 'abel               => m.label'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => n';
wwv_flow_imp.g_varchar2_table(200) := 'ull'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(201) := '                ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loo';
wwv_flow_imp.g_varchar2_table(202) := 'p;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Runtime API Usage'||wwv_flow.LF||
'      l_migration := av_migration_t(i_apex_version            ';
wwv_flow_imp.g_varchar2_table(203) := ' => c_apex_version_latest'||wwv_flow.LF||
'                                   ,i_rn_type                  => av_migr';
wwv_flow_imp.g_varchar2_table(204) := 'ation_pkg.c_migration_type_generally'||wwv_flow.LF||
'                                   ,i_rn_chapter_no           ';
wwv_flow_imp.g_varchar2_table(205) := ' => ''0.3.6'''||wwv_flow.LF||
'                                   ,i_rn_chapter_name          => ''Runtime API Usage'''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(206) := '                                   ,i_rn_chapter_text          => ''Try to restrict the API usage to ';
wwv_flow_imp.g_varchar2_table(207) := 'only your App or deactive it.'''||wwv_flow.LF||
'                                   ,i_rn_chapter_link          => nu';
wwv_flow_imp.g_varchar2_table(208) := 'll'||wwv_flow.LF||
'                                   ,i_check_integrated         => 1'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(209) := '        ,i_check_needed             => 1'||wwv_flow.LF||
'                                   ,i_attribute_value     ';
wwv_flow_imp.g_varchar2_table(210) := '     => l_runtime_api_usage'||wwv_flow.LF||
'                                   ,i_migration_effort_in_days => c_eff';
wwv_flow_imp.g_varchar2_table(211) := 'ort_in_days_3_minutes'||wwv_flow.LF||
'                                   ,i_migration_priority       => c_migration';
wwv_flow_imp.g_varchar2_table(212) := '_priority_4_best_practices'||wwv_flow.LF||
'                                   ,i_app_id                   => i_app_';
wwv_flow_imp.g_varchar2_table(213) := 'id);'||wwv_flow.LF||
'      pipe row(l_migration);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_general_app_setti';
wwv_flow_imp.g_varchar2_table(214) := 'ngs;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_page_complexity'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_mi';
wwv_flow_imp.g_varchar2_table(215) := 'gration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_mig';
wwv_flow_imp.g_varchar2_table(216) := 'ration_t;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    l_effort_simple       number := 0.125;'||wwv_flow.LF||
'    l_effort_normal       number := 0.25;';
wwv_flow_imp.g_varchar2_table(217) := ''||wwv_flow.LF||
'    l_effort_complex      number := 1;'||wwv_flow.LF||
'    l_effort_very_complex number := 2;'||wwv_flow.LF||
'    l_sub_chapter ';
wwv_flow_imp.g_varchar2_table(218) := '        number;'||wwv_flow.LF||
'    l_effort              number;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(219) := '          ,''2'') > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      if f_app_has_universal_theme(i_app_id => i_app_id)'||wwv_flow.LF||
'      then';
wwv_flow_imp.g_varchar2_table(220) := ''||wwv_flow.LF||
'        l_effort_simple       := l_effort_simple / 10;'||wwv_flow.LF||
'        l_effort_normal       := l_effort_n';
wwv_flow_imp.g_varchar2_table(221) := 'ormal / 10;'||wwv_flow.LF||
'        l_effort_complex      := l_effort_complex / 10;'||wwv_flow.LF||
'        l_effort_very_complex ';
wwv_flow_imp.g_varchar2_table(222) := ':= l_effort_very_complex / 10;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for c in (select p.complexity'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(223) := '            ,p.count_objects'||wwv_flow.LF||
'                      ,p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(224) := '                from av_page_complexity_v p'||wwv_flow.LF||
'                where p.application_id = i_app_id'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(225) := '            order by p.complexity)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if c.complexity = c_complexity_simple'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(226) := '   then'||wwv_flow.LF||
'          l_sub_chapter := 1;'||wwv_flow.LF||
'          l_effort      := l_effort_simple;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(227) := '   elsif c.complexity = c_complexity_normal'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_sub_chapter := 2;'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(228) := 'l_effort      := l_effort_normal;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        elsif c.complexity = c_complexity_complex'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(229) := '    then'||wwv_flow.LF||
'          l_sub_chapter := 3;'||wwv_flow.LF||
'          l_effort      := l_effort_complex;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(230) := '     elsif c.complexity = c_complexity_very_complex'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_sub_chapter := 4;'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(231) := '        l_effort      := l_effort_very_complex;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      '||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(232) := 'l_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(233) := '                    ,i_rn_type                  => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(234) := '                                 ,i_rn_chapter_no            => ''0.2.'' || l_sub_chapter'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(235) := '                          ,i_rn_chapter_name          => ''Migration Effort for '' || c.complexity || ';
wwv_flow_imp.g_varchar2_table(236) := ''' Page(s)'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''Average effort for ';
wwv_flow_imp.g_varchar2_table(237) := 'adjusting page to latest version.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link         ';
wwv_flow_imp.g_varchar2_table(238) := ' => null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(239) := '                  ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribut';
wwv_flow_imp.g_varchar2_table(240) := 'e_value          => c.count_objects'||wwv_flow.LF||
'                                     ,i_migration_effort_in_day';
wwv_flow_imp.g_varchar2_table(241) := 's => l_effort'||wwv_flow.LF||
'                                     ,i_migration_priority       => 2'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(242) := '                       ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(243) := ' ,i_page_id                  => c.page_id'||wwv_flow.LF||
'                                     ,i_page_name        ';
wwv_flow_imp.g_varchar2_table(244) := '        => c.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => c.page_n';
wwv_flow_imp.g_varchar2_table(245) := 'ame'||wwv_flow.LF||
'                                     ,i_component_type           => c_component_type_page'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(246) := '                                 ,i_region_name              => null'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(247) := '       ,i_item_name                => null'||wwv_flow.LF||
'                                     ,i_item_label      ';
wwv_flow_imp.g_varchar2_table(248) := '         => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => null'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(249) := '                             ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                                  ';
wwv_flow_imp.g_varchar2_table(250) := '   ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end i';
wwv_flow_imp.g_varchar2_table(251) := 'f;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_page_complexity;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_javascript'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(252) := ' i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_';
wwv_flow_imp.g_varchar2_table(253) := 't'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    -- migrate to standard JavaScript'||wwv_flow.LF||
'    if instr(i_migration_priori';
wwv_flow_imp.g_varchar2_table(254) := 'ties'||wwv_flow.LF||
'            ,c_migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select j.applicat';
wwv_flow_imp.g_varchar2_table(255) := 'ion_id'||wwv_flow.LF||
'                      ,j.page_id'||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(256) := ',j.component_name'||wwv_flow.LF||
'                      ,j.component_type'||wwv_flow.LF||
'                      ,j.js_code_vc2'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(257) := '              from av_javascript_v j'||wwv_flow.LF||
'                where j.application_id = i_app_id'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(258) := '     and instr(j.js_code_vc2'||wwv_flow.LF||
'                        ,''htmldb_delete_message'') > 0)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(259) := '      pipe row(av_migration_t(i_apex_version             => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(260) := '                               ,i_rn_type                  => av_migration_pkg.c_migration_type_gene';
wwv_flow_imp.g_varchar2_table(261) := 'rally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.4.1'''||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(262) := '         ,i_rn_chapter_name          => ''Migrate JavaScript to declarative funcionality'''||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(263) := '                     ,i_rn_chapter_text          => ''Migrate Delete Confirm Messages to declarative ';
wwv_flow_imp.g_varchar2_table(264) := 'Message functionality.'''||wwv_flow.LF||
'                               ,i_rn_chapter_link          => null'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(265) := '                        ,i_check_integrated         => 1'||wwv_flow.LF||
'                               ,i_check_ne';
wwv_flow_imp.g_varchar2_table(266) := 'eded             => 1'||wwv_flow.LF||
'                               ,i_attribute_value          => m.js_code_vc2'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(267) := '                               ,i_migration_effort_in_days => c_effort_in_days_15_minutes'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(268) := '                      ,i_migration_priority       => c_migration_priority_3_recommed'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(269) := '                 ,i_app_id                   => m.application_id'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(270) := 'page_id                  => m.page_id'||wwv_flow.LF||
'                               ,i_page_name                =>';
wwv_flow_imp.g_varchar2_table(271) := ' m.page_name'||wwv_flow.LF||
'                               ,i_component_name           => m.component_name'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(272) := '                         ,i_component_type           => m.component_type'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(273) := '     ,i_region_name              => null'||wwv_flow.LF||
'                               ,i_item_name               ';
wwv_flow_imp.g_varchar2_table(274) := ' => null'||wwv_flow.LF||
'                               ,i_item_label               => null'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(275) := '         ,i_js_code_vc2              => m.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_';
wwv_flow_imp.g_varchar2_table(276) := 'vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_vc2             => null));'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(277) := 'end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    --'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_migration_pr';
wwv_flow_imp.g_varchar2_table(278) := 'iority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select j.application_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(279) := '   ,j.page_id'||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'                      ,j.component_name'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(280) := '              ,j.component_type'||wwv_flow.LF||
'                      ,j.js_code_vc2'||wwv_flow.LF||
'                from av_javas';
wwv_flow_imp.g_varchar2_table(281) := 'cript_v j'||wwv_flow.LF||
'                where j.application_id = i_app_id'||wwv_flow.LF||
'                and length(j.js_code_v';
wwv_flow_imp.g_varchar2_table(282) := 'c2) > 1000)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => av_migration_';
wwv_flow_imp.g_varchar2_table(283) := 'pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_type                  => av_migratio';
wwv_flow_imp.g_varchar2_table(284) := 'n_pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.4';
wwv_flow_imp.g_varchar2_table(285) := '.2'''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => ''Migrate complex JavaScript to st';
wwv_flow_imp.g_varchar2_table(286) := 'atic files'''||wwv_flow.LF||
'                               ,i_rn_chapter_text          => ''Migrate complex JavaScri';
wwv_flow_imp.g_varchar2_table(287) := 'pt (more than 1000 Characters) to static files.'''||wwv_flow.LF||
'                               ,i_rn_chapter_link ';
wwv_flow_imp.g_varchar2_table(288) := '         => null'||wwv_flow.LF||
'                               ,i_check_integrated         => 1'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(289) := '              ,i_check_needed             => 1'||wwv_flow.LF||
'                               ,i_attribute_value   ';
wwv_flow_imp.g_varchar2_table(290) := '       => m.js_code_vc2'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => c_effort_in_d';
wwv_flow_imp.g_varchar2_table(291) := 'ays_4_hours'||wwv_flow.LF||
'                               ,i_migration_priority       => c_migration_priority_4_be';
wwv_flow_imp.g_varchar2_table(292) := 'st_practices'||wwv_flow.LF||
'                               ,i_app_id                   => m.application_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(293) := '                         ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(294) := '_page_name                => m.page_name'||wwv_flow.LF||
'                               ,i_component_name          ';
wwv_flow_imp.g_varchar2_table(295) := ' => m.component_name'||wwv_flow.LF||
'                               ,i_component_type           => m.component_type';
wwv_flow_imp.g_varchar2_table(296) := ''||wwv_flow.LF||
'                               ,i_region_name              => null'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(297) := ' ,i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_label               => ';
wwv_flow_imp.g_varchar2_table(298) := 'null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => m.js_code_vc2'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(299) := '              ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_vc2   ';
wwv_flow_imp.g_varchar2_table(300) := '          => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_javascript;'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(301) := ''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_plsql'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_prioritie';
wwv_flow_imp.g_varchar2_table(302) := 's in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prior';
wwv_flow_imp.g_varchar2_table(303) := 'ities'||wwv_flow.LF||
'            ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.a';
wwv_flow_imp.g_varchar2_table(304) := 'pplication_id'||wwv_flow.LF||
'                      ,p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(305) := '       ,p.component_name'||wwv_flow.LF||
'                      ,p.component_type'||wwv_flow.LF||
'                      ,p.plsql_co';
wwv_flow_imp.g_varchar2_table(306) := 'de_vc2'||wwv_flow.LF||
'                from av_plsql_v p'||wwv_flow.LF||
'                where p.application_id = i_app_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(307) := '          and length(p.plsql_code_vc2) > 2000)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_v';
wwv_flow_imp.g_varchar2_table(308) := 'ersion             => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_t';
wwv_flow_imp.g_varchar2_table(309) := 'ype                  => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(310) := ',i_rn_chapter_no            => ''0.5.1'''||wwv_flow.LF||
'                               ,i_rn_chapter_name          =';
wwv_flow_imp.g_varchar2_table(311) := '> ''Migrate complex PL/SQL to database objects'''||wwv_flow.LF||
'                               ,i_rn_chapter_text   ';
wwv_flow_imp.g_varchar2_table(312) := '       => ''Migrate complex PL/SQL to Packages or Views for easier testing and ensure that their is n';
wwv_flow_imp.g_varchar2_table(313) := 'o compile issue.'''||wwv_flow.LF||
'                               ,i_rn_chapter_link          => null'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(314) := '                  ,i_check_integrated         => 1'||wwv_flow.LF||
'                               ,i_check_needed  ';
wwv_flow_imp.g_varchar2_table(315) := '           => 1'||wwv_flow.LF||
'                               ,i_attribute_value          => m.plsql_code_vc2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(316) := '                            ,i_migration_effort_in_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(317) := '               ,i_migration_priority       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(318) := '                ,i_app_id                   => m.application_id'||wwv_flow.LF||
'                               ,i_p';
wwv_flow_imp.g_varchar2_table(319) := 'age_id                  => m.page_id'||wwv_flow.LF||
'                               ,i_page_name                => ';
wwv_flow_imp.g_varchar2_table(320) := 'm.page_name'||wwv_flow.LF||
'                               ,i_component_name           => m.component_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(321) := '                        ,i_component_type           => m.component_type'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(322) := '    ,i_region_name              => null'||wwv_flow.LF||
'                               ,i_item_name                ';
wwv_flow_imp.g_varchar2_table(323) := '=> null'||wwv_flow.LF||
'                               ,i_item_label               => null'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(324) := '        ,i_js_code_vc2              => null'||wwv_flow.LF||
'                               ,i_plsql_code_vc2       ';
wwv_flow_imp.g_varchar2_table(325) := '    => m.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => null));'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(326) := '  end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_plsql;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_plugin';
wwv_flow_imp.g_varchar2_table(327) := 's'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_';
wwv_flow_imp.g_varchar2_table(328) := 'migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_migrati';
wwv_flow_imp.g_varchar2_table(329) := 'on_priority_2_should) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select name'||wwv_flow.LF||
'                      ,display_nam';
wwv_flow_imp.g_varchar2_table(330) := 'e'||wwv_flow.LF||
'                      ,plugin_type'||wwv_flow.LF||
'                      ,(select count(1)'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(331) := '    from av_plugins_v p1'||wwv_flow.LF||
'                        where p1.page_id is not null'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(332) := '    and p1.name = p.name'||wwv_flow.LF||
'                        and p1.application_id = p.application_id) plugin_r';
wwv_flow_imp.g_varchar2_table(333) := 'eferences'||wwv_flow.LF||
'                      ,render_function'||wwv_flow.LF||
'                      ,api_version'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(334) := '         ,help_text'||wwv_flow.LF||
'                      ,version_identifier'||wwv_flow.LF||
'                      ,about_url'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(335) := '                    ,p.application_id'||wwv_flow.LF||
'                from apex_appl_plugins p'||wwv_flow.LF||
'                whe';
wwv_flow_imp.g_varchar2_table(336) := 're p.application_id = i_app_id'||wwv_flow.LF||
'                and p.plugin_type <> ''Template Component'')'||wwv_flow.LF||
'      lo';
wwv_flow_imp.g_varchar2_table(337) := 'op'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => av_migration_pkg.c_apex_version_la';
wwv_flow_imp.g_varchar2_table(338) := 'test'||wwv_flow.LF||
'                               ,i_rn_type                  => av_migration_pkg.c_migration_typ';
wwv_flow_imp.g_varchar2_table(339) := 'e_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.6.1'''||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(340) := '               ,i_rn_chapter_name          => ''Plugins'''||wwv_flow.LF||
'                               ,i_rn_chapte';
wwv_flow_imp.g_varchar2_table(341) := 'r_text          => ''Replace Plugins with standard APEX Functionality.'''||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(342) := '   ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_integrated         =';
wwv_flow_imp.g_varchar2_table(343) := '> 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(344) := ' ,i_attribute_value          => m.display_name'||wwv_flow.LF||
'                               ,i_migration_effort_i';
wwv_flow_imp.g_varchar2_table(345) := 'n_days => c_effort_in_days_4_hours'||wwv_flow.LF||
'                               ,i_migration_priority       => c_';
wwv_flow_imp.g_varchar2_table(346) := 'migration_priority_2_should'||wwv_flow.LF||
'                               ,i_app_id                   => m.applica';
wwv_flow_imp.g_varchar2_table(347) := 'tion_id'||wwv_flow.LF||
'                               ,i_page_id                  => null'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(348) := '        ,i_page_name                => null'||wwv_flow.LF||
'                               ,i_component_name       ';
wwv_flow_imp.g_varchar2_table(349) := '    => m.display_name'||wwv_flow.LF||
'                               ,i_component_type           => m.plugin_type'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(350) := '                               ,i_region_name              => null'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(351) := 'i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_label               => nu';
wwv_flow_imp.g_varchar2_table(352) := 'll'||wwv_flow.LF||
'                               ,i_js_code_vc2              => null'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(353) := '   ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_vc2             =';
wwv_flow_imp.g_varchar2_table(354) := '> null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_plugins;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ';
wwv_flow_imp.g_varchar2_table(355) := 'ptf_effort_never_conditions'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities i';
wwv_flow_imp.g_varchar2_table(356) := 'n varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_prioriti';
wwv_flow_imp.g_varchar2_table(357) := 'es'||wwv_flow.LF||
'            ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select v.appl';
wwv_flow_imp.g_varchar2_table(358) := 'ication_id'||wwv_flow.LF||
'                      ,v.page_name'||wwv_flow.LF||
'                      ,v.page_id'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(359) := '    ,v.component_type'||wwv_flow.LF||
'                      ,v.component_name'||wwv_flow.LF||
'                      ,v.visibility_';
wwv_flow_imp.g_varchar2_table(360) := 'type'||wwv_flow.LF||
'                from av_visibility_v v'||wwv_flow.LF||
'                where v.visibility_category = ''CONDITI';
wwv_flow_imp.g_varchar2_table(361) := 'ON'''||wwv_flow.LF||
'                and upper(v.visibility_type) = ''NEVER'''||wwv_flow.LF||
'                and v.application_id = ';
wwv_flow_imp.g_varchar2_table(362) := 'i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => av_migration_pk';
wwv_flow_imp.g_varchar2_table(363) := 'g.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_type                  => av_migration_';
wwv_flow_imp.g_varchar2_table(364) := 'pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.6.1';
wwv_flow_imp.g_varchar2_table(365) := ''''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => ''Plugins'''||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(366) := '       ,i_rn_chapter_text          => ''Replace Plugins with standard APEX Functionality.'''||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(367) := '                      ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_i';
wwv_flow_imp.g_varchar2_table(368) := 'ntegrated         => 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(369) := '                    ,i_attribute_value          => m.visibility_type'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(370) := ' ,i_migration_effort_in_days => c_effort_in_days_3_minutes'||wwv_flow.LF||
'                               ,i_migrat';
wwv_flow_imp.g_varchar2_table(371) := 'ion_priority       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'                               ,i_app_i';
wwv_flow_imp.g_varchar2_table(372) := 'd                   => m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  ';
wwv_flow_imp.g_varchar2_table(373) := '=> m.page_id'||wwv_flow.LF||
'                               ,i_page_name                => m.page_name'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(374) := '                    ,i_component_name           => m.component_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(375) := ',i_component_type           => m.component_type'||wwv_flow.LF||
'                               ,i_region_name      ';
wwv_flow_imp.g_varchar2_table(376) := '        => null'||wwv_flow.LF||
'                               ,i_item_name                => null'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(377) := '                ,i_item_label               => null'||wwv_flow.LF||
'                               ,i_js_code_vc2  ';
wwv_flow_imp.g_varchar2_table(378) := '            => null'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(379) := '                    ,i_css_code_vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    re';
wwv_flow_imp.g_varchar2_table(380) := 'turn;'||wwv_flow.LF||
'  end ptf_effort_never_conditions;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_unused_auth_schemes'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i';
wwv_flow_imp.g_varchar2_table(381) := '_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t';
wwv_flow_imp.g_varchar2_table(382) := ''||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_migration_priority_4';
wwv_flow_imp.g_varchar2_table(383) := '_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select a.application_id'||wwv_flow.LF||
'                      ,a.au';
wwv_flow_imp.g_varchar2_table(384) := 'thorization_scheme_name'||wwv_flow.LF||
'                      ,a.scheme_type'||wwv_flow.LF||
'                from av_p0600_not_use';
wwv_flow_imp.g_varchar2_table(385) := 'd_auth_schemes_v a'||wwv_flow.LF||
'                where a.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row';
wwv_flow_imp.g_varchar2_table(386) := '(av_migration_t(i_apex_version             => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(387) := '                 ,i_rn_type                  => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(388) := '                        ,i_rn_chapter_no            => ''0.7.2'''||wwv_flow.LF||
'                               ,i_rn';
wwv_flow_imp.g_varchar2_table(389) := '_chapter_name          => ''Unused Authorization Schemes'''||wwv_flow.LF||
'                               ,i_rn_chapt';
wwv_flow_imp.g_varchar2_table(390) := 'er_text          => ''Remove unused Authorization Schemes.'''||wwv_flow.LF||
'                               ,i_rn_cha';
wwv_flow_imp.g_varchar2_table(391) := 'pter_link          => null'||wwv_flow.LF||
'                               ,i_check_integrated         => 1'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(392) := '                        ,i_check_needed             => 1'||wwv_flow.LF||
'                               ,i_attribut';
wwv_flow_imp.g_varchar2_table(393) := 'e_value          => m.authorization_scheme_name'||wwv_flow.LF||
'                               ,i_migration_effort_';
wwv_flow_imp.g_varchar2_table(394) := 'in_days => c_effort_in_days_3_minutes'||wwv_flow.LF||
'                               ,i_migration_priority       =>';
wwv_flow_imp.g_varchar2_table(395) := ' c_migration_priority_4_best_practices'||wwv_flow.LF||
'                               ,i_app_id                   =';
wwv_flow_imp.g_varchar2_table(396) := '> m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  => null'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(397) := '                   ,i_page_name                => null'||wwv_flow.LF||
'                               ,i_component_';
wwv_flow_imp.g_varchar2_table(398) := 'name           => m.authorization_scheme_name'||wwv_flow.LF||
'                               ,i_component_type     ';
wwv_flow_imp.g_varchar2_table(399) := '      => ''Authorization Schemes'''||wwv_flow.LF||
'                               ,i_region_name              => null';
wwv_flow_imp.g_varchar2_table(400) := ''||wwv_flow.LF||
'                               ,i_item_name                => null'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(401) := ' ,i_item_label               => null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => ';
wwv_flow_imp.g_varchar2_table(402) := 'null'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(403) := '     ,i_css_code_vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end pt';
wwv_flow_imp.g_varchar2_table(404) := 'f_effort_unused_auth_schemes;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_upgrade_application'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_workspace_id      ';
wwv_flow_imp.g_varchar2_table(405) := '   in number'||wwv_flow.LF||
'   ,i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) retu';
wwv_flow_imp.g_varchar2_table(406) := 'rn av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    --todo - f4000 - page 89 - region Upgrade Summary';
wwv_flow_imp.g_varchar2_table(407) := ' has to be reworked'||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_upgrade_application;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_calculat';
wwv_flow_imp.g_varchar2_table(408) := 'ion'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_apex_versions        in varchar2 default null';
wwv_flow_imp.g_varchar2_table(409) := ''||wwv_flow.LF||
'   ,i_migration_priorities in varchar2 default null'||wwv_flow.LF||
'   ,i_migration_types      in varchar2 default';
wwv_flow_imp.g_varchar2_table(410) := ' null'||wwv_flow.LF||
'   ,i_show_only_findings   in number default null'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined ';
wwv_flow_imp.g_varchar2_table(411) := 'is'||wwv_flow.LF||
'    l_workspace_id number;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_workspace_id := apex_application_install.get_workspac';
wwv_flow_imp.g_varchar2_table(412) := 'e_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- General settings'||wwv_flow.LF||
'    if i_migration_types is null or'||wwv_flow.LF||
'       instr(i_migration_ty';
wwv_flow_imp.g_varchar2_table(413) := 'pes'||wwv_flow.LF||
'            ,c_migration_type_generally) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(414) := '   from av_migration_pkg.ptf_effort_general_app_settings(i_app_id               => i_app_id'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(415) := '                                                              ,i_migration_priorities => i_migration';
wwv_flow_imp.g_varchar2_table(416) := '_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_vers';
wwv_flow_imp.g_varchar2_table(417) := 'ion'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(418) := '         ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapte';
wwv_flow_imp.g_varchar2_table(419) := 'r_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => ';
wwv_flow_imp.g_varchar2_table(420) := 'p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(421) := '                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(422) := '             ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attrib';
wwv_flow_imp.g_varchar2_table(423) := 'ute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days ';
wwv_flow_imp.g_varchar2_table(424) := '=> p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migra';
wwv_flow_imp.g_varchar2_table(425) := 'tion_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(426) := '                  ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_n';
wwv_flow_imp.g_varchar2_table(427) := 'ame                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.c';
wwv_flow_imp.g_varchar2_table(428) := 'omponent_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(429) := '                          ,i_region_name              => p.region_name'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(430) := '   ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label         ';
wwv_flow_imp.g_varchar2_table(431) := '      => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(432) := '                               ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(433) := '           ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Page Co';
wwv_flow_imp.g_varchar2_table(434) := 'mplexity'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort_page_complexity';
wwv_flow_imp.g_varchar2_table(435) := '(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                               ';
wwv_flow_imp.g_varchar2_table(436) := ' ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_';
wwv_flow_imp.g_varchar2_table(437) := 'apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type               ';
wwv_flow_imp.g_varchar2_table(438) := '   => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(439) := '                           ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(440) := '        ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapt';
wwv_flow_imp.g_varchar2_table(441) := 'er_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         =>';
wwv_flow_imp.g_varchar2_table(442) := ' p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(443) := '                              ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(444) := '           ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(445) := ' ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id      ';
wwv_flow_imp.g_varchar2_table(446) := '             => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(447) := '                              ,i_page_name                => p.page_name'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(448) := '     ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_ty';
wwv_flow_imp.g_varchar2_table(449) := 'pe           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.re';
wwv_flow_imp.g_varchar2_table(450) := 'gion_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(451) := '                 ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_c';
wwv_flow_imp.g_varchar2_table(452) := 'ode_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           =>';
wwv_flow_imp.g_varchar2_table(453) := ' p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(454) := '      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- JavaScript'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migrat';
wwv_flow_imp.g_varchar2_table(455) := 'ion_pkg.ptf_effort_javascript(i_app_id               => i_app_id'||wwv_flow.LF||
'                                  ';
wwv_flow_imp.g_varchar2_table(456) := '                         ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pi';
wwv_flow_imp.g_varchar2_table(457) := 'pe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(458) := 'i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            ';
wwv_flow_imp.g_varchar2_table(459) := '=> p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name';
wwv_flow_imp.g_varchar2_table(460) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(461) := '             ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_che';
wwv_flow_imp.g_varchar2_table(462) := 'ck_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed         ';
wwv_flow_imp.g_varchar2_table(463) := '    => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_val';
wwv_flow_imp.g_varchar2_table(464) := 'ue'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(465) := '                         ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(466) := '         ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id         ';
wwv_flow_imp.g_varchar2_table(467) := '         => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(468) := '                             ,i_component_name           => p.component_name'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(469) := '         ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_n';
wwv_flow_imp.g_varchar2_table(470) := 'ame              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.i';
wwv_flow_imp.g_varchar2_table(471) := 'tem_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(472) := '                 ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_pls';
wwv_flow_imp.g_varchar2_table(473) := 'ql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2           ';
wwv_flow_imp.g_varchar2_table(474) := '  => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- PL/SQL'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(475) := '      from av_migration_pkg.ptf_effort_plsql(i_app_id               => i_app_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(476) := '                                   ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(477) := '        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(478) := '         ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no  ';
wwv_flow_imp.g_varchar2_table(479) := '          => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_cha';
wwv_flow_imp.g_varchar2_table(480) := 'pter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(481) := '                       ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(482) := '    ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_neede';
wwv_flow_imp.g_varchar2_table(483) := 'd             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.att';
wwv_flow_imp.g_varchar2_table(484) := 'ribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_in_da';
wwv_flow_imp.g_varchar2_table(485) := 'ys'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(486) := '                   ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_i';
wwv_flow_imp.g_varchar2_table(487) := 'd                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.pag';
wwv_flow_imp.g_varchar2_table(488) := 'e_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(489) := '                   ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(490) := 'i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name            ';
wwv_flow_imp.g_varchar2_table(491) := '    => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(492) := '                           ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(493) := '    ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2 ';
wwv_flow_imp.g_varchar2_table(494) := '            => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Plugins'||wwv_flow.LF||
'      for p in (select *';
wwv_flow_imp.g_varchar2_table(495) := ''||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort_plugins(i_app_id               => i_app_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(496) := '                                                  ,i_migration_priorities => i_migration_priorities)';
wwv_flow_imp.g_varchar2_table(497) := ')'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(498) := '                        ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(499) := 'rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name      ';
wwv_flow_imp.g_varchar2_table(500) := '    => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter';
wwv_flow_imp.g_varchar2_table(501) := '_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(502) := '                   ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(503) := ' ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value   ';
wwv_flow_imp.g_varchar2_table(504) := '       => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migrati';
wwv_flow_imp.g_varchar2_table(505) := 'on_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priorit';
wwv_flow_imp.g_varchar2_table(506) := 'y'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(507) := '      ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name         ';
wwv_flow_imp.g_varchar2_table(508) := '       => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_nam';
wwv_flow_imp.g_varchar2_table(509) := 'e'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(510) := '              ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_n';
wwv_flow_imp.g_varchar2_table(511) := 'ame                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.i';
wwv_flow_imp.g_varchar2_table(512) := 'tem_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(513) := '                   ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(514) := 'i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Never Conditions'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(515) := '     for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort_never_conditions(i_app_id ';
wwv_flow_imp.g_varchar2_table(516) := '              => i_app_id'||wwv_flow.LF||
'                                                                 ,i_migra';
wwv_flow_imp.g_varchar2_table(517) := 'tion_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_vers';
wwv_flow_imp.g_varchar2_table(518) := 'ion             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.r';
wwv_flow_imp.g_varchar2_table(519) := 'n_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(520) := '                  ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(521) := 'i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link  ';
wwv_flow_imp.g_varchar2_table(522) := '        => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_';
wwv_flow_imp.g_varchar2_table(523) := 'integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(524) := '                     ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(525) := '  ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migra';
wwv_flow_imp.g_varchar2_table(526) := 'tion_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id               ';
wwv_flow_imp.g_varchar2_table(527) := '    => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(528) := '                     ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,i_c';
wwv_flow_imp.g_varchar2_table(529) := 'omponent_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type       ';
wwv_flow_imp.g_varchar2_table(530) := '    => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_name';
wwv_flow_imp.g_varchar2_table(531) := ''||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(532) := '        ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2  ';
wwv_flow_imp.g_varchar2_table(533) := '            => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_';
wwv_flow_imp.g_varchar2_table(534) := 'code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end';
wwv_flow_imp.g_varchar2_table(535) := ' loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Never Conditions'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration';
wwv_flow_imp.g_varchar2_table(536) := '_pkg.ptf_effort_unused_auth_schemes(i_app_id               => i_app_id'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(537) := '                                        ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      l';
wwv_flow_imp.g_varchar2_table(538) := 'oop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(539) := '              ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter';
wwv_flow_imp.g_varchar2_table(540) := '_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.r';
wwv_flow_imp.g_varchar2_table(541) := 'n_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(542) := '                            ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(543) := '         ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_';
wwv_flow_imp.g_varchar2_table(544) := 'needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => ';
wwv_flow_imp.g_varchar2_table(545) := 'p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_';
wwv_flow_imp.g_varchar2_table(546) := 'in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(547) := '                        ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_p';
wwv_flow_imp.g_varchar2_table(548) := 'age_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => ';
wwv_flow_imp.g_varchar2_table(549) := 'p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(550) := '                        ,i_component_type           => p.component_type'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(551) := '    ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name       ';
wwv_flow_imp.g_varchar2_table(552) := '         => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label';
wwv_flow_imp.g_varchar2_table(553) := ''||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(554) := '         ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code';
wwv_flow_imp.g_varchar2_table(555) := '_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Upgrade Application Findings';
wwv_flow_imp.g_varchar2_table(556) := ''||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_upgrade_application(i_workspace';
wwv_flow_imp.g_varchar2_table(557) := '_id         => l_workspace_id'||wwv_flow.LF||
'                                                             ,i_app_i';
wwv_flow_imp.g_varchar2_table(558) := 'd               => i_app_id'||wwv_flow.LF||
'                                                             ,i_migrati';
wwv_flow_imp.g_varchar2_table(559) := 'on_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_versio';
wwv_flow_imp.g_varchar2_table(560) := 'n             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_';
wwv_flow_imp.g_varchar2_table(561) := 'type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(562) := '                ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(563) := 'rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link    ';
wwv_flow_imp.g_varchar2_table(564) := '      => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_in';
wwv_flow_imp.g_varchar2_table(565) := 'tegrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(566) := '                   ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(567) := ',i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migrati';
wwv_flow_imp.g_varchar2_table(568) := 'on_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                 ';
wwv_flow_imp.g_varchar2_table(569) := '  => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(570) := '                   ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,i_com';
wwv_flow_imp.g_varchar2_table(571) := 'ponent_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type         ';
wwv_flow_imp.g_varchar2_table(572) := '  => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(573) := '                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(574) := '      ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2    ';
wwv_flow_imp.g_varchar2_table(575) := '          => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_co';
wwv_flow_imp.g_varchar2_table(576) := 'de_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end l';
wwv_flow_imp.g_varchar2_table(577) := 'oop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 19.2'||wwv_flow.LF||
'    -- todo - finding check needs to be integrated into eve';
wwv_flow_imp.g_varchar2_table(578) := 'ry single check'||wwv_flow.LF||
'    if i_show_only_findings = 0 and'||wwv_flow.LF||
'       (i_apex_versions is null or instr(i_ape';
wwv_flow_imp.g_varchar2_table(579) := 'x_versions'||wwv_flow.LF||
'                                        ,c_apex_version_19_2) > 0)'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for ';
wwv_flow_imp.g_varchar2_table(580) := 'p in (select *'||wwv_flow.LF||
'                from av_migration_19_2_pkg.f_dep_6_1_1(i_app_id               => i_a';
wwv_flow_imp.g_varchar2_table(581) := 'pp_id'||wwv_flow.LF||
'                                                      ,i_migration_priorities => i_migration_';
wwv_flow_imp.g_varchar2_table(582) := 'priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_versi';
wwv_flow_imp.g_varchar2_table(583) := 'on'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(584) := '        ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter';
wwv_flow_imp.g_varchar2_table(585) := '_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p';
wwv_flow_imp.g_varchar2_table(586) := '.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(587) := '                              ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(588) := '            ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribu';
wwv_flow_imp.g_varchar2_table(589) := 'te_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days =';
wwv_flow_imp.g_varchar2_table(590) := '> p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migrat';
wwv_flow_imp.g_varchar2_table(591) := 'ion_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(592) := '                 ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_na';
wwv_flow_imp.g_varchar2_table(593) := 'me                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.co';
wwv_flow_imp.g_varchar2_table(594) := 'mponent_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(595) := '                         ,i_region_name              => p.region_name'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(596) := '  ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label          ';
wwv_flow_imp.g_varchar2_table(597) := '     => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(598) := '                              ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(599) := '          ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (s';
wwv_flow_imp.g_varchar2_table(600) := 'elect *'||wwv_flow.LF||
'                from av_migration_19_2_pkg.f_dep_6_1_2(i_app_id               => i_app_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(601) := '                                                      ,i_migration_priorities => i_migration_priorit';
wwv_flow_imp.g_varchar2_table(602) := 'ies))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(603) := '                            ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(604) := ' ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name  ';
wwv_flow_imp.g_varchar2_table(605) := '        => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_cha';
wwv_flow_imp.g_varchar2_table(606) := 'pter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(607) := '                       ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(608) := '     ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_valu';
wwv_flow_imp.g_varchar2_table(609) := 'e          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.mig';
wwv_flow_imp.g_varchar2_table(610) := 'ration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_pri';
wwv_flow_imp.g_varchar2_table(611) := 'ority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(612) := '          ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name     ';
wwv_flow_imp.g_varchar2_table(613) := '           => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component';
wwv_flow_imp.g_varchar2_table(614) := '_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(615) := '                  ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_it';
wwv_flow_imp.g_varchar2_table(616) := 'em_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               =>';
wwv_flow_imp.g_varchar2_table(617) := ' p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(618) := '                       ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(619) := '   ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 2';
wwv_flow_imp.g_varchar2_table(620) := '2.1'||wwv_flow.LF||
'    if i_apex_versions is null or'||wwv_flow.LF||
'       instr(i_apex_versions'||wwv_flow.LF||
'            ,av_migration_20_2';
wwv_flow_imp.g_varchar2_table(621) := '_pkg.c_apex_version) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2';
wwv_flow_imp.g_varchar2_table(622) := '_pkg.ptf_des_7_1_4(i_app_id               => i_app_id'||wwv_flow.LF||
'                                             ';
wwv_flow_imp.g_varchar2_table(623) := '           ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migr';
wwv_flow_imp.g_varchar2_table(624) := 'ation_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type     ';
wwv_flow_imp.g_varchar2_table(625) := '             => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapte';
wwv_flow_imp.g_varchar2_table(626) := 'r_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(627) := '                  ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(628) := 'i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated ';
wwv_flow_imp.g_varchar2_table(629) := '        => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check';
wwv_flow_imp.g_varchar2_table(630) := '_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(631) := '                     ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(632) := '           ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_ap';
wwv_flow_imp.g_varchar2_table(633) := 'p_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.';
wwv_flow_imp.g_varchar2_table(634) := 'page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(635) := '               ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_co';
wwv_flow_imp.g_varchar2_table(636) := 'mponent_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name           ';
wwv_flow_imp.g_varchar2_table(637) := '   => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(638) := '                           ,i_item_label               => p.item_label'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(639) := '   ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2   ';
wwv_flow_imp.g_varchar2_table(640) := '        => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_cod';
wwv_flow_imp.g_varchar2_table(641) := 'e_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2_pk';
wwv_flow_imp.g_varchar2_table(642) := 'g.ptf_des_7_1_5(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                ';
wwv_flow_imp.g_varchar2_table(643) := '        ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migrati';
wwv_flow_imp.g_varchar2_table(644) := 'on_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type        ';
wwv_flow_imp.g_varchar2_table(645) := '          => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_n';
wwv_flow_imp.g_varchar2_table(646) := 'o'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(647) := '               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_r';
wwv_flow_imp.g_varchar2_table(648) := 'n_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated    ';
wwv_flow_imp.g_varchar2_table(649) := '     => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_ne';
wwv_flow_imp.g_varchar2_table(650) := 'eded'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(651) := '                  ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(652) := '        ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_i';
wwv_flow_imp.g_varchar2_table(653) := 'd                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.pag';
wwv_flow_imp.g_varchar2_table(654) := 'e_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(655) := '            ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_compo';
wwv_flow_imp.g_varchar2_table(656) := 'nent_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              ';
wwv_flow_imp.g_varchar2_table(657) := '=> p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(658) := '                        ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(659) := ',i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2      ';
wwv_flow_imp.g_varchar2_table(660) := '     => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_v';
wwv_flow_imp.g_varchar2_table(661) := 'c2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2_pkg.p';
wwv_flow_imp.g_varchar2_table(662) := 'tf_des_7_1_7(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                   ';
wwv_flow_imp.g_varchar2_table(663) := '     ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_';
wwv_flow_imp.g_varchar2_table(664) := 't(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type           ';
wwv_flow_imp.g_varchar2_table(665) := '       => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(666) := '                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(667) := '            ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_c';
wwv_flow_imp.g_varchar2_table(668) := 'hapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated       ';
wwv_flow_imp.g_varchar2_table(669) := '  => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_neede';
wwv_flow_imp.g_varchar2_table(670) := 'd'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(671) := '               ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(672) := '     ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id  ';
wwv_flow_imp.g_varchar2_table(673) := '                 => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_i';
wwv_flow_imp.g_varchar2_table(674) := 'd'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(675) := '         ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_componen';
wwv_flow_imp.g_varchar2_table(676) := 't_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => ';
wwv_flow_imp.g_varchar2_table(677) := 'p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(678) := '                     ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(679) := 'js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2         ';
wwv_flow_imp.g_varchar2_table(680) := '  => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2)';
wwv_flow_imp.g_varchar2_table(681) := ');'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2_pkg.ptf_';
wwv_flow_imp.g_varchar2_table(682) := 'des_7_1_8(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                      ';
wwv_flow_imp.g_varchar2_table(683) := '  ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i';
wwv_flow_imp.g_varchar2_table(684) := '_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type              ';
wwv_flow_imp.g_varchar2_table(685) := '    => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(686) := '                            ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(687) := '         ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(688) := 'ter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         =';
wwv_flow_imp.g_varchar2_table(689) := '> p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(690) := '                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(691) := '            ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(692) := '  ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id     ';
wwv_flow_imp.g_varchar2_table(693) := '              => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(694) := '                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(695) := '      ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_t';
wwv_flow_imp.g_varchar2_table(696) := 'ype           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.r';
wwv_flow_imp.g_varchar2_table(697) := 'egion_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(698) := '                  ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_';
wwv_flow_imp.g_varchar2_table(699) := 'code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           =';
wwv_flow_imp.g_varchar2_table(700) := '> p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));';
wwv_flow_imp.g_varchar2_table(701) := ''||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 22.1'||wwv_flow.LF||
'    if i_apex_versions is null or'||wwv_flow.LF||
'       instr';
wwv_flow_imp.g_varchar2_table(702) := '(i_apex_versions'||wwv_flow.LF||
'            ,av_migration_22_1_pkg.c_apex_version) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (';
wwv_flow_imp.g_varchar2_table(703) := 'select *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_1(i_app_id               => i_app_i';
wwv_flow_imp.g_varchar2_table(704) := 'd'||wwv_flow.LF||
'                                                        ,i_migration_priorities => i_migration_pr';
wwv_flow_imp.g_varchar2_table(705) := 'iorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version';
wwv_flow_imp.g_varchar2_table(706) := ''||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(707) := '      ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_n';
wwv_flow_imp.g_varchar2_table(708) := 'ame          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.r';
wwv_flow_imp.g_varchar2_table(709) := 'n_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(710) := '                            ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(711) := '          ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute';
wwv_flow_imp.g_varchar2_table(712) := '_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => ';
wwv_flow_imp.g_varchar2_table(713) := 'p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migratio';
wwv_flow_imp.g_varchar2_table(714) := 'n_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(715) := '               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name';
wwv_flow_imp.g_varchar2_table(716) := '                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.comp';
wwv_flow_imp.g_varchar2_table(717) := 'onent_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(718) := '                       ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(719) := ',i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label            ';
wwv_flow_imp.g_varchar2_table(720) := '   => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(721) := '                            ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(722) := '        ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (sel';
wwv_flow_imp.g_varchar2_table(723) := 'ect *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_2(i_app_id               => i_app_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(724) := '                                                        ,i_migration_priorities => i_migration_prior';
wwv_flow_imp.g_varchar2_table(725) := 'ities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(726) := '                              ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(727) := '   ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name';
wwv_flow_imp.g_varchar2_table(728) := '          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_c';
wwv_flow_imp.g_varchar2_table(729) := 'hapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(730) := '                         ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(731) := '       ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_va';
wwv_flow_imp.g_varchar2_table(732) := 'lue          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.m';
wwv_flow_imp.g_varchar2_table(733) := 'igration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_p';
wwv_flow_imp.g_varchar2_table(734) := 'riority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(735) := '            ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name   ';
wwv_flow_imp.g_varchar2_table(736) := '             => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.compone';
wwv_flow_imp.g_varchar2_table(737) := 'nt_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(738) := '                    ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(739) := 'item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               ';
wwv_flow_imp.g_varchar2_table(740) := '=> p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(741) := '                         ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(742) := '     ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select';
wwv_flow_imp.g_varchar2_table(743) := ' *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_4(i_app_id               => i_app_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(744) := '                                                     ,i_migration_priorities => i_migration_prioriti';
wwv_flow_imp.g_varchar2_table(745) := 'es))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(746) := '                           ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(747) := ',i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name   ';
wwv_flow_imp.g_varchar2_table(748) := '       => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chap';
wwv_flow_imp.g_varchar2_table(749) := 'ter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(750) := '                      ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(751) := '    ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value';
wwv_flow_imp.g_varchar2_table(752) := '          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migr';
wwv_flow_imp.g_varchar2_table(753) := 'ation_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_prio';
wwv_flow_imp.g_varchar2_table(754) := 'rity'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(755) := '         ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name      ';
wwv_flow_imp.g_varchar2_table(756) := '          => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_';
wwv_flow_imp.g_varchar2_table(757) := 'name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(758) := '                 ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_ite';
wwv_flow_imp.g_varchar2_table(759) := 'm_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => ';
wwv_flow_imp.g_varchar2_table(760) := 'p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(761) := '                      ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(762) := '  ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *';
wwv_flow_imp.g_varchar2_table(763) := ''||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_6(i_app_id               => i_app_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(764) := '                                                  ,i_migration_priorities => i_migration_priorities)';
wwv_flow_imp.g_varchar2_table(765) := ')'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(766) := '                        ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(767) := 'rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name      ';
wwv_flow_imp.g_varchar2_table(768) := '    => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter';
wwv_flow_imp.g_varchar2_table(769) := '_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(770) := '                   ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(771) := ' ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value   ';
wwv_flow_imp.g_varchar2_table(772) := '       => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migrati';
wwv_flow_imp.g_varchar2_table(773) := 'on_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priorit';
wwv_flow_imp.g_varchar2_table(774) := 'y'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(775) := '      ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name         ';
wwv_flow_imp.g_varchar2_table(776) := '       => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_nam';
wwv_flow_imp.g_varchar2_table(777) := 'e'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(778) := '              ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_n';
wwv_flow_imp.g_varchar2_table(779) := 'ame                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.i';
wwv_flow_imp.g_varchar2_table(780) := 'tem_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(781) := '                   ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(782) := 'i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(783) := '              from av_migration_22_1_pkg.ptf_des_8_1_7(i_app_id               => i_app_id'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(784) := '                                               ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(785) := '      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(786) := '                     ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_';
wwv_flow_imp.g_varchar2_table(787) := 'chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name         ';
wwv_flow_imp.g_varchar2_table(788) := ' => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_te';
wwv_flow_imp.g_varchar2_table(789) := 'xt'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(790) := '                ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(791) := '_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value      ';
wwv_flow_imp.g_varchar2_table(792) := '    => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_';
wwv_flow_imp.g_varchar2_table(793) := 'effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(794) := '                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(795) := '   ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name            ';
wwv_flow_imp.g_varchar2_table(796) := '    => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(797) := '                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(798) := '           ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name';
wwv_flow_imp.g_varchar2_table(799) := '                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item';
wwv_flow_imp.g_varchar2_table(800) := '_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(801) := '                ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_c';
wwv_flow_imp.g_varchar2_table(802) := 'ss_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(803) := '           from av_migration_22_1_pkg.ptf_des_8_1_13(i_app_id               => i_app_id'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(804) := '                                              ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(805) := '     loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(806) := '                    ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_c';
wwv_flow_imp.g_varchar2_table(807) := 'hapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          ';
wwv_flow_imp.g_varchar2_table(808) := '=> p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_tex';
wwv_flow_imp.g_varchar2_table(809) := 't'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(810) := '               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(811) := 'check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value       ';
wwv_flow_imp.g_varchar2_table(812) := '   => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_e';
wwv_flow_imp.g_varchar2_table(813) := 'ffort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(814) := '                              ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(815) := '  ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name             ';
wwv_flow_imp.g_varchar2_table(816) := '   => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(817) := '                              ,i_component_type           => p.component_type'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(818) := '          ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name ';
wwv_flow_imp.g_varchar2_table(819) := '               => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_';
wwv_flow_imp.g_varchar2_table(820) := 'label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(821) := '               ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_cs';
wwv_flow_imp.g_varchar2_table(822) := 's_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end pt';
wwv_flow_imp.g_varchar2_table(823) := 'f_effort_calculation;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_pkg;'||wwv_flow.LF||
'/ ';
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(71860908591255323)
,p_install_id=>wwv_flow_imp.id(314927592265159640)
,p_name=>'av_migration_pkg'
,p_sequence=>200
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(71861081573255325)
,p_script_id=>wwv_flow_imp.id(71860908591255323)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'AV_MIGRATION_PKG'
);
wwv_flow_imp.component_end;
end;
/
