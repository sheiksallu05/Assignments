CREATE DATABASE datas ;
USE datas ;

CREATE TABLE departments (dept_id INT,dept_name VARCHAR(50));

CREATE TABLE employees (emp_id INT,emp_name VARCHAR(50),dept_id INT,manager_id INT,salary INT);

CREATE TABLE projects (project_id INT,project_name VARCHAR(50),dept_id INT);

CREATE TABLE emp_projects (emp_id INT,project_id INT);

CREATE TABLE locations (location_id INT,dept_id INT,city VARCHAR(50));

INSERT INTO departments VALUES(1, 'IT'),(2, 'HR'),(3, 'Finance'),(4, 'Sales');

INSERT INTO employees VALUES(1, 'Alice', 1, NULL, 80000),(2, 'Bob', 1, 1, 60000),(3, 'Charlie', 2, 1, 50000),(4, 'David', 3, 2, 70000),(5, 'Eva', NULL, 2, 45000);

INSERT INTO projects VALUES(101, 'Website', 1),(102, 'Payroll', 3),(103, 'Recruitment', 2);

INSERT INTO emp_projects VALUES(1, 101),(2, 101),(3, 103),(4, 102);

INSERT INTO locations VALUES(1, 1, 'New York'),(2, 2, 'London'),(3, 3, 'Tokyo');

-- task-1 --

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- task-2 --

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- task-3 --

SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;

-- task-4 --

SELECT e.emp_name, p.project_name
FROM employees e
INNER JOIN emp_projects ep
ON e.emp_id = ep.emp_id
INNER JOIN projects p
ON ep.project_id = p.project_id;

-- task-5 --

SELECT e.emp_name
FROM employees e
LEFT JOIN emp_projects ep
ON e.emp_id = ep.emp_id
WHERE ep.project_id IS NULL;

-- task-6 --

SELECT p.project_name, d.dept_name
FROM projects p
JOIN departments d
ON p.dept_id = d.dept_id;

-- task-7 --

SELECT e.emp_name, d.dept_name, l.city
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN locations l
ON d.dept_id = l.dept_id;

-- task-8 --

SELECT 
e.emp_name AS employee,
m.emp_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;

-- task-9 --

SELECT d.dept_name
FROM departments d
LEFT JOIN projects p
ON d.dept_id = p.dept_id
WHERE p.project_id IS NULL;

-- task-10 --

SELECT 
    e.emp_name AS employee,
    e.salary AS employee_salary,
    m.emp_name AS manager,
    m.salary AS manager_salary
FROM employees e
JOIN employees m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

-- task-11 --

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

-- task-12 --

SELECT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- task-13 --

SELECT 
    d.dept_name,
    COUNT(p.project_id) AS project_count
FROM departments d
LEFT JOIN projects p
ON d.dept_id = p.dept_id
GROUP BY d.dept_id, d.dept_name;

-- task-14 --

SELECT e.emp_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- task-15 --

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN emp_projects ep
ON e.emp_id = ep.emp_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

-- task-16 --

SELECT 
    d.dept_name,
    l.city
FROM departments d
LEFT JOIN locations l
ON d.dept_id = l.dept_id;

-- task-17 --

SELECT e.emp_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
JOIN locations l
ON d.dept_id = l.dept_id
WHERE l.city = 'Tokyo';

-- task-18 --

SELECT 
    p.project_name,
    COUNT(ep.emp_id) AS employee_count
FROM projects p
LEFT JOIN emp_projects ep
ON p.project_id = ep.project_id
GROUP BY p.project_id, p.project_name;

-- task-19 --

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) > 1;

-- task-20 --

SELECT 
    e.emp_name,
    d.dept_name,
    p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN emp_projects ep
ON e.emp_id = ep.emp_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

-- task-21 --

SELECT e.emp_name
FROM employees e
WHERE e.manager_id IS NULL;

-- task-22 --

SELECT 
    e.emp_name,
    p.project_name
FROM employees e
CROSS JOIN projects p;

-- task-23 --

SELECT e.emp_name
FROM employees e
JOIN employees a
ON e.dept_id = a.dept_id
WHERE a.emp_name = 'Alice';

-- task-24 --

SELECT 
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id

UNION

SELECT 
    d.dept_name,
    e.emp_name
FROM departments d
RIGHT JOIN employees e
ON d.dept_id = e.dept_id;

-- task-25 --

SELECT DISTINCT d.dept_name
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
LEFT JOIN locations l
ON d.dept_id = l.dept_id
WHERE l.location_id IS NULL;