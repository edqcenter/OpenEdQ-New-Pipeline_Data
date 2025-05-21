/*
This script creates labels for terms or semester by Fall, Winter, Spring, and Summer.
It also combines that label with the ERS year to make something like "Fall 2020".
*/

create or alter view [core_ers].[vw_core_enrollment_count_and_terms]
as
-- add the term name('Fall','Summer','Spring','Winter')
with terms_cte as (
select 
	*,
	case
	when erss_term = 4 
	then 'Fall'
	when erss_term = 3
	then 'Summer'
	when erss_term = 2
	then 'Spring'
	when erss_term = 1
	then 'Winter'
	else 'Not available'
	end as semester_or_term
from [core_ers].[vw_enrollment_status_addition]
)
-- add the term name and erss_year
select 
*,
(semester_or_term + ' ' + cast(erss_year as varchar(4))) as term_and_year
from terms_cte;
go
