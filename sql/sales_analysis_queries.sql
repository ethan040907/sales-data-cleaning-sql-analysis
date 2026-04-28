SELECT *
FROM sales_clean
LIMIT 10;


SELECT
    COUNT(*) AS total_rows
FROM sales_clean;

-- Total sales by ship_mdode and segment
SELECT 
	segment,
    ship_mode,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY 
	segment,
    ship_mode
ORDER BY total_sales DESC
;

-- Total sales by segment
SELECT 
	segment,
	ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY segment
ORDER BY total_sales DESC
;

-- Total sales by ship_mode
SELECT
	ship_mode,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY ship_mode
ORDER BY total_sales DESC
;

-- Total monthly sales 
SELECT
	DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales),2) AS total_sales_per_month
FROM sales_clean
GROUP BY sales_month
ORDER BY sales_month
;

-- Lowest sales month
SELECT
	DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY sales_month
ORDER BY total_sales
;

-- Higest sales month
SELECT
	DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY sales_month
ORDER BY total_sales DESC
;

-- Total yearly sales
SELECT
	DATE_FORMAT(order_date, '%Y') AS sales_year,
    ROUND(SUM(sales)) AS total_sales
FROM sales_clean
GROUP BY sales_year
ORDER by sales_year
;

-- Yearly sales summary
SELECT
    YEAR(order_date) AS sales_year,
    COUNT(*) AS number_of_records,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(AVG(sales), 2) AS average_sales
FROM sales_clean
GROUP BY sales_year
ORDER BY sales_year;

;