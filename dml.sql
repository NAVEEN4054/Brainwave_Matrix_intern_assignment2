-- Insert Data into Customers Table (10 Customers)
INSERT INTO customers (customer_id, full_name, e_mail, phone_number, passwordu, address, registration_date) VALUES
(1, 'Rahul Sharma', 'rahul.sharma@example.com', '9876543210', 'Rahul@123', '12, MG Road, Delhi', '2024-03-01'),
(2, 'Priya Agarwal', 'priya.agarwal@example.com', '9123456789', 'Priya@456', '34, JP Nagar, Bangalore', '2024-03-02'),
(3, 'Amit Verma', 'amit.verma@example.com', '9345678901', 'Amit@789', '56, Park Street, Kolkata', '2024-03-03'),
(4, 'Neha Iyer', 'neha.iyer@example.com', '9786543210', 'Neha@321', '78, Anna Salai, Chennai', '2024-03-04'),
(5, 'Rohan Patil', 'rohan.patil@example.com', '9456789012', 'Rohan@654', '90, FC Road, Pune', '2024-03-05'),
(6, 'Sanya Mehta', 'sanya.mehta@example.com', '9112233445', 'Sanya@999', '101, Sector 17, Chandigarh', '2024-03-06'),
(7, 'Varun Kapoor', 'varun.kapoor@example.com', '9223344556', 'Varun@888', '52, Connaught Place, Delhi', '2024-03-07'),
(8, 'Kiran Rao', 'kiran.rao@example.com', '9334455667', 'Kiran@777', '45, MG Road, Hyderabad', '2024-03-08'),
(9, 'Pooja Reddy', 'pooja.reddy@example.com', '9445566778', 'Pooja@666', '67, Banjara Hills, Hyderabad', '2024-03-09'),
(10, 'Vikram Singh', 'vikram.singh@example.com', '9556677889', 'Vikram@555', '23, Andheri West, Mumbai', '2024-03-10');

-- Insert Data into Category Table (6 Categories)
INSERT INTO category (category_id, category_name, descriptionu) VALUES
(1, 'Electronics', 'Mobiles, Laptops, and Accessories'),
(2, 'Clothing', 'Ethnic Wear, Casuals, and Formals'),
(3, 'Books', 'Academic, Fiction, and Non-Fiction'),
(4, 'Home Appliances', 'Kitchen and Home Essentials'),
(5, 'Sports', 'Fitness, Cricket, and Outdoor Games'),
(6, 'Beauty & Personal Care', 'Skincare, Grooming, and Cosmetics');

-- Insert Data into Product_Details Table (10 Products)
INSERT INTO product_details (product_id, product_name, descriptionu, price, stock_quantity, category_id, added_date) VALUES
(1, 'OnePlus 11 5G', '8GB RAM, 128GB Storage, Snapdragon 8 Gen 2', 56999.00, 50, 1, '2024-03-05'),
(2, 'Lenovo ThinkPad E14', 'Intel i5 12th Gen, 16GB RAM, 512GB SSD', 75999.00, 30, 1, '2024-03-06'),
(3, 'Raymond Formal Shirt', 'Slim Fit, Cotton, Light Blue', 2499.00, 100, 2, '2024-03-07'),
(4, 'Nike Running Shoes', 'Air Zoom Pegasus 39, Black/White', 5999.00, 40, 5, '2024-03-08'),
(5, 'Prestige Gas Stove', '2 Burner, ISI Certified', 2999.00, 20, 4, '2024-03-09'),
(6, 'Chetan Bhagat - The 3 Mistakes of My Life', 'Fiction Novel', 299.00, 60, 3, '2024-03-10'),
(7, 'boAt Rockerz 450', 'Wireless Headphones, 15-Hour Playback', 1999.00, 25, 1, '2024-03-11'),
(8, 'Lakme Face Cream', 'SPF 30, Moisturizer, 100ml', 399.00, 70, 6, '2024-03-12'),
(9, 'Cosco Cricket Bat', 'Wooden bat, Lightweight', 1899.00, 35, 5, '2024-03-13'),
(10, 'Philips Trimmer', 'Rechargeable, 40 min usage', 1299.00, 45, 6, '2024-03-14');

-- Insert Data into Orders Table (10 Orders)
INSERT INTO orders (order_id, customer_id, order_date, total_amount, order_status) VALUES
(1, 1, '2024-03-10', 56999.00, 'pending'),
(2, 2, '2024-03-11', 8498.00, 'shipped'),
(3, 3, '2024-03-12', 75999.00, 'delivered'),
(4, 4, '2024-03-13', 2999.00, 'cancelled'),
(5, 5, '2024-03-14', 1999.00, 'pending'),
(6, 6, '2024-03-15', 1899.00, 'pending'),
(7, 7, '2024-03-16', 5999.00, 'shipped'),
(8, 8, '2024-03-17', 399.00, 'delivered'),
(9, 9, '2024-03-18', 1299.00, 'pending'),
(10, 10, '2024-03-19', 75999.00, 'pending');

-- Insert Data into Inventory Table (10 Inventory Updates)
INSERT INTO inventory (inventory_id, product_id, quantity_added, quantity_removed, updated_date) VALUES
(1, 1, 50, 5, '2024-03-10'),
(2, 2, 30, 2, '2024-03-11'),
(3, 3, 100, 10, '2024-03-12'),
(4, 4, 40, 4, '2024-03-13'),
(5, 5, 20, 3, '2024-03-14'),
(6, 6, 60, 5, '2024-03-15'),
(7, 7, 25, 2, '2024-03-16'),
(8, 8, 70, 6, '2024-03-17'),
(9, 9, 35, 3, '2024-03-18'),
(10, 10, 45, 4, '2024-03-19');
-- Insert Data into Order_Items Table (10 Items)
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 1, 56999.00),
(2, 2, 3, 2, 2499.00),
(3, 3, 2, 1, 75999.00),
(4, 4, 5, 1, 2999.00),
(5, 5, 7, 1, 1999.00);

-- Insert Data into Payment Table (10 Payments)
INSERT INTO payment (payment_id, order_id, customer_id, payment_method, payment_status, transaction_date) VALUES
(1, 1, 1, 'credit card', 'completed', '2024-03-10'),
(2, 2, 2, 'UPI', 'pending', '2024-03-11'),
(3, 3, 3, 'debit card', 'completed', '2024-03-12'),
(4, 4, 4, 'COD', 'failed', '2024-03-13'),
(5, 5, 5, 'Paytm Wallet', 'completed', '2024-03-14');

-- Insert Data into Reviews Table (10 Reviews)
INSERT INTO reviews (review_id, customer_id, product_id, rating, review, review_date) VALUES
(1, 1, 1, 5, 'Superb performance and fast charging!', '2024-03-12'),
(2, 2, 3, 4, 'Fabric is soft, but color faded after a few washes.', '2024-03-13'),
(3, 3, 2, 5, 'Best laptop in this range! Fast and durable.', '2024-03-14'),
(4, 4, 5, 3, 'Good gas stove but delivery was delayed.', '2024-03-15'),
(5, 5, 7, 5, 'Amazing sound quality for the price!', '2024-03-16');
