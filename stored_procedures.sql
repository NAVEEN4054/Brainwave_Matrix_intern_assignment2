--to get the orders of specified customers
DELIMITER //
CREATE PROCEDURE GetCustomerOrders(IN customerID INT)
BEGIN
    SELECT * FROM orders WHERE customer_id = customerID;
END //
DELIMITER ;

-- 📌 Inserts a new order into the database
DELIMITER //
CREATE PROCEDURE AddNewOrder(IN customerID INT, IN orderDate DATE, IN totalAmount DECIMAL(10,2), IN orderStatus ENUM('pending', 'shipped', 'delivered', 'cancelled'))
BEGIN
    INSERT INTO orders (customer_id, order_date, total_amount, order_status)
    VALUES (customerID, orderDate, totalAmount, orderStatus);
END //
DELIMITER ;
-- 📌 Cancels an order and updates stock
DELIMITER //
CREATE PROCEDURE CancelOrder(IN orderID INT)
BEGIN
    UPDATE orders SET order_status = 'cancelled' WHERE order_id = orderID;
    UPDATE product_details p
    JOIN order_items oi ON p.product_id = oi.product_id
    SET p.stock_quantity = p.stock_quantity + oi.quantity
    WHERE oi.order_id = orderID;
END //
DELIMITER ;

-- 📌 Adds stock when new inventory arrives
DELIMITER //
CREATE PROCEDURE RestockProduct(IN productID INT, IN quantityAdded INT)
BEGIN
    UPDATE product_details SET stock_quantity = stock_quantity + quantityAdded WHERE product_id = productID;
END //
DELIMITER ;
