# OpenEdQ-New-Pipeline_Data
Open scripts for working with ERS data.

- Most scripts are written as one common table expression (CTE) to implement a single unit of business logic, such as modifying a field to show 'New', 'Continuing', or 'Returning' students.
- The file structure and data types of the final script, 5, follow the the structure as the ERS files received from
the Institutional Research and Analyses team at the CO.
- The business logic for enrollment is intended to align with Appendix C in the ERS Data Dictionary (CSU Access Only): https://asd.calstate.edu/ded/index.asp?ded=4&fid=3  

**Known differences between EdQ Pipeline Data and IR & A teaching credential enrollment dashboard:**
1. The EdQ Pipeline Data shows 1,339 enrollments for Fall term 2021 for Special Education, Mild/Moderate Disabilities while the IR & A dashboard shows 1,322 enrollments. This difference of 17 students is due to the IR & A dashboard using Fall 2021 profile data. https://tableau.calstate.edu/#/views/CredentialsEnrollmentProduction/TeachingCredentialEnrollment?:iid=1?iframeSizedToWindow=true&:embed=y&:showAppBanner=false&:display_count=no&:showVizHome=no&:origin=viz_share_link
2. "Regular" Credential Programs are labeled as "Traditional" Credential Programs

| EdQ dashboard filter label | IR & A dashboard filter label |
|----------------------------|-------------------------------|
| Credential Pathway         | Credential Subject Type       |
| Gender                     | Sex                           |
| Credential Objective       | Credential Subjects           |
3. For some dashboard pages the "Race/Ethnicty" of the record is shown instead of "International Student".

**Access protocol**
1. A user clicks a link to a dashboard.
2. They're redirected to the SSO (single sign-on) provider.
3. They authenticate, usually with 2FA (two-factor authentication)
4. Tableau receives their identity (such as john.smith@university.edu).
5. Tableau checks what groups or explicit permissions that user has. These groups and permissions are managed by EdQ.
6. Based on that, a user can view, interact, or be denied acccess to the dashboard.

**Backlog of changes to be made:**
- [Completed 11/4/2024] cred_objective 430 to be changed to "Other" category
- [Completed 11/4/2024] cred_objective 461 and 463 to be added to "Special Education" category for years 2020 and prior.
- [Completed 2/26/2025] Add map of campuses with enrollment counts.
- [In Development] Add in Completer page showing number of program completers by campus.
- [In Development] Add in Completion Rate page showing completion rates of teacher candidates by campus.

**Tableau Features**
- How to suppress counts less than 10: https://community.tableau.com/s/question/0D54T00000RfYy8SAF/how-to-hide-counts-5-in-tables-to-protect-identity
- How to show multiple labels on one bar chart column: https://community.tableau.com/s/question/0D54T00000C68VLSAZ/how-to-show-percentage-and-count-on-stacked-bar-chart-in-tableau
- How to add an adjustable radius around a geographic point: https://community.tableau.com/s/question/0D54T00000VBY8eSAH/how-to-add-radius-circle-around-location-on-map
- How to omit options from a filter (Solution: Create a Set): https://community.tableau.com/s/question/0D54T00000C5mMHSAZ/how-to-remove-one-filter-option

**Knowledge Base**
- Pathways to Credentialing: https://www.ctc.ca.gov/credentials/roadmap-to-teaching/becoming-a-teacher-in-california/pathways-to-credentialing
- Admission Policy for Preliminary Credential Programs: https://calstate.policystat.com/policy/17671099/latest/
- ColorBrewer: Web tool for guidance in choosing choropleth map color schemes, based on the research of Dr. Cynthia Brewer. https://colorbrewer2.org/#type=qualitative&scheme=Set3&n=6
