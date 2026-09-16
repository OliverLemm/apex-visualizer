
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AV_PAGES_V" ("APPLICATION_ID", "APPLICATION_NAME", "PAGE_ID", "PAGE_NAME", "PAGE_MODE", "PAGE_ALIAS", "PAGE_FUNCTION", "PAGE_GROUP", "PAGE_TEMPLATE", "CREATED_BY", "CREATED_ON", "LAST_UPDATED_BY", "LAST_UPDATED_ON", "RELOAD_ON_SUBMIT", "WARN_ON_UNSAVED_CHANGES") AS 
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
;