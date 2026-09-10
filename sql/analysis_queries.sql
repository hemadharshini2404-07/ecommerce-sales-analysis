-- E-Commerce Sales Analysis

-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM ecommerce_sales;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM ecommerce_sales;

-- 3. Total Orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM ecommerce_sales;

-- 4. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM ecommerce_sales;

-- 5. Category-wise Sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Region-wise Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7. Product-wise Sales
SELECT Product, SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- 8. Category-wise Profit
SELECT Category, SUM(Profit) AS Total_Profit
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 9. Monthly Sales
SELECT MONTH(Order_Date) AS Month,
       SUM(Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- 10. Top 5 Orders by Sales
SELECT Order_ID, Customer_Name, Product, Sales
FROM ecommerce_sales
ORDER BY Sales DESC
LIMIT 5;
