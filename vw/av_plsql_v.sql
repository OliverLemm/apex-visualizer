create or replace view av_plsql_v as
select application_id, application_name, page_id, page_name, case when code_length > 2000 then 0 else best_practice end best_practice,
component_name, component_type, process_point, code_type, plsql_code, code_length
from (
-- Application Process
select p.application_id, p.application_name, -1 page_id, 'application' page_name, p.PROCESS_NAME component_name, 'application_process' component_type, 1 best_practice,
p.process_point, p.process_type code_type, to_char(substr(p.process,0,4000)) plsql_code, length(p.process) code_length
from apex_application_processes p
union
-- Page Process
select pp.application_id, pp.application_name, pp.page_id, pp.page_name, pp.process_name component_name, 'page_process' component_type, 1 best_practice,
pp.process_point,pp.process_type code_type, to_char(substr(pp.process_source,0,4000)) plsql_code, length(pp.process_source) code_length
from apex_application_page_proc pp
where pp.process_type_code in ('DML_PROCESS_ROW','NATIVE_IG_DML','NATIVE_LOAD_UPLOADED_DATA','MULTI_ROW_UPDATE',
'NATIVE_PARSE_UPLOADED_DATA','MULTI_ROW_UPDATE','NATIVE_PARSE_UPLOADED_DATA','NATIVE_PREPARE_UPLOADED_DATA','PLSQL','DML_FETCH_ROW')
union
-- page computation
select pc.application_id, pc.application_name, pc.page_id, pc.page_name, pc.item_name component_name, 'computation' component_type, 1 best_practice,
pc.computation_point process_point, pc.computation_type code_type, substr(pc.computation,0,4000) plsql_code, length(pc.computation) code_length
from apex_application_page_comp pc
where pc.computation_type in ('PL/SQL Expression','SQL Query (return single value)','PL/SQL Function Body')
union
-- item default
select pi.application_id, pi.application_name, pi.page_id, pi.page_name, pi.item_name component_name, 'item_default' component_type, 0 best_practice,
'Rendering' process_point, pi.item_default_type code_type, to_char(substr(pi.item_default,0,4000)) plsql_code, length(pi.item_default) code_length
from apex_application_page_items pi
where pi.ITEM_DEFAULT is not null and pi.ITEM_DEFAULT_TYPE = 'PLSQL_EXPRESSION'
union
-- item source
select pi.application_id, pi.application_name, pi.page_id, pi.page_name, pi.item_name component_name, 'item_source' component_type, 0 best_practice,
'Rendering' process_point, pi.item_source_type code_type, to_char(substr(pi.item_source,0,4000)) plsql_code, length(pi.item_source) code_length
from apex_application_page_items pi
where pi.item_source is not null and pi.item_source_type in ('PL/SQL Function Body','SQL Query (return single value)','PL/SQL Expression or Function')
union
-- item lov
select pi.application_id, pi.application_name, pi.page_id, pi.page_name, pi.item_name component_name, 'lov' component_type, case when pi.lov_named_lov is null or length(pi.lov_definition) > 1000 then 0 else 1 end best_practice,
'Rendering' process_point, nvl2(pi.lov_named_lov, 'named_lov', 'query') code_type, to_char(substr(pi.lov_definition,0,4000)) plsql_code, length(pi.lov_definition) code_length
from apex_application_page_items pi
where pi.lov_definition is not null and instr(pi.lov_definition,'STATIC2:') = 0 and instr(pi.lov_definition,'STATIC:') = 0
union
-- item condition
select pi.application_id, pi.application_name, pi.page_id, pi.page_name, pi.item_name component_name, 'condition' component_type, 1 best_practice,
'Rendering' process_point, pi.condition_type code_type, to_char(substr(pi.condition_expression1,0,4000)) plsql_code, length(pi.condition_expression1) code_length
from apex_application_page_items pi
where pi.condition_type_code is not null and pi.condition_type_code in ('EXISTS','FUNCTION_BODY','NOT_EXISTS','PLSQL_EXPRESSION')
union
-- Region source
select pr.application_id, pr.application_name, pr.page_id, pr.page_name, pr.region_name component_name, 'region_source' component_type, 1 best_practice,
'Rendering' process_point, pr.source_type code_type, to_char(substr(pr.region_source,0,4000)) plsql_code, length(pr.region_source) code_length
from apex_application_page_regions pr 
where source_type_code in ('DYNAMIC_QUERY','FUNCTION_RETURNING_SQL_QUERY','PLSQL_PROCEDURE','SQL_QUERY','UPDATABLE_SQL_QUERY')
);
