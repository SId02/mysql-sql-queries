-- Create database employeesdb

CREATE DATABASE IF NOT EXISTS `employeesdb`;

SHOW DATABASES;


USE `employeesdb`;


-- create table structure for table `Employee` and 'EmployeeDetail'

DROP TABLE IF EXISTS `Employee`;

CREATE TABLE Employee (EmpID int NOT NULL,EmpName Varchar,Gender Char,Salary int,City Char(30));

-- insert data into employee table

INSERT INTO Employee
VALUES (1, 'Rohit', 'M', 80000, 'Pune'),
(2, 'Vinit', 'M', 125000, 'Bangalore'),
(3, 'Isha', 'F', 100000 , 'Indore'),
(4, 'Omkar', 'M', 650000 , 'Delhi'),
(5, 'Priya', 'F', 260000 , 'Mumbai')


-- create table structure for table `Employee` and 'EmployeeDetail'

DROP TABLE IF EXISTS `EmployeeDetail`;

CREATE TABLE EmployeeDetail (EmpID int NOT NULL,EmpName Varchar,Gender Char,Salary int,City Char(30));

-- insert data into employeedetail table

INSERT INTO EmployeeDetail
VALUES (1, 'P1', 'Executive', '26-01-2016'),
(2, 'P2', 'Executive', '04-05-2012'),
(3, 'P1', 'Lead', '21-10-2010'),
(4, 'P3', 'Manager', '29-11-2005'),
(5, 'P2', 'Manager', '01-08-2013')



