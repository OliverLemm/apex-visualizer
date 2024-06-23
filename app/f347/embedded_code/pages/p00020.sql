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
-- Page: 20 - Pages > Region: Components Overall > Source > SQL Query

select application_name, t.component, sum(t.amount) amount
from Av_COMPONENTS_V t 
where t.application_id = :P0_APP_ID or :P0_APP_ID is null
group by application_name, t.component;

-- ----------------------------------------
-- Page: 20 - Pages > Region: Components per Page > Attributes:  > Series: Average Components over all Pages > Source > SQL Query

select t.component
      ,avg(t.amount) amount
from av_components_v t
where (t.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (:P0_COMPONENT is null or component = :P0_COMPONENT)
group by component;

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: regions > Source > SQL Query

select 
aap.page_name,
aap.regions
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: items > Source > SQL Query

select aap.page_name
      ,aap.items
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: buttons > Source > SQL Query

select aap.page_name
      ,aap.buttons
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: computations > Source > SQL Query

select aap.page_name
      ,aap.Computations
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: validations > Source > SQL Query

select aap.page_name
      ,aap.validations
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: processes > Source > SQL Query

select aap.page_name
      ,aap.processes
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: branches > Source > SQL Query

select aap.page_name
      ,aap.branches
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null);

-- ----------------------------------------
-- Page: 20 - Pages > Region: Chart > Attributes:  > Series: dynamic actions > Source > SQL Query

select aap.page_name
      ,count(aap.page_id) dynamic_actions
from apex_application_page_da aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (aap.page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
group by application_id, page_id, page_name;

-- ----------------------------------------
-- Page: 20 - Pages > Region: Number of Components per Page > Source > SQL Query

select page_name, sum(amount) amount
from av_components_v
where :P0_APP_ID = application_id or :P0_APP_ID is null
group by page_name
order by 2 desc;

-- ----------------------------------------
-- Page: 20 - Pages > Region: Components per Page > Source > SQL Query

select t.page
      ,t.component
      ,t.amount
from av_components_v t
where (application_id = :P0_APP_ID or :P0_APP_ID is null)
and (page_id = :P0_PAGE_ID or :P0_PAGE_ID is null)
and (component = :P0_COMPONENT or :P0_COMPONENT is null)
and t.amount > 0;

-- ----------------------------------------
-- Page: 20 - Pages > Region: Pages > Source > SQL Query

select aap.application_id
      ,aap.application_name
      ,aap.page_id
      ,aap.page_name
      ,aap.page_mode
      ,aap.page_alias
      ,aap.page_function
      ,aap.page_group
      ,aap.page_template
      ,aap.created_by
      ,aap.created_on
      ,aap.last_updated_by
      ,aap.last_updated_on
      ,aap.reload_on_submit
      ,aap.warn_on_unsaved_changes
from apex_application_pages aap
where (aap.application_id = :P0_APP_ID or :P0_APP_ID is null)
and (:P0_PAGE_ID is null or aap.page_id = :P0_PAGE_ID);

