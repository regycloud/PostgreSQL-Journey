GRANT SELECT ON projects TO manager;
GRANT UPDATE (project_name, project_status) ON projects TO manager;
SELECT *
FROM information_schema.column_privileges
WHERE grantee = 'manager';