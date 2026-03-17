-- ============================================
-- Hyolmo Database User Management
-- ============================================

-- Create a new database user

CREATE USER 'hyolmo_user'@'localhost'
IDENTIFIED BY 'Hyolmo123';


-- To grant read-only access for reporting users

GRANT SELECT
ON hyolmo.*
TO 'hyolmo_user'@'localhost';

-- To grant data modification permissions

GRANT SELECT, INSERT, UPDATE
ON hyolmo.*
TO 'hyolmo_user'@'localhost';

-- Apply privilege changes

FLUSH PRIVILEGES;

-- Check privileges
-- ============================================

SHOW GRANTS FOR 'hyolmo_user'@'localhost';

-- ============================================
-- Revoke privileges example
-- ============================================

REVOKE INSERT, UPDATE
ON hyolmo.*
FROM 'hyolmo_user'@'localhost';