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
-- Page: 600 - QA > Region: unused plugins > Source > SQL Query

select NAME,
       DISPLAY_NAME
  from AV_PLUGINS_V
 where application_id = :P0_APP_ID and
page_name is null;

-- ----------------------------------------
-- Page: 600 - QA > Dynamic Action: click - button - Refresh - refresh regions > Action: Execute Server-side Code > Settings > PL/SQL Code

av_general_pkg.p_qa_app_settings(
  pi_application_id            => :P0_APP_ID
 ,po_compatibility_mode        => :P600_COMPATIBILITY_MODE
 ,po_session_state_protection  => :P600_SESSION_STATE_PROTECTION
 ,po_runtime_api_usage         => :P600_RUNTIME_API_USAGE
 ,po_include_legacy_javascript => :P600_INCLUDE_LEGACY_JAVASCRIPT
 ,po_include_jquery_migrate    => :P600_INCLUDE_JQUERY_MIGRATE
 ,po_theme_name                => :P600_THEME_NAME
 ,po_theme_version             => :P600_THEME_VERSION
);

-- ----------------------------------------
-- Page: 600 - QA > Dynamic Action: change P0_APP_ID - refresh regions > Action: Execute Server-side Code > Settings > PL/SQL Code

av_general_pkg.p_qa_app_settings(
  pi_application_id            => :P0_APP_ID
 ,po_compatibility_mode        => :P600_COMPATIBILITY_MODE
 ,po_session_state_protection  => :P600_SESSION_STATE_PROTECTION
 ,po_runtime_api_usage         => :P600_RUNTIME_API_USAGE
 ,po_include_legacy_javascript => :P600_INCLUDE_LEGACY_JAVASCRIPT
 ,po_include_jquery_migrate    => :P600_INCLUDE_JQUERY_MIGRATE
 ,po_theme_name                => :P600_THEME_NAME
 ,po_theme_version             => :P600_THEME_VERSION
);

-- ----------------------------------------
-- Page: 600 - QA > Region: never condition used > Source > SQL Query

select v.page_name
      ,v.page_id
      ,v.component_type
      ,v.component_name
from av_visibility_v v
where v.visibility_category = 'CONDITION'
and upper(v.visibility_type) = 'NEVER'
and v.application_id = :P0_APP_ID;

