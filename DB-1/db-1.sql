-- Create database employeedb

CREATE DATABASE IF NOT EXISTS `employeedb`;

SHOW DATABASES;


USE `employeedb`;


-- create table structure for table `Employee` and 'EmployeeDetail'

DROP TABLE IF EXISTS `Employee`;

CREATE TABLE Employee (EmpID int NOT NULL,EmpName Varchar,Gender Char,Salary int,City Char(30));

-- insert data into employee table

INSERT INTO Employee
VALUES (1, 'Rohit', 'M', 80000, 'Pune'),
(2, 'Vinit', 'M', 125000, 'Bangalore'),
(3, 'Isha', 'F', 100000 , 'Indore'),
(4, 'Omkar', 'M', 350000 , 'Delhi'),
(5, 'Priya', 'F', 260000 , 'Mumbai')
(6, 'Vinit', 'F', 325000, 'Bangalore'),

-- create table structure for table `Employee` and 'EmployeeDetail'

DROP TABLE IF EXISTS `EmployeeDetail`;

CREATE TABLE EmployeeDetail (EmpID int NOT NULL,EmpName Varchar,Gender Char,Salary int,City Char(30));

-- insert data into employeedetail table

INSERT INTO EmployeeDetail
VALUES (1, 'P1', 'Executive', '26-01-2016'),
(2, 'P2', 'Executive', '04-05-2012'),
(3, 'P1', 'Lead', '21-10-2010'),
(4, 'P3', 'Sr.Manager', '29-11-2005'),
(5, 'P2', 'Manager', '01-08-2013'),
(6, 'P2', 'Sr.Executive', '01-08-2007')




-- 1)  Find the list of employees whose salary ranges between 1L to 3L.

SELECT EmpName, Salary FROM Employee
WHERE Salary BETWEEN 100000 AND 300000


-- 2) Write a query to retrieve the list of employees from the same city.

SELECT E1.EmpID, E1.EmpName, E1.City
FROM Employee E1, Employee E2
WHERE E1.City = E2.City AND E1.EmpID != E2.EmpID


-- 3) Query to find the null values in the Employee table.

SELECT * FROM Employee
WHERE EmpID IS NULL

-- 4) Query to find the cumulative sum of employee’s salary.

SELECT EmpID, Salary, SUM(Salary) OVER (ORDER BY EmpID) AS CumulativeSum
FROM Employee

-- 5) What’s the male and female employees ratio

SELECT
(COUNT(*) FILTER (WHERE Gender = 'M') * 100.0 / COUNT(*)) AS MalePct,
(COUNT(*) FILTER (WHERE Gender = 'F') * 100.0 / COUNT(*)) AS FemalePct
FROM Employee;


-- 6) Write a query to fetch 50% records from the Employee table.

SELECT * FROM Employee 
WHERE EmpID <= (SELECT COUNT(EmpID)/2 from Employee)


--7)  Query to fetch the employee’s salary but replace the LAST 3 digits with ‘XXX’  i.e 12345 will be 12XXX

SELECT Salary, 
CONCAT(SUBSTRING(Salary::text, 1, LENGTH(Salary::text)-3), 'XXX') as masked_number
FROM Employee


-- OR --

SELECT Salary, 
CONCAT(LEFT(Salary, LEN(Salary)-3), 'XXX') as masked_salary
FROM Employee


-- 8)  Write a query to fetch even and odd rows from Employee table.

---Fetch even rows
SELECT * FROM 
(SELECT *, ROW_NUMBER() OVER(ORDER BY EmpId) AS 
RowNumber
FROM Employee) AS Emp
WHERE Emp.RowNumber % 2 = 0
---Fetch odd rows
SELECT * FROM 
(SELECT *, ROW_NUMBER() OVER(ORDER BY EmpId) AS 
RowNumber
FROM Employee) AS Emp
WHERE Emp.RowNumber % 2 = 1


-- 9) Find Nth highest salary from employee table with and without using the LIMIT keywords.

--- With LIMIT keywords ---
SELECT Salary FROM Employee 
ORDER BY Salary DESC 
LIMIT 1 OFFSET N-1

--- Without LIMIT keywords ---

SELECT Salary FROM Employee E1
WHERE N-1 = (
SELECT COUNT( DISTINCT ( E2.Salary ) )
FROM Employee E2
WHERE E2.Salary > E1.Salary );


-- 10  Find and remove duplicate records from a table.

SELECT EmpID, EmpName, gender, Salary, city, 
COUNT(*) AS duplicate_count
FROM Employee
GROUP BY EmpID, EmpName, gender, Salary, city
HAVING COUNT(*) > 1;




