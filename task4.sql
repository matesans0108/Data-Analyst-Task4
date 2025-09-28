
-- Task 4 SQL Queries

-- 1. Top 5 most expensive products
SELECT name, price FROM Products ORDER BY price DESC LIMIT 5;

-- 2. Total sales by country
SELECT u.country, SUM(o.total_amount) AS total_sales
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.country;

-- 3. Customers who spent above average order value
SELECT u.name, o.total_amount
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
WHERE o.total_amount > (SELECT AVG(total_amount) FROM Orders);

-- 4. INNER JOIN: Orders with customer details
SELECT o.order_id, u.name, o.total_amount
FROM Orders o
INNER JOIN Users u ON o.user_id = u.user_id;

-- 5. LEFT JOIN: Products with their order items
SELECT p.name, oi.quantity
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id;

-- 6. RIGHT JOIN (simulated in SQLite using LEFT JOIN + table switch)
-- Not all DBs support RIGHT JOIN, but in MySQL/Postgres you can write:
-- SELECT p.name, oi.quantity FROM Order_Items oi RIGHT JOIN Products p ON p.product_id = oi.product_id;

-- 7. Aggregate: Average revenue per user
SELECT u.name, AVG(o.total_amount) AS avg_revenue
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.name;

-- 8. Create a View for sales summary
CREATE VIEW sales_summary_view AS
SELECT u.country, SUM(o.total_amount) AS total_sales
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.country;

-- 9. Index optimization
CREATE INDEX idx_orders_user_id ON Orders(user_id);
