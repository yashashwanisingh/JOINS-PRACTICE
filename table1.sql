/*create database internship;
use internship;
CREATE TABLE Departments (
    DeptID      INT PRIMARY KEY,
    DeptName    VARCHAR(50) NOT NULL,
    Location    VARCHAR(50)
);
CREATE TABLE Employees (
    EmpID       INT PRIMARY KEY,
    EmpName     VARCHAR(50) NOT NULL,
    DeptID      INT,              -- can be NULL if employee not assigned to any dept
    Salary      DECIMAL(10,2)
    -- No FOREIGN KEY added here so it works even if DeptID is NULL or mismatched during learning
);
INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(1, 'HR',        'Jaipur'),
(2, 'IT',        'Bengaluru'),
(3, 'Finance',   'Mumbai'),
(4, 'Marketing', 'Delhi');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(101, 'Aditi', 1, 40000.00),   -- HR
(102, 'Rohan', 2, 55000.00),   -- IT
(103, 'Meera', NULL, 38000.00),-- No department assigned
(104, 'Sahil', 2, 60000.00),   -- IT
(105, 'Priya', 3, 45000.00),   -- Finance
(106, 'Karan', 1, 42000.00);

SELECT * FROM departments;
SELECT * FROM employees;


-- INNER JOIN: Employees who have a matching department
SELECT 
    e.EmpID,
    e.EmpName,
    e.Salary,
    d.DeptName,
    d.Location
FROM Employees e
INNER JOIN Departments d
    ON e.DeptID = d.DeptID;


-- LEFT JOIN: All employees, with their department if it exists
SELECT 
    e.EmpID,
    e.EmpName,
    e.Salary,
    d.DeptName,
    d.Location
FROM Employees e
LEFT JOIN Departments d
    ON e.DeptID = d.DeptID;


-- RIGHT JOIN: All departments, with employees if present
SELECT 
    e.EmpID,
    e.EmpName,
    e.Salary,
    d.DeptID,
    d.DeptName,
    d.Location
FROM Employees e
RIGHT JOIN Departments d
    ON e.DeptID = d.DeptID;
*/

-- FULL OUTER JOIN: all employees and all departments, matched where possible-- FULL OUTER JOIN simulation in MySQL
SELECT 
    e.EmpID,
    e.EmpName,
    e.Salary,
    d.DeptID,
    d.DeptName,
    d.Location
FROM Employees e
LEFT JOIN Departments d
    ON e.DeptID = d.DeptID

UNION

SELECT 
    e.EmpID,
    e.EmpName,
    e.Salary,
    d.DeptID,
    d.DeptName,
    d.Location
FROM Employees e
RIGHT JOIN Departments d
    ON e.DeptID = d.DeptID;

