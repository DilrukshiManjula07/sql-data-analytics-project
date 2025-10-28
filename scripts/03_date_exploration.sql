-- 3. Date Exploration

-- Find the date of the first and last order
-- How many years of sales are available
SELECT 
	MIN(order_date) first_order_date, -- 2010-12-29
	MAX(order_date) max_order_date,   --  2014-01-28
	DATEDIFF(YEAR, MIN(order_date),MAX(order_date)) Order_range_years, -- 4 years
	DATEDIFF(MONTH, MIN(order_date),MAX(order_date)) Order_range_months -- 37 months
FROM gold.fact_sales  

-- Find the youngest and oldest customer
SELECT 
	MIN(birthdate) oldest_customer, --1916
	DATEDIFF(YEAR, MIN(birthdate), GETDATE()) oldest_age, --109
	MAX(birthdate) youngest_customer, --1986
	DATEDIFF(YEAR, MAX(birthdate), GETDATE()) youngest_age --39
FROM gold.dim_customers
