-- Backup command
-- mysqldump -u root -p hyolmo > hyolmo_backup.sql

-- Restore command
-- mysql -u root -p hyolmo < hyolmo_backup.sql

-- Verify restore
USE hyolmo;

SHOW TABLES;

-- Example verification query

SELECT COUNT(*)
FROM information_schema.tables
WHERE table_schema='hyolmo';