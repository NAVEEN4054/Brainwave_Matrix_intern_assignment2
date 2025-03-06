# E-Commerce Database Management System

## Introduction
This project is a **Relational Database Management System (RDBMS)** for an **E-Commerce Platform**. It efficiently manages **customers, products, orders, payments, reviews, and inventory** using SQL.

## Features
- **Customer Management**: Stores customer details securely.
- **Product & Category Management**: Organizes products into categories.
- **Order Processing**: Tracks orders and associated items.
- **Payments & Transactions**: Handles various payment methods.
- **Review System**: Allows customers to review products.
- **Inventory Management**: Maintains stock levels.

## Database Schema
### **Tables & Relationships**
1. **Customers** - Stores customer details.
2. **Product_Details** - Stores product information.
3. **Category** - Classifies products.
4. **Orders** - Stores customer purchase records.
5. **Order_Items** - Links products to orders.
6. **Payment** - Stores payment details.
7. **Reviews** - Handles customer feedback.
8. **Inventory** - Tracks stock changes.

## Technologies Used
- **Database**: MySQL
- **Tools**: MySQL Workbench, SQL Server
- **Query Types**: DDL, DML, DQL

## Installation
1. Install **MySQL Server**.
2. Open **MySQL Workbench**.
3. Create a new database:
   ```sql
   CREATE DATABASE ecommerce_db;
   USE ecommerce_db;
   ```
4. Run the provided `DDL` script to create tables.
5. Insert sample data for testing.

## Usage
- Add customers and products.
- Process orders and track payments.
- Manage inventory levels.
- Generate reports for sales and user activity.

## Future Enhancements
- Implement **stored procedures** for automated transactions.
- Develop a **web-based frontend** for easier management.
- Integrate **real-time order tracking**.

## Author
Developed by **Tikkanam Naveen Kumar** as part of an internship project at **Brainwave Matrix Solution Pvt Ltd**.

## License
This project is open-source and available under the **MIT License**.

