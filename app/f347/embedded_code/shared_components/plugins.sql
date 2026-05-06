-- --------------------------------------------------------------------------------
-- 
-- Oracle APEX source export file
-- 
-- The contents of this file are intended for review and analysis purposes only.
-- Developers must use the Application Builder to make modifications to an
-- application. Changes to this file will not be reflected in the application.
-- 
-- --------------------------------------------------------------------------------

-- ----------------------------------------
-- Plugin: D3 - Force Layout > Source > PL/SQL Code

FUNCTION d3_force__render( p_region              IN apex_plugin.t_region
                         , p_plugin              IN apex_plugin.t_plugin
                         , p_is_printer_friendly IN BOOLEAN )
   RETURN apex_plugin.t_region_render_result
IS
   v_configuration_object apex_application_page_regions.attribute_02%TYPE := p_region.attribute_02;
   v_custom_styles        apex_application_page_regions.attribute_03%TYPE := p_region.attribute_03;
   v_region_static_id     VARCHAR2( 100 );
BEGIN
   v_region_static_id := apex_plugin_util.escape( p_region.static_id, TRUE );

   apex_css.add_file( p_name      => 'd3-force-'
                    , p_directory => p_plugin.file_prefix
                    , p_version   => '3.1.2' );

   apex_javascript.add_library( p_name                  => 'ResizeObserver-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '1.5.0'
                              , p_check_to_add_minified => TRUE );

   apex_javascript.add_library( p_name                  => 'd3-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '3.5.6'
                              , p_check_to_add_minified => TRUE );

   apex_javascript.add_library( p_name                  => 'd3-force-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '3.1.2'
                              , p_check_to_add_minified => TRUE );

   HTP.p(    CASE
                WHEN v_custom_styles IS NOT NULL THEN
                   '<style>' || v_custom_styles || '</style>' || CHR( 10 )
             END
          || '<svg></svg>'
          || CHR( 10 ) );

   apex_javascript.add_onload_code( --> initialize chart function
                                   'd3_force_'
                                    || v_region_static_id --> we need to use a global var - that is the reason to NOT use the var keyword
                                    || ' = netGobrechtsD3Force('
                                    --> domContainerId:
                                    || apex_javascript.add_value( v_region_static_id, TRUE )
                                    --> options:
                                    || CASE
                                          WHEN v_configuration_object IS NOT NULL THEN
                                             v_configuration_object
                                          ELSE
                                             'null'
                                       END
                                    || ', '
                                    --> apexPluginId:
                                    || apex_javascript.add_value( apex_plugin.get_ajax_identifier
                                                                , TRUE )
                                    --> apexPageItemsToSubmit:
                                    || apex_javascript.add_value( p_region.ajax_items_to_submit
                                                                , FALSE )
                                    || ')'
                                    || CASE WHEN v( 'DEBUG' ) = 'YES' THEN '.debug(true)' END
                                    || CASE
                                          WHEN p_region.attribute_09 IS NOT NULL THEN
                                             '.positions(' || p_region.attribute_09 || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_04 IS NOT NULL THEN
                                                '.onNodeClickFunction('
                                             || p_region.attribute_04
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_05 IS NOT NULL THEN
                                                '.onNodeDblclickFunction('
                                             || p_region.attribute_05
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_06 IS NOT NULL THEN
                                                '.onNodeContextmenuFunction('
                                             || p_region.attribute_06
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_12 IS NOT NULL THEN
                                                '.onLinkClickFunction('
                                             || p_region.attribute_12
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_07 IS NOT NULL THEN
                                                '.onNodeMouseenterFunction('
                                             || p_region.attribute_07
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_08 IS NOT NULL THEN
                                                '.onNodeMouseleaveFunction('
                                             || p_region.attribute_08
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_10 IS NOT NULL THEN
                                                '.onLassoStartFunction('
                                             || p_region.attribute_10
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_11 IS NOT NULL THEN
                                                '.onLassoEndFunction(' 
                                             || p_region.attribute_11
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_13 IS NOT NULL THEN
                                                '.onForceStartFunction(' 
                                             || p_region.attribute_13
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_14 IS NOT NULL THEN
                                                '.onForceEndFunction(' 
                                             || p_region.attribute_14
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_15 IS NOT NULL THEN
                                                '.onRenderEndFunction(' 
                                             || p_region.attribute_15
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_16 IS NOT NULL THEN
                                                '.onResizeFunction(' 
                                             || p_region.attribute_16
                                             || ')'
                                       END
                                    --> start the visualization
                                    || '.start();' );
   RETURN NULL;
END d3_force__render;

FUNCTION d3_force__ajax( p_region IN apex_plugin.t_region, p_plugin IN apex_plugin.t_plugin )
   RETURN apex_plugin.t_region_ajax_result
IS
   v_clob  CLOB;
   v_binds DBMS_SQL.varchar2_table;
   v_cur   INTEGER;
   v_ret   INTEGER;
