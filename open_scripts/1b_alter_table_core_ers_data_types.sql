-- CORE ERS table --
-- Convert columns to appropriate types
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
