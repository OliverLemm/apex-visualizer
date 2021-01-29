create or replace force view av_visibility_overview_v as
select aaa.application_id            app_id
      ,aaa.application_name          app_name
      ,aaa.authorization_scheme_name visibilty_name
from apex_application_authorization aaa
union all
select aa.application_id app_id
      ,aa.application_name app_name
      ,'condition' visibilty_name
from apex_applications aa;
