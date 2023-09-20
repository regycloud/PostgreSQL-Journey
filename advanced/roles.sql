-- role with ability to login and no SU privileges
CREATE ROLE analyst WITH NOSUPERUSER;
-- role with ability to login, create new roles but not a SU
CREATE ROLE analyst_mgmt WITH CREATEROLE LOGIN NOSUPERUSER;
-- add with ability to create DB to existing role
ALTER ROLE analyst_mgmt WITH CREATEDB CREATEROLE LOGIN NOSUPERUSER;

-- confirm analyst_mgmt role as expected role;
SET ROLE analyst_mgmt;
CREATE ROLE wilson WITH LOGIN;

SELECT * FROM pg_catalog.pg_roles
ORDER BY rolname;