-- CORE ERS table --
-- Convert columns to appropriate types for any new ERS files.
-- Only use this if working with enrollment data.

use ctq;
--alter table core_ers.erss_combined alter column calstateEduPersonUID char(15);
alter table core_ers.erss_combined alter column erss_year int;
alter table core_ers.erss_combined alter column erss_term int;
alter table core_ers.erss_combined alter column erss_campus int;
alter table core_ers.erss_combined alter column erss_birth_date date;
alter table core_ers.erss_combined alter column erss_sex char(1);
alter table core_ers.erss_combined alter column erss_matric_per int;
alter table core_ers.erss_combined alter column erss_enroll_stat int;
alter table core_ers.erss_combined alter column erss_stud_lev int;
alter table core_ers.erss_combined alter column erss_deg_obj int;
alter table core_ers.erss_combined alter column erss_cred_stat char(1);
alter table core_ers.erss_combined alter column erss_cred_obj int;
alter table core_ers.erss_combined alter column erss_deg_held int;
alter table core_ers.erss_combined alter column erss_stud_stand char(1);
alter table core_ers.erss_combined alter column erss_cred_emph varchar(2);
alter table core_ers.erss_combined alter column erss_start_date_CST date;
alter table core_ers.erss_combined alter column erss_hl_stat char(1);
alter table core_ers.erss_combined alter column erss_hl_catg int;
alter table core_ers.erss_combined alter column erss_multi_race_catg int;
alter table core_ers.erss_combined alter column erss_ipeds_race_catg int;
alter table core_ers.erss_combined alter column erss_emplid varchar(9);
alter table core_ers.erss_combined alter column erss_major int;
alter table core_ers.erss_combined alter column erss_deg_prog_del int;
alter table core_ers.erss_combined alter column erss_add_auth int;

-- used to alter the core_ers.erss_combined when it was first created
use ctq;
--alter table core_ers.erss_combined alter column calstateEduPersonUID char(15);
alter table core_ers.erss_combined alter column erss_year int;
alter table core_ers.erss_combined alter column erss_term int;
alter table core_ers.erss_combined alter column erss_campus int;
alter table core_ers.erss_combined alter column erss_birth_date date;
alter table core_ers.erss_combined alter column erss_sex char(1);
alter table core_ers.erss_combined alter column erss_matric_per int;
alter table core_ers.erss_combined alter column erss_enroll_stat int;
alter table core_ers.erss_combined alter column erss_stud_lev int;
alter table core_ers.erss_combined alter column erss_deg_obj int;
alter table core_ers.erss_combined alter column erss_cred_stat char(1);
alter table core_ers.erss_combined alter column erss_cred_obj int;
alter table core_ers.erss_combined alter column erss_deg_held int;
alter table core_ers.erss_combined alter column erss_stud_stand char(1);
alter table core_ers.erss_combined alter column erss_cred_emph varchar(2);
alter table core_ers.erss_combined alter column erss_start_date_CST date;
alter table core_ers.erss_combined alter column erss_hl_stat char(1);
alter table core_ers.erss_combined alter column erss_hl_catg int;
alter table core_ers.erss_combined alter column erss_multi_race_catg int;
alter table core_ers.erss_combined alter column erss_ipeds_race_catg int;
alter table core_ers.erss_combined alter column erss_emplid varchar(9);
alter table core_ers.erss_combined alter column erss_major int;
alter table core_ers.erss_combined alter column erss_deg_prog_del int;
alter table core_ers.erss_combined alter column erss_add_auth int;


-- COMBINED COMPLETER table -- 
-- this alters the datatypes of the combined completer table.
-- only use this if working with completer data.
use ctq;
alter table core_comp.comp_combined alter column calstateEduPersonUID varchar(15);
alter table core_comp.comp_combined alter column study_code int;
alter table core_comp.comp_combined alter column last_name varchar(50);
alter table core_comp.comp_combined alter column first_name varchar(50);
alter table core_comp.comp_combined alter column middle varchar(50);
alter table core_comp.comp_combined alter column dob date;
alter table core_comp.comp_combined alter column system_letter_code char(3);
alter table core_comp.comp_combined alter column system_id_number int;
alter table core_comp.comp_combined alter column campus_id_number int;
alter table core_comp.comp_combined alter column campus_letter_code char(2);
alter table core_comp.comp_combined alter column cohort_number int;
alter table core_comp.comp_combined alter column evaluation_year int;
alter table core_comp.comp_combined alter column program_type char(1);
alter table core_comp.comp_combined alter column reporting_group int;
alter table core_comp.comp_combined alter column cbest varchar(100);
alter table core_comp.comp_combined alter column credential_code varchar(2);
alter table core_comp.comp_combined alter column credential_program char(1);
alter table core_comp.comp_combined alter column program_name varchar(200);
alter table core_comp.comp_combined alter column content_code varchar(10);
alter table core_comp.comp_combined alter column comp_cohort varchar(20);

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'comp_combined';