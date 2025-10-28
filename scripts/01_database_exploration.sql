-- 1.Explore Database

-- Explore All Objects in the Database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Explore All Columns in the Database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS

-- Explore All Columns in the Specific Table
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'
