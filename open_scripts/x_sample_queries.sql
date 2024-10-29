/*
Sample queries
*/

select 
	count(*) as total_count
	, cred_obj_description
from [core_ers].[vw_core_enrollment_count_and_completion_rate]
where erss_year = 2021
group by cred_obj_description
order by total_count DESC;

select 
	Credential_Type
	, count(*) as total_count
from [core_ers].[vw_core_enrollment_count_and_completion_rate]
where erss_year = 2022
group by Credential_Type
order by total_count DESC;

