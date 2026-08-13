-- creating a students database --

CREATE DATABASE STUDENTS_DB ;
USE STUDENTS_DB ;

-- creating a student table --

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Age INT,
    Address VARCHAR(100)
);

-- creating a employee table --

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Desg VARCHAR(50),
    Salary INT,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) UNIQUE
);

-- creating a product table --

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    ProductCode VARCHAR(20) UNIQUE,
    ProdDescription VARCHAR(100),
    Price INT
);

-- inserting a product table --

INSERT INTO Product
(ProductID, ProductName, ProductCode, ProdDescription, Price)
VALUES
(1, 'Laptop', 'P001', 'Dell Laptop', 50000),
(2, 'Mouse', 'P002', 'Wireless Mouse', 800),
(3, 'Keyboard', 'P003', 'Mechanical Keyboard', 1500),
(4, 'Monitor', 'P004', 'LED Monitor', 12000),
(5, 'Headphone', 'P005', 'Bluetooth Headphone', 2500);



SELECT * FROM Product ;

-- inserting a dupilicate product value --

INSERT INTO Product
(ProductID, ProductName, ProductCode, ProdDescription, Price)
VALUES
(6, 'Speaker', 'P001', 'Bluetooth Speaker', 3000);

-- creating a course table --

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    CourseCode VARCHAR(20) UNIQUE,
    Duration VARCHAR(30),
    CourseFee INT
);

-- inserting a course table --

INSERT INTO Course
(CourseID, CourseName, CourseCode, Duration, CourseFee)
VALUES
(1, 'Java', 'J001', '6 Months', 25000),
(2, 'Python', 'P001', '6 Months', 28000),
(3, 'Web Development', 'W001', '8 Months', 30000),
(4, 'Data Science', 'D001', '10 Months', 40000),
(5, 'MySQL', 'M001', '3 Months', 15000);

-- selecting the course table -- 
 
SELECT * FROM Course ; 

-- inserting a dupilicate course value  --

INSERT INTO Course
(CourseID, CourseName, CourseCode, Duration, CourseFee)
VALUES
(6, 'Advanced Java', 'J001', '8 Months', 35000);

-- creating a users table --

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(50)
);

-- inserting a users table --

INSERT INTO Users
(UserID, Username, Email, Password)
VALUES
(1, 'arun01', 'arun@gmail.com', 'arun123'),
(2, 'kumar02', 'kumar@gmail.com', 'kumar123'),
(3, 'priya03', 'priya@gmail.com', 'priya123'),
(4, 'rahul04', 'rahul@gmail.com', 'rahul123'),
(5, 'divya05', 'divya@gmail.com', 'divya123');

-- selecting the users table --

SELECT * FROM Users ; 

-- inserting a users dupilicate value --

INSERT INTO Users
(UserID, Username, Email, Password)
VALUES
(6, 'arun01', 'new@gmail.com', 'new123');

-- inserting a dupilicate value --

INSERT INTO Users
(UserID, Username, Email, Password)
VALUES
(7, 'newuser', 'arun@gmail.com', 'new123');


