
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_P0600_NOT_USED_AUTH_SCHEMES_V" ("AUTHORIZATION_SCHEME_NAME", "APPLICATION_ID") AS 
  with auth as
 (select v1.visibility_id
        ,v1.application_id
  from av_visibility_v v1
  where v1.visibility_category = 'AUTHORIZATION_SCHEME'
  and v1.visibility_name is not null)
select a.authorization_scheme_name
      ,a.application_id
from apex_application_authorization a
where to_char(a.authorization_scheme_id) not in (select a1.visibility_id
                                                 from auth a1
                                                 where a1.application_id = a.application_id)
and to_char('!' || a.authorization_scheme_id) not in (select a1.visibility_id
                                                     from auth a1
                                                     where a1.application_id = a.application_id)
;
