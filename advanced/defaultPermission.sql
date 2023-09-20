-- Grant a role named writer the ability to SELECT, DELETE, UPDATE, and INSERT on a table named census.economic_survey. We assume that the role already has USAGE on the schema.

GRANT SELECT, DELETE, UPDATE, INSERT ON census.economic_survey TO writer;

-- Modify default privileges; SELECT, UPDATE, DELETE, and INSERT are granted to writer.

ALTER DEFAULT PRIVILEGES IN SCHEMA census GRANT SELECT, UPDATE, DELETE, INSERT ON TABLES TO writer;


-- Try to create a new table in census schema. If the default permission is set properly, the permission will automatically apply to this table as well.

CREATE TABLE census.housing_survey (
  area_id int primary key,
  median_rent int
);

-- Confirm that altering default privileges has desired effect.
SELECT
    grantee, 
    table_schema,
    table_name,
    privilege_type
FROM information_schema.table_privileges 
WHERE table_schema  = 'census'
AND grantee = 'writer';