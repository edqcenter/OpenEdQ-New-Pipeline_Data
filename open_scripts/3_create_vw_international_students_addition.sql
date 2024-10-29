/*
This CTE creates a column race_desc_with_intl.
*/

/*
drop view if exists [core_ers].[vw_international_students_addition];
go
*/
create or alter view [core_ers].[vw_international_students_addition]
as
with international_students_cte as (
select 
  *,
  /*
  This case statement re-labels Race/Ethnicity to align with IR & A dashboards, which include the category "International Student".

  F: Non-US citizen, F visa (student)
  J: Non-US citizen, J visa (exchange visitor)
  O: Non-US citizen, other visa
  N: Non-US citizen, undetermined status or no visa required because not entering the US

  Notes: As of Fall 2022 according to the Student Success Dashboards, students whose citizenship code value included Non-US citizen, 
  undetermined status or no Visa require are no longer categorized as part of the International group.
  This means erss_cit 'O' and 'F" are still considered "International Student" for Fall 2022 onward.
  */
  case
  ---- Non-U.S. citizen
  when
   erss_cit IN ('F','J','O','N')
   and erss_year IN (2019,2020,2021)
  then 'International Student'
  when
   erss_cit IN ('F','O')
   and erss_year IN (2022,2023)
  then 'International Student'
    else race_description
    end as race_desc_with_intl
----------------------------------------------
from core_ers.mat_vw_erss_combined_ethnicity_and_cred_obj
----------------------------------------------
)
select * from international_students_cte;
go