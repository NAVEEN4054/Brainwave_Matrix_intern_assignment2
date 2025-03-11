--to get the orders of specified customers
DELIMITER //
CREATE PROCEDURE GetCustomerOrders(IN customerID INT)
BEGIN
    SELECT * FROM orders WHERE customer_id = customerID;
END //
DELIMITER ;

-- Stored Procedure 2: Add New Order
-- 📌 Inserts a new order into the database
DELIMITER //
CREATE PROCEDURE AddNewOrder(IN customerID INT, IN orderDate DATE, IN totalAmount DECIMAL(10,2), IN orderStatus ENUM('pending', 'shipped', 'delivered', 'cancelled'))
BEGIN
    INSERT INTO orders (customer_id, order_date, total_amount, order_status)
    VALUES (customerID, orderDate, totalAmount, orderStatus);
END //
DELIMITER ;
