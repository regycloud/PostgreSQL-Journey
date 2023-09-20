-- Grouping

CREATE ROLE pgdba WITH SUPERUSER CREATEDB NOLOGIN;
CREATE ROLE david WITH LOGIN IN ROLE pgdba, employees;

SELECT rolname, rolsuper 
FROM pg_catalog.pg_roles
WHERE rolname = 'david';

SET ROLE david;

SELECT *
FROM cc_user.company_startdates;