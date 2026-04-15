-- =========================================
-- SALES DATA ANALYSIS PROJECT (SQL)
-- =========================================
-- Use Database
USE sales_project;
-- =========================================
-- 1. View Data
-- =========================================
SELECT * FROM sales_data LIMIT 10;
-- =========================================
-- 2. Total Records
-- =========================================
SELECT COUNT(*) AS total_rows FROM sales_data;
-- =========================================
-- 3. Total Sales
-- =========================================
SELECT SUM(Sales) AS total_sales FROM sales_data;
-- =========================================
-- 4. Sales by Region
-- =========================================
SELECT Region, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;
-- =========================================
-- 5. Top 5 Customers (High-value customers)
-- =========================================
SELECT `Customer Name`, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 5;
-- =========================================
-- 6. Top 5 Products (High-revenue products)
-- =========================================
SELECT `Product Name`, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 5;
-- =========================================
-- 7. Sales by Category
-- =========================================
SELECT Category, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Category;
-- =========================================
-- 8. Monthly Sales Trend (Seasonality)
-- =========================================
SELECT 
    MONTH(`Order Date`) AS month,
    SUM(Sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;
-- =========================================
-- 9. Sales by Segment
-- =========================================
SELECT Segment, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Segment;
-- =========================================
-- 10. Top 5 Cities by Sales
-- =========================================
SELECT City, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY City
ORDER BY total_sales DESC
LIMIT 5;