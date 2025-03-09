-- E-Commerce Database Views
-- This SQL script contains 5 essential views for efficient data retrieval.
-- Views are virtual tables that store SQL queries to simplify data access and improve query performance.They help in structuring complex data retrieval without modifying the original database.
-- 
-- 1. View_All_Orders: Shows all orders along with customer details.
-- 2. View_Products_Stock: Displays product stock availability.
-- 3. View_Pending_Payments: Lists orders where payments are still pending.
-- 4. View_Top_Customers: Finds customers who have spent the most.
-- 5. View_Customer_Order_History: Shows each customer’s past orders.

-- View 1: View_All_Orders
CREATE VIEW View_All_Orders AS
SELECT 
    o.order_id, 
    c.full_name AS customer_name, 
    o.order_date, 
    o.total_amount, 
    o.order_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- View 2: View_Products_Stock
CREATE VIEW View_Products_Stock AS
SELECT 
    p.product_id, 
    p.product_name, 
    c.category_name, 
    p.stock_quantity 
FROM product_details p
JOIN category c ON p.category_id = c.category_id;

-- View 3: View_Pending_Payments
CREATE VIEW View_Pending_Payments AS
SELECT 
    p.payment_id, 
    c.full_name AS customer_name, 
    o.order_id, 
    p.payment_method, 
    p.payment_status 
FROM payment p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE p.payment_status = 'pending';

-- View 4: View_Top_Customers
CREATE VIEW View_Top_Customers AS
SELECT 
    c.customer_id, 
    c.full_name, 
    SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC;

-- View 5: View_Customer_Order_History
CREATE VIEW View_Customer_Order_History AS
SELECT 
    o.order_id, 
    c.full_name, 
    o.order_date, 
    o.total_amount, 
    o.order_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;
