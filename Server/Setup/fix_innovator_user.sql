-- This SQL can help if you restore a backup of an Aras Database into an SQL Server.
-- You might want to do that if you decide to split up your Aras Docker environment into multiple containers, one for the database and one for the webserver.
USE master;
GO
CREATE DATABASE InnovatorDb ON (FILENAME = 'C:\Database\InnovatorDb.mdf') LOG ON (FILENAME = 'C:\Database\InnovatorDb_log.ldf') FOR ATTACH; 
GO
CREATE LOGIN innovator
WITH PASSWORD = 'YRQsxj*7i!NQdk', 
CHECK_POLICY = OFF, 
CHECK_EXPIRATION = OFF;
GO
CREATE LOGIN innovator_regular
WITH PASSWORD = 'YRQsxj*7i!NQdk', 
CHECK_POLICY = OFF, 
CHECK_EXPIRATION = OFF;
GO
USE InnovatorDb;
GO
exec sp_change_users_login 'Update_One','innovator','innovator';
GO
exec sp_addrolemember 'db_owner','innovator';
GO
exec sp_change_users_login 'Update_One','innovator_regular','innovator_regular';
GO
exec sp_addrolemember 'db_owner','innovator_regular';
GO
GRANT EXECUTE ON SCHEMA::protected to innovator_regular;
GO