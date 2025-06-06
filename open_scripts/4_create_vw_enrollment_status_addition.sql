/*
This CTE creates a column enrollment_status to identify New, Continuing, or Returning students to a campus.
*/

/*
drop view if exists [core_ers].[vw_enrollment_status_addition];
go
*/
create or alter view [core_ers].[vw_enrollment_status_addition]
as
with enrollment_status_cte as (
select
*,
case
---- New
	when 
		erss_enroll_stat in (4,5)
	then 'New'
 ---- Continuing
 	when 
		erss_enroll_stat in (1)
	then 'Continuing'
 ---- Returning
 	when 
		erss_enroll_stat in (2,3)
	then 'Returning'
else 'Other'
end as enrollment_status
----------------------------------------------
from [core_ers].[vw_international_students_addition]
----------------------------------------------

)
select * from enrollment_status_cte;
go