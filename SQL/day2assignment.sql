CREATE DATABASE productsDB;
use productsDB;

-- create a order table --

CREATE TABLE orders (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price INT
);

-- inserting a table values --

INSERT INTO orders (id, product_name, quantity, price)
VALUES
(1, 'Apple', 5, 150),
(2, 'Banana', 2, 80),
(3, 'Avocado', 4, 300),
(4, 'Mango', 3, 500),
(5, 'Orange', 1, 120);

-- selecting the table values --

SELECT * FROM orders 
WHERE quantity > 2 ;

-- selecting the table values --

SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;

-- selecting the table values --

SELECT * FROM orders
WHERE product_name LIKE 'A%';

-- Arithmetic Operators --

SELECT product_name, quantity * price AS total_price
FROM orders;

-- Comparison Operators --

SELECT * FROM orders
WHERE price > 200;

SELECT * FROM orders
WHERE quantity = 3;

SELECT * FROM orders
WHERE price <> 150;

-- Logical Operators --

SELECT * FROM orders
WHERE quantity > 2 AND price < 500;

SELECT * FROM orders
WHERE quantity > 3 OR price > 400;

SELECT * FROM orders
WHERE NOT quantity = 2;

-- Between Operators --

SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;

-- IN Operator --

SELECT * FROM orders
WHERE product_name IN ('Apple', 'Mango', 'Orange');

-- LIKE Operator --

SELECT * FROM orders
WHERE product_name LIKE 'A%';

-- IS NULL Operator --

SELECT * FROM orders
WHERE product_name IS NULL;