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
-- Page: 600 - QA > Dynamic Action: change P0_APP_ID - refresh regions > Action: Execute Server-side Code > Settings > PL/SQL Code

select
 a.compatibility_mode
,a.Session_State_Protection
,nvl2(a.runtime_api_usage, replace(replace(replace(a.runtime_api_usage,'T','This'),'O','Other'),'W','Workspace'),'None')
into
 :P600_COMPATIBILITY_MODE
,:P600_SESSION_STATE_PROTECTION
,:P600_RUNTIME_API_USAGE
from apex_applications a
where a.application_id = :P0_APP_ID;

select 
 ui.include_legacy_javascript 
,ui.include_jquery_migrate
into
 :P600_INCLUDE_LEGACY_JAVASCRIPT
,:P600_INCLUDE_JQUERY_MIGRATE
from apex_appl_user_interfaces ui 
where ui.application_id = :P0_APP_ID
and ui.ui_type_name = 'DESKTOP';

select 
 t.theme_name 
,replace(substr(t.file_prefix,instr(t.file_prefix,'theme_42') + 9),'/')
into 
 :P600_THEME_NAME
,:P600_UT_VERSION
from apex_application_themes t
where t.application_id = :P0_APP_ID
and t.ui_type_name = 'DESKTOP'
and t.is_current = 'Yes';

-- ----------------------------------------
-- Page: 600 - QA > Region: unused authorization schemes > Source > SQL Query

select a.authorization_scheme_name
from av_p0600_not_used_auth_schemes_v a
where a.application_id = :P0_APP_ID;

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

