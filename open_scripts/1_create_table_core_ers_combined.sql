/*
This query creates the erss_combined table by unioning all the ERSS tables.
1. Make sure to remove records from erss_term 4 and erss_year 2023 because they are already present in the 2023-2024 ERSS file.
2. Make sure to ALTER the datatypes of the new ERS file before union all onto the ERSS combined table.
*/
use ctq;
-- drop table if exists core_ers.erss_combined;

with temp_combined_table as (
select * from core_ers.ERSS_20193_20202_211007
union all
select * from core_ers.ERSS_20203_20212_211020
union all
select * from core_ers.ERSS_20213_20222_221215
union all
select * from core_ers.ERSS_20223_20234_240123
union all
select * from core_ers.ERSS_20234_20242_240822
)
select * into core_ers.erss_combined from temp_combined_table;