/*
===========================================================================
Create Database and Schemas
===========================================================================
Script Purpose;
  This Script creates a new database named 'DataWarehouse' after checking if it already exist. 
  If the database exists, it is dropped and recreatd. Additionally, the script sets up three schemas within the databases: 
  'bronze', 'silver', and 'gold'.

NOTE:
Running this script will drop the entire 'Datawarehouse' database if it exists.
All data in the database will be permanently deleted.
*/

USE master;
GO

--- Drop and recreae the 'DataWarehouse' database
	IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
	BEGIN
		ALTER DATABASE Daawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
		DROP DATABASE Datawarehouse;
	END;
	GO


-- Create Database 'DataWarehouse'
USE master;

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
