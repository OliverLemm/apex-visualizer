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
-- Page: 750 - APEX 26.2 > Region: 2. OCI Generative AI Model Retirement Migration > Source > SQL Query

select a.workspace, a.provider_type, model_name
from apex_workspace_ai_services a
where lower(a.model_name) in ('command-r-08-2024'
                             ,'command-r-plus-08-2024'
                             ,'command-latest'
                             ,'command-plus-latest');

-- ----------------------------------------
-- Page: 750 - APEX 26.2 > Region: 2. Deprecated Authentication Scheme > Source > SQL Query

select a.workspace
      ,a.authentication_scheme_name
      ,a.scheme_type_code
      ,a.is_current_authentication
from apex_application_auth a
where a.scheme_type_code in ('OSSO'
                            ,'NATIVE_OSSO')
and a.application_id = :P0_APP_ID;

