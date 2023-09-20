GRANT CREATE, USAGE ON SCHEMA marketing TO analyst;

GRANT SELECT, INSERT, DELETE ON marketing.prospects TO analyst;

REVOKE DELETE ON marketing.prospects FROM analyst;

-- After revoking delete for analyst, let's try to delete a row
-- Set role as an analyst
SET ROLE analyst;

DELETE FROM marketing.prospects WHERE id = 2;

-- The error said: "ERROR: permission denied for rlation prospects"


