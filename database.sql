DROP DATABASE IF EXISTS retail_sales;
CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    email VARCHAR(100)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT UNIQUE,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);
INSERT INTO customers VALUES
(1, 'Arun', 'Chennai', 'arun@gmail.com'),
(2, 'Priya', 'Chennai', 'priya@gmail.com'),
(3, 'Rahul', 'Bangalore', 'rahul@gmail.com'),
(4, 'Sneha', 'Mumbai', 'sneha@gmail.com'),
(5, 'Karthik', 'Bangalore', 'karthik@gmail.com'),
(6, 'Divya', 'Delhi', 'divya@gmail.com');
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Mobile', 'Electronics', 20000),
(103, 'Headphones', 'Accessories', 2000),
(104, 'Keyboard', 'Accessories', 1500),
(105, 'Monitor', 'Electronics', 12000);
INSERT INTO orders VALUES
(1001, 1, '2026-01-05'),
(1002, 1, '2026-01-10'),
(1003, 1, '2026-02-05'),
(1004, 1, '2026-02-15'),
(1005, 2, '2026-02-15'),
(1006, 3, '2026-03-05'),
(1007, 4, '2026-03-05'),
(1008, 5, '2026-03-10');
INSERT INTO order_items VALUES
(1, 1001, 101, 1, 50000, 1000),
(2, 1001, 103, 2, 2000, NULL),
(3, 1002, 102, 1, 20000, 500),
(4, 1003, 105, 2, 12000, NULL),
(5, 1004, 101, 1, 50000, 2000),
(6, 1005, 104, 3, 1500, NULL),
(7, 1006, 102, 2, 20000, 1000),
(8, 1007, 103, 3, 2000, NULL),
(9, 1008, 105, 1, 12000, 500);
INSERT INTO payments VALUES
(1, 1001, 53000, '2026-01-05', 'UPI'),
(2, 1002, 20000, '2026-01-10', 'Card'),
(3, 1003, 24000, '2026-02-05', 'UPI'),
(4, 1005, 4500, '2026-02-15', 'Cash'),
(5, 1006, 40000, '2026-03-05', 'Card'),
(6, 1008, 12000, '2026-03-10', 'UPI');

SHOW TABLES;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;


