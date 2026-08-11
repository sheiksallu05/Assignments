CREATE DATABASE schoolDB;
USE schoolDB ;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO students
(student_id, name, age, course, email)
VALUES
(1, 'Arun', 20, 'BCA', 'arun@gmail.com'),
(2, 'Kumar', 21, 'BSc', 'kumar@gmail.com'),
(3, 'Priya', 20, 'BCA', 'priya@gmail.com'),
(4, 'Rahul', 22, 'BCom', 'rahul@gmail.com'),
(5, 'Divya', 21, 'BCA', 'divya@gmail.com');


CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

INSERT INTO customer
(customer_id, name, email, phone, city)
VALUES
(1, 'Ravi', 'ravi@gmail.com', '9876543210', 'Chennai'),
(2, 'Anu', 'anu@gmail.com', '9876543211', 'Vellore'),
(3, 'Suresh', 'suresh@gmail.com', '9876543212', 'Salem'),
(4, 'Meena', 'meena@gmail.com', '9876543213', 'Madurai'),
(5, 'Karthik', 'karthik@gmail.com', '9876543214', 'Chennai');


CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    phone VARCHAR(15)
);

INSERT INTO staff
(staff_id, name, department, salary, phone)
VALUES
(1, 'Anand', 'IT', 30000, '9000000001'),
(2, 'Bala', 'HR', 28000, '9000000002'),
(3, 'Geetha', 'Finance', 35000, '9000000003'),
(4, 'Manoj', 'IT', 32000, '9000000004'),
(5, 'Sneha', 'Admin', 27000, '9000000005');

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    stock INT
);

INSERT INTO product
(product_id, product_name, category, price, stock)
VALUES
(1, 'Laptop', 'Electronics', 50000, 10),
(2, 'Mouse', 'Accessories', 800, 25),
(3, 'Keyboard', 'Accessories', 1200, 20),
(4, 'Monitor', 'Electronics', 15000, 8),
(5, 'Headphone', 'Accessories', 2500, 15);

CREATE TABLE user_table (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO user_table
(user_id, username, email, password, city)
VALUES
(1, 'arun01', 'arun@gmail.com', 'arun123', 'Chennai'),
(2, 'kumar02', 'kumar@gmail.com', 'kumar123', 'Vellore'),
(3, 'priya03', 'priya@gmail.com', 'priya123', 'Salem'),
(4, 'rahul04', 'rahul@gmail.com', 'rahul123', 'Madurai'),
(5, 'divya05', 'divya@gmail.com', 'divya123', 'Chennai');

SELECT * FROM students;

SELECT * FROM customer;

SELECT * FROM staff;

SELECT * FROM product;

SELECT * FROM user_table;

-- Add a column
ALTER TABLE students
ADD phone VARCHAR(15);

-- Modify a column
ALTER TABLE students
MODIFY age INT NOT NULL;

-- Update
UPDATE students
SET age = 21
WHERE student_id = 1;

-- Delete
DELETE FROM students
WHERE student_id = 5;

DROP DATABASE schoolDB;