-- HR-Sample-DB-Exercise


-- SQL ORDER BY clause

-- 1. Using SQL ORDER BY clause to sort employees by first names in alphabetical order


SELECT employee_id, first_name, last_name, hire_date, salary FROM employees;


-- 2(a) Using SQL ORDER BY clause to sort employees by the first name in ascending order and the last name in descending order

SELECT employee_id, first_name, last_name, hire_date, salary FROM employees ORDER BY first_name, last_name DESC;

-- 2(b). Using SQL ORDER BY clause to sort employees by salary from low to high

SELECT employee_id, first_name, last_name, hire_date, salary FROM employees ORDER BY salary;

-- 2(c) Using SQL ORDER BY clause to sort employees by salary from high to low

SELECT employee_id, first_name, last_name, hire_date, salary FROM employees ORDER BY salary DESC;

-- 2(d) Using SQL ORDER BY clause to sort employees by hire_date in ascending order 

SELECT employee_id, first_name, last_name, hire_date, salary FROM employees ORDER BY hire_date;

-- 2(d) Using SQL ORDER BY clause to sort employees by hire_date in descending order

SELECT employee_id, first_name, last_name, hire_date, salary FROM employees ORDER BY hire_date DESC;


-- 3(a) Using SQL LIMIT clause to return the first 5 rows from employees table

SELECT employee_id, first_name, last_name FROM employees ORDER BY first_name LIMIT 5;

-- 3(b) Using SQL LIMIT and OFFSET clause to return the five rows starting from the 4th row from employees table 

SELECT employee_id, first_name, last_name FROM employees ORDER BY first_name LIMIT 3, 5;

-- 3(c) Using SQL LIMIT clause to return the N rows (top five employees) with the highest salaries  from employees table

SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary DESC LIMIT 5;

-- 3(d) Using SQL LIMIT clause to return the N rows (top five employees) with the lowest  salaries  from employees table

SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary LIMIT 5;


-- 4(a) Using SQL WHERE clause to return the employees who have salaries greater than 14,000 in ascending order from employees table

SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary > 14000 ORDER BY salary ;


-- 4(b) Using SQL WHERE clause to return the employees who have salaries greater than 14,000 in descending order from employees table

SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary > 14000 ORDER BY salary DESC;

-- 4(b) Using SQL WHERE clause to finds all employees who work in the department id (Specific department id) and order by first_name from employees table
   --Specific department id = 5

SELECT employee_id, first_name, last_name, department_id FROM employees WHERE department_id = 5 ORDER BY first_name;

-- 4(b) Using SQL WHERE clause to find employees who joined the company after January 1st, 1999 from employees table

SELECT employee_id, first_name, last_name, hire_date FROM employees WHERE hire_date >= '1999-01-01' ORDER BY hire_date DESC;