BEGIN
   IF p_region.source IS NOT NULL THEN
      v_binds := wwv_flow_utilities.get_binds( p_region.source );
      v_cur   := DBMS_SQL.open_cursor;
      DBMS_SQL.parse( c => v_cur, statement => REGEXP_REPLACE(p_region.source,';\s*$',''), language_flag => DBMS_SQL.native );

      IF v_binds.COUNT > 0 THEN
         FOR i IN v_binds.FIRST .. v_binds.LAST LOOP
            DBMS_SQL.bind_variable( v_cur
                                  , v_binds( i )
                                  , APEX_UTIL.get_session_state( SUBSTR( v_binds( i ), 2 ) ) );
         END LOOP;
      END IF;

      DBMS_SQL.define_column( c => v_cur, position => 1, column => v_clob );
      v_ret   := DBMS_SQL.execute( c => v_cur );

      WHILE DBMS_SQL.fetch_rows( v_cur ) > 0 LOOP
         DBMS_SQL.COLUMN_VALUE( v_cur, 1, v_clob );
      END LOOP;

      DBMS_SQL.close_cursor( v_cur );

      IF sys.DBMS_LOB.getlength( v_clob ) > 0 THEN
         DECLARE
            v_len PLS_INTEGER;
            v_pos PLS_INTEGER := 1;
            v_amo PLS_INTEGER := 4000;
            v_chu VARCHAR2( 32767 );
         BEGIN
            v_len := DBMS_LOB.getlength( v_clob );

            WHILE v_pos <= v_len LOOP
               v_amo := LEAST( v_amo, v_len - ( v_pos - 1 ) );
               v_chu := DBMS_LOB.SUBSTR( v_clob, v_amo, v_pos );
               v_pos := v_pos + v_amo;
               HTP.prn( v_chu );
            END LOOP;
         END;
      ELSE
         HTP.prn( 'query_returned_no_data' ); --> prn prints without newline
      END IF;
   ELSE
      HTP.prn( 'no_query_defined' );
   END IF;

   --> Free the temp LOB, if necessary
   BEGIN
      DBMS_LOB.freetemporary( v_clob );
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END;

   RETURN NULL;
EXCEPTION
   WHEN OTHERS THEN
      --> Close the cursor, if open
      BEGIN
         IF     v_cur IS NOT NULL
            AND DBMS_SQL.is_open( v_cur ) THEN
            DBMS_SQL.close_cursor( v_cur );
         END IF;
      EXCEPTION
         WHEN OTHERS THEN
            NULL;
      END;

      apex_debug.MESSAGE( SQLERRM );
      --> Write error back to the Browser
      HTP.prn( SQLERRM );
      RETURN NULL;
END d3_force__ajax;


-- ----------------------------------------
-- Plugin: D3 - Force Layout > Source > PL/SQL Code

FUNCTION d3_force__render( p_region              IN apex_plugin.t_region
                         , p_plugin              IN apex_plugin.t_plugin
                         , p_is_printer_friendly IN BOOLEAN )
   RETURN apex_plugin.t_region_render_result
IS
   v_configuration_object apex_application_page_regions.attribute_02%TYPE := p_region.attribute_02;
   v_custom_styles        apex_application_page_regions.attribute_03%TYPE := p_region.attribute_03;
   v_region_static_id     VARCHAR2( 100 );
