CREATE DATABASE day11db ;
USE day11db ;

CREATE TABLE students1 (
    id INT,
    class VARCHAR(10),
    name VARCHAR(50),
    marks INT
);

INSERT INTO students1 VALUES
(1, 'A', 'John', 85),
(2, 'A', 'Sara', 92),
(3, 'A', 'Mike', 78),
(4, 'B', 'Anna', 88),
(5, 'B', 'Tom', 90);

SELECT * FROM students1 ;

CREATE TABLE exam1 (
    student VARCHAR(50),
    subject VARCHAR(20),
    score INT
);

INSERT INTO exam1 VALUES
('Alice', 'Math', 90),
('Bob', 'Math', 90),
('Charlie', 'Math', 85),
('David', 'Science', 88),
('Eva', 'Science', 88);

SELECT * FROM exam1 ;

CREATE TABLE employees11 (
    emp_name VARCHAR(50),
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees11 VALUES
('Alex', 'IT', 7000),
('Brian', 'IT', 7000),
('Chris', 'IT', 6500),
('Diana', 'HR', 6000),
('Eva', 'HR', 5800);

SELECT * FROM employees11 ;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO orders VALUES
(1, '2024-01-01', 100),
(2, '2024-01-02', 200),
(3, '2024-01-03', 150),
(4, '2024-01-04', 300);

SELECT * FROM orders ;

CREATE TABLE monthly_sales (
    month VARCHAR(10),
    sales INT
);

INSERT INTO monthly_sales VALUES
('Jan', 5000),
('Feb', 6000),
('Mar', 5500),
('Apr', 7000);

SELECT * FROM monthly_sales ;

-- task 1 --

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY class
    ORDER BY marks DESC
) AS row_num
FROM students1;

-- task 2 --

SELECT *,
RANK() OVER (
    PARTITION BY class
    ORDER BY marks DESC
) AS rank_num
FROM students1;

-- task 3 --

SELECT *,
DENSE_RANK() OVER (
    PARTITION BY class
    ORDER BY marks DESC
) AS dense_rank_num
FROM students1;

-- task 4 --

SELECT *,
AVG(marks) OVER (
    PARTITION BY class
) AS class_average
FROM students1;

-- task 5 --

SELECT *,
MAX(marks) OVER (
    PARTITION BY class
) AS highest_marks
FROM students1;

-- task 6 -- 

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY subject
    ORDER BY score DESC
) AS row_num
FROM exam1;

-- task 7 --

SELECT *,
RANK() OVER (
    PARTITION BY subject
    ORDER BY score DESC
) AS rank_num
FROM exam1;

-- task 8 --

SELECT *,
DENSE_RANK() OVER (
    PARTITION BY subject
    ORDER BY score DESC
) AS dense_rank_num
FROM exam1;

-- task 9 --

SELECT *,
COUNT(*) OVER (
    PARTITION BY subject
) AS total_students
FROM exam1;

-- task 10 --

SELECT *,
MIN(score) OVER (
    PARTITION BY subject
) AS minimum_score
FROM exam1;

-- task 11 --

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY department
    ORDER BY salary DESC
) AS row_num
FROM employees11;

-- task 12 --

SELECT *,
RANK() OVER (
    PARTITION BY department
    ORDER BY salary DESC
) AS rank_num
FROM employees11;

-- task 13 --

SELECT *,
DENSE_RANK() OVER (
    PARTITION BY department
    ORDER BY salary DESC
) AS dense_rank_num
FROM employees11;

-- task 14 --

SELECT *,
SUM(salary) OVER (
    PARTITION BY department
) AS total_salary
FROM employees11;

-- task 15 --

SELECT *,
AVG(salary) OVER (
    PARTITION BY department
) AS average_salary
FROM employees11;

-- task 16 --

SELECT *,
ROW_NUMBER() OVER (
    ORDER BY order_date
) AS row_num
FROM orders;

-- task 17 --

SELECT *,
SUM(amount) OVER (
    ORDER BY order_date
) AS running_total
FROM orders;

-- task 18 --

SELECT *,
AVG(amount) OVER (
    ORDER BY order_date
    ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
) AS moving_average
FROM orders;

-- task 19 --

SELECT *,
MAX(amount) OVER (
    ORDER BY order_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
) AS max_amount
FROM orders;

-- task 20 --

SELECT *,
COUNT(*) OVER () AS total_orders
FROM orders;

-- task 21 --

SELECT *,
ROW_NUMBER() OVER (
    ORDER BY FIELD(month, 'Jan', 'Feb', 'Mar', 'Apr')
) AS row_num
FROM monthly_sales;

-- task 22 --

SELECT *,
LAG(sales) OVER (
    ORDER BY FIELD(month, 'Jan', 'Feb', 'Mar', 'Apr')
) AS previous_month_sales
FROM monthly_sales;

-- task 23 --

SELECT *,
LEAD(sales) OVER (
    ORDER BY FIELD(month, 'Jan', 'Feb', 'Mar', 'Apr')
) AS next_month_sales
FROM monthly_sales;

-- task 24 --

SELECT *,
sales - LAG(sales) OVER (
    ORDER BY FIELD(month, 'Jan', 'Feb', 'Mar', 'Apr')
) AS sales_difference
FROM monthly_sales;

-- task 25 --

SELECT *,
SUM(sales) OVER (
    ORDER BY FIELD(month, 'Jan', 'Feb', 'Mar', 'Apr')
) AS cumulative_sales
FROM monthly_sales;