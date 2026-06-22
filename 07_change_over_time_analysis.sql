/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATEPART(), DATETRUNC(), FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/

-- Analyse sales performance over time
-- Quick Date Functions
-- Change Over Time Analysis
-- Analyse sales performance over time by year and month

-- Annual trend
SELECT 
    STRFTIME('%Y', order_date) AS order_year,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM fact_sales
WHERE order_date IS NOT NULL
GROUP BY STRFTIME('%Y', order_date)
ORDER BY order_year;

-- Monthly trend
SELECT 
    STRFTIME('%Y', order_date) AS order_year,
    STRFTIME('%m', order_date) AS order_month,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM fact_sales
WHERE order_date IS NOT NULL
GROUP BY STRFTIME('%Y', order_date), STRFTIME('%m', order_date)
ORDER BY order_year, order_month;

-- Year-Month formatted
SELECT 
    STRFTIME('%Y-%m', order_date) AS order_date,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM fact_sales
WHERE order_date IS NOT NULL
GROUP BY STRFTIME('%Y-%m', order_date)
ORDER BY order_date;