BEGIN
   v_region_static_id := apex_plugin_util.escape( p_region.static_id, TRUE );

   apex_css.add_file( p_name      => 'd3-force-'
                    , p_directory => p_plugin.file_prefix
                    , p_version   => '3.1.2' );

   apex_javascript.add_library( p_name                  => 'ResizeObserver-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '1.5.0'
                              , p_check_to_add_minified => TRUE );

   apex_javascript.add_library( p_name                  => 'd3-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '3.5.6'
                              , p_check_to_add_minified => TRUE );

   apex_javascript.add_library( p_name                  => 'd3-force-'
                              , p_directory             => p_plugin.file_prefix
                              , p_version               => '3.1.2'
                              , p_check_to_add_minified => TRUE );

   HTP.p(    CASE
                WHEN v_custom_styles IS NOT NULL THEN
                   '<style>' || v_custom_styles || '</style>' || CHR( 10 )
             END
          || '<svg></svg>'
          || CHR( 10 ) );

   apex_javascript.add_onload_code( --> initialize chart function
                                   'd3_force_'
                                    || v_region_static_id --> we need to use a global var - that is the reason to NOT use the var keyword
                                    || ' = netGobrechtsD3Force('
                                    --> domContainerId:
                                    || apex_javascript.add_value( v_region_static_id, TRUE )
                                    --> options:
                                    || CASE
                                          WHEN v_configuration_object IS NOT NULL THEN
                                             v_configuration_object
                                          ELSE
                                             'null'
                                       END
                                    || ', '
                                    --> apexPluginId:
                                    || apex_javascript.add_value( apex_plugin.get_ajax_identifier
                                                                , TRUE )
                                    --> apexPageItemsToSubmit:
                                    || apex_javascript.add_value( p_region.ajax_items_to_submit
                                                                , FALSE )
                                    || ')'
                                    || CASE WHEN v( 'DEBUG' ) = 'YES' THEN '.debug(true)' END
                                    || CASE
                                          WHEN p_region.attribute_09 IS NOT NULL THEN
                                             '.positions(' || p_region.attribute_09 || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_04 IS NOT NULL THEN
                                                '.onNodeClickFunction('
                                             || p_region.attribute_04
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_05 IS NOT NULL THEN
                                                '.onNodeDblclickFunction('
                                             || p_region.attribute_05
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_06 IS NOT NULL THEN
                                                '.onNodeContextmenuFunction('
                                             || p_region.attribute_06
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_12 IS NOT NULL THEN
                                                '.onLinkClickFunction('
                                             || p_region.attribute_12
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_07 IS NOT NULL THEN
                                                '.onNodeMouseenterFunction('
                                             || p_region.attribute_07
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_08 IS NOT NULL THEN
                                                '.onNodeMouseleaveFunction('
                                             || p_region.attribute_08
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_10 IS NOT NULL THEN
                                                '.onLassoStartFunction('
                                             || p_region.attribute_10
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_11 IS NOT NULL THEN
                                                '.onLassoEndFunction(' 
                                             || p_region.attribute_11
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_13 IS NOT NULL THEN
                                                '.onForceStartFunction(' 
                                             || p_region.attribute_13
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_14 IS NOT NULL THEN
                                                '.onForceEndFunction(' 
                                             || p_region.attribute_14
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_15 IS NOT NULL THEN
                                                '.onRenderEndFunction(' 
                                             || p_region.attribute_15
                                             || ')'
                                       END
                                    || CASE
                                          WHEN p_region.attribute_16 IS NOT NULL THEN
                                                '.onResizeFunction(' 
                                             || p_region.attribute_16
                                             || ')'
                                       END
                                    --> start the visualization
                                    || '.start();' );
   RETURN NULL;
END d3_force__render;

FUNCTION d3_force__ajax( p_region IN apex_plugin.t_region, p_plugin IN apex_plugin.t_plugin )
   RETURN apex_plugin.t_region_ajax_result
IS
   v_clob  CLOB;
   v_binds DBMS_SQL.varchar2_table;
   v_cur   INTEGER;
   v_ret   INTEGER;
BEGIN
   IF p_region.source IS NOT NULL THEN
      v_binds := wwv_flow_utilities.get_binds( p_region.source );
      v_cur   := DBMS_SQL.open_cursor;
      DBMS_SQL.parse( c => v_cur, statement => REGEXP_REPLACE(p_region.source,';\s*$',''), language_flag => DBMS_SQL.native );

      IF v_binds.COUNT > 0 THEN
         FOR i IN v_binds.FIRST .. v_binds.LAST LOOP
            DBMS_SQL.bind_variable( v_cur
                                  , v_binds( i )
                                  , APEX_UTIL.get_session_state( SUBSTR( v_binds( i ), 2 ) ) );
         END LOOP;
      END IF;

      DBMS_SQL.define_column( c => v_cur, position => 1, column => v_clob );
      v_ret   := DBMS_SQL.execute( c => v_cur );

      WHILE DBMS_SQL.fetch_rows( v_cur ) > 0 LOOP
         DBMS_SQL.COLUMN_VALUE( v_cur, 1, v_clob );
      END LOOP;

      DBMS_SQL.close_cursor( v_cur );

      IF sys.DBMS_LOB.getlength( v_clob ) > 0 THEN
         DECLARE
            v_len PLS_INTEGER;
            v_pos PLS_INTEGER := 1;
            v_amo PLS_INTEGER := 4000;
            v_chu VARCHAR2( 32767 );
         BEGIN
            v_len := DBMS_LOB.getlength( v_clob );

            WHILE v_pos <= v_len LOOP
               v_amo := LEAST( v_amo, v_len - ( v_pos - 1 ) );
               v_chu := DBMS_LOB.SUBSTR( v_clob, v_amo, v_pos );
               v_pos := v_pos + v_amo;
               HTP.prn( v_chu );
            END LOOP;
         END;
      ELSE
         HTP.prn( 'query_returned_no_data' ); --> prn prints without newline
      END IF;
   ELSE
      HTP.prn( 'no_query_defined' );
   END IF;

   --> Free the temp LOB, if necessary
   BEGIN
      DBMS_LOB.freetemporary( v_clob );
   EXCEPTION
      WHEN OTHERS THEN
         NULL;
   END;

   RETURN NULL;
EXCEPTION
   WHEN OTHERS THEN
      --> Close the cursor, if open
      BEGIN
         IF     v_cur IS NOT NULL
            AND DBMS_SQL.is_open( v_cur ) THEN
            DBMS_SQL.close_cursor( v_cur );
         END IF;
      EXCEPTION
         WHEN OTHERS THEN
            NULL;
      END;

      apex_debug.MESSAGE( SQLERRM );
      --> Write error back to the Browser
      HTP.prn( SQLERRM );
      RETURN NULL;
END d3_force__ajax;


