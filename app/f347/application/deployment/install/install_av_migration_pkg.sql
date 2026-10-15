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
'  c_migration_type_generally   constant varchar2(20 c';
wwv_flow_imp.g_varchar2_table(2) := 'har) := ''generally'';'||wwv_flow.LF||
'  c_migration_type_new_feature constant varchar2(20 char) := ''new feature'';'||wwv_flow.LF||
'  c';
wwv_flow_imp.g_varchar2_table(3) := '_migration_type_deprecated  constant varchar2(20 char) := ''deprecated'';'||wwv_flow.LF||
'  c_migration_type_desupport';
wwv_flow_imp.g_varchar2_table(4) := 'ed constant varchar2(20 char) := ''desupported'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_migration_priority_1_must           constant nu';
wwv_flow_imp.g_varchar2_table(5) := 'mber := 1;'||wwv_flow.LF||
'  c_migration_priority_2_should         constant number := 2;'||wwv_flow.LF||
'  c_migration_priority_3_re';
wwv_flow_imp.g_varchar2_table(6) := 'commed       constant number := 3;'||wwv_flow.LF||
'  c_migration_priority_4_best_practices constant number := 4;'||wwv_flow.LF||
'  c';
wwv_flow_imp.g_varchar2_table(7) := '_migration_priotity_5_information    constant number := 5;'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_complexity_simple       constant var';
wwv_flow_imp.g_varchar2_table(8) := 'char2(20 char) := ''simple'';'||wwv_flow.LF||
'  c_complexity_normal       constant varchar2(20 char) := ''normal'';'||wwv_flow.LF||
'  c_';
wwv_flow_imp.g_varchar2_table(9) := 'complexity_complex      constant varchar2(20 char) := ''complex'';'||wwv_flow.LF||
'  c_complexity_very_complex constan';
wwv_flow_imp.g_varchar2_table(10) := 't varchar2(20 char) := ''very complex'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_component_type_page           constant varchar2(20 char)';
wwv_flow_imp.g_varchar2_table(11) := ' := ''Page'';'||wwv_flow.LF||
'  c_component_type_region         constant varchar2(20 char) := ''Region'';'||wwv_flow.LF||
'  c_component_';
wwv_flow_imp.g_varchar2_table(12) := 'type_item           constant varchar2(20 char) := ''Item'';'||wwv_flow.LF||
'  c_component_type_button         constant';
wwv_flow_imp.g_varchar2_table(13) := ' varchar2(20 char) := ''Button'';'||wwv_flow.LF||
'  c_component_type_dynamic_action constant varchar2(20 char) := ''Dyn';
wwv_flow_imp.g_varchar2_table(14) := 'amic Action'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_apex_version_19_2   constant varchar2(20 char) := ''19.2'';'||wwv_flow.LF||
'  c_apex_version_20_1  ';
wwv_flow_imp.g_varchar2_table(15) := ' constant varchar2(20 char) := ''20.1'';'||wwv_flow.LF||
'  c_apex_version_20_2   constant varchar2(20 char) := ''20.2'';';
wwv_flow_imp.g_varchar2_table(16) := ''||wwv_flow.LF||
'  c_apex_version_21_1   constant varchar2(20 char) := ''21.1'';'||wwv_flow.LF||
'  c_apex_version_21_2   constant varc';
wwv_flow_imp.g_varchar2_table(17) := 'har2(20 char) := ''21.2'';'||wwv_flow.LF||
'  c_apex_version_22_1   constant varchar2(20 char) := ''22.1'';'||wwv_flow.LF||
'  c_apex_vers';
wwv_flow_imp.g_varchar2_table(18) := 'ion_22_2   constant varchar2(20 char) := ''22.2'';'||wwv_flow.LF||
'  c_apex_version_23_1   constant varchar2(20 char) ';
wwv_flow_imp.g_varchar2_table(19) := ':= ''23.1'';'||wwv_flow.LF||
'  c_apex_version_23_2   constant varchar2(20 char) := ''23.2'';'||wwv_flow.LF||
'  c_apex_version_24_1   con';
wwv_flow_imp.g_varchar2_table(20) := 'stant varchar2(20 char) := ''24.1'';'||wwv_flow.LF||
'  c_apex_version_24_2   constant varchar2(20 char) := ''24.2'';'||wwv_flow.LF||
'  c';
wwv_flow_imp.g_varchar2_table(21) := '_apex_version_26_1   constant varchar2(20 char) := ''26.1'';'||wwv_flow.LF||
'  c_apex_version_latest constant varchar2';
wwv_flow_imp.g_varchar2_table(22) := '(20 char) := c_apex_version_26_1;'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_comp_mode_latest            constant varchar2(20 char) := c_a';
wwv_flow_imp.g_varchar2_table(23) := 'pex_version_latest;'||wwv_flow.LF||
'  c_comp_mode_one_before_latest constant varchar2(20 char) := ''21.2'';'||wwv_flow.LF||
''||wwv_flow.LF||
'  c_effor';
wwv_flow_imp.g_varchar2_table(24) := 't_in_days_1_day      constant number := 1;'||wwv_flow.LF||
'  c_effort_in_days_4_hours    constant number := 0.5;'||wwv_flow.LF||
'  c';
wwv_flow_imp.g_varchar2_table(25) := '_effort_in_days_1_hour     constant number := 0.125;'||wwv_flow.LF||
'  c_effort_in_days_15_minutes constant number :';
wwv_flow_imp.g_varchar2_table(26) := '= c_effort_in_days_1_hour / 4;'||wwv_flow.LF||
'  c_effort_in_days_10_minutes constant number := c_effort_in_days_1_h';
wwv_flow_imp.g_varchar2_table(27) := 'our / 6;'||wwv_flow.LF||
'  c_effort_in_days_5_minutes  constant number := c_effort_in_days_1_hour / 12;'||wwv_flow.LF||
'  c_effort_i';
wwv_flow_imp.g_varchar2_table(28) := 'n_days_3_minutes  constant number := c_effort_in_days_1_hour / 20;'||wwv_flow.LF||
''||wwv_flow.LF||
'  -- Author  : Oliver Lemm'||wwv_flow.LF||
'  -- ';
wwv_flow_imp.g_varchar2_table(29) := 'Created : 06.05.2026'||wwv_flow.LF||
'  -- Purpose : central function for migration'||wwv_flow.LF||
''||wwv_flow.LF||
'  /* Query Aggretated Effort in ';
wwv_flow_imp.g_varchar2_table(30) := 'Days'||wwv_flow.LF||
'  select '||wwv_flow.LF||
'   apex_version'||wwv_flow.LF||
'  ,rn_type'||wwv_flow.LF||
'  ,rn_chapter_no'||wwv_flow.LF||
'  ,rn_chapter_name'||wwv_flow.LF||
'  ,migration_priority'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(31) := '  ,count(1) amount_of_objects'||wwv_flow.LF||
'  ,round(sum(migration_effort_in_days)'||wwv_flow.LF||
'        ,3) migration_effort_in';
wwv_flow_imp.g_varchar2_table(32) := '_days'||wwv_flow.LF||
'  from av_migration_pkg.ptf_effort_calculation(i_app_id               => :P0_APP_ID'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(33) := '                                    ,i_apex_versions        => :P760_APEX_VERSIONS'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(34) := '                             ,i_migration_priorities => :P760_MIGRATION_PRIORITIES)'||wwv_flow.LF||
'    group by ape';
wwv_flow_imp.g_varchar2_table(35) := 'x_version'||wwv_flow.LF||
'            ,rn_type'||wwv_flow.LF||
'            ,rn_chapter_no'||wwv_flow.LF||
'            ,rn_chapter_name'||wwv_flow.LF||
'            ,';
wwv_flow_imp.g_varchar2_table(36) := 'migration_priority'||wwv_flow.LF||
'    order by rn_type'||wwv_flow.LF||
'            ,apex_version'||wwv_flow.LF||
'            ,rn_chapter_no '||wwv_flow.LF||
'  */'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(37) := '  function tf_apex_versions return av_varchar2s_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_migration_priorities return av_var';
wwv_flow_imp.g_varchar2_table(38) := 'char2s_t;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_general_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(39) := '_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_p';
wwv_flow_imp.g_varchar2_table(40) := 'age_complexity'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) r';
wwv_flow_imp.g_varchar2_table(41) := 'eturn av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_javascript'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id             ';
wwv_flow_imp.g_varchar2_table(42) := '  in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  func';
wwv_flow_imp.g_varchar2_table(43) := 'tion ptf_effort_plsql'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar';
wwv_flow_imp.g_varchar2_table(44) := '2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_plugins'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id         ';
wwv_flow_imp.g_varchar2_table(45) := '      in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(46) := 'function ptf_effort_never_conditions'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priori';
wwv_flow_imp.g_varchar2_table(47) := 'ties in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_unused_auth_scheme';
wwv_flow_imp.g_varchar2_table(48) := 's'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migr';
wwv_flow_imp.g_varchar2_table(49) := 'ations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_upgrade_application'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_workspace_id         in number';
wwv_flow_imp.g_varchar2_table(50) := ''||wwv_flow.LF||
'   ,i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migration';
wwv_flow_imp.g_varchar2_table(51) := 's_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_calculation'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i';
wwv_flow_imp.g_varchar2_table(52) := '_apex_versions        in varchar2 default null'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2 default null'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(53) := '  ,i_migration_types      in varchar2 default null'||wwv_flow.LF||
'   ,i_show_only_findings   in number default null';
wwv_flow_imp.g_varchar2_table(54) := ''||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined;'||wwv_flow.LF||
''||wwv_flow.LF||
'end av_migration_pkg;'||wwv_flow.LF||
'/'||wwv_flow.LF||
'create or replace package body a';
wwv_flow_imp.g_varchar2_table(55) := 'v_migration_pkg is'||wwv_flow.LF||
''||wwv_flow.LF||
'  procedure p_merge_migrations'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    io_migrations    in out av_migrations_t'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(56) := '  ,i_migrations_add in av_migrations_t'||wwv_flow.LF||
'  ) is'||wwv_flow.LF||
'    l_next number;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    -- falls bisheriges Feh';
wwv_flow_imp.g_varchar2_table(57) := unistr('lerarray nicht vorhanden ist oder keine Eintr\00E4ge enth\00E4lt'||wwv_flow.LF||
'    -- direkt das komplette neue verwenden'||wwv_flow.LF||
'');
wwv_flow_imp.g_varchar2_table(58) := '    if io_migrations is null or'||wwv_flow.LF||
'       io_migrations.count = 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      io_migrations := i_mig';
wwv_flow_imp.g_varchar2_table(59) := 'rations_add;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Fehler sind bereits im bisherigen Array vorhanden'||wwv_flow.LF||
'    else'||wwv_flow.LF||
'      -- Sind ';
wwv_flow_imp.g_varchar2_table(60) := 'im neuen Array Fehler vorhanden'||wwv_flow.LF||
'      if i_migrations_add is not null and'||wwv_flow.LF||
'         i_migrations_add.';
wwv_flow_imp.g_varchar2_table(61) := 'count > 0'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        for i in 1 .. i_migrations_add.count'||wwv_flow.LF||
'        loop'||wwv_flow.LF||
'          io_migratio';
wwv_flow_imp.g_varchar2_table(62) := 'ns.extend; -- erweitern'||wwv_flow.LF||
'          l_next := io_migrations.last; -- zaehler vom letzten ermitteln'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(63) := '       io_migrations(l_next) := i_migrations_add(i); -- Fehler in neues Array schreiben'||wwv_flow.LF||
'        end ';
wwv_flow_imp.g_varchar2_table(64) := 'loop;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  end p_merge_migrations;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_apex_versions return av_va';
wwv_flow_imp.g_varchar2_table(65) := 'rchar2s_t is'||wwv_flow.LF||
'    l_apex_versions av_varchar2s_t := new av_varchar2s_t();'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_apex_versions';
wwv_flow_imp.g_varchar2_table(66) := '.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_20_1);'||wwv_flow.LF||
'    l_';
wwv_flow_imp.g_varchar2_table(67) := 'apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_';
wwv_flow_imp.g_varchar2_table(68) := '20_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_';
wwv_flow_imp.g_varchar2_table(69) := 'apex_version_21_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_';
wwv_flow_imp.g_varchar2_table(70) := 'varchar2_t(c_apex_version_21_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.las';
wwv_flow_imp.g_varchar2_table(71) := 't) := new av_varchar2_t(c_apex_version_22_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex';
wwv_flow_imp.g_varchar2_table(72) := '_versions.last) := new av_varchar2_t(c_apex_version_22_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_ve';
wwv_flow_imp.g_varchar2_table(73) := 'rsions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_1);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(74) := '    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_23_2);'||wwv_flow.LF||
'    l_apex_vers';
wwv_flow_imp.g_varchar2_table(75) := 'ions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_version_24_1);'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(76) := '  l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_t(c_apex_vers';
wwv_flow_imp.g_varchar2_table(77) := 'ion_24_2);'||wwv_flow.LF||
'    l_apex_versions.extend;'||wwv_flow.LF||
'    l_apex_versions(l_apex_versions.last) := new av_varchar2_';
wwv_flow_imp.g_varchar2_table(78) := 't(c_apex_version_26_1);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return l_apex_versions;'||wwv_flow.LF||
'  end tf_apex_versions;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function tf_migrat';
wwv_flow_imp.g_varchar2_table(79) := 'ion_priorities return av_varchar2s_t is'||wwv_flow.LF||
'    l_migration_priorities av_varchar2s_t := new av_varchar2';
wwv_flow_imp.g_varchar2_table(80) := 's_t();'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priorities.';
wwv_flow_imp.g_varchar2_table(81) := 'last) := new av_varchar2_t(c_migration_priority_1_must);'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_mi';
wwv_flow_imp.g_varchar2_table(82) := 'gration_priorities(l_migration_priorities.last) := new av_varchar2_t(c_migration_priority_2_should);';
wwv_flow_imp.g_varchar2_table(83) := ''||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priorities.last) := new a';
wwv_flow_imp.g_varchar2_table(84) := 'v_varchar2_t(c_migration_priority_3_recommed);'||wwv_flow.LF||
'    l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_pr';
wwv_flow_imp.g_varchar2_table(85) := 'iorities(l_migration_priorities.last) := new av_varchar2_t(c_migration_priority_4_best_practices);'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(86) := '   l_migration_priorities.extend;'||wwv_flow.LF||
'    l_migration_priorities(l_migration_priorities.last) := new av_';
wwv_flow_imp.g_varchar2_table(87) := 'varchar2_t(c_migration_priotity_5_information);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return l_migration_priorities;'||wwv_flow.LF||
'  end tf_migra';
wwv_flow_imp.g_varchar2_table(88) := 'tion_priorities;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function f_app_has_universal_theme(i_app_id in number) return boolean is'||wwv_flow.LF||
'    l_';
wwv_flow_imp.g_varchar2_table(89) := 'count number;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    select count(1)'||wwv_flow.LF||
'    into l_count'||wwv_flow.LF||
'    from apex_application_themes t'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(90) := ' where t.is_current = ''Yes'''||wwv_flow.LF||
'    and t.theme_internal_name = ''UNIVERSAL_THEME'''||wwv_flow.LF||
'    and t.application_';
wwv_flow_imp.g_varchar2_table(91) := 'id = i_app_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return sys.diutil.int_to_bool(l_count);'||wwv_flow.LF||
'  end f_app_has_universal_theme;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  f';
wwv_flow_imp.g_varchar2_table(92) := 'unction ptf_effort_general_app_settings'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_pri';
wwv_flow_imp.g_varchar2_table(93) := 'orities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_compatibility_mode        apex';
wwv_flow_imp.g_varchar2_table(94) := '_applications.compatibility_mode%type;'||wwv_flow.LF||
'    l_session_state_protection  apex_applications.session_sta';
wwv_flow_imp.g_varchar2_table(95) := 'te_protection%type;'||wwv_flow.LF||
'    l_runtime_api_usage         varchar2(100 char);'||wwv_flow.LF||
'    l_include_legacy_javascr';
wwv_flow_imp.g_varchar2_table(96) := 'ipt apex_appl_user_interfaces.include_legacy_javascript%type;'||wwv_flow.LF||
'    l_include_jquery_migrate    apex_a';
wwv_flow_imp.g_varchar2_table(97) := 'ppl_user_interfaces.include_jquery_migrate%type;'||wwv_flow.LF||
'    l_theme_name                apex_application_th';
wwv_flow_imp.g_varchar2_table(98) := 'emes.theme_name%type;'||wwv_flow.LF||
'    l_theme_version             apex_application_themes.version%type;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    l';
wwv_flow_imp.g_varchar2_table(99) := '_migration av_migration_t;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    av_general_pkg.p_qa_app_settings(pi_application_id           ';
wwv_flow_imp.g_varchar2_table(100) := ' => i_app_id'||wwv_flow.LF||
'                                    ,po_compatibility_mode        => l_compatibility_mo';
wwv_flow_imp.g_varchar2_table(101) := 'de'||wwv_flow.LF||
'                                    ,po_session_state_protection  => l_session_state_protection'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(102) := '                                   ,po_runtime_api_usage         => l_runtime_api_usage'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(103) := '                        ,po_include_legacy_javascript => l_include_legacy_javascript'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(104) := '                     ,po_include_jquery_migrate    => l_include_jquery_migrate'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(105) := '               ,po_theme_name                => l_theme_name'||wwv_flow.LF||
'                                    ,po';
wwv_flow_imp.g_varchar2_table(106) := '_theme_version             => l_theme_version);'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,';
wwv_flow_imp.g_varchar2_table(107) := 'c_migration_priority_2_should) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      -- Compatibility Mode'||wwv_flow.LF||
'      l_migration := av_migr';
wwv_flow_imp.g_varchar2_table(108) := 'ation_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'                                   ,i_rn';
wwv_flow_imp.g_varchar2_table(109) := '_type                  => c_migration_type_generally'||wwv_flow.LF||
'                                   ,i_rn_chapte';
wwv_flow_imp.g_varchar2_table(110) := 'r_no            => ''3.18'''||wwv_flow.LF||
'                                   ,i_rn_chapter_name          => ''Compati';
wwv_flow_imp.g_varchar2_table(111) := 'bility Mode'''||wwv_flow.LF||
'                                   ,i_rn_chapter_text          => ''For supporting the l';
wwv_flow_imp.g_varchar2_table(112) := 'atest functionality including Universal Theme, switch to latest compatibility mode.'''||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(113) := '                    ,i_rn_chapter_link          => ''https://docs.oracle.com/en/database/oracle/apex/';
wwv_flow_imp.g_varchar2_table(114) := '24.2/htmrn/changed-behavior.html#GUID-712BE54F-08CD-43A3-A645-87B9360ED516'''||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(115) := '           ,i_check_integrated         => 1'||wwv_flow.LF||
'                                   ,i_check_needed      ';
wwv_flow_imp.g_varchar2_table(116) := '       => 1'||wwv_flow.LF||
'                                   ,i_attribute_value          => l_compatibility_mode'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(117) := '                                  ,i_migration_effort_in_days => case l_compatibility_mode'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(118) := '                                                           when c_comp_mode_latest then -- latest ve';
wwv_flow_imp.g_varchar2_table(119) := 'rsion'||wwv_flow.LF||
'                                                                     0 -- no effort'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(120) := '                                                          when c_comp_mode_one_before_latest then'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(121) := '                                                                   0.125 -- minimal effort'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(122) := '                                                           else'||wwv_flow.LF||
'                                    ';
wwv_flow_imp.g_varchar2_table(123) := '                                 0.5 -- more effort but hard to calculate'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(124) := '                                        end'||wwv_flow.LF||
'                                   ,i_migration_priority';
wwv_flow_imp.g_varchar2_table(125) := '       => c_migration_priority_2_should'||wwv_flow.LF||
'                                   ,i_app_id                ';
wwv_flow_imp.g_varchar2_table(126) := '   => i_app_id);'||wwv_flow.LF||
'      pipe row(l_migration);'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Universal Theme'||wwv_flow.LF||
'      if l_theme_name <>';
wwv_flow_imp.g_varchar2_table(127) := ' ''Universal Theme'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_';
wwv_flow_imp.g_varchar2_table(128) := 'apex_version_latest'||wwv_flow.LF||
'                                     ,i_rn_type                  => c_migration_';
wwv_flow_imp.g_varchar2_table(129) := 'type_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.1'''||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(130) := '                            ,i_rn_chapter_name          => ''Universal Theme usage'''||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(131) := '                    ,i_rn_chapter_text          => ''Universal Theme should be used in APEX Apps, try';
wwv_flow_imp.g_varchar2_table(132) := ' to map your theme to Universal Theme.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link     ';
wwv_flow_imp.g_varchar2_table(133) := '     => null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(134) := '                    ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribu';
wwv_flow_imp.g_varchar2_table(135) := 'te_value          => l_theme_name'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days =';
wwv_flow_imp.g_varchar2_table(136) := '> c_effort_in_days_1_day'||wwv_flow.LF||
'                                     ,i_migration_priority       => c_migra';
wwv_flow_imp.g_varchar2_table(137) := 'tion_priority_2_should'||wwv_flow.LF||
'                                     ,i_app_id                   => i_app_id)';
wwv_flow_imp.g_varchar2_table(138) := ';'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      '||wwv_flow.LF||
'      elsif l_theme_version <> c_apex_version_latest'||wwv_flow.LF||
'      t';
wwv_flow_imp.g_varchar2_table(139) := 'hen'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(140) := '                               ,i_rn_type                  => c_migration_type_generally'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(141) := '                          ,i_rn_chapter_no            => ''0.3.2'''||wwv_flow.LF||
'                                   ';
wwv_flow_imp.g_varchar2_table(142) := '  ,i_rn_chapter_name          => ''Universal Theme refresh'''||wwv_flow.LF||
'                                     ,i_r';
wwv_flow_imp.g_varchar2_table(143) := 'n_chapter_text          => ''Universal Theme should always be refreshed to the latest version of the ';
wwv_flow_imp.g_varchar2_table(144) := 'theme.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(145) := '                  ,i_check_integrated         => 1'||wwv_flow.LF||
'                                     ,i_check_nee';
wwv_flow_imp.g_varchar2_table(146) := 'ded             => 1'||wwv_flow.LF||
'                                     ,i_attribute_value          => l_theme_ver';
wwv_flow_imp.g_varchar2_table(147) := 'sion'||wwv_flow.LF||
'                                     ,i_migration_effort_in_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(148) := '                                  ,i_migration_priority       => c_migration_priority_2_should'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(149) := '                                ,i_app_id                   => i_app_id);'||wwv_flow.LF||
'        pipe row(l_migrati';
wwv_flow_imp.g_varchar2_table(150) := 'on);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    '||wwv_flow.LF||
'    '||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_';
wwv_flow_imp.g_varchar2_table(151) := 'migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      -- JavaScript'||wwv_flow.LF||
'      if l_include_legacy_javascript';
wwv_flow_imp.g_varchar2_table(152) := ' = ''No'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_versio';
wwv_flow_imp.g_varchar2_table(153) := 'n_latest'||wwv_flow.LF||
'                                     ,i_rn_type                  => c_migration_type_genera';
wwv_flow_imp.g_varchar2_table(154) := 'lly'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.3'''||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(155) := '                 ,i_rn_chapter_name          => ''Deactivate Legacy Javascript'''||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(156) := '                ,i_rn_chapter_text          => ''Switch off the support for legacy JavaScript for fas';
wwv_flow_imp.g_varchar2_table(157) := 'ter and more stable JavaScript.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_link          =>';
wwv_flow_imp.g_varchar2_table(158) := ' null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(159) := '             ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_attribute_valu';
wwv_flow_imp.g_varchar2_table(160) := 'e          => l_include_legacy_javascript'||wwv_flow.LF||
'                                     ,i_migration_effort_i';
wwv_flow_imp.g_varchar2_table(161) := 'n_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_priority       =';
wwv_flow_imp.g_varchar2_table(162) := '> c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id                   =';
wwv_flow_imp.g_varchar2_table(163) := '> i_app_id);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- jQuery Migrate'||wwv_flow.LF||
'      if l_in';
wwv_flow_imp.g_varchar2_table(164) := 'clude_jquery_migrate = ''No'''||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version         ';
wwv_flow_imp.g_varchar2_table(165) := '    => c_apex_version_latest'||wwv_flow.LF||
'                                     ,i_rn_type                  => c_m';
wwv_flow_imp.g_varchar2_table(166) := 'igration_type_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.4'''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(167) := '                                     ,i_rn_chapter_name          => ''Deactivate jQuery Migrate'''||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(168) := '                                 ,i_rn_chapter_text          => ''Switch off the support for jQuery M';
wwv_flow_imp.g_varchar2_table(169) := 'igrate for faster and more stable JavaScript.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_li';
wwv_flow_imp.g_varchar2_table(170) := 'nk          => null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(171) := '                           ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i_';
wwv_flow_imp.g_varchar2_table(172) := 'attribute_value          => l_include_jquery_migrate'||wwv_flow.LF||
'                                     ,i_migrati';
wwv_flow_imp.g_varchar2_table(173) := 'on_effort_in_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'                                     ,i_migration_prior';
wwv_flow_imp.g_varchar2_table(174) := 'ity       => c_migration_priority_3_recommed'||wwv_flow.LF||
'                                     ,i_app_id         ';
wwv_flow_imp.g_varchar2_table(175) := '          => i_app_id);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    if instr(i_m';
wwv_flow_imp.g_varchar2_table(176) := 'igration_priorities'||wwv_flow.LF||
'            ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in ';
wwv_flow_imp.g_varchar2_table(177) := '(select *'||wwv_flow.LF||
'                from apex_application_page_items i'||wwv_flow.LF||
'                where i.encrypt_session';
wwv_flow_imp.g_varchar2_table(178) := '_state = ''No'''||wwv_flow.LF||
'                and i.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        -- Session State P';
wwv_flow_imp.g_varchar2_table(179) := 'rotection'||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(180) := '                                     ,i_rn_type                  => av_migration_pkg.c_migration_typ';
wwv_flow_imp.g_varchar2_table(181) := 'e_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.3.5'''||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(182) := '                         ,i_rn_chapter_name          => ''Session State Protection'''||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(183) := '                    ,i_rn_chapter_text          => l_session_state_protection'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(184) := '               ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                                     ,i_check_int';
wwv_flow_imp.g_varchar2_table(185) := 'egrated         => 1'||wwv_flow.LF||
'                                     ,i_check_needed             => 1'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(186) := '                            ,i_attribute_value          => m.encrypt_session_state'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(187) := '                    ,i_migration_effort_in_days => c_effort_in_days_15_minutes'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(188) := '                ,i_migration_priority       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(189) := '                      ,i_app_id                   => m.application_id'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(190) := '       ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                                     ,i_page_name   ';
wwv_flow_imp.g_varchar2_table(191) := '             => m.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => m.it';
wwv_flow_imp.g_varchar2_table(192) := 'em_name'||wwv_flow.LF||
'                                     ,i_component_type           => c_component_type_item'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(193) := '                                   ,i_region_name              => m.region'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(194) := '            ,i_item_name                => m.item_name'||wwv_flow.LF||
'                                     ,i_item_';
wwv_flow_imp.g_varchar2_table(195) := 'label               => m.label'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => n';
wwv_flow_imp.g_varchar2_table(196) := 'ull'||wwv_flow.LF||
'                                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(197) := '              ,i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(198) := '   '||wwv_flow.LF||
'      -- Runtime API Usage'||wwv_flow.LF||
'      l_migration := av_migration_t(i_apex_version             => c_a';
wwv_flow_imp.g_varchar2_table(199) := 'pex_version_latest'||wwv_flow.LF||
'                                   ,i_rn_type                  => av_migration_pk';
wwv_flow_imp.g_varchar2_table(200) := 'g.c_migration_type_generally'||wwv_flow.LF||
'                                   ,i_rn_chapter_no            => ''0.3.';
wwv_flow_imp.g_varchar2_table(201) := '6'''||wwv_flow.LF||
'                                   ,i_rn_chapter_name          => ''Runtime API Usage'''||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(202) := '                        ,i_rn_chapter_text          => ''Try to restrict the API usage to only your A';
wwv_flow_imp.g_varchar2_table(203) := 'pp or deactive it.'''||wwv_flow.LF||
'                                   ,i_rn_chapter_link          => null'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(204) := '                          ,i_check_integrated         => 1'||wwv_flow.LF||
'                                   ,i_che';
wwv_flow_imp.g_varchar2_table(205) := 'ck_needed             => 1'||wwv_flow.LF||
'                                   ,i_attribute_value          => l_runti';
wwv_flow_imp.g_varchar2_table(206) := 'me_api_usage'||wwv_flow.LF||
'                                   ,i_migration_effort_in_days => c_effort_in_days_3_mi';
wwv_flow_imp.g_varchar2_table(207) := 'nutes'||wwv_flow.LF||
'                                   ,i_migration_priority       => c_migration_priority_4_best_';
wwv_flow_imp.g_varchar2_table(208) := 'practices'||wwv_flow.LF||
'                                   ,i_app_id                   => i_app_id);'||wwv_flow.LF||
'      pipe ro';
wwv_flow_imp.g_varchar2_table(209) := 'w(l_migration);'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_general_app_settings;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_e';
wwv_flow_imp.g_varchar2_table(210) := 'ffort_page_complexity'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar';
wwv_flow_imp.g_varchar2_table(211) := '2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_migration av_migration_t;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    l_effort_simple';
wwv_flow_imp.g_varchar2_table(212) := '       number := 0.125;'||wwv_flow.LF||
'    l_effort_normal       number := 0.25;'||wwv_flow.LF||
'    l_effort_complex      number :';
wwv_flow_imp.g_varchar2_table(213) := '= 1;'||wwv_flow.LF||
'    l_effort_very_complex number := 2;'||wwv_flow.LF||
'    l_sub_chapter         number;'||wwv_flow.LF||
'    l_effort          ';
wwv_flow_imp.g_varchar2_table(214) := '    number;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,''2'') > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      if f_ap';
wwv_flow_imp.g_varchar2_table(215) := 'p_has_universal_theme(i_app_id => i_app_id)'||wwv_flow.LF||
'      then'||wwv_flow.LF||
'        l_effort_simple       := l_effort_sim';
wwv_flow_imp.g_varchar2_table(216) := 'ple / 10;'||wwv_flow.LF||
'        l_effort_normal       := l_effort_normal / 10;'||wwv_flow.LF||
'        l_effort_complex      := l_';
wwv_flow_imp.g_varchar2_table(217) := 'effort_complex / 10;'||wwv_flow.LF||
'        l_effort_very_complex := l_effort_very_complex / 10;'||wwv_flow.LF||
'      end if;'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(218) := ''||wwv_flow.LF||
'      for c in (select p.complexity'||wwv_flow.LF||
'                      ,p.count_objects'||wwv_flow.LF||
'                      ,p';
wwv_flow_imp.g_varchar2_table(219) := '.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'                from av_page_complexity_v p'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(220) := '    where p.application_id = i_app_id'||wwv_flow.LF||
'                order by p.complexity)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        if c';
wwv_flow_imp.g_varchar2_table(221) := '.complexity = c_complexity_simple'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_sub_chapter := 1;'||wwv_flow.LF||
'          l_effort     ';
wwv_flow_imp.g_varchar2_table(222) := ' := l_effort_simple;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        elsif c.complexity = c_complexity_normal'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(223) := '  l_sub_chapter := 2;'||wwv_flow.LF||
'          l_effort      := l_effort_normal;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        elsif c.complexit';
wwv_flow_imp.g_varchar2_table(224) := 'y = c_complexity_complex'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          l_sub_chapter := 3;'||wwv_flow.LF||
'          l_effort      := l_eff';
wwv_flow_imp.g_varchar2_table(225) := 'ort_complex;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        elsif c.complexity = c_complexity_very_complex'||wwv_flow.LF||
'        then'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(226) := 'l_sub_chapter := 4;'||wwv_flow.LF||
'          l_effort      := l_effort_very_complex;'||wwv_flow.LF||
'        '||wwv_flow.LF||
'        end if;'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(227) := ' '||wwv_flow.LF||
'      '||wwv_flow.LF||
'        l_migration := av_migration_t(i_apex_version             => c_apex_version_latest'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(228) := '                                    ,i_rn_type                  => av_migration_pkg.c_migration_type';
wwv_flow_imp.g_varchar2_table(229) := '_generally'||wwv_flow.LF||
'                                     ,i_rn_chapter_no            => ''0.2.'' || l_sub_chapt';
wwv_flow_imp.g_varchar2_table(230) := 'er'||wwv_flow.LF||
'                                     ,i_rn_chapter_name          => ''Migration Effort for '' || c.';
wwv_flow_imp.g_varchar2_table(231) := 'complexity || '' Page(s)'''||wwv_flow.LF||
'                                     ,i_rn_chapter_text          => ''Averag';
wwv_flow_imp.g_varchar2_table(232) := 'e effort for adjusting page to latest version.'''||wwv_flow.LF||
'                                     ,i_rn_chapter_l';
wwv_flow_imp.g_varchar2_table(233) := 'ink          => null'||wwv_flow.LF||
'                                     ,i_check_integrated         => 1'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(234) := '                            ,i_check_needed             => 1'||wwv_flow.LF||
'                                     ,i';
wwv_flow_imp.g_varchar2_table(235) := '_attribute_value          => c.count_objects'||wwv_flow.LF||
'                                     ,i_migration_effor';
wwv_flow_imp.g_varchar2_table(236) := 't_in_days => l_effort'||wwv_flow.LF||
'                                     ,i_migration_priority       => 2'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(237) := '                             ,i_app_id                   => i_app_id'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(238) := '      ,i_page_id                  => c.page_id'||wwv_flow.LF||
'                                     ,i_page_name    ';
wwv_flow_imp.g_varchar2_table(239) := '            => c.page_name'||wwv_flow.LF||
'                                     ,i_component_name           => c.pag';
wwv_flow_imp.g_varchar2_table(240) := 'e_name'||wwv_flow.LF||
'                                     ,i_component_type           => c_component_type_page'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(241) := '                                  ,i_region_name              => null'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(242) := '       ,i_item_name                => null'||wwv_flow.LF||
'                                     ,i_item_label       ';
wwv_flow_imp.g_varchar2_table(243) := '        => null'||wwv_flow.LF||
'                                     ,i_js_code_vc2              => null'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(244) := '                          ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                                     ,';
wwv_flow_imp.g_varchar2_table(245) := 'i_css_code_vc2             => null);'||wwv_flow.LF||
'        pipe row(l_migration);'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(246) := '   return;'||wwv_flow.LF||
'  end ptf_effort_page_complexity;'||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_javascript'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id     ';
wwv_flow_imp.g_varchar2_table(247) := '          in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined ';
wwv_flow_imp.g_varchar2_table(248) := 'is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    -- migrate to standard JavaScript'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ,c_';
wwv_flow_imp.g_varchar2_table(249) := 'migration_priority_3_recommed) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select j.application_id'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(250) := '      ,j.page_id'||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'                      ,j.component_name'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(251) := '              ,j.component_type'||wwv_flow.LF||
'                      ,j.js_code_vc2'||wwv_flow.LF||
'                from av_javascr';
wwv_flow_imp.g_varchar2_table(252) := 'ipt_v j'||wwv_flow.LF||
'                where j.application_id = i_app_id'||wwv_flow.LF||
'                and instr(j.js_code_vc2'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(253) := '                      ,''htmldb_delete_message'') > 0)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_ap';
wwv_flow_imp.g_varchar2_table(254) := 'ex_version             => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_r';
wwv_flow_imp.g_varchar2_table(255) := 'n_type                  => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(256) := '  ,i_rn_chapter_no            => ''0.4.1'''||wwv_flow.LF||
'                               ,i_rn_chapter_name          ';
wwv_flow_imp.g_varchar2_table(257) := '=> ''Migrate JavaScript to declarative funcionality'''||wwv_flow.LF||
'                               ,i_rn_chapter_tex';
wwv_flow_imp.g_varchar2_table(258) := 't          => ''Migrate Delete Confirm Messages to declarative Message functionality.'''||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(259) := '                 ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_integra';
wwv_flow_imp.g_varchar2_table(260) := 'ted         => 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(261) := '            ,i_attribute_value          => m.js_code_vc2'||wwv_flow.LF||
'                               ,i_migration';
wwv_flow_imp.g_varchar2_table(262) := '_effort_in_days => c_effort_in_days_15_minutes'||wwv_flow.LF||
'                               ,i_migration_priority ';
wwv_flow_imp.g_varchar2_table(263) := '      => c_migration_priority_3_recommed'||wwv_flow.LF||
'                               ,i_app_id                   ';
wwv_flow_imp.g_varchar2_table(264) := '=> m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  => m.page_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(265) := '                       ,i_page_name                => m.page_name'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(266) := 'component_name           => m.component_name'||wwv_flow.LF||
'                               ,i_component_type       ';
wwv_flow_imp.g_varchar2_table(267) := '    => m.component_type'||wwv_flow.LF||
'                               ,i_region_name              => null'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(268) := '                      ,i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_lab';
wwv_flow_imp.g_varchar2_table(269) := 'el               => null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => m.js_code_vc2';
wwv_flow_imp.g_varchar2_table(270) := ''||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(271) := 'i_css_code_vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    --'||wwv_flow.LF||
'    if instr(i_migration';
wwv_flow_imp.g_varchar2_table(272) := '_priorities'||wwv_flow.LF||
'            ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select ';
wwv_flow_imp.g_varchar2_table(273) := 'j.application_id'||wwv_flow.LF||
'                      ,j.page_id'||wwv_flow.LF||
'                      ,j.page_name'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(274) := '       ,j.component_name'||wwv_flow.LF||
'                      ,j.component_type'||wwv_flow.LF||
'                      ,j.js_code_vc';
wwv_flow_imp.g_varchar2_table(275) := '2'||wwv_flow.LF||
'                from av_javascript_v j'||wwv_flow.LF||
'                where j.application_id = i_app_id'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(276) := '       and length(j.js_code_vc2) > 1000)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version  ';
wwv_flow_imp.g_varchar2_table(277) := '           => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_type      ';
wwv_flow_imp.g_varchar2_table(278) := '            => av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ,i_rn_chap';
wwv_flow_imp.g_varchar2_table(279) := 'ter_no            => ''0.4.2'''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => ''Migrate ';
wwv_flow_imp.g_varchar2_table(280) := 'complex JavaScript to static files'''||wwv_flow.LF||
'                               ,i_rn_chapter_text          => ''M';
wwv_flow_imp.g_varchar2_table(281) := 'igrate complex JavaScript (more than 1000 Characters) to static files.'''||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(282) := '   ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_integrated         =>';
wwv_flow_imp.g_varchar2_table(283) := ' 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(284) := '_attribute_value          => m.js_code_vc2'||wwv_flow.LF||
'                               ,i_migration_effort_in_day';
wwv_flow_imp.g_varchar2_table(285) := 's => c_effort_in_days_4_hours'||wwv_flow.LF||
'                               ,i_migration_priority       => c_migrat';
wwv_flow_imp.g_varchar2_table(286) := 'ion_priority_4_best_practices'||wwv_flow.LF||
'                               ,i_app_id                   => m.applic';
wwv_flow_imp.g_varchar2_table(287) := 'ation_id'||wwv_flow.LF||
'                               ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(288) := '            ,i_page_name                => m.page_name'||wwv_flow.LF||
'                               ,i_component_n';
wwv_flow_imp.g_varchar2_table(289) := 'ame           => m.component_name'||wwv_flow.LF||
'                               ,i_component_type           => m.co';
wwv_flow_imp.g_varchar2_table(290) := 'mponent_type'||wwv_flow.LF||
'                               ,i_region_name              => null'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(291) := '           ,i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_label         ';
wwv_flow_imp.g_varchar2_table(292) := '      => null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => m.js_code_vc2'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(293) := '                     ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_';
wwv_flow_imp.g_varchar2_table(294) := 'vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_javascript;'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(295) := ''||wwv_flow.LF||
'  function ptf_effort_plsql'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in ';
wwv_flow_imp.g_varchar2_table(296) := 'varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(297) := '         ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select p.application_i';
wwv_flow_imp.g_varchar2_table(298) := 'd'||wwv_flow.LF||
'                      ,p.page_id'||wwv_flow.LF||
'                      ,p.page_name'||wwv_flow.LF||
'                      ,p.compo';
wwv_flow_imp.g_varchar2_table(299) := 'nent_name'||wwv_flow.LF||
'                      ,p.component_type'||wwv_flow.LF||
'                      ,p.plsql_code_vc2'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(300) := '      from av_plsql_v p'||wwv_flow.LF||
'                where p.application_id = i_app_id'||wwv_flow.LF||
'                and length';
wwv_flow_imp.g_varchar2_table(301) := '(p.plsql_code_vc2) > 2000)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => ';
wwv_flow_imp.g_varchar2_table(302) := 'av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_type                  =>';
wwv_flow_imp.g_varchar2_table(303) := ' av_migration_pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no        ';
wwv_flow_imp.g_varchar2_table(304) := '    => ''0.5.1'''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => ''Migrate complex PL/SQL';
wwv_flow_imp.g_varchar2_table(305) := ' to database objects'''||wwv_flow.LF||
'                               ,i_rn_chapter_text          => ''Migrate complex';
wwv_flow_imp.g_varchar2_table(306) := ' PL/SQL to Packages or Views for easier testing and ensure that their is no compile issue.'''||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(307) := '                       ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_i';
wwv_flow_imp.g_varchar2_table(308) := 'ntegrated         => 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(309) := '                  ,i_attribute_value          => m.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(310) := 'migration_effort_in_days => c_effort_in_days_1_hour'||wwv_flow.LF||
'                               ,i_migration_prio';
wwv_flow_imp.g_varchar2_table(311) := 'rity       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'                               ,i_app_id        ';
wwv_flow_imp.g_varchar2_table(312) := '           => m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  => m.page_';
wwv_flow_imp.g_varchar2_table(313) := 'id'||wwv_flow.LF||
'                               ,i_page_name                => m.page_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(314) := '        ,i_component_name           => m.component_name'||wwv_flow.LF||
'                               ,i_component_';
wwv_flow_imp.g_varchar2_table(315) := 'type           => m.component_type'||wwv_flow.LF||
'                               ,i_region_name              => nul';
wwv_flow_imp.g_varchar2_table(316) := 'l'||wwv_flow.LF||
'                               ,i_item_name                => null'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(317) := ',i_item_label               => null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => nu';
wwv_flow_imp.g_varchar2_table(318) := 'll'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => m.plsql_code_vc2'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(319) := '             ,i_css_code_vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end';
wwv_flow_imp.g_varchar2_table(320) := ' ptf_effort_plsql;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_plugins'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_mi';
wwv_flow_imp.g_varchar2_table(321) := 'gration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_mi';
wwv_flow_imp.g_varchar2_table(322) := 'gration_priorities'||wwv_flow.LF||
'            ,c_migration_priority_2_should) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select n';
wwv_flow_imp.g_varchar2_table(323) := 'ame'||wwv_flow.LF||
'                      ,display_name'||wwv_flow.LF||
'                      ,plugin_type'||wwv_flow.LF||
'                      ,(s';
wwv_flow_imp.g_varchar2_table(324) := 'elect count(1)'||wwv_flow.LF||
'                        from av_plugins_v p1'||wwv_flow.LF||
'                        where p1.page_id';
wwv_flow_imp.g_varchar2_table(325) := ' is not null'||wwv_flow.LF||
'                        and p1.name = p.name'||wwv_flow.LF||
'                        and p1.application';
wwv_flow_imp.g_varchar2_table(326) := '_id = p.application_id) plugin_references'||wwv_flow.LF||
'                      ,render_function'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(327) := '   ,api_version'||wwv_flow.LF||
'                      ,help_text'||wwv_flow.LF||
'                      ,version_identifier'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(328) := '             ,about_url'||wwv_flow.LF||
'                      ,p.application_id'||wwv_flow.LF||
'                from apex_appl_plugi';
wwv_flow_imp.g_varchar2_table(329) := 'ns p'||wwv_flow.LF||
'                where p.application_id = i_app_id'||wwv_flow.LF||
'                and p.plugin_type <> ''Templat';
wwv_flow_imp.g_varchar2_table(330) := 'e Component'')'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => av_migration_';
wwv_flow_imp.g_varchar2_table(331) := 'pkg.c_apex_version_latest'||wwv_flow.LF||
'                               ,i_rn_type                  => av_migration';
wwv_flow_imp.g_varchar2_table(332) := '_pkg.c_migration_type_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.6.1';
wwv_flow_imp.g_varchar2_table(333) := ''''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => ''Plugins'''||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(334) := '     ,i_rn_chapter_text          => ''Replace Plugins with standard APEX Functionality.'''||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(335) := '                   ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_integ';
wwv_flow_imp.g_varchar2_table(336) := 'rated         => 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(337) := '              ,i_attribute_value          => m.display_name'||wwv_flow.LF||
'                               ,i_migrat';
wwv_flow_imp.g_varchar2_table(338) := 'ion_effort_in_days => c_effort_in_days_4_hours'||wwv_flow.LF||
'                               ,i_migration_priority ';
wwv_flow_imp.g_varchar2_table(339) := '      => c_migration_priority_2_should'||wwv_flow.LF||
'                               ,i_app_id                   =>';
wwv_flow_imp.g_varchar2_table(340) := ' m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  => null'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(341) := '                ,i_page_name                => null'||wwv_flow.LF||
'                               ,i_component_name';
wwv_flow_imp.g_varchar2_table(342) := '           => m.display_name'||wwv_flow.LF||
'                               ,i_component_type           => m.plugin_';
wwv_flow_imp.g_varchar2_table(343) := 'type'||wwv_flow.LF||
'                               ,i_region_name              => null'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(344) := '   ,i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_label               =>';
wwv_flow_imp.g_varchar2_table(345) := ' null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => null'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(346) := '    ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_vc2             =';
wwv_flow_imp.g_varchar2_table(347) := '> null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_plugins;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effo';
wwv_flow_imp.g_varchar2_table(348) := 'rt_never_conditions'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(349) := '  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(350) := ',c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select v.application_id'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(351) := '               ,v.page_name'||wwv_flow.LF||
'                      ,v.page_id'||wwv_flow.LF||
'                      ,v.component_type';
wwv_flow_imp.g_varchar2_table(352) := ''||wwv_flow.LF||
'                      ,v.component_name'||wwv_flow.LF||
'                      ,v.visibility_type'||wwv_flow.LF||
'                fr';
wwv_flow_imp.g_varchar2_table(353) := 'om av_visibility_v v'||wwv_flow.LF||
'                where v.visibility_category = ''CONDITION'''||wwv_flow.LF||
'                and u';
wwv_flow_imp.g_varchar2_table(354) := 'pper(v.visibility_type) = ''NEVER'''||wwv_flow.LF||
'                and v.application_id = i_app_id)'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(355) := '  pipe row(av_migration_t(i_apex_version             => av_migration_pkg.c_apex_version_latest'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(356) := '                          ,i_rn_type                  => av_migration_pkg.c_migration_type_generally';
wwv_flow_imp.g_varchar2_table(357) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.6.1'''||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(358) := '  ,i_rn_chapter_name          => ''Plugins'''||wwv_flow.LF||
'                               ,i_rn_chapter_text        ';
wwv_flow_imp.g_varchar2_table(359) := '  => ''Replace Plugins with standard APEX Functionality.'''||wwv_flow.LF||
'                               ,i_rn_chapte';
wwv_flow_imp.g_varchar2_table(360) := 'r_link          => null'||wwv_flow.LF||
'                               ,i_check_integrated         => 1'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(361) := '                   ,i_check_needed             => 1'||wwv_flow.LF||
'                               ,i_attribute_valu';
wwv_flow_imp.g_varchar2_table(362) := 'e          => m.visibility_type'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => c_effo';
wwv_flow_imp.g_varchar2_table(363) := 'rt_in_days_3_minutes'||wwv_flow.LF||
'                               ,i_migration_priority       => c_migration_prior';
wwv_flow_imp.g_varchar2_table(364) := 'ity_4_best_practices'||wwv_flow.LF||
'                               ,i_app_id                   => m.application_id'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(365) := '                               ,i_page_id                  => m.page_id'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(366) := '   ,i_page_name                => m.page_name'||wwv_flow.LF||
'                               ,i_component_name      ';
wwv_flow_imp.g_varchar2_table(367) := '     => m.component_name'||wwv_flow.LF||
'                               ,i_component_type           => m.component_t';
wwv_flow_imp.g_varchar2_table(368) := 'ype'||wwv_flow.LF||
'                               ,i_region_name              => null'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(369) := '  ,i_item_name                => null'||wwv_flow.LF||
'                               ,i_item_label               => ';
wwv_flow_imp.g_varchar2_table(370) := 'null'||wwv_flow.LF||
'                               ,i_js_code_vc2              => null'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(371) := '   ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                               ,i_css_code_vc2             =>';
wwv_flow_imp.g_varchar2_table(372) := ' null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_never_conditions;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ';
wwv_flow_imp.g_varchar2_table(373) := 'ptf_effort_unused_auth_schemes'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities i';
wwv_flow_imp.g_varchar2_table(374) := 'n varchar2'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    if instr(i_migration_priorities'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(375) := '           ,c_migration_priority_4_best_practices) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for m in (select a.application';
wwv_flow_imp.g_varchar2_table(376) := '_id'||wwv_flow.LF||
'                      ,a.authorization_scheme_name'||wwv_flow.LF||
'                      ,a.scheme_type'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(377) := '        from av_p0600_not_used_auth_schemes_v a'||wwv_flow.LF||
'                where a.application_id = i_app_id)'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(378) := '     loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => av_migration_pkg.c_apex_vers';
wwv_flow_imp.g_varchar2_table(379) := 'ion_latest'||wwv_flow.LF||
'                               ,i_rn_type                  => av_migration_pkg.c_migratio';
wwv_flow_imp.g_varchar2_table(380) := 'n_type_generally'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ''0.7.2'''||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(381) := '                  ,i_rn_chapter_name          => ''Unused Authorization Schemes'''||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(382) := '           ,i_rn_chapter_text          => ''Remove unused Authorization Schemes.'''||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(383) := '            ,i_rn_chapter_link          => null'||wwv_flow.LF||
'                               ,i_check_integrated  ';
wwv_flow_imp.g_varchar2_table(384) := '       => 1'||wwv_flow.LF||
'                               ,i_check_needed             => 1'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(385) := '       ,i_attribute_value          => m.authorization_scheme_name'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(386) := 'migration_effort_in_days => c_effort_in_days_3_minutes'||wwv_flow.LF||
'                               ,i_migration_p';
wwv_flow_imp.g_varchar2_table(387) := 'riority       => c_migration_priority_4_best_practices'||wwv_flow.LF||
'                               ,i_app_id     ';
wwv_flow_imp.g_varchar2_table(388) := '              => m.application_id'||wwv_flow.LF||
'                               ,i_page_id                  => null';
wwv_flow_imp.g_varchar2_table(389) := ''||wwv_flow.LF||
'                               ,i_page_name                => null'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(390) := 'i_component_name           => m.authorization_scheme_name'||wwv_flow.LF||
'                               ,i_componen';
wwv_flow_imp.g_varchar2_table(391) := 't_type           => ''Authorization Schemes'''||wwv_flow.LF||
'                               ,i_region_name           ';
wwv_flow_imp.g_varchar2_table(392) := '   => null'||wwv_flow.LF||
'                               ,i_item_name                => null'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(393) := '         ,i_item_label               => null'||wwv_flow.LF||
'                               ,i_js_code_vc2          ';
wwv_flow_imp.g_varchar2_table(394) := '    => null'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => null'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(395) := '          ,i_css_code_vc2             => null));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end pt';
wwv_flow_imp.g_varchar2_table(396) := 'f_effort_unused_auth_schemes;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_upgrade_application'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_workspace_id         in';
wwv_flow_imp.g_varchar2_table(397) := ' number'||wwv_flow.LF||
'   ,i_app_id               in number'||wwv_flow.LF||
'   ,i_migration_priorities in varchar2'||wwv_flow.LF||
'  ) return av_mi';
wwv_flow_imp.g_varchar2_table(398) := 'grations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    --todo - f4000 - page 89 - region Upgrade Summary has to be ';
wwv_flow_imp.g_varchar2_table(399) := 'reworked'||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_upgrade_application;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  function ptf_effort_calculation'||wwv_flow.LF||
'  ('||wwv_flow.LF||
'    i_ap';
wwv_flow_imp.g_varchar2_table(400) := 'p_id               in number'||wwv_flow.LF||
'   ,i_apex_versions        in varchar2 default null'||wwv_flow.LF||
'   ,i_migration_pri';
wwv_flow_imp.g_varchar2_table(401) := 'orities in varchar2 default null'||wwv_flow.LF||
'   ,i_migration_types      in varchar2 default null'||wwv_flow.LF||
'   ,i_show_only';
wwv_flow_imp.g_varchar2_table(402) := '_findings   in number default null'||wwv_flow.LF||
'  ) return av_migrations_t'||wwv_flow.LF||
'    pipelined is'||wwv_flow.LF||
'    l_workspace_id nu';
wwv_flow_imp.g_varchar2_table(403) := 'mber;'||wwv_flow.LF||
'  begin'||wwv_flow.LF||
'    l_workspace_id := apex_application_install.get_workspace_id;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- General set';
wwv_flow_imp.g_varchar2_table(404) := 'tings'||wwv_flow.LF||
'    if i_migration_types is null or'||wwv_flow.LF||
'       instr(i_migration_types'||wwv_flow.LF||
'            ,c_migration_ty';
wwv_flow_imp.g_varchar2_table(405) := 'pe_generally) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort';
wwv_flow_imp.g_varchar2_table(406) := '_general_app_settings(i_app_id               => i_app_id'||wwv_flow.LF||
'                                           ';
wwv_flow_imp.g_varchar2_table(407) := '                          ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pip';
wwv_flow_imp.g_varchar2_table(408) := 'e row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(409) := 'rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => ';
wwv_flow_imp.g_varchar2_table(410) := 'p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(411) := '                           ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(412) := '       ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_inte';
wwv_flow_imp.g_varchar2_table(413) := 'grated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p';
wwv_flow_imp.g_varchar2_table(414) := '.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(415) := '                         ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(416) := '              ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(417) := 'app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p';
wwv_flow_imp.g_varchar2_table(418) := '.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(419) := '              ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_comp';
wwv_flow_imp.g_varchar2_table(420) := 'onent_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              ';
wwv_flow_imp.g_varchar2_table(421) := '=> p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(422) := '                      ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(423) := 'js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2          ';
wwv_flow_imp.g_varchar2_table(424) := ' => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));';
wwv_flow_imp.g_varchar2_table(425) := ''||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Page Complexity'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migr';
wwv_flow_imp.g_varchar2_table(426) := 'ation_pkg.ptf_effort_page_complexity(i_app_id               => i_app_id'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(427) := '                                    ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(428) := '       pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(429) := '       ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no     ';
wwv_flow_imp.g_varchar2_table(430) := '       => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter';
wwv_flow_imp.g_varchar2_table(431) := '_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(432) := '                 ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(433) := 'check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed       ';
wwv_flow_imp.g_varchar2_table(434) := '      => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_va';
wwv_flow_imp.g_varchar2_table(435) := 'lue'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(436) := '                        ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(437) := '       ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id            ';
wwv_flow_imp.g_varchar2_table(438) := '      => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(439) := '                        ,i_component_name           => p.component_name'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(440) := '   ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name    ';
wwv_flow_imp.g_varchar2_table(441) := '          => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name';
wwv_flow_imp.g_varchar2_table(442) := ''||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(443) := '       ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2';
wwv_flow_imp.g_varchar2_table(444) := '           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_c';
wwv_flow_imp.g_varchar2_table(445) := 'ode_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- JavaScript'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av';
wwv_flow_imp.g_varchar2_table(446) := '_migration_pkg.ptf_effort_javascript(i_app_id               => i_app_id'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(447) := '                               ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(448) := '  pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(449) := '  ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no          ';
wwv_flow_imp.g_varchar2_table(450) := '  => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name';
wwv_flow_imp.g_varchar2_table(451) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(452) := '            ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check';
wwv_flow_imp.g_varchar2_table(453) := '_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed            ';
wwv_flow_imp.g_varchar2_table(454) := ' => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(455) := '                              ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(456) := '                   ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(457) := '  ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                 ';
wwv_flow_imp.g_varchar2_table(458) := ' => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(459) := '                   ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(460) := '_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name         ';
wwv_flow_imp.g_varchar2_table(461) := '     => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(462) := '                           ,i_item_label               => p.item_label'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(463) := '  ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2     ';
wwv_flow_imp.g_varchar2_table(464) := '      => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_v';
wwv_flow_imp.g_varchar2_table(465) := 'c2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- PL/SQL'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migratio';
wwv_flow_imp.g_varchar2_table(466) := 'n_pkg.ptf_effort_plsql(i_app_id               => i_app_id'||wwv_flow.LF||
'                                          ';
wwv_flow_imp.g_varchar2_table(467) := '            ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migra';
wwv_flow_imp.g_varchar2_table(468) := 'tion_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type       ';
wwv_flow_imp.g_varchar2_table(469) := '           => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_n';
wwv_flow_imp.g_varchar2_table(470) := 'o'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(471) := '             ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_c';
wwv_flow_imp.g_varchar2_table(472) := 'hapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated        ';
wwv_flow_imp.g_varchar2_table(473) := ' => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(474) := '                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(475) := '           ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(476) := ',i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id        ';
wwv_flow_imp.g_varchar2_table(477) := '           => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(478) := '                          ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(479) := ',i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type    ';
wwv_flow_imp.g_varchar2_table(480) := '       => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_na';
wwv_flow_imp.g_varchar2_table(481) := 'me'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(482) := '        ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2   ';
wwv_flow_imp.g_varchar2_table(483) := '           => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_co';
wwv_flow_imp.g_varchar2_table(484) := 'de_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loo';
wwv_flow_imp.g_varchar2_table(485) := 'p;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Plugins'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort_p';
wwv_flow_imp.g_varchar2_table(486) := 'lugins(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                        ,i';
wwv_flow_imp.g_varchar2_table(487) := '_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_';
wwv_flow_imp.g_varchar2_table(488) := 'version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => ';
wwv_flow_imp.g_varchar2_table(489) := 'p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(490) := '                   ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(491) := 'i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link   ';
wwv_flow_imp.g_varchar2_table(492) := '       => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_in';
wwv_flow_imp.g_varchar2_table(493) := 'tegrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(494) := '                 ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(495) := 'migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_p';
wwv_flow_imp.g_varchar2_table(496) := 'riority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                   => ';
wwv_flow_imp.g_varchar2_table(497) := 'p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(498) := '            ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,i_component_n';
wwv_flow_imp.g_varchar2_table(499) := 'ame           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type           => p.co';
wwv_flow_imp.g_varchar2_table(500) := 'mponent_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_name'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(501) := '                    ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_ite';
wwv_flow_imp.g_varchar2_table(502) := 'm_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => ';
wwv_flow_imp.g_varchar2_table(503) := 'p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(504) := '                        ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(505) := '-- Never Conditions'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_effort_never_';
wwv_flow_imp.g_varchar2_table(506) := 'conditions(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                      ';
wwv_flow_imp.g_varchar2_table(507) := '           ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migrat';
wwv_flow_imp.g_varchar2_table(508) := 'ion_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type        ';
wwv_flow_imp.g_varchar2_table(509) := '          => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no';
wwv_flow_imp.g_varchar2_table(510) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(511) := '            ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_ch';
wwv_flow_imp.g_varchar2_table(512) := 'apter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         ';
wwv_flow_imp.g_varchar2_table(513) := '=> p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(514) := '                              ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(515) := '          ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(516) := 'i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id         ';
wwv_flow_imp.g_varchar2_table(517) := '          => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(518) := '                         ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(519) := 'i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type     ';
wwv_flow_imp.g_varchar2_table(520) := '      => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_nam';
wwv_flow_imp.g_varchar2_table(521) := 'e'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(522) := '       ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2    ';
wwv_flow_imp.g_varchar2_table(523) := '          => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_cod';
wwv_flow_imp.g_varchar2_table(524) := 'e_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop';
wwv_flow_imp.g_varchar2_table(525) := ';'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Never Conditions'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_pkg.ptf_';
wwv_flow_imp.g_varchar2_table(526) := 'effort_unused_auth_schemes(i_app_id               => i_app_id'||wwv_flow.LF||
'                                      ';
wwv_flow_imp.g_varchar2_table(527) := '                              ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(528) := ' pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(529) := ' ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no           ';
wwv_flow_imp.g_varchar2_table(530) := ' => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(531) := '                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(532) := '           ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_';
wwv_flow_imp.g_varchar2_table(533) := 'integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             ';
wwv_flow_imp.g_varchar2_table(534) := '=> p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(535) := '                             ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(536) := '                  ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(537) := ' ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  ';
wwv_flow_imp.g_varchar2_table(538) := '=> p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(539) := '                  ,i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(540) := 'component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_name          ';
wwv_flow_imp.g_varchar2_table(541) := '    => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(542) := '                          ,i_item_label               => p.item_label'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(543) := ' ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2      ';
wwv_flow_imp.g_varchar2_table(544) := '     => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc';
wwv_flow_imp.g_varchar2_table(545) := '2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      -- Upgrade Application Findings'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(546) := '     from av_migration_pkg.ptf_upgrade_application(i_workspace_id         => l_workspace_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(547) := '                                                     ,i_app_id               => i_app_id'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(548) := '                                                  ,i_migration_priorities => i_migration_priorities)';
wwv_flow_imp.g_varchar2_table(549) := ')'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(550) := '                     ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_c';
wwv_flow_imp.g_varchar2_table(551) := 'hapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          =';
wwv_flow_imp.g_varchar2_table(552) := '> p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(553) := '                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(554) := '           ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check';
wwv_flow_imp.g_varchar2_table(555) := '_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => ';
wwv_flow_imp.g_varchar2_table(556) := 'p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_i';
wwv_flow_imp.g_varchar2_table(557) := 'n_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(558) := '                     ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_';
wwv_flow_imp.g_varchar2_table(559) := 'id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.pag';
wwv_flow_imp.g_varchar2_table(560) := 'e_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(561) := '                 ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_r';
wwv_flow_imp.g_varchar2_table(562) := 'egion_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                ';
wwv_flow_imp.g_varchar2_table(563) := '=> p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(564) := '                     ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(565) := 'plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2         ';
wwv_flow_imp.g_varchar2_table(566) := '    => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 19.2'||wwv_flow.LF||
'    -- todo - finding check';
wwv_flow_imp.g_varchar2_table(567) := ' needs to be integrated into every single check'||wwv_flow.LF||
'    if i_show_only_findings = 0 and'||wwv_flow.LF||
'       (i_apex_v';
wwv_flow_imp.g_varchar2_table(568) := 'ersions is null or instr(i_apex_versions'||wwv_flow.LF||
'                                        ,c_apex_version_19_';
wwv_flow_imp.g_varchar2_table(569) := '2) > 0)'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_19_2_pkg.f_dep_6_1_1(i_a';
wwv_flow_imp.g_varchar2_table(570) := 'pp_id               => i_app_id'||wwv_flow.LF||
'                                                      ,i_migration_p';
wwv_flow_imp.g_varchar2_table(571) := 'riorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version     ';
wwv_flow_imp.g_varchar2_table(572) := '        => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'  ';
wwv_flow_imp.g_varchar2_table(573) := '                             ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(574) := '       ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter';
wwv_flow_imp.g_varchar2_table(575) := '_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.';
wwv_flow_imp.g_varchar2_table(576) := 'rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(577) := '                            ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(578) := '     ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_ef';
wwv_flow_imp.g_varchar2_table(579) := 'fort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority     ';
wwv_flow_imp.g_varchar2_table(580) := '  => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(581) := '                            ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(582) := ',i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name         ';
wwv_flow_imp.g_varchar2_table(583) := '  => p.component_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type';
wwv_flow_imp.g_varchar2_table(584) := ''||wwv_flow.LF||
'                               ,i_region_name              => p.region_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(585) := '        ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label     ';
wwv_flow_imp.g_varchar2_table(586) := '          => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc';
wwv_flow_imp.g_varchar2_table(587) := '2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(588) := '            ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (se';
wwv_flow_imp.g_varchar2_table(589) := 'lect *'||wwv_flow.LF||
'                from av_migration_19_2_pkg.f_dep_6_1_2(i_app_id               => i_app_id'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(590) := '                                                   ,i_migration_priorities => i_migration_priorities';
wwv_flow_imp.g_varchar2_table(591) := '))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(592) := '                      ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_';
wwv_flow_imp.g_varchar2_table(593) := 'chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          ';
wwv_flow_imp.g_varchar2_table(594) := '=> p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text';
wwv_flow_imp.g_varchar2_table(595) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(596) := '            ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_chec';
wwv_flow_imp.g_varchar2_table(597) := 'k_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          =>';
wwv_flow_imp.g_varchar2_table(598) := ' p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_';
wwv_flow_imp.g_varchar2_table(599) := 'in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(600) := '                      ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page';
wwv_flow_imp.g_varchar2_table(601) := '_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.pa';
wwv_flow_imp.g_varchar2_table(602) := 'ge_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(603) := '                  ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(604) := 'region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name               ';
wwv_flow_imp.g_varchar2_table(605) := ' => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(606) := '                      ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(607) := '_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2        ';
wwv_flow_imp.g_varchar2_table(608) := '     => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 22.1'||wwv_flow.LF||
'    if i_apex_versions is ';
wwv_flow_imp.g_varchar2_table(609) := 'null or'||wwv_flow.LF||
'       instr(i_apex_versions'||wwv_flow.LF||
'            ,av_migration_20_2_pkg.c_apex_version) > 0'||wwv_flow.LF||
'    then';
wwv_flow_imp.g_varchar2_table(610) := ''||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2_pkg.ptf_des_7_1_4(i_app_id         ';
wwv_flow_imp.g_varchar2_table(611) := '      => i_app_id'||wwv_flow.LF||
'                                                        ,i_migration_priorities =>';
wwv_flow_imp.g_varchar2_table(612) := ' i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p';
wwv_flow_imp.g_varchar2_table(613) := '.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(614) := '                 ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn';
wwv_flow_imp.g_varchar2_table(615) := '_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text       ';
wwv_flow_imp.g_varchar2_table(616) := '   => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_l';
wwv_flow_imp.g_varchar2_table(617) := 'ink'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(618) := '                ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attr';
wwv_flow_imp.g_varchar2_table(619) := 'ibute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days';
wwv_flow_imp.g_varchar2_table(620) := ' => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migra';
wwv_flow_imp.g_varchar2_table(621) := 'tion_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(622) := '                ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name';
wwv_flow_imp.g_varchar2_table(623) := '                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.compo';
wwv_flow_imp.g_varchar2_table(624) := 'nent_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(625) := '                    ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_i';
wwv_flow_imp.g_varchar2_table(626) := 'tem_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               =>';
wwv_flow_imp.g_varchar2_table(627) := ' p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'          ';
wwv_flow_imp.g_varchar2_table(628) := '                     ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(629) := ',i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(630) := '           from av_migration_20_2_pkg.ptf_des_7_1_5(i_app_id               => i_app_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(631) := '                                           ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(632) := ' loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(633) := '              ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_';
wwv_flow_imp.g_varchar2_table(634) := 'no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_';
wwv_flow_imp.g_varchar2_table(635) := 'chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(636) := '                        ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                           ';
wwv_flow_imp.g_varchar2_table(637) := '    ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed';
wwv_flow_imp.g_varchar2_table(638) := '             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attri';
wwv_flow_imp.g_varchar2_table(639) := 'bute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(640) := '                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(641) := '              ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id     ';
wwv_flow_imp.g_varchar2_table(642) := '             => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(643) := '                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(644) := '          ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_n';
wwv_flow_imp.g_varchar2_table(645) := 'ame              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.it';
wwv_flow_imp.g_varchar2_table(646) := 'em_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'                 ';
wwv_flow_imp.g_varchar2_table(647) := '              ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_c';
wwv_flow_imp.g_varchar2_table(648) := 'ode_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => ';
wwv_flow_imp.g_varchar2_table(649) := 'p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20';
wwv_flow_imp.g_varchar2_table(650) := '_2_pkg.ptf_des_7_1_7(i_app_id               => i_app_id'||wwv_flow.LF||
'                                            ';
wwv_flow_imp.g_varchar2_table(651) := '            ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migra';
wwv_flow_imp.g_varchar2_table(652) := 'tion_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type       ';
wwv_flow_imp.g_varchar2_table(653) := '           => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_n';
wwv_flow_imp.g_varchar2_table(654) := 'o'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(655) := '             ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_c';
wwv_flow_imp.g_varchar2_table(656) := 'hapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated        ';
wwv_flow_imp.g_varchar2_table(657) := ' => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(658) := '                               ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                    ';
wwv_flow_imp.g_varchar2_table(659) := '           ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(660) := ',i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id        ';
wwv_flow_imp.g_varchar2_table(661) := '           => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(662) := '                          ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(663) := ',i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type    ';
wwv_flow_imp.g_varchar2_table(664) := '       => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_na';
wwv_flow_imp.g_varchar2_table(665) := 'me'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                       ';
wwv_flow_imp.g_varchar2_table(666) := '        ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2   ';
wwv_flow_imp.g_varchar2_table(667) := '           => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_co';
wwv_flow_imp.g_varchar2_table(668) := 'de_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loo';
wwv_flow_imp.g_varchar2_table(669) := 'p;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_20_2_pkg.ptf_des_7_1_8(i_app_id  ';
wwv_flow_imp.g_varchar2_table(670) := '             => i_app_id'||wwv_flow.LF||
'                                                        ,i_migration_priori';
wwv_flow_imp.g_varchar2_table(671) := 'ties => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version          ';
wwv_flow_imp.g_varchar2_table(672) := '   => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'       ';
wwv_flow_imp.g_varchar2_table(673) := '                        ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(674) := '  ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text';
wwv_flow_imp.g_varchar2_table(675) := '          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_ch';
wwv_flow_imp.g_varchar2_table(676) := 'apter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(677) := '                       ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(678) := ',i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_';
wwv_flow_imp.g_varchar2_table(679) := 'in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => ';
wwv_flow_imp.g_varchar2_table(680) := 'p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(681) := '                       ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_pa';
wwv_flow_imp.g_varchar2_table(682) := 'ge_name                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => ';
wwv_flow_imp.g_varchar2_table(683) := 'p.component_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(684) := '                           ,i_region_name              => p.region_name'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(685) := '   ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label          ';
wwv_flow_imp.g_varchar2_table(686) := '     => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'   ';
wwv_flow_imp.g_varchar2_table(687) := '                            ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(688) := '       ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    -- APEX 2';
wwv_flow_imp.g_varchar2_table(689) := '2.1'||wwv_flow.LF||
'    if i_apex_versions is null or'||wwv_flow.LF||
'       instr(i_apex_versions'||wwv_flow.LF||
'            ,av_migration_22_1_pk';
wwv_flow_imp.g_varchar2_table(690) := 'g.c_apex_version) > 0'||wwv_flow.LF||
'    then'||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.p';
wwv_flow_imp.g_varchar2_table(691) := 'tf_des_8_1_1(i_app_id               => i_app_id'||wwv_flow.LF||
'                                                    ';
wwv_flow_imp.g_varchar2_table(692) := '    ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i';
wwv_flow_imp.g_varchar2_table(693) := '_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type               ';
wwv_flow_imp.g_varchar2_table(694) := '   => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(695) := '                         ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                          ';
wwv_flow_imp.g_varchar2_table(696) := '     ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_l';
wwv_flow_imp.g_varchar2_table(697) := 'ink          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.ch';
wwv_flow_imp.g_varchar2_table(698) := 'eck_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(699) := '                       ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(700) := '   ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migra';
wwv_flow_imp.g_varchar2_table(701) := 'tion_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                ';
wwv_flow_imp.g_varchar2_table(702) := '   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(703) := '                  ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,i_compo';
wwv_flow_imp.g_varchar2_table(704) := 'nent_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type           =';
wwv_flow_imp.g_varchar2_table(705) := '> p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_name'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(706) := '                          ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ';
wwv_flow_imp.g_varchar2_table(707) := ',i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2           ';
wwv_flow_imp.g_varchar2_table(708) := '   => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(709) := '                              ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(710) := '      for p in (select *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_2(i_app_id          ';
wwv_flow_imp.g_varchar2_table(711) := '     => i_app_id'||wwv_flow.LF||
'                                                        ,i_migration_priorities => ';
wwv_flow_imp.g_varchar2_table(712) := 'i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.';
wwv_flow_imp.g_varchar2_table(713) := 'apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'               ';
wwv_flow_imp.g_varchar2_table(714) := '                ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_';
wwv_flow_imp.g_varchar2_table(715) := 'chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text        ';
wwv_flow_imp.g_varchar2_table(716) := '  => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_li';
wwv_flow_imp.g_varchar2_table(717) := 'nk'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(718) := '               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attri';
wwv_flow_imp.g_varchar2_table(719) := 'bute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days ';
wwv_flow_imp.g_varchar2_table(720) := '=> p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migrat';
wwv_flow_imp.g_varchar2_table(721) := 'ion_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                ';
wwv_flow_imp.g_varchar2_table(722) := '               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name ';
wwv_flow_imp.g_varchar2_table(723) := '               => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p.compon';
wwv_flow_imp.g_varchar2_table(724) := 'ent_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'            ';
wwv_flow_imp.g_varchar2_table(725) := '                   ,i_region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_it';
wwv_flow_imp.g_varchar2_table(726) := 'em_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => ';
wwv_flow_imp.g_varchar2_table(727) := 'p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'           ';
wwv_flow_imp.g_varchar2_table(728) := '                    ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(729) := 'i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(730) := '          from av_migration_22_1_pkg.ptf_des_8_1_4(i_app_id               => i_app_id'||wwv_flow.LF||
'              ';
wwv_flow_imp.g_varchar2_table(731) := '                                          ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(732) := 'loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(733) := '             ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_n';
wwv_flow_imp.g_varchar2_table(734) := 'o            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_c';
wwv_flow_imp.g_varchar2_table(735) := 'hapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(736) := '                       ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                            ';
wwv_flow_imp.g_varchar2_table(737) := '   ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed ';
wwv_flow_imp.g_varchar2_table(738) := '            => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          => p.attrib';
wwv_flow_imp.g_varchar2_table(739) := 'ute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(740) := '                              ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(741) := '             ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page_id      ';
wwv_flow_imp.g_varchar2_table(742) := '            => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.page_name'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(743) := '                              ,i_component_name           => p.component_name'||wwv_flow.LF||
'                      ';
wwv_flow_imp.g_varchar2_table(744) := '         ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_region_na';
wwv_flow_imp.g_varchar2_table(745) := 'me              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name                => p.ite';
wwv_flow_imp.g_varchar2_table(746) := 'm_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'                  ';
wwv_flow_imp.g_varchar2_table(747) := '             ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_co';
wwv_flow_imp.g_varchar2_table(748) := 'de_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p';
wwv_flow_imp.g_varchar2_table(749) := '.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_22_';
wwv_flow_imp.g_varchar2_table(750) := '1_pkg.ptf_des_8_1_6(i_app_id               => i_app_id'||wwv_flow.LF||
'                                             ';
wwv_flow_imp.g_varchar2_table(751) := '           ,i_migration_priorities => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migrat';
wwv_flow_imp.g_varchar2_table(752) := 'ion_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type        ';
wwv_flow_imp.g_varchar2_table(753) := '          => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_chapter_no            => p.rn_chapter_no';
wwv_flow_imp.g_varchar2_table(754) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(755) := '            ,i_rn_chapter_text          => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_ch';
wwv_flow_imp.g_varchar2_table(756) := 'apter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                               ,i_check_integrated         ';
wwv_flow_imp.g_varchar2_table(757) := '=> p.check_integrated'||wwv_flow.LF||
'                               ,i_check_needed             => p.check_needed'||wwv_flow.LF||
' ';
wwv_flow_imp.g_varchar2_table(758) := '                              ,i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                     ';
wwv_flow_imp.g_varchar2_table(759) := '          ,i_migration_effort_in_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(760) := 'i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'                               ,i_app_id         ';
wwv_flow_imp.g_varchar2_table(761) := '          => p.app_id'||wwv_flow.LF||
'                               ,i_page_id                  => p.page_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(762) := '                         ,i_page_name                => p.page_name'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(763) := 'i_component_name           => p.component_name'||wwv_flow.LF||
'                               ,i_component_type     ';
wwv_flow_imp.g_varchar2_table(764) := '      => p.component_type'||wwv_flow.LF||
'                               ,i_region_name              => p.region_nam';
wwv_flow_imp.g_varchar2_table(765) := 'e'||wwv_flow.LF||
'                               ,i_item_name                => p.item_name'||wwv_flow.LF||
'                        ';
wwv_flow_imp.g_varchar2_table(766) := '       ,i_item_label               => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2    ';
wwv_flow_imp.g_varchar2_table(767) := '          => p.js_code_vc2'||wwv_flow.LF||
'                               ,i_plsql_code_vc2           => p.plsql_cod';
wwv_flow_imp.g_varchar2_table(768) := 'e_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop';
wwv_flow_imp.g_varchar2_table(769) := ';'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *'||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_7(i_app_id   ';
wwv_flow_imp.g_varchar2_table(770) := '            => i_app_id'||wwv_flow.LF||
'                                                        ,i_migration_priorit';
wwv_flow_imp.g_varchar2_table(771) := 'ies => i_migration_priorities))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version           ';
wwv_flow_imp.g_varchar2_table(772) := '  => p.apex_version'||wwv_flow.LF||
'                               ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'        ';
wwv_flow_imp.g_varchar2_table(773) := '                       ,i_rn_chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                              ';
wwv_flow_imp.g_varchar2_table(774) := ' ,i_rn_chapter_name          => p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text ';
wwv_flow_imp.g_varchar2_table(775) := '         => p.rn_chapter_text'||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_cha';
wwv_flow_imp.g_varchar2_table(776) := 'pter_link'||wwv_flow.LF||
'                               ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(777) := '                      ,i_check_needed             => p.check_needed'||wwv_flow.LF||
'                               ,';
wwv_flow_imp.g_varchar2_table(778) := 'i_attribute_value          => p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_i';
wwv_flow_imp.g_varchar2_table(779) := 'n_days => p.migration_effort_in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p';
wwv_flow_imp.g_varchar2_table(780) := '.migration_priority'||wwv_flow.LF||
'                               ,i_app_id                   => p.app_id'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(781) := '                      ,i_page_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_pag';
wwv_flow_imp.g_varchar2_table(782) := 'e_name                => p.page_name'||wwv_flow.LF||
'                               ,i_component_name           => p';
wwv_flow_imp.g_varchar2_table(783) := '.component_name'||wwv_flow.LF||
'                               ,i_component_type           => p.component_type'||wwv_flow.LF||
'     ';
wwv_flow_imp.g_varchar2_table(784) := '                          ,i_region_name              => p.region_name'||wwv_flow.LF||
'                             ';
wwv_flow_imp.g_varchar2_table(785) := '  ,i_item_name                => p.item_name'||wwv_flow.LF||
'                               ,i_item_label           ';
wwv_flow_imp.g_varchar2_table(786) := '    => p.item_label'||wwv_flow.LF||
'                               ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'    ';
wwv_flow_imp.g_varchar2_table(787) := '                           ,i_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                         ';
wwv_flow_imp.g_varchar2_table(788) := '      ,i_css_code_vc2             => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    '||wwv_flow.LF||
'      for p in (select *';
wwv_flow_imp.g_varchar2_table(789) := ''||wwv_flow.LF||
'                from av_migration_22_1_pkg.ptf_des_8_1_13(i_app_id               => i_app_id'||wwv_flow.LF||
'      ';
wwv_flow_imp.g_varchar2_table(790) := '                                                   ,i_migration_priorities => i_migration_priorities';
wwv_flow_imp.g_varchar2_table(791) := '))'||wwv_flow.LF||
'      loop'||wwv_flow.LF||
'        pipe row(av_migration_t(i_apex_version             => p.apex_version'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(792) := '                      ,i_rn_type                  => p.rn_type'||wwv_flow.LF||
'                               ,i_rn_';
wwv_flow_imp.g_varchar2_table(793) := 'chapter_no            => p.rn_chapter_no'||wwv_flow.LF||
'                               ,i_rn_chapter_name          ';
wwv_flow_imp.g_varchar2_table(794) := '=> p.rn_chapter_name'||wwv_flow.LF||
'                               ,i_rn_chapter_text          => p.rn_chapter_text';
wwv_flow_imp.g_varchar2_table(795) := ''||wwv_flow.LF||
'                               ,i_rn_chapter_link          => p.rn_chapter_link'||wwv_flow.LF||
'                   ';
wwv_flow_imp.g_varchar2_table(796) := '            ,i_check_integrated         => p.check_integrated'||wwv_flow.LF||
'                               ,i_chec';
wwv_flow_imp.g_varchar2_table(797) := 'k_needed             => p.check_needed'||wwv_flow.LF||
'                               ,i_attribute_value          =>';
wwv_flow_imp.g_varchar2_table(798) := ' p.attribute_value'||wwv_flow.LF||
'                               ,i_migration_effort_in_days => p.migration_effort_';
wwv_flow_imp.g_varchar2_table(799) := 'in_days'||wwv_flow.LF||
'                               ,i_migration_priority       => p.migration_priority'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(800) := '                      ,i_app_id                   => p.app_id'||wwv_flow.LF||
'                               ,i_page';
wwv_flow_imp.g_varchar2_table(801) := '_id                  => p.page_id'||wwv_flow.LF||
'                               ,i_page_name                => p.pa';
wwv_flow_imp.g_varchar2_table(802) := 'ge_name'||wwv_flow.LF||
'                               ,i_component_name           => p.component_name'||wwv_flow.LF||
'             ';
wwv_flow_imp.g_varchar2_table(803) := '                  ,i_component_type           => p.component_type'||wwv_flow.LF||
'                               ,i_';
wwv_flow_imp.g_varchar2_table(804) := 'region_name              => p.region_name'||wwv_flow.LF||
'                               ,i_item_name               ';
wwv_flow_imp.g_varchar2_table(805) := ' => p.item_name'||wwv_flow.LF||
'                               ,i_item_label               => p.item_label'||wwv_flow.LF||
'         ';
wwv_flow_imp.g_varchar2_table(806) := '                      ,i_js_code_vc2              => p.js_code_vc2'||wwv_flow.LF||
'                               ,i';
wwv_flow_imp.g_varchar2_table(807) := '_plsql_code_vc2           => p.plsql_code_vc2'||wwv_flow.LF||
'                               ,i_css_code_vc2        ';
wwv_flow_imp.g_varchar2_table(808) := '     => p.css_code_vc2));'||wwv_flow.LF||
'      end loop;'||wwv_flow.LF||
'    end if;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'    return;'||wwv_flow.LF||
'  end ptf_effort_calculation;'||wwv_flow.LF||
''||wwv_flow.LF||
'';
wwv_flow_imp.g_varchar2_table(809) := 'end av_migration_pkg;'||wwv_flow.LF||
'/';
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
