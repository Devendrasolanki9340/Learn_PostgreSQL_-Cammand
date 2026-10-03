
-- schema is a named area live inside a database
--  business tables - app
--  audio schema
-- payment schema


CREATE SCHEMA IF NOT EXISTS store ;

SELECT schema_name
FROM information_schema.schemata
WHERE schema_name = 'store';