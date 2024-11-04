# OpenEdQ-New-Pipeline_Data
Open scripts for working with ERS data.

- Most scripts are written as one common table expression (CTE) to implement a single unit of business logic, such as modifying a field to show 'New', 'Continuing', or 'Returning' students.
- The file structure and data types of the final script, 5, follow the the structure as the ERS files received from
the Institutional Research and Analyses team at the CO.
- The business logic for enrollment is intented to align with Appendix C in the ERS Data Dictionary (CSU Access Only):https://asd.calstate.edu/ded/index.asp?ded=4&fid=3  

Backlog of changes to be made:
1. [Completed 11/4/2024] cred_objective 430 to be changed to "Other" category
2. [Completed 11/4/2024] cred_objective 461 and 463 to be added to "Special Education" category for years 2020 and prior.


- How to suppress counts less than 10: https://community.tableau.com/s/question/0D54T00000RfYy8SAF/how-to-hide-counts-5-in-tables-to-protect-identity

