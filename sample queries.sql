-- Sample SQL Practice Queries

-- 1. Select all data from a customer table
SELECT * FROM customers;

-- 2. Find customers from Kathmandu
SELECT name, city FROM customers
WHERE city = 'Kathmandu';

-- 3. Count how many orders each customer has placed
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id;

-- 4. Get total sales per product
SELECT product_name, SUM(amount) AS total_sales
FROM sales
GROUP BY product_name;

-- 5. Use JOIN to get customer names with their orders
SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;