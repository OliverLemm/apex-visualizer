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
-- Page: 40 - Visibility > Region: Objects conditioned > Source > SQL Query

select count(1) amount_overall
      ,v.application_id
      ,v.component_type
      ,(select count (1) from av_visibility_v v1 where v1.application_id = v.application_id and v1.component_type = v.component_type and v1.visibility_name is not null group by v1.component_type,v1.application_id) amount
from av_visibility_v v
where v.application_id = :P0_APP_ID or :P0_APP_ID is null
group by application_id, component_type

-- ----------------------------------------
-- Page: 40 - Visibility > Region: Condition Details > Source > SQL Query

select v.application_id || ' - '  || v.application_name app
      ,v.visibility_name
      ,v.visibility_category
      ,v.visibility_type
      ,v.visibility_exp1
      ,count(1) amount
      ,visibility_type || '<br>amount=' || count(1) || '<br>' || visibility_exp1 tooltip
from av_visibility_v v
where v.visibility_name is not null
and v.application_id = :P0_APP_ID or :P0_APP_ID is null
group by v.application_id || ' - '  || v.application_name
        ,v.visibility_category
        ,v.visibility_name
        ,visibility_type
        ,visibility_exp1


-- ----------------------------------------
-- Page: 40 - Visibility > Region: Conditioned by > Source > SQL Query

select v.application_id
      ,v.visibility_category
      ,count(1) amount
from av_visibility_v v
where v.visibility_name is not null and (v.application_id = :P0_APP_ID or :P0_APP_ID is null)
group by application_id, visibility_category

