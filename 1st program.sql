SELECT 
COUNT (*)
FROM retail_sales

SELECT * FROM retail_sales
WHERE 
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR 
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR 
	 age IS NULL
	 OR 
	 category IS NULL
	 OR 
	 quantiy IS NULL
	 OR 
	 price_per_unit IS NULL
	 OR 
	 cogs IS NULL
	 OR 
	 total_sale IS NULL;

DELETE FROM retail_sales 
    WHERE 
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR 
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR 
	 age IS NULL
	 OR 
	 category IS NULL
	 OR 
	 quantiy IS NULL
	 OR 
	 price_per_unit IS NULL
	 OR 
	 cogs IS NULL
	 OR 
	
	 total_sale IS NULL;
--Data exploration 
--How many sales we have?
SELECT COUNT(*) AS total_sale FROM retail_sales

--How many customers do we have?
SELECT * FROM retail_sales
WHERE 
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR 
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR 
	 age IS NULL
	 OR 
	 category IS NULL
	 OR 
	 quantiy IS NULL
	 OR 
	 price_per_unit IS NULL
	 OR 
	 cogs IS NULL
	 OR 
	 total_sale IS NULL;
-- to select the dintinct number of customers
SELECT COUNT (DISTINCT customer_id) AS total_sale FROM retail_sales
SELECT COUNT (DISTINCT category) AS total_sale FROM retail_sales
	 
SELECT DISTINCT category FROM retail_sales 

--Data Analysis and business key problems 
--Write a SQL query to retrieve all cloumns for sales made on '2022-11-05'

SELECT * 
FROM retail_sales
WHERE sale_date = '2022-11-05'

--Write a SQL query to retrieve all the transactions where the category is clothing and the quantity sold is more than 10 the month of novemeber 2022
SELECT
 *
 FROM retail_sales 
 WHERE
 category = 'Clothing'
 AND 
 TO_CHAR(sale_date,'YYYY-MM') ='2022-11'
 AND 
 quantiy>=4

 --Write a SQL query to calculate sale for  each category
SELECT 
  category,
  SUM(total_sale) AS net_sale,
  COUNT(*) AS total_orders
 FROM retail_sales
GROUP BY 1 
--Write a SQL query to find the avg age of customers who purchased items from the 'Beauty' category

SELECT 
   ROUND(AVG(age),2)
   FROM retail_sales
   WHERE category = 'Beauty'

 -- Write a SQL query to find all transactions where total sales is greater than 1000
 SELECT * FROM retail_sales
 WHERE total_sale >1000

--Write a SQL query to find the total number of transactions(transaction_id) ,ade by each gender in each category 
SELECT 
      category,
	  gender,
COUNT (*) as total_trans
FROM retail_sales
GROUP 
   BY 
   category,
   gender;

-- Write a SQL query to calculate the average sale for each month. Find out the best selling month in each year.
SELECT 
     EXTRACT(YEAR FROM sale_date) as year,
	 EXTRACT(MONTH FROM sale_date) as month,
	 AVG(total_sale)as avg_sale
FROM retail_sales
GROUP BY 1,2

--Write a SQL query to fidn top 5 customers based on highest total sale
SELECT 
      customer_id,
      SUM(total_sale) as total_sales  
FROM retail_sales
GROUP BY 1 
ORDER BY 2 DESC
LIMIT 5 
--Write a program to find no. of unique customers who purchased items from each category 
SELECT 
      category,
	  COUNT (DISTINCT customer_id)
FROM retail_sales
GROUP BY category




FROM retail_sales 
