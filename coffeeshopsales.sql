SELECT * FROM coffeeshopsales_db.`coffee shop sales`;
use coffeeshopsales_db;
-- All sales
SELECT * FROM sales LIMIT 10;

-- Filter by category
SELECT * FROM sales WHERE Category = 'Coffee';

-- Top selling products
SELECT Product, SUM(Quantity) AS Total_Sold
FROM sales
GROUP BY Product
ORDER BY Total_Sold DESC;

-- Total revenue
SELECT SUM(Total_Price) AS Total_Revenue FROM sales;

-- Average order value
SELECT AVG(Total_Price) AS Average_Sale FROM sales;

#Subquery 
-- Products with above-average sales
SELECT Product, SUM(Total_Price) AS Revenue
FROM sales
GROUP BY Product
HAVING Revenue > (
    SELECT AVG(Total_Price) FROM sales
);

#Subqueries
-- Products with above-average sales
SELECT Product, SUM(Total_Price) AS Revenue
FROM sales
GROUP BY Product
HAVING Revenue > (
    SELECT AVG(Total_Price) FROM sales
);

CREATE VIEW product_summary AS
SELECT Product, Category, SUM(Quantity) AS Total_Units, SUM(Total_Price) AS Revenue
FROM sales
GROUP BY Product, Category;

-- Create index on Product and Date
CREATE INDEX idx_product_date ON sales(Product, Date);

