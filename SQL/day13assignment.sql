CREATE DATABASE day13db ;
USE day13db ;


CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Alex', 70000),
(2, 'Brian', 50000),
(3, 'Chris', 60000),
(4, 'Diana', 40000),
(5, 'Eva', 80000);

DELIMITER //

CREATE FUNCTION get_annual_salary(monthly_salary INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //

DELIMITER ;

SELECT
    emp_name,
    salary AS monthly_salary,
    get_annual_salary(salary) AS annual_salary
FROM employees;

-- /////////////

CREATE TABLE employees_experience (
    emp_id INT,
    emp_name VARCHAR(50),
    joining_year INT
);

INSERT INTO employees_experience VALUES
(1, 'Alex', 2020),
(2, 'Brian', 2018),
(3, 'Chris', 2022),
(4, 'Diana', 2019),
(5, 'Eva', 2024);

DELIMITER //

CREATE FUNCTION calculate_experience(joining_year INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN YEAR(CURDATE()) - joining_year;
END //

DELIMITER ;

SELECT
    emp_name,
    joining_year,
    calculate_experience(joining_year) AS experience
FROM employees_experience;

-- /////////////////

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    mark INT
);

INSERT INTO students VALUES
(1, 'John', 95),
(2, 'Sara', 82),
(3, 'Mike', 68),
(4, 'Anna', 55),
(5, 'Tom', 42);

DELIMITER //

CREATE FUNCTION get_grade(mark INT)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN

    IF mark >= 90 THEN
        RETURN 'A';

    ELSEIF mark >= 75 THEN
        RETURN 'B';

    ELSEIF mark >= 60 THEN
        RETURN 'C';

    ELSEIF mark >= 50 THEN
        RETURN 'D';

    ELSE
        RETURN 'F';

    END IF;

END //

DELIMITER ;

SELECT
    student_name,
    mark,
    get_grade(mark) AS grade
FROM students;

-- /////////////////

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO products VALUES
(1, 'Laptop', 60000),
(2, 'Mobile', 30000),
(3, 'Tablet', 20000);

DELIMITER //

CREATE FUNCTION calculate_discount(
    price INT,
    discount_percentage INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN price * discount_percentage / 100;
END //

DELIMITER ;

SELECT
    product_name,
    price,
    calculate_discount(price, 10) AS discount_amount
FROM products;

