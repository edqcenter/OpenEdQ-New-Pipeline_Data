/*
Note: Run this before 2, if needed.
This CTE creates cleans up the credential objective lookup table and creates a view of the table.
*/

drop view if exists core_ers.vw_cred_obj_lookup;

create or alter view core_ers.vw_cred_obj_lookup
with schemabinding
as
select 
	cast(erss_cred_obj as int) as lookup_erss_cred_obj
	, replace(cred_obj_description, '"','') as cred_obj_description
	, code_value
from core_ers.cred_obj_lookup;
go

select * from core_ers.vw_cred_obj_lookup;
go