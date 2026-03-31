
-- I want to see my table in the coding to start exploryting each column
SELECT*
FROM workspace.default.bright_coffee_shop_analysis
LIMIT 10;

------------------------------------------------
-- 1. Checking the Date Range
-------------------------------------------------
-- They started collecting the data 2023-01-01
SELECT MIN(transaction_date) AS min_date
FROM workspace.default.bright_coffee_shop_analysis;
-- the duration of the data is 6 months
-- They last collected the data 2023-06-30

SELECT MAX(transaction_date) AS latest_date
FROM workspace.default.bright_coffee_shop_analysis;

-------------------------------------------------
-- 2. Checking the names of the different stores
------------------------------------------------
-- we have 3 stores and their names are Lower Manhattan, Hell's Kitchen, Astoria
SELECT DISTINCT store_location
FROM workspace.default.bright_coffee_shop_analysis;

SELECT COUNT(DISTINCT store_id) AS number_of_stores
FROM workspace.default.bright_coffee_shop_analysis;
-------------------------------------------------
-- 3. Checking products sold at our stores
------------------------------------------------
SELECT DISTINCT product_category
FROM workspace.default.bright_coffee_shop_analysis;

SELECT DISTINCT product_detail
FROM workspace.default.bright_coffee_shop_analysis;

SELECT DISTINCT product_type
FROM workspace.default.bright_coffee_shop_analysis;

SELECT DISTINCT product_category AS category,
product_detail AS product_name
FROM workspace.default.bright_coffee_shop_analysis;

-------------------------------------------------
-- 1. Checking product prices
------------------------------------------------
SELECT MIN(unit_price) As cheapest_price
FROM workspace.default.bright_coffee_shop_analysis;

SELECT MAX(unit_price) As expensive_price
FROM workspace.default.bright_coffee_shop_analysis;

------------------------------------------------
SELECT
COUNT(*) AS number_of_rows,
COUNT(DISTINCT transaction_id) AS number_of_sales,
COUNT(DISTINCT product_id) AS number_of_products,
COUNT(DISTINCT store_id) AS number_of_stores
FROM workspace.default.bright_coffee_shop_analysis;
------------------------------------------------
SELECT *
FROM workspace.default.bright_coffee_shop_analysis
LIMIT 10;

SELECT transaction_id,
transaction_date,
Dayname(transaction_date) AS Day_name,
Monthname(transaction_date) AS Month_name,
transaction_qty*unit_price AS revenue_per_tnx
FROM workspace.default.bright_coffee_shop_analysis;
-----------------------------------------------------
SELECT COUNT(*)
FROM workspace.default.bright_coffee_shop_analysis;

SELECT
--Dates
transaction_date,
Dayname(transaction_date) AS Day_name,
Monthname(transaction_date) AS Month_name,
Date_format(transaction_time, 'HH:mm:ss') AS purchase_time,

CASE
    WHEN date_format(transaction_date, 'EEEE') IN ('saturday','Sunday') THEN 'weekend'
    ELSE 'weekday'
    END AS time_bucket,

CASE
    WHEN Date_format(transaction_time, 'HH:mm:ss') BETWEEN '00:00:00' AND '11:59:59' THEN '01. morning'
    WHEN Date_format(transaction_time, 'HH:mm:ss') BETWEEN '12:00:00' AND '16:59:59' THEN '02. afternoon'
    ELSE '03. evening'
END AS time_bucket,
--to indicate time intevals to know when is the rush time

--Counts of IDS
COUNT(DISTINCT transaction_id) AS Number_of_sales,
COUNT(DISTINCT product_id) AS number_of_products,
COUNT(DISTINCT store_id) number_stores,
--Revenue
SUM(transaction_qty*unit_price) AS revenue_per_day,

--Categorical columns
store_location,
product_category,
product_detail
FROM workspace.default.bright_coffee_shop_analysis

GROUP BY transaction_date,
Day_name,
store_location,
product_category,
product_detail,
Month_name,
purchase_time,
time_bucket;

