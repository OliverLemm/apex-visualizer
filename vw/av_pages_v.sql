create or replace view av_pages_v as
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
from apex_application_pages aap;
