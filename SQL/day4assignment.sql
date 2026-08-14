USE students_db ;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Phone VARCHAR(15)
);

SELECT * FROM Customer ;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    OrderStatus VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID),
    CHECK (Amount > 0)
);

SELECT * FROM Orders ;

INSERT INTO Customer
VALUES
(1, 'Arun', '9876543210'),
(2, 'Kumar', '9876543211'),
(3, 'Priya', '9876543212'),
(4, 'Rahul', '9876543213'),
(5, 'Divya', '9876543214');

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, Amount)
VALUES
(101, 1, '2026-08-01', 500),
(102, 2, '2026-08-02', 750),
(103, 3, '2026-08-03', 1200),
(104, 4, '2026-08-04', 900),
(105, 5, '2026-08-05', 1500);

CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(50),
    Specialization VARCHAR(50)
);

SELECT * FROM Doctor ;

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    DoctorID INT,
    Status VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (DoctorID)
    REFERENCES Doctor(DoctorID),

    CHECK (Age > 0)
);

SELECT * FROM Patient ;

INSERT INTO Doctor
VALUES
(1, 'Dr. Kumar', 'Cardiology'),
(2, 'Dr. Priya', 'Dermatology'),
(3, 'Dr. Arun', 'Neurology'),
(4, 'Dr. Ravi', 'Orthopedics'),
(5, 'Dr. Meena', 'Pediatrics');

INSERT INTO Patient
(PatientID, PatientName, Age, DoctorID)
VALUES
(101, 'Rahul', 25, 1),
(102, 'Anu', 30, 2),
(103, 'Karthik', 22, 3),
(104, 'Divya', 28, 4),
(105, 'Suresh', 35, 5);

CREATE TABLE BankCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Phone VARCHAR(15)
);

SELECT * FROM BankCustomer ;

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(30),
    Balance DECIMAL(10,2),
    AccountStatus VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (CustomerID)
    REFERENCES BankCustomer(CustomerID),

    CHECK (Balance >= 0)
);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(1001, 1, 'Savings', 10000),
(1002, 2, 'Current', 25000),
(1003, 3, 'Savings', 15000),
(1004, 4, 'Savings', 5000),
(1005, 5, 'Current', 30000);

SELECT * FROM Accounts ;

INSERT INTO BankCustomer
VALUES
(1, 'Arun', '9876500001'),
(2, 'Kumar', '9876500002'),
(3, 'Priya', '9876500003'),
(4, 'Rahul', '9876500004'),
(5, 'Divya', '9876500005');

SELECT * FROM  BankCustomer ;

CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(50),
    City VARCHAR(50)
);

SELECT * FROM  Publisher ;

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(100),
    PublisherID INT,
    Price DECIMAL(10,2),
    AvailableCopies INT DEFAULT 1,

    FOREIGN KEY (PublisherID)
    REFERENCES Publisher(PublisherID),

    CHECK (Price > 0)
);

SELECT * FROM Book ;

INSERT INTO Publisher
VALUES
(1, 'Penguin', 'Chennai'),
(2, 'Oxford', 'Bangalore'),
(3, 'Pearson', 'Delhi'),
(4, 'McGraw Hill', 'Mumbai'),
(5, 'Cambridge', 'Hyderabad');

SELECT * FROM Publisher ;

INSERT INTO Book
(BookID, BookName, PublisherID, Price)
VALUES
(101, 'JavaScript Basics', 1, 500),
(102, 'MySQL Guide', 2, 450),
(103, 'Python Programming', 3, 600),
(104, 'HTML and CSS', 4, 350),
(105, 'Data Structures', 5, 700);

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50),
    Experience INT
);

SELECT * FROM Teacher ;

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50),
    TeacherID INT,
    SubjectStatus VARCHAR(20) DEFAULT 'Available',

    FOREIGN KEY (TeacherID)
    REFERENCES Teacher(TeacherID)
);

SELECT * FROM Subjects ;

ALTER TABLE Teacher
ADD CHECK (Experience >= 0);

INSERT INTO Teacher
VALUES
(1, 'Arun', 5),
(2, 'Kumar', 8),
(3, 'Priya', 3),
(4, 'Rahul', 6),
(5, 'Divya', 4);

INSERT INTO Subjects
(SubjectID, SubjectName, TeacherID)
VALUES
(101, 'JavaScript', 1),
(102, 'MySQL', 2),
(103, 'HTML', 3),
(104, 'CSS', 4),
(105, 'Python', 5);

