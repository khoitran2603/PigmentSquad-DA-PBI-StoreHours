/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'PigmentSquad' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, this script creates a schema called gold
	
WARNING:
    Running this script will drop the entire 'PigmentSquad' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'PigmentSquad' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'PigmentSquad')
BEGIN
    ALTER DATABASE PigmentSquad SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE PigmentSquad;
END;
GO

-- Create the 'PigmentSquad' database
CREATE DATABASE PigmentSquad;
GO

USE PigmentSquad;
GO

-- Create Schemas

CREATE SCHEMA gold;
GO

CREATE TABLE gold.sales_hours (

    transaction_date DATE,
    transaction_time TIME,
    product_type NVARCHAR(50),
    product_category NVARCHAR(50),
    product_name NVARCHAR(255),
    year_dp INT,
    weekday_dn NVARCHAR(50),
    month_dp INT,
    week_of_month INT,
    opening_hour TIME,
    closing_hour TIME,
    time_of_day NVARCHAR(255),
    total_sales FLOAT,
    total_quantity INT,
    total_transactions INT,
    avg_order_revenue FLOAT,
    hours_since_opening INT,
    hours_until_closing INT,
);
GO

TRUNCATE TABLE gold.sales_hours;
GO

BULK INSERT gold.sales_hours
FROM 'C:\Users\ASUS\OneDrive\Desktop\Project - Pigment Squad (Store-Hours Optimization)\datasets\gold.sales_hours.txt'
WITH (
            FIRSTROW = 2,                    -- skip header row
            FIELDTERMINATOR = ',',           -- comma-separated
            ROWTERMINATOR = '\n',            -- end of line
            TABLOCK                          -- speeds up bulk insert
);
GO

