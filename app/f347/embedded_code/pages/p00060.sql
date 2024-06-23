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
-- Page: 60 - Templates > Region: Templates Reference (customized) > Source > SQL Query

select t.template_type || ' - ' || t.template_name template
      ,case t.is_subscribed when 'No' then 'New defined Template' else 'Original Template' end new_or_original
      ,t.reference_count
      ,'Default=' || t.is_default || '<br>Last Updated =' || t.last_updated_by || ' - ' || t.last_updated_on tooltip
from apex_application_templates t
join apex_application_themes th on th.theme_number = t.theme_number
                            and th.application_id = t.application_id
where t.is_subscribed = 'No'
and th.application_id = :P0_APP_ID
and t.reference_count > 0
and (:P60_TEMPLATE_TYPE is null or :P60_TEMPLATE_TYPE = template_type)
order by template_type, reference_count desc;

-- ----------------------------------------
-- Page: 60 - Templates > Page Item: P60_TEMPLATE_TYPE > List of Values > SQL Query

select distinct template_type d, template_type r from apex_application_templates where reference_count > 0 and application_id = :P0_APP_ID;

-- ----------------------------------------
-- Page: 60 - Templates > Region: Templates Reference (overall) > Source > SQL Query

select t.template_type || ' - ' || t.template_name template
      ,case t.is_subscribed when 'No' then 'New defined Template' else 'Original Template' end new_or_original
      ,t.reference_count
      ,'Default=' || t.is_default || '<br>Subscribed =' || t.is_subscribed tooltip
from apex_application_templates t
join apex_application_themes th on th.theme_number = t.theme_number
                            and th.application_id = t.application_id
where th.is_current = 'Yes'
and t.reference_count > 0
and th.application_id = :P0_APP_ID
and (:P60_TEMPLATE_TYPE is null or :P60_TEMPLATE_TYPE = template_type)
order by template_type, reference_count desc;

-- ----------------------------------------
-- Page: 60 - Templates > Region: Details > Source > SQL Query

select th.application_id
      ,th.application_name
      ,th.theme_name
      ,th.default_nav_list_position nav_pos
      ,th.default_page_template page_temp
      ,th.default_region_template region_temp
      ,th.default_report_region_template rep_region_temp
      ,th.default_button_template button_temp
      ,th.icon_library      
from apex_application_themes th
where th.application_id = :P0_APP_ID or :P0_APP_ID is null;

