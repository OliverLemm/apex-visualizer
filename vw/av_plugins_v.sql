create or replace force view av_plugins_v as
select p.application_id
      ,p.application_name
      ,p.plugin_id
      ,p.plugin_type
      ,p.name
      ,p.display_name
      ,p.plsql_code
      ,p.api_version
      ,p.render_function
      ,p.help_text
      ,p.version_identifier
      ,p.about_url
      ,o.page_id
      ,o.page_name
      ,o.object_name
      ,o.object_label
from apex_appl_plugins p
left join ( -- Item Plugins
           select pi.application_id
                  ,pi.page_id
                  ,pi.page_name
                  ,pi.display_as plugin_display_name
                  ,'Item Type' object_type
                  ,pi.item_name object_name
                  ,pi.label object_label
           from apex_application_page_items pi
           where pi.display_as_code like 'PLUGIN%'
           union all
           -- Region Plugins
           select pr.application_id
                  ,pr.page_id
                  ,pr.page_name
                  ,pr.source_type plugin_display_name
                  ,'Region Type' object_type
                  ,pr.region_name object_name
                  ,pr.region_name object_label
           from apex_application_page_regions pr
           where pr.source_type_code like 'PLUGIN%'
           union all
           -- Dynamic Action Plugins
           select pd.application_id
                  ,pd.page_id
                  ,pd.page_name
                  ,pda.action_name plugin_display_name
                  ,'Dynamic Action' object_type
                  ,pda.action_name object_name
                  ,pd.dynamic_action_name object_label
           from apex_application_page_da pd
           join apex_application_page_da_acts pda on pda.dynamic_action_id = pd.dynamic_action_id
           where pda.action_code like 'PLUGIN%'
           union all
           -- Process Plugins
           select pp.application_id
                  ,pp.page_id
                  ,pp.page_name
                  ,pp.process_type plugin_display_name
                  ,'Process Type' object_type
                  ,pp.process_name object_name
                  ,pp.process_name object_label
           from apex_application_page_proc pp
           where pp.process_type_code like 'PLUGIN%') o on o.application_id = p.application_id
                                                    and o.object_type = p.plugin_type
                                                    and o.plugin_display_name = p.display_name;
