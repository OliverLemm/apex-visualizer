
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_VISIBILITY_OVERVIEW_V" ("APP_ID", "APP_NAME", "VISIBILTY_NAME") AS 
  select aaa.application_id            app_id
      ,aaa.application_name          app_name
      ,aaa.authorization_scheme_name visibilty_name
from apex_application_authorization aaa
union all
select aa.application_id app_id
      ,aa.application_name app_name
      ,'condition' visibilty_name
from apex_applications aa
;