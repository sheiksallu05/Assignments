CREATE DATABASE company;

USE company;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary INT
);

INSERT INTO employee (id, name, age, department, salary)
VALUES
(1, 'Arun', 22, 'IT', 25000),
(2, 'Kumar', 24, 'HR', 30000),
(3, 'Priya', 23, 'IT', 28000),
(4, 'Rahul', 25, 'Finance', 35000),
(5, 'Divya', 26, 'Marketing', 32000);

SELECT * FROM employee;