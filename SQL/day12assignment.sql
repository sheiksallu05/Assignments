CREATE DATABASE day12db ;
USE day12db ;

-- EMPLOYEES TABLE

CREATE TABLE employees_cte (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees_cte VALUES
(1, 'Alex', 'IT', 70000),
(2, 'Brian', 'IT', 50000),
(3, 'Chris', 'HR', 60000),
(4, 'Diana', 'HR', 40000),
(5, 'Eva', 'Finance', 80000);


-- Check employees data
SELECT * FROM employees_cte;

-- 1. EMPLOYEE SALARY GREATER THAN AVERAGE

WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employees_cte
)
SELECT e.emp_id, e.emp_name, e.department, e.salary
FROM employees_cte e
CROSS JOIN avg_salary a
WHERE e.salary > a.average_salary;

-- 2. DEPARTMENT-WISE AVERAGE SALARY

WITH dept_salary AS (
    SELECT
        department,
        AVG(salary) AS average_salary
    FROM employees_cte
    GROUP BY department
)
SELECT department, average_salary
FROM dept_salary;

-- STUDENTS TABLE

CREATE TABLE students_cte (
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(50),
    mark INT
);

INSERT INTO students_cte VALUES
(1, 'John', 'BCA', 85),
(2, 'Sara', 'BCA', 92),
(3, 'Mike', 'BCA', 70),
(4, 'Anna', 'BSc', 88),
(5, 'Tom', 'BSc', 65);


-- Check students data
SELECT * FROM students_cte;

-- 3. STUDENTS ABOVE AVERAGE MARK

WITH average_mark AS (
    SELECT AVG(mark) AS avg_mark
    FROM students_cte
)
SELECT s.student_name, s.course, s.mark
FROM students_cte s
CROSS JOIN average_mark a
WHERE s.mark > a.avg_mark;

-- PRODUCTS TABLE

CREATE TABLE products_cte (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

INSERT INTO products_cte VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mouse', 'Electronics', 1500),
(3, 'TV', 'Electronics', 45000),
(4, 'Chair', 'Furniture', 12000),
(5, 'Mobile', 'Electronics', 25000);


-- Check products data
SELECT * FROM products_cte;

-- 4. HIGH-PRICED PRODUCTS

WITH product_data AS (
    SELECT
        product_name,
        category,
        price
    FROM products_cte
)
SELECT product_name, category, price
FROM product_data
WHERE price > 20000;

-- 5. EMPLOYEE BONUS

WITH employee_bonus AS (
    SELECT
        emp_id,
        emp_name,
        salary,
        salary * 0.10 AS bonus
    FROM employees_cte
)
SELECT
    emp_name,
    salary,
    bonus,
    salary + bonus AS total_salary
FROM employee_bonus;
