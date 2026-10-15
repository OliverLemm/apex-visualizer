create or replace force view av_templates_v as
select application_id
      ,application_name
      ,'Page Template' component_type
      ,template_name component_name
      ,header_template template_clob1
      ,page_body template_clob2
      ,footer_template template_clob3
      ,grid_template template_vc1
      ,grid_row_template template_vc2
      ,grid_column_template template_vc3
from apex_application_temp_page tp
union all
select tr.application_id
      ,tr.application_name
      ,'Region Template' component_type
      ,tr.template_name component_name
      ,tr.template template_clob1
      ,tr.template2 template_clob2
      ,tr.template3 template_clob3
      ,tr.sub_region_header_template template_vc1
      ,tr.sub_region_header_entry_templ template_vc2
      ,tr.sub_region_template template_vc3
from apex_application_temp_region tr
union all
select trep.application_id
      ,trep.application_name
      ,'Report Template' component_type
      ,trep.template_name component_name
      ,trep.col_template1 template_clob1
      ,trep.col_template2 template_clob2
      ,trep.col_template3 template_clob3
      ,trep.before_column_heading template_vc1
      ,trep.column_heading_template template_vc2
      ,trep.after_column_heading template_vc3
from apex_application_temp_report trep
union all
select tb.application_id
      ,tb.application_name
      ,'Button Template' component_type
      ,tb.template_name component_name
      ,tb.template template_clob1
      ,tb.hot_template template_clob2
      ,null template_clob3
      ,null template_vc1
      ,null template_vc2
      ,null template_vc3
from apex_application_temp_button tb
