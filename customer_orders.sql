-- E-Commerce Database Queries: Customer Orders
-- This script contains essential SQL queries to handle customer orders, including placing, updating, retrieving, and canceling orders.

-- 1️⃣ Insert a New Order (Place an Order)
INSERT INTO orders (customer_id, order_date, total_amount, order_status) 
VALUES (3, CURDATE(), 5999.00, 'pending');

-- 2️⃣ Add Items to an Order
INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase) 
VALUES 
    (1, 5, 2, 2999.00), 
    (1, 7, 1, 1999.00);

-- 3️⃣ Retrieve a Customer’s Order History
SELECT order_id, order_date, total_amount, order_status 
FROM orders 
WHERE customer_id = 3 
ORDER BY order_date DESC;

-- 4️⃣ Get Order Details (Including Product Names)
SELECT o.order_id, o.order_date, p.product_name, oi.quantity, oi.price_at_purchase 
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN product_details p ON oi.product_id = p.product_id
WHERE o.order_id = 1;

-- 5️⃣ Update Order Status
UPDATE orders 
SET order_status = 'shipped' 
WHERE order_id = 2;

-- 6️⃣ Cancel an Order & Restore Stock
UPDATE orders 
SET order_status = 'cancelled' 
WHERE order_id = 4;

UPDATE product_details p
JOIN order_items oi ON p.product_id = oi.product_id
SET p.stock_quantity = p.stock_quantity + oi.quantity
WHERE oi.order_id = 4;

-- 7️⃣ Find the Total Amount Spent by a Customer
SELECT customer_id, SUM(total_amount) AS total_spent 
FROM orders 
WHERE customer_id = 3;

-- 8️⃣ Get Orders Pending Payment
SELECT o.order_id, c.full_name, o.total_amount, p.payment_status 
FROM orders o
JOIN payment p ON o.order_id = p.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE p.payment_status = 'pending';

-- 9️⃣ Retrieve Most Purchased Product
SELECT p.product_name, SUM(oi.quantity) AS total_sold 
FROM order_items oi
JOIN product_details p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;
