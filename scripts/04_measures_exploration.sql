-- 4.Measures Exploration

-- Find the Total Sales
SELECT 
	SUM(sales_amount) total_sales
FROM gold.fact_sales -- 29356250

-- Find how many items are sold
SELECT 
	SUM(quantity) total_quantity
FROM gold.fact_sales -- 60423

-- Find the average selling price
SELECT 
	AVG(price) avg_price
FROM gold.fact_sales -- 486

-- Find the Total number of Orders
SELECT 
	COUNT(order_number) total_orders
FROM gold.fact_sales -- 60398

SELECT 
	COUNT(DISTINCT order_number) total_orders
FROM gold.fact_sales -- 27659

-- Find the Total number of Products
SELECT 
	COUNT(product_key) total_products
FROM gold.dim_products --295

SELECT 
	COUNT(DISTINCT product_key) total_products
FROM gold.dim_products --295

-- Find the Total number of Customers
SELECT 
	COUNT(customer_id) total_Customers
FROM gold.dim_customers -- 18484

SELECT 
	COUNT(DISTINCT customer_key) total_Customers
FROM gold.dim_customers -- 18484

-- Find the Total number of Customers that has placed an Order
SELECT 
	COUNT(DISTINCT customer_key)
FROM gold.fact_sales -- 18484

-- Generate Report that shows all key metrics of the business
SELECT 'Total Sales' as measure_name, SUM(sales_amount) measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' as measure_name, SUM(quantity) measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Avarage Price' as measure_name, AVG(price) measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders' as measure_name, COUNT(DISTINCT order_number) measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Products' as measure_name, COUNT(DISTINCT product_key) measure_value FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers' as measure_name, COUNT(DISTINCT customer_key) measure_value FROM gold.dim_customers
UNION ALL
SELECT 'Total Nr.Customers_placed an Order' as measure_name, COUNT(DISTINCT customer_key) measure_value FROM gold.fact_sales